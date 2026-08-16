package com.ardor3d.framework;

import com.ardor3d.image.Image;

public interface NativeCanvas extends Canvas {
    void close();

    boolean isActive();

    boolean isClosing();

    void moveWindowTo(int i10, int i11);

    void setIcon(Image[] imageArr);

    void setTitle(String str);

    void setVSyncEnabled(boolean z10);
}
