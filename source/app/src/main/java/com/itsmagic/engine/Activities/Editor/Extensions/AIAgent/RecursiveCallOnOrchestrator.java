package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

public class RecursiveCallOnOrchestrator extends RuntimeException {
    private final String output;

    public RecursiveCallOnOrchestrator(String prompt) {
        super(prompt);
        this.output = prompt;
    }

    public String getOutput() {
        return this.output;
    }
}
