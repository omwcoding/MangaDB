# Generated by Django 4.2.3 on 2023-08-04 11:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('manga', '0003_alter_collection_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='publisher',
            name='country',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]