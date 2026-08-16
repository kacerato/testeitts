package org.apache.commons.math3.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.IntegerSequence;

public class IterationManager {
    private IntegerSequence.Incrementor iterations;
    private final Collection<IterationListener> listeners;

    public IterationManager(int i10) {
        this.iterations = IntegerSequence.Incrementor.create().withMaximalCount(i10);
        this.listeners = new CopyOnWriteArrayList();
    }

    public void addIterationListener(IterationListener iterationListener) {
        this.listeners.add(iterationListener);
    }

    public void fireInitializationEvent(IterationEvent iterationEvent) {
        Iterator<IterationListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().initializationPerformed(iterationEvent);
        }
    }

    public void fireIterationPerformedEvent(IterationEvent iterationEvent) {
        Iterator<IterationListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().iterationPerformed(iterationEvent);
        }
    }

    public void fireIterationStartedEvent(IterationEvent iterationEvent) {
        Iterator<IterationListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().iterationStarted(iterationEvent);
        }
    }

    public void fireTerminationEvent(IterationEvent iterationEvent) {
        Iterator<IterationListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().terminationPerformed(iterationEvent);
        }
    }

    public int getIterations() {
        return this.iterations.getCount();
    }

    public int getMaxIterations() {
        return this.iterations.getMaximalCount();
    }

    public void incrementIterationCount() throws MaxCountExceededException {
        this.iterations.increment();
    }

    public void removeIterationListener(IterationListener iterationListener) {
        this.listeners.remove(iterationListener);
    }

    public void resetIterationCount() {
        this.iterations = this.iterations.withStart(0);
    }

    @Deprecated
    public IterationManager(int i10, final Incrementor.MaxCountExceededCallback maxCountExceededCallback) {
        this(i10, new IntegerSequence.Incrementor.MaxCountExceededCallback() {
            @Override
            public void trigger(int i11) throws MaxCountExceededException {
                Incrementor.MaxCountExceededCallback.this.trigger(i11);
            }
        });
    }

    public IterationManager(int i10, IntegerSequence.Incrementor.MaxCountExceededCallback maxCountExceededCallback) {
        this.iterations = IntegerSequence.Incrementor.create().withMaximalCount(i10).withCallback(maxCountExceededCallback);
        this.listeners = new CopyOnWriteArrayList();
    }
}
