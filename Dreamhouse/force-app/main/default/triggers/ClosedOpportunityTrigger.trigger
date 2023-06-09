trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> newTask = new List<Task>();

    for(Opportunity opp : Trigger.new){

        if(opp.StageName=='Closed Won'){ 

            Task anotherTask = new Task();

            anotherTask.Subject='Follow Up Test Trigger';

            anotherTask.WhatId=opp.Id;

            anotherTask.ActivityDate = opp.CloseDate ;

            newTask.add(anotherTask); 

        }

    }

    insert newTask;
}