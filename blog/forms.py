from django import forms
from .models import User_Experiences , Comments


class UserExperienceForm(forms.ModelForm):
	class Meta:
		model = User_Experiences
		fields = ('add_your_experience','rate')

class CommentForm(forms.ModelForm):
	class Meta:
		model = Comments
		fields = ('add_your_comment',)
