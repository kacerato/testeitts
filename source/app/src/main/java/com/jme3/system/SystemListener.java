package com.jme3.system;

public interface SystemListener {
    void destroy();

    void gainFocus();

    void handleError(String str, Throwable th2);

    void initialize();

    void loseFocus();

    void requestClose(boolean z10);

    default void rescale(float f10, float f11) {
    }

    void reshape(int i10, int i11);

    void update();
}
