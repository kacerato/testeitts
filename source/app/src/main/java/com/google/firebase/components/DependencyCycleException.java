package com.google.firebase.components;

import T2.C3049g;
import java.util.Arrays;
import java.util.List;

public class DependencyCycleException extends DependencyException {
    private final List<C3049g<?>> componentsInCycle;

    public DependencyCycleException(List<C3049g<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }

    public List<C3049g<?>> getComponentsInCycle() {
        return this.componentsInCycle;
    }
}
