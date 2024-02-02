from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.template import loader
from django.urls import reverse
from kviz_app.models import Players, PlayerStatistics, Questions, Answers

def index(request):
    questions = Questions.objects.all()
    answers = Answers.objects.all()
    return HttpResponse(loader.get_template('kviz_app/index.html').render({
        'questions': questions,
        'answers': answers,
    }, request))

def add_question(request):
    new_question = Questions(
        question = request.POST.get('new_quiz_question'),
        correct_answer = 0,
    )
    new_question.save()

    for i in range(4):
        new_answer = Answers(
            question_id = new_question.id,
            answer = request.POST.get('new_quiz_answer_' + str(i+1)),
        )
        new_answer.save()
        if i+1 == int(request.POST.get('new_quiz_answer_is_correct')):
            question = Questions.objects.get(id = new_question.id)
            question.correct_answer = new_answer.id
            question.save()
        
    questions = Questions.objects.all()
    answers = Answers.objects.all()
    return HttpResponse(loader.get_template('kviz_app/index.html').render({
        'questions': questions,
        'answers': answers,
        'added': True,
    }, request))

def delete_question(request, id):
    Questions.objects.get(id=id).delete()
    questions = Questions.objects.all()
    answers = Answers.objects.all()
    return HttpResponse(loader.get_template('kviz_app/index.html').render({
        'questions': questions,
        'answers': answers,
        'deleted': True,
    }, request))