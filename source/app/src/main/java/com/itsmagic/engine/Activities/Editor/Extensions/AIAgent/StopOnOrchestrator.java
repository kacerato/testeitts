package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

public class StopOnOrchestrator extends RuntimeException {
    private final String output;

    public StopOnOrchestrator(String prompt) {
        super(prompt);
        this.output = prompt;
    }

    public String getOutput() {
        return this.output;
    }
}
