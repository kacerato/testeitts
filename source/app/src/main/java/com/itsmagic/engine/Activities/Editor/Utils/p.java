package com.itsmagic.engine.Activities.Editor.Utils;

import android.content.res.Configuration;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class p {

    public static final List<Runnable> f72151a = new SteppedArrayList();

    public class a implements Runnable {

        public final Runnable f72152b;

        public a(final Runnable val$exec) {
            this.f72152b = val$exec;
        }

        @Override
        public void run() {
            N7.c.j0(this.f72152b);
        }
    }

    public class b implements Runnable {
        @Override
        public void run() {
        }
    }

    public static void a() {
        List<Runnable> list = f72151a;
        synchronized (list) {
            try {
                if (!list.isEmpty()) {
                    list.remove(0).run();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void b(Configuration newConfig, Runnable exec) {
        List<Runnable> list = f72151a;
        synchronized (list) {
            try {
                list.add(new a(exec));
                for (int i10 = 0; i10 < 10; i10++) {
                    f72151a.add(new b());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
