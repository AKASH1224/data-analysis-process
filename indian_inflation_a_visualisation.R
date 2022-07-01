read.csv("student_mental_health.csv")
View(student_mental_health.csv)
ggplot(data=student_mental_health +aes(x='Age',y='gender'))+geom_point(fill="blue")
