package com.itsmagic.engine.Engines.Engine.Settings;

import C5.b;
import D5.h;
import F5.c;
import Ic.C;
import JAVARuntime.Runnable;
import Z6.k;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialShader;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import n.C14331a;
import r4.C15147a;

public class GraphicsSettings implements Serializable {

    @Expose
    private e graphicsMode = e.Advanced;

    @Expose
    public boolean enableFrameLimitOnGame = true;

    @Expose
    public int limitFramesWhenGameRunning = 35;

    @Expose
    public final List<MaterialShader> materialShaders = new SteppedArrayList();

    public class a extends c.n0<e> {

        public class RunnableC1351a implements Runnable {
            public RunnableC1351a() {
            }

            @Override
            public void run() {
                GraphicsSettings.this.g(e.Lite);
                K8.a.l().k();
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                GraphicsSettings.this.g(e.Lite);
                K8.a.l().k();
            }
        }

        public class c implements Runnable {

            public final e f79524b;

            public c(final e val$value) {
                this.f79524b = val$value;
            }

            @Override
            public void run() {
                GraphicsSettings.this.g(this.f79524b);
                K8.a.l().k();
            }
        }

        public a() {
        }

        @Override
        public void set(e value) {
            if (!C14331a.c()) {
                K8.a.I(new c(value));
            } else if (value != e.Advanced) {
                K8.a.I(new b());
            } else {
                K8.a.I(new RunnableC1351a());
                k.w1("https://itsmagic.com.br/index.html", null, C15147a.e.Below, 300.0f, 450.0f);
            }
        }
    }

    public class b implements h {

        public final com.itsmagic.engine.Engines.Engine.Settings.c f79526a;

        public class a implements Runnable {

            public final Variable f79528b;

            public class RunnableC1352a implements Runnable {
                public RunnableC1352a() {
                }

                @Override
                public void run() {
                    b.this.f79526a.a();
                }
            }

            public a(final Variable val$variable) {
                this.f79528b = val$variable;
            }

            @Override
            public void run() {
                GraphicsSettings.this.enableFrameLimitOnGame = this.f79528b.booolean_value.booleanValue();
                K8.a.l().k();
                N7.c.j0(new RunnableC1352a());
            }
        }

        public b(final com.itsmagic.engine.Engines.Engine.Settings.c val$listener) {
            this.f79526a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", GraphicsSettings.this.enableFrameLimitOnGame + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements h {

        public class a implements Runnable {

            public final Variable f79532b;

            public a(final Variable val$variable) {
                this.f79532b = val$variable;
            }

            @Override
            public void run() {
                GraphicsSettings.this.limitFramesWhenGameRunning = Nc.b.N(1, this.f79532b.int_value);
                K8.a.l().k();
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", GraphicsSettings.this.limitFramesWhenGameRunning + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            com.itsmagic.engine.Engines.Engine.World.a.i(new C());
            N7.c.F().B();
        }
    }

    public enum e {
        Lite,
        Advanced
    }

    public static boolean d() {
        if (com.itsmagic.engine.Engines.Engine.World.a.y()) {
            return false;
        }
        try {
            return K8.a.l().d().a() == e.Advanced;
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    public e a() {
        return C14331a.c() ? e.Lite : this.graphicsMode;
    }

    public List<C5.b> b(Context context, com.itsmagic.engine.Engines.Engine.Settings.c listener) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(F5.c.i("Graphics mode", e.class, this.graphicsMode, new a()));
        linkedList.add(new C5.b(new b(listener), "Enable FPS limiter on game", b.a.SLBoolean));
        linkedList.add(new C5.b(new c(), "On Game FPS Limit", b.a.SLInt));
        if (!this.enableFrameLimitOnGame) {
            linkedList.add(new C5.b("We strongly recommend that you keep the frame limiter enabled on 35 FPS", 12));
        }
        return linkedList;
    }

    public int c() {
        return this.limitFramesWhenGameRunning;
    }

    public boolean e() {
        return this.enableFrameLimitOnGame;
    }

    public void f(boolean enableFrameLimitOnGame) {
        this.enableFrameLimitOnGame = enableFrameLimitOnGame;
    }

    public void g(e graphicsMode) {
        if (C14331a.c()) {
            graphicsMode = e.Lite;
        }
        boolean z10 = this.graphicsMode != graphicsMode;
        this.graphicsMode = graphicsMode;
        if (z10) {
            K8.a.I(new d());
        }
    }

    public void h(int limitFramesWhenGameRunning) {
        this.limitFramesWhenGameRunning = limitFramesWhenGameRunning;
    }
}
