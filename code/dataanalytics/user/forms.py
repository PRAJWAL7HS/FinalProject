from django import forms


from .models import RegisterModel, UploadModel, FeedbackModel,ChatModel


class UserForm(forms.ModelForm):
    class Meta:
        model = RegisterModel
        fields = ('firstname','lastname','dob','age','userid','password','mobilenumber','emailid','gender',)

class UploadForm(forms.ModelForm):
    class Meta:
        model = UploadModel
        fields = ('name','topic','document','date','request',)

class ChatForm(forms.ModelForm):
    class Meta:
        model = ChatModel
        fields = ('chat',)

class FeedbackForm(forms.ModelForm):
    feedback = forms.CharField(widget=forms.Textarea(attrs={'cols': 22, 'rows': 3}))
    class Meta:
        model = FeedbackModel
        fields = ('name','mobilenumber','emailid','feedback',)

