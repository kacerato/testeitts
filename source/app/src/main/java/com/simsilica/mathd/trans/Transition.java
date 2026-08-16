package com.simsilica.mathd.trans;

import com.simsilica.mathd.trans.Transition;

public interface Transition<T extends Transition> {
    boolean containsTime(long j10);

    long getEndTime();

    long getStartTime();

    void setPreviousTransition(T t10);
}
