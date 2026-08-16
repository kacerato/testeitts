package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Spliterator;
import java.util.function.Function;
import java.util.function.ObjIntConsumer;

public abstract class QY {
    public static boolean a(LY ly, Object obj) {
        if (obj == ly) {
            return true;
        }
        if (obj instanceof LY) {
            LY ly2 = (LY) obj;
            if (ly.size() == ly2.size() && ly.entrySet().size() == ly2.entrySet().size()) {
                for (MY my : ly2.entrySet()) {
                    if (ly.b(my.b()) != my.a()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static boolean a(final V0 v02, LY ly) {
        if (ly.isEmpty()) {
            return false;
        }
        ly.a(new ObjIntConsumer() {
            @Override
            public final void accept(Object obj, int i10) {
                LY.this.a(obj, i10);
            }
        });
        return true;
    }

    public static C5843Re a(LY ly) {
        Spliterator spliterator = ly.entrySet().spliterator();
        return AbstractC5901Se.a(spliterator, new Function() {
            @Override
            public final Object apply(Object obj) {
                Spliterator spliterator2;
                spliterator2 = Collections.nCopies(r1.a(), ((MY) obj).b()).spliterator();
                return spliterator2;
            }
        }, (spliterator.characteristics() & 1296) | 64, ly.size());
    }
}
