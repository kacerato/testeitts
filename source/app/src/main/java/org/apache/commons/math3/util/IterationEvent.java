package org.apache.commons.math3.util;

import java.util.EventObject;

public class IterationEvent extends EventObject {
    private static final long serialVersionUID = 20120128;
    private final int iterations;

    public IterationEvent(Object obj, int i10) {
        super(obj);
        this.iterations = i10;
    }

    public int getIterations() {
        return this.iterations;
    }
}
