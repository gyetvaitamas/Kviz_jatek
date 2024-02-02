from django.db import models

class Players(models.Model):
    name = models.CharField(max_length=30)
    score = models.IntegerField()

class PlayerStatistics(models.Model):
    player = models.ForeignKey(Players, on_delete=models.CASCADE)
    correct_answers = models.IntegerField()
    wrong_answers = models.IntegerField()
    
class Questions(models.Model):
    question = models.CharField(max_length=100)
    correct_answer = models.IntegerField(default=0)
    
class Answers(models.Model):
    question = models.ForeignKey(Questions, on_delete=models.CASCADE)
    answer = models.CharField(max_length=50)