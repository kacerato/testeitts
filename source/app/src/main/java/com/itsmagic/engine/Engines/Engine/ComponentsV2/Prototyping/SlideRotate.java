package com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping;

import C5.b;
import F5.c;
import JAVARuntime.Runnable;
import android.content.Context;
import android.widget.Toast;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Input.Axis;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import rc.C15169a;
import s8.InterfaceC15237a;

public class SlideRotate extends Component {

    public static final String f76247H = "SlideRotate";

    public static final Class f76248I = SlideRotate.class;

    public float f76249E;

    public float f76250F;

    public JAVARuntime.Component f76251G;

    @Expose
    private String axisName;

    @Expose
    private j direction;

    @Expose
    @eb.f
    private float lerp;

    @Expose
    private boolean limited;

    @Expose
    @eb.f
    private float maxAngle;

    @Expose
    @eb.f
    private float minAngle;

    @Expose
    @eb.f
    private float mouseSensibility;

    @Expose
    @eb.f
    private float sensibility;

    @Expose
    private boolean useMouse;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return SlideRotate.f76248I;
        }

        @Override
        public String c() {
            return SlideRotate.f76247H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PROTOTYPING);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.SLIDE_ROTATE);
        }
    }

    public class b extends c.n0<j> {
        public b() {
        }

        @Override
        public void a() {
            SlideRotate.this.reloadInspector();
        }

        @Override
        public void set(j value) {
            SlideRotate.this.direction = value;
        }

        @Override
        public String c(j enumObject) {
            return enumObject.toString();
        }
    }

    public class c implements D5.h {

        public final Context f76253a;

        public class a implements Runnable {

            public final Variable f76255b;

            public class RunnableC1234a implements Runnable {

                public final Exception f76257b;

                public RunnableC1234a(final Exception val$e) {
                    this.f76257b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(c.this.f76253a, this.f76257b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f76255b = val$variable;
            }

            @Override
            public void run() {
                try {
                    SlideRotate.this.setSensibility(this.f76255b.float_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1234a(e10));
                }
            }
        }

        public c(final Context val$context) {
            this.f76253a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", SlideRotate.this.sensibility + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements D5.h {

        public final Context f76259a;

        public class a implements Runnable {

            public final Variable f76261b;

            public class RunnableC1235a implements Runnable {
                public RunnableC1235a() {
                }

                @Override
                public void run() {
                    SlideRotate.this.reloadInspector();
                }
            }

            public class b implements Runnable {

                public final Exception f76264b;

                public b(final Exception val$e) {
                    this.f76264b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(d.this.f76259a, this.f76264b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f76261b = val$variable;
            }

            @Override
            public void run() {
                try {
                    boolean z10 = SlideRotate.this.limited != this.f76261b.booolean_value.booleanValue();
                    SlideRotate.this.setLimited(this.f76261b.booolean_value.booleanValue());
                    if (z10) {
                        N7.c.j0(new RunnableC1235a());
                    }
                } catch (Exception e10) {
                    N7.c.j0(new b(e10));
                }
            }
        }

        public d(final Context val$context) {
            this.f76259a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", SlideRotate.this.limited + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public final Context f76266a;

        public class a implements Runnable {

            public final Variable f76268b;

            public class RunnableC1236a implements Runnable {

                public final Exception f76270b;

                public RunnableC1236a(final Exception val$e) {
                    this.f76270b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(e.this.f76266a, this.f76270b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f76268b = val$variable;
            }

            @Override
            public void run() {
                try {
                    SlideRotate.this.setMinAngle(this.f76268b.float_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1236a(e10));
                }
            }
        }

        public e(final Context val$context) {
            this.f76266a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", SlideRotate.this.minAngle + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {

        public final Context f76272a;

        public class a implements Runnable {

            public final Variable f76274b;

            public class RunnableC1237a implements Runnable {

                public final Exception f76276b;

                public RunnableC1237a(final Exception val$e) {
                    this.f76276b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(f.this.f76272a, this.f76276b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f76274b = val$variable;
            }

            @Override
            public void run() {
                try {
                    SlideRotate.this.setMaxAngle(this.f76274b.float_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1237a(e10));
                }
            }
        }

        public f(final Context val$context) {
            this.f76272a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", SlideRotate.this.maxAngle + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class g implements D5.h {

        public final Context f76278a;

        public class a implements Runnable {

            public final Variable f76280b;

            public class RunnableC1238a implements Runnable {

                public final Exception f76282b;

                public RunnableC1238a(final Exception val$e) {
                    this.f76282b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(g.this.f76278a, this.f76282b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f76280b = val$variable;
            }

            @Override
            public void run() {
                try {
                    SlideRotate.this.setAxisName(this.f76280b.str_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1238a(e10));
                }
            }
        }

        public g(final Context val$context) {
            this.f76278a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", SlideRotate.this.axisName + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class h implements D5.h {

        public final Context f76284a;

        public class a implements Runnable {

            public final Variable f76286b;

            public class RunnableC1239a implements Runnable {

                public final Exception f76288b;

                public RunnableC1239a(final Exception val$e) {
                    this.f76288b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(h.this.f76284a, this.f76288b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f76286b = val$variable;
            }

            @Override
            public void run() {
                try {
                    SlideRotate.this.setLerp(this.f76286b.float_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1239a(e10));
                }
            }
        }

        public h(final Context val$context) {
            this.f76284a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", SlideRotate.this.lerp + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class i implements c.o0 {

        public final Context f76290a;

        public final GameObject f76291b;

        public class a implements D5.h {

            public class C1240a implements Runnable {

                public final Variable f76294b;

                public class RunnableC1241a implements Runnable {

                    public final Exception f76296b;

                    public RunnableC1241a(final Exception val$e) {
                        this.f76296b = val$e;
                    }

                    @Override
                    public void run() {
                        Toast.makeText(i.this.f76290a, this.f76296b.getMessage(), 0).show();
                    }
                }

                public C1240a(final Variable val$variable) {
                    this.f76294b = val$variable;
                }

                @Override
                public void run() {
                    try {
                        SlideRotate.this.setUseMouse(this.f76294b.booolean_value.booleanValue());
                    } catch (Exception e10) {
                        N7.c.j0(new RunnableC1241a(e10));
                    }
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", SlideRotate.this.useMouse + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1240a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f76299b;

                public class RunnableC1242a implements Runnable {

                    public final Exception f76301b;

                    public RunnableC1242a(final Exception val$e) {
                        this.f76301b = val$e;
                    }

                    @Override
                    public void run() {
                        Toast.makeText(i.this.f76290a, this.f76301b.getMessage(), 0).show();
                    }
                }

                public a(final Variable val$variable) {
                    this.f76299b = val$variable;
                }

                @Override
                public void run() {
                    try {
                        SlideRotate.this.setMouseSensibility(this.f76299b.float_value);
                    } catch (Exception e10) {
                        N7.c.j0(new RunnableC1242a(e10));
                    }
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", SlideRotate.this.mouseSensibility + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public i(final Context val$context, final GameObject val$animationObject) {
            this.f76290a = val$context;
            this.f76291b = val$animationObject;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Use mouse", b.a.SLBoolean));
            C5.b bVar = new C5.b(new b(), Lang.l(Lang.T.SENSIBILITY), b.a.SLFloat);
            bVar.d(this.f76291b, SlideRotate.this, "mouse sensibility", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            entries.add(bVar);
            return entries;
        }
    }

    public enum j {
        Vertical,
        Horizontal
    }

    static {
        C13201a.b(new a());
    }

    public SlideRotate() {
        super(f76247H);
        this.direction = j.Horizontal;
        this.sensibility = 45.0f;
        this.axisName = "slide";
        this.limited = true;
        this.minAngle = -80.0f;
        this.maxAngle = 80.0f;
        this.lerp = 0.0f;
        this.useMouse = true;
        this.mouseSensibility = 45.0f;
        this.f76249E = 0.0f;
        this.f76250F = 0.0f;
    }

    private void applySlide(GameObject gameObject, float sx, float sy, float sensibility) {
        int ordinal = this.direction.ordinal();
        if (ordinal == 0) {
            float b10 = this.f76249E + (sy * sensibility * K8.d.b());
            this.f76249E = b10;
            if (this.limited) {
                this.f76249E = Nc.b.E(this.minAngle, b10, this.maxAngle);
            }
            float f10 = this.lerp;
            if (f10 > 0.0f) {
                this.f76250F = Nc.b.z(this.f76250F, this.f76249E, f10 * K8.d.b());
            } else {
                this.f76250F = this.f76249E;
            }
            gameObject.transform.C3(this.f76250F, 0.0f, 0.0f);
            return;
        }
        if (ordinal != 1) {
            return;
        }
        float b11 = this.f76249E + (sx * sensibility * K8.d.b());
        this.f76249E = b11;
        if (this.limited) {
            this.f76249E = Nc.b.E(this.minAngle, b11, this.maxAngle);
        }
        float f11 = this.lerp;
        if (f11 > 0.0f) {
            this.f76250F = Nc.b.z(this.f76250F, this.f76249E, f11 * K8.d.b());
        } else {
            this.f76250F = this.f76249E;
        }
        gameObject.transform.C3(0.0f, this.f76250F, 0.0f);
    }

    private Vector2 getHA() {
        Axis h10 = C15169a.h(this.axisName);
        if (h10 != null) {
            return h10.d();
        }
        return null;
    }

    @InterfaceC15237a
    public String getAxisName() {
        return this.axisName.toString();
    }

    @InterfaceC15237a
    public float getCurrentAngle() {
        return this.f76249E;
    }

    @InterfaceC15237a
    public j getDirection() {
        return this.direction;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.SLIDE_ROTATE);
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            try {
                Component d02 = gameObject.d0(SlideRotate.class);
                if (d02 != this && d02 != null) {
                    linkedList.add(new C5.b("It is not possible to have two SlideRotate on the same object.", 12, R.color.theme_error));
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        linkedList.add(F5.c.i(Lang.l(Lang.T.DIRECTION), j.class, this.direction, new b()));
        c cVar = new c(context);
        String l10 = Lang.l(Lang.T.SENSIBILITY);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(cVar, l10, aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar.d(gameObject, this, "sensibility", cVar2);
        linkedList.add(bVar);
        linkedList.add(new C5.b(new d(context), Lang.l(Lang.T.LIMITED), b.a.SLBoolean));
        if (isLimited()) {
            C5.b bVar2 = new C5.b(new e(context), Lang.l(Lang.T.MIN_ANGLE), aVar);
            bVar2.d(gameObject, this, "minAngle", cVar2);
            linkedList.add(bVar2);
            C5.b bVar3 = new C5.b(new f(context), Lang.l(Lang.T.MAX_ANGLE), aVar);
            bVar3.d(gameObject, this, "maxAngle", cVar2);
            linkedList.add(bVar3);
        }
        C5.b bVar4 = new C5.b(new g(context), Lang.l(Lang.T.AXIS_NAME), b.a.SLString);
        linkedList.add(new C5.b(new h(context), "Lerp", aVar));
        bVar4.d(gameObject, this, "lerp", cVar2);
        linkedList.add(bVar4);
        linkedList.add(F5.c.d(getInspectorMemory(), "Mouse", new i(context, gameObject)));
        return linkedList;
    }

    @InterfaceC15237a
    public float getLerp() {
        return this.lerp;
    }

    @InterfaceC15237a
    public float getMaxAngle() {
        return this.maxAngle;
    }

    @InterfaceC15237a
    public float getMinAngle() {
        return this.minAngle;
    }

    public float getMouseSensibility() {
        return this.mouseSensibility;
    }

    @InterfaceC15237a
    public float getSensibility() {
        return this.sensibility;
    }

    @Override
    public String getTitle() {
        return f76247H;
    }

    @Override
    public Component.e getType() {
        return Component.e.SlideRotate;
    }

    @InterfaceC15237a
    public boolean isLimited() {
        return this.limited;
    }

    public boolean isUseMouse() {
        return this.useMouse;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (c8.b.k()) {
            Vector2 ha2 = getHA();
            if (ha2 != null) {
                applySlide(gameObject, ha2.f79838x, ha2.f79839y, this.sensibility);
            }
            if (this.useMouse) {
                try {
                    C15169a.g gVar = C15169a.f108812u;
                    applySlide(gameObject, gVar.f(), gVar.g(), this.mouseSensibility);
                } catch (IllegalStateException unused) {
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    @InterfaceC15237a
    public void setAxisName(String axisName) {
        this.axisName = axisName;
    }

    @InterfaceC15237a
    public void setCurrentAngle(float currentAngle) {
        this.f76249E = currentAngle;
    }

    @InterfaceC15237a
    public void setDirection(j direction) {
        this.direction = direction;
    }

    @InterfaceC15237a
    public void setLerp(float lerp) {
        this.lerp = lerp;
    }

    @InterfaceC15237a
    public void setLimited(boolean limited) {
        this.limited = limited;
    }

    @InterfaceC15237a
    public void setMaxAngle(float maxAngle) {
        this.maxAngle = maxAngle;
    }

    @InterfaceC15237a
    public void setMinAngle(float minAngle) {
        this.minAngle = minAngle;
    }

    public void setMouseSensibility(float mouseSensibility) {
        this.mouseSensibility = mouseSensibility;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76251G = run;
    }

    @InterfaceC15237a
    public void setSensibility(float sensibility) {
        this.sensibility = sensibility;
    }

    public void setUseMouse(boolean useMouse) {
        this.useMouse = useMouse;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76251G;
        if (component != null) {
            return component;
        }
        JAVARuntime.SlideRotate slideRotate = new JAVARuntime.SlideRotate(this);
        this.f76251G = slideRotate;
        return slideRotate;
    }

    @Override
    public Component mo1248clone() {
        SlideRotate slideRotate = new SlideRotate();
        slideRotate.direction = this.direction;
        slideRotate.sensibility = this.sensibility;
        slideRotate.axisName = this.axisName;
        slideRotate.limited = this.limited;
        slideRotate.minAngle = this.minAngle;
        slideRotate.maxAngle = this.maxAngle;
        slideRotate.lerp = this.lerp;
        slideRotate.useMouse = this.useMouse;
        slideRotate.mouseSensibility = this.mouseSensibility;
        return slideRotate;
    }

    public SlideRotate(j direction, float sensibility, String axisName) {
        super(f76247H);
        j jVar = j.Horizontal;
        this.limited = true;
        this.minAngle = -80.0f;
        this.maxAngle = 80.0f;
        this.lerp = 0.0f;
        this.useMouse = true;
        this.mouseSensibility = 45.0f;
        this.f76249E = 0.0f;
        this.f76250F = 0.0f;
        this.direction = direction;
        this.sensibility = sensibility;
        this.axisName = axisName;
    }

    public SlideRotate(j direction, float sensibility) {
        super(f76247H);
        j jVar = j.Horizontal;
        this.axisName = "slide";
        this.limited = true;
        this.minAngle = -80.0f;
        this.maxAngle = 80.0f;
        this.lerp = 0.0f;
        this.useMouse = true;
        this.mouseSensibility = 45.0f;
        this.f76249E = 0.0f;
        this.f76250F = 0.0f;
        this.direction = direction;
        this.sensibility = sensibility;
    }

    public SlideRotate(j direction, float sensibility, float minAngle, float maxAngle) {
        super(f76247H);
        j jVar = j.Horizontal;
        this.axisName = "slide";
        this.limited = true;
        this.lerp = 0.0f;
        this.useMouse = true;
        this.mouseSensibility = 45.0f;
        this.f76249E = 0.0f;
        this.f76250F = 0.0f;
        this.direction = direction;
        this.sensibility = sensibility;
        this.minAngle = minAngle;
        this.maxAngle = maxAngle;
    }
}
