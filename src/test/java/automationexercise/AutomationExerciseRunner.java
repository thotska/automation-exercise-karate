package automationexercise;

import com.intuit.karate.junit5.Karate;

class AutomationExerciseRunner {
    
    @Karate.Test
    Karate testAutomationExercise() {
        return Karate.run().tags("@api14").relativeTo(getClass());
    }
    
}
