package com.itsmagic.engine.Activities.Editor.Panels.Profiler.MemoryProfiler;

import Ic.InterfaceC2637p;

@InterfaceC2637p
public class AllocatorWatcher {

    public static volatile a f71812l;

    public interface a {
        void a(Object object);
    }

    public static void notify(Object object) {
        if (f71812l != null) {
            f71812l.a(object);
        }
    }
}
