package com.ardor3d.util.stat;

import com.google.common.collect.Q1;
import java.util.HashMap;
import java.util.Set;

public class MultiStatSample {
    private final HashMap<StatType, StatValue> _values = Q1.Y();
    private double _elapsedTime = 0.0d;

    public static MultiStatSample createNew(HashMap<StatType, StatValue> hashMap) {
        MultiStatSample multiStatSample = new MultiStatSample();
        for (StatType statType : hashMap.o()) {
            StatValue statValue = hashMap.get(statType);
            if (statValue.getIterations() > 0) {
                multiStatSample._values.put(statType, new StatValue(statValue));
            }
        }
        return multiStatSample;
    }

    public boolean containsStat(StatType statType) {
        return this._values.containsKey(statType);
    }

    public double getElapsedTime() {
        return this._elapsedTime;
    }

    public Set<StatType> getStatTypes() {
        return this._values.o();
    }

    public StatValue getStatValue(StatType statType) {
        return this._values.get(statType);
    }

    public void setTimeElapsed(double d10) {
        this._elapsedTime = d10;
    }
}
