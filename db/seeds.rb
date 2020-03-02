Survey.create!([
    {name: 'survey1'}, 
    {name: 'survey2', dute_date: DateTime.strptime("09/01/2020", "%m/%d/%Y")}
])

SurveyQuestion.create!([
    {
        question_text: 'How do you feel today?', 
        fixed_question: false,
        question_no: 1,
        survey_id: 1
    },
    {
        question_text: 'Would you like some coffee?', 
        fixed_question: false,
        question_no: 2,
        survey_id: 1
    },
    {
        question_text: 'How did we do today?', 
        fixed_question: true,
        question_no: 1, 
        survey_id: 2
    },
    {
        question_text: 'How could we improve?', 
        fixed_question: true,
        question_no: 2, 
        survey_id: 2
    }
])