package com.itsmagic.engine.Activities.Editor.Utils;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import q7.C15045a;

public class I {

    public class a implements Runnable {

        public final Component.e f72030b;

        public final Lb.b f72031c;

        public final C15045a f72032d;

        public a(final Component.e val$classReference, final Lb.b val$callback, final C15045a val$loadingBar) {
            this.f72030b = val$classReference;
            this.f72031c = val$callback;
            this.f72032d = val$loadingBar;
        }

        @Override
        public void run() {
            this.f72031c.a(com.itsmagic.engine.Engines.Engine.World.a.B(this.f72030b).size());
            this.f72032d.p1();
        }
    }

    public static void a(Component.e classReference, Lb.b callback) {
        Thread thread = new Thread(new a(classReference, callback, C15045a.r1()));
        thread.setPriority(10);
        thread.start();
    }
}
