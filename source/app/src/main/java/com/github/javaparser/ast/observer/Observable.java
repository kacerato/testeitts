package com.github.javaparser.ast.observer;

public interface Observable {
    boolean isRegistered(AstObserver observer);

    void register(AstObserver observer);

    void unregister(AstObserver observer);
}
