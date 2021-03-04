# Generated by Django 2.0 on 2020-07-23 11:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='chatmodel',
            name='userId',
            field=models.ForeignKey(on_delete=None, to='user.RegisterModel'),
        ),
        migrations.AlterField(
            model_name='requestmodel',
            name='accessone',
            field=models.ForeignKey(on_delete=None, to='user.RegisterModel'),
        ),
        migrations.AlterField(
            model_name='requestmodel',
            name='accesstwo',
            field=models.ForeignKey(on_delete=None, to='user.UploadModel'),
        ),
        migrations.AlterField(
            model_name='uploadmodel',
            name='userDet',
            field=models.ForeignKey(on_delete=None, to='user.RegisterModel'),
        ),
    ]