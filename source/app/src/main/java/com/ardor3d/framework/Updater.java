package com.ardor3d.framework;

import com.ardor3d.annotation.MainThread;
import com.ardor3d.util.ReadOnlyTimer;

public interface Updater {
    @MainThread
    void init();

    @MainThread
    void update(ReadOnlyTimer readOnlyTimer);
}
