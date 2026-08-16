package com.itsmagic.engine.Engines.Engine.ComponentsV2.AIs;

import C5.b;
import F5.c;
import JAVARuntime.Runnable;
import android.content.Context;
import android.widget.Toast;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.util.LinkedList;
import java.util.List;
import t6.j;

public class AIFunctionCall {

    public final InspectorEditor f72638a;

    @Expose
    private g argumentType;

    @Expose
    private boolean booleanValue;

    @Expose
    @eb.f
    private float floatValue;

    @Expose
    private String functionName;

    @Expose
    @eb.f
    private int intValue;

    @Expose
    private String stringValue;

    public class a implements D5.h {

        public final Context f72639a;

        public class C1176a implements Runnable {

            public final Variable f72641b;

            public class RunnableC1177a implements Runnable {

                public final Exception f72643b;

                public RunnableC1177a(final Exception val$e) {
                    this.f72643b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(a.this.f72639a, this.f72643b.getMessage(), 0).show();
                }
            }

            public C1176a(final Variable val$variable) {
                this.f72641b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("AIFunctionCall - set function name") : null;
                try {
                    try {
                        AIFunctionCall.this.s(this.f72641b.str_value);
                    } catch (Exception e10) {
                        N7.c.j0(new RunnableC1177a(e10));
                    }
                } finally {
                    j.P1(S12);
                }
            }
        }

        public a(final Context val$context) {
            this.f72639a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", AIFunctionCall.this.functionName + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1176a(variable));
            }
        }
    }

    public class b extends c.n0<g> {

        public final h f72645a;

        public b(final h val$listener) {
            this.f72645a = val$listener;
        }

        @Override
        public void a() {
            this.f72645a.a();
        }

        @Override
        public void set(g value) {
            AIFunctionCall.this.argumentType = value;
        }

        @Override
        public String c(g enumObject) {
            return enumObject.toString();
        }
    }

    public class c implements D5.h {

        public final Context f72647a;

        public class a implements Runnable {

            public final Variable f72649b;

            public class RunnableC1178a implements Runnable {

                public final Exception f72651b;

                public RunnableC1178a(final Exception val$e) {
                    this.f72651b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(c.this.f72647a, this.f72651b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f72649b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("AIFunctionCall - set float value") : null;
                try {
                    try {
                        AIFunctionCall.this.r(this.f72649b.float_value);
                    } catch (Exception e10) {
                        N7.c.j0(new RunnableC1178a(e10));
                    }
                } finally {
                    j.P1(S12);
                }
            }
        }

        public c(final Context val$context) {
            this.f72647a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", AIFunctionCall.this.floatValue + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements D5.h {

        public final Context f72653a;

        public class a implements Runnable {

            public final Variable f72655b;

            public class RunnableC1179a implements Runnable {

                public final Exception f72657b;

                public RunnableC1179a(final Exception val$e) {
                    this.f72657b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(d.this.f72653a, this.f72657b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f72655b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("AIFunctionCall - set int value") : null;
                try {
                    try {
                        AIFunctionCall.this.t(this.f72655b.int_value);
                    } catch (Exception e10) {
                        N7.c.j0(new RunnableC1179a(e10));
                    }
                } finally {
                    j.P1(S12);
                }
            }
        }

        public d(final Context val$context) {
            this.f72653a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", AIFunctionCall.this.intValue + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public final Context f72659a;

        public class a implements Runnable {

            public final Variable f72661b;

            public class RunnableC1180a implements Runnable {

                public final Exception f72663b;

                public RunnableC1180a(final Exception val$e) {
                    this.f72663b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(e.this.f72659a, this.f72663b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f72661b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("AIFunctionCall - set string value") : null;
                try {
                    try {
                        AIFunctionCall.this.u(this.f72661b.str_value);
                    } catch (Exception e10) {
                        N7.c.j0(new RunnableC1180a(e10));
                    }
                } finally {
                    j.P1(S12);
                }
            }
        }

        public e(final Context val$context) {
            this.f72659a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", AIFunctionCall.this.stringValue + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {

        public final Context f72665a;

        public class a implements Runnable {

            public final Variable f72667b;

            public class RunnableC1181a implements Runnable {

                public final Exception f72669b;

                public RunnableC1181a(final Exception val$e) {
                    this.f72669b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(f.this.f72665a, this.f72669b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f72667b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("AIFunctionCall - set boolean value") : null;
                try {
                    try {
                        AIFunctionCall.this.q(this.f72667b.booolean_value.booleanValue());
                    } catch (Exception e10) {
                        N7.c.j0(new RunnableC1181a(e10));
                    }
                } finally {
                    j.P1(S12);
                }
            }
        }

        public f(final Context val$context) {
            this.f72665a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", AIFunctionCall.this.booleanValue + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public enum g {
        Float,
        Int,
        String,
        Boolean
    }

    public interface h {
        void a();

        Component b();

        GameObject getGameObject();
    }

    public AIFunctionCall() {
        this.functionName = "Method";
        this.argumentType = g.Float;
        this.floatValue = 0.0f;
        this.intValue = 0;
        this.booleanValue = false;
        this.stringValue = "";
        this.f72638a = new InspectorEditor();
    }

    public void g(GameObject out) {
        int ordinal = this.argumentType.ordinal();
        if (ordinal == 0) {
            out.callFunction(this.functionName, Float.valueOf(this.floatValue));
            return;
        }
        if (ordinal == 1) {
            out.callFunction(this.functionName, Integer.valueOf(this.intValue));
        } else if (ordinal == 2) {
            out.callFunction(this.functionName, this.stringValue);
        } else {
            if (ordinal != 3) {
                return;
            }
            out.callFunction(this.functionName, Boolean.valueOf(this.booleanValue));
        }
    }

    public g h() {
        return this.argumentType;
    }

    public float i() {
        return this.floatValue;
    }

    public String j() {
        return this.functionName;
    }

    public C5.b k(String tittle, Context context, h listener) {
        C5.b bVar = new C5.b(new C5.a(tittle, true, this.f72638a));
        C5.a aVar = bVar.f2064Q;
        aVar.f2043p = R.color.interface_panel;
        aVar.f2042o.addAll(l(context, listener));
        return bVar;
    }

    public List<C5.b> l(Context context, h listener) {
        LinkedList linkedList = new LinkedList();
        a aVar = new a(context);
        String l10 = Lang.l(Lang.T.NAME);
        b.a aVar2 = b.a.SLString;
        linkedList.add(new C5.b(aVar, l10, aVar2));
        linkedList.add(F5.c.i(Lang.l(Lang.T.ARGUMENT_TYPE), g.class, this.argumentType, new b(listener)));
        int ordinal = this.argumentType.ordinal();
        if (ordinal == 0) {
            linkedList.add(new C5.b(new c(context), Lang.l(Lang.T.VALUE), b.a.SLFloat).d(listener.getGameObject(), listener.b(), "floatValue", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        } else if (ordinal == 1) {
            linkedList.add(new C5.b(new d(context), Lang.l(Lang.T.VALUE), b.a.SLInt).d(listener.getGameObject(), listener.b(), "intValue", com.itsmagic.engine.Engines.Engine.Animation.c.INT));
        } else if (ordinal == 2) {
            linkedList.add(new C5.b(new e(context), Lang.l(Lang.T.VALUE), aVar2));
        } else if (ordinal == 3) {
            linkedList.add(new C5.b(new f(context), Lang.l(Lang.T.VALUE), b.a.SLBoolean));
        }
        return linkedList;
    }

    public int m() {
        return this.intValue;
    }

    public String n() {
        return this.stringValue;
    }

    public boolean o() {
        return this.booleanValue;
    }

    public void p(g argumentType) {
        this.argumentType = argumentType;
    }

    public void q(boolean booleanValue) {
        this.booleanValue = booleanValue;
    }

    public void r(float floatValue) {
        this.floatValue = floatValue;
    }

    public void s(String functionName) {
        this.functionName = functionName;
    }

    public void t(int intValue) {
        this.intValue = intValue;
    }

    public void u(String stringValue) {
        this.stringValue = stringValue;
    }

    public AIFunctionCall(String functionName, float floatValue) {
        this.functionName = "Method";
        g gVar = g.Float;
        this.argumentType = gVar;
        this.floatValue = 0.0f;
        this.intValue = 0;
        this.booleanValue = false;
        this.stringValue = "";
        this.f72638a = new InspectorEditor();
        this.functionName = functionName;
        this.floatValue = floatValue;
        this.argumentType = gVar;
    }

    public AIFunctionCall(String functionName, int intValue) {
        this.functionName = "Method";
        this.argumentType = g.Float;
        this.floatValue = 0.0f;
        this.intValue = 0;
        this.booleanValue = false;
        this.stringValue = "";
        this.f72638a = new InspectorEditor();
        this.functionName = functionName;
        this.intValue = intValue;
        this.argumentType = g.Int;
    }

    public AIFunctionCall(String functionName, boolean booleanValue) {
        this.functionName = "Method";
        this.argumentType = g.Float;
        this.floatValue = 0.0f;
        this.intValue = 0;
        this.booleanValue = false;
        this.stringValue = "";
        this.f72638a = new InspectorEditor();
        this.functionName = functionName;
        this.booleanValue = booleanValue;
        this.argumentType = g.Boolean;
    }

    public AIFunctionCall(String functionName, String stringValue) {
        this.functionName = "Method";
        this.argumentType = g.Float;
        this.floatValue = 0.0f;
        this.intValue = 0;
        this.booleanValue = false;
        this.stringValue = "";
        this.f72638a = new InspectorEditor();
        this.functionName = functionName;
        this.stringValue = stringValue;
        this.argumentType = g.String;
    }
}
