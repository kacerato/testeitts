package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.CarPaint;

import C5.b;
import JAVARuntime.Color;
import JAVARuntime.Runnable;
import P8.o;
import android.content.Context;
import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.CarPaint.IridescentBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

@o
public class IridescentBinder extends CarPaintBinder {

    @eb.f
    public Color baseColor = new Color(20, 20, 23);

    @Keep
    public final ec.d baseColor_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            IridescentBinder.this.e1();
        }
    };

    @eb.f
    public Color shiftColorA = new Color(105, 156, 242);

    @Keep
    public final ec.d shiftColorA_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            IridescentBinder.this.m1();
        }
    };

    @eb.f
    public Color shiftColorB = new Color(78, 88, 182);

    @Keep
    public final ec.d shiftColorB_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            IridescentBinder.this.n1();
        }
    };

    @eb.f
    public Color flakeColor = new Color(245, 246, 255);

    @Keep
    public final ec.d flakeColor_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            IridescentBinder.this.g1();
        }
    };

    @eb.f
    public float filmThickness = 0.85f;

    @Keep
    public final ec.d filmThickness_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            IridescentBinder.this.f1();
        }
    };

    @eb.f
    public float iridescenceStrength = 0.55f;

    @Keep
    public final ec.d iridescenceStrength_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            IridescentBinder.this.i1();
        }
    };

    @eb.f
    public float flakeIntensity = 0.85f;

    @Keep
    public final ec.d flakeIntensity_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            IridescentBinder.this.h1();
        }
    };

    @eb.f
    public float roughness = 0.24f;

    @Keep
    public final ec.d roughness_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            IridescentBinder.this.l1();
        }
    };

    @eb.f
    public float metallic = 0.88f;

    @Keep
    public final ec.d metallic_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            IridescentBinder.this.j1();
        }
    };

    @eb.f
    public float normalStrength = 1.25f;

    @Keep
    public final ec.d normalStrength_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            IridescentBinder.this.k1();
        }
    };

    public class a implements D5.h {

        public final ShaderBinder.b f80186a;

        public class C1377a implements Runnable {

            public final Variable f80188b;

            public C1377a(final Variable val$variable) {
                this.f80188b = val$variable;
            }

            @Override
            public void run() {
                IridescentBinder.this.U0(new ColorINT(this.f80188b.color_value.intColor).e0());
                ShaderBinder.b bVar = a.this.f80186a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public a(final ShaderBinder.b val$listener) {
            this.f80186a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", IridescentBinder.this.baseColor.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1377a(variable));
            }
        }
    }

    public class b implements D5.h {

        public final ShaderBinder.b f80190a;

        public class a implements Runnable {

            public final Variable f80192b;

            public a(final Variable val$variable) {
                this.f80192b = val$variable;
            }

            @Override
            public void run() {
                IridescentBinder.this.a1(this.f80192b.float_value);
                ShaderBinder.b bVar = b.this.f80190a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public b(final ShaderBinder.b val$listener) {
            this.f80190a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", IridescentBinder.this.normalStrength + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements D5.h {

        public final ShaderBinder.b f80194a;

        public class a implements Runnable {

            public final Variable f80196b;

            public a(final Variable val$variable) {
                this.f80196b = val$variable;
            }

            @Override
            public void run() {
                IridescentBinder.this.c1(new ColorINT(this.f80196b.color_value.intColor).e0());
                ShaderBinder.b bVar = c.this.f80194a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public c(final ShaderBinder.b val$listener) {
            this.f80194a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", IridescentBinder.this.shiftColorA.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements D5.h {

        public final ShaderBinder.b f80198a;

        public class a implements Runnable {

            public final Variable f80200b;

            public a(final Variable val$variable) {
                this.f80200b = val$variable;
            }

            @Override
            public void run() {
                IridescentBinder.this.d1(new ColorINT(this.f80200b.color_value.intColor).e0());
                ShaderBinder.b bVar = d.this.f80198a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public d(final ShaderBinder.b val$listener) {
            this.f80198a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", IridescentBinder.this.shiftColorB.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public final ShaderBinder.b f80202a;

        public class a implements Runnable {

            public final Variable f80204b;

            public a(final Variable val$variable) {
                this.f80204b = val$variable;
            }

            @Override
            public void run() {
                IridescentBinder.this.W0(new ColorINT(this.f80204b.color_value.intColor).e0());
                ShaderBinder.b bVar = e.this.f80202a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public e(final ShaderBinder.b val$listener) {
            this.f80202a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", IridescentBinder.this.flakeColor.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {

        public final ShaderBinder.b f80206a;

        public class a implements Runnable {

            public final Variable f80208b;

            public a(final Variable val$variable) {
                this.f80208b = val$variable;
            }

            @Override
            public void run() {
                IridescentBinder.this.V0(this.f80208b.float_value);
                ShaderBinder.b bVar = f.this.f80206a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public f(final ShaderBinder.b val$listener) {
            this.f80206a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", IridescentBinder.this.filmThickness + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class g implements D5.h {

        public final ShaderBinder.b f80210a;

        public class a implements Runnable {

            public final Variable f80212b;

            public a(final Variable val$variable) {
                this.f80212b = val$variable;
            }

            @Override
            public void run() {
                IridescentBinder.this.Y0(this.f80212b.float_value);
                ShaderBinder.b bVar = g.this.f80210a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public g(final ShaderBinder.b val$listener) {
            this.f80210a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", IridescentBinder.this.iridescenceStrength + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class h implements D5.h {

        public final ShaderBinder.b f80214a;

        public class a implements Runnable {

            public final Variable f80216b;

            public a(final Variable val$variable) {
                this.f80216b = val$variable;
            }

            @Override
            public void run() {
                IridescentBinder.this.X0(this.f80216b.float_value);
                ShaderBinder.b bVar = h.this.f80214a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public h(final ShaderBinder.b val$listener) {
            this.f80214a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", IridescentBinder.this.flakeIntensity + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class i implements D5.h {

        public final ShaderBinder.b f80218a;

        public class a implements Runnable {

            public final Variable f80220b;

            public a(final Variable val$variable) {
                this.f80220b = val$variable;
            }

            @Override
            public void run() {
                IridescentBinder.this.b1(this.f80220b.float_value);
                ShaderBinder.b bVar = i.this.f80218a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public i(final ShaderBinder.b val$listener) {
            this.f80218a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", IridescentBinder.this.roughness + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class j implements D5.h {

        public final ShaderBinder.b f80222a;

        public class a implements Runnable {

            public final Variable f80224b;

            public a(final Variable val$variable) {
                this.f80224b = val$variable;
            }

            @Override
            public void run() {
                IridescentBinder.this.Z0(this.f80224b.float_value);
                ShaderBinder.b bVar = j.this.f80222a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public j(final ShaderBinder.b val$listener) {
            this.f80222a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", IridescentBinder.this.metallic + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public void e1() {
        B0("baseColor", this.baseColor);
    }

    public void j1() {
        C0("metallic", this.metallic);
    }

    public void k1() {
        C0("normalStrength", this.normalStrength);
    }

    public void l1() {
        C0("roughness", this.roughness);
    }

    @Override
    public void D0() {
        e1();
        m1();
        n1();
        g1();
        f1();
        i1();
        h1();
        l1();
        j1();
        k1();
    }

    @Override
    public List<C5.b> H(Context context, ShaderBinder.b listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String c10 = listener != null ? listener.c() : null;
        String d10 = listener != null ? listener.d() : null;
        a aVar = new a(listener);
        b.a aVar2 = b.a.Color;
        C5.b bVar = new C5.b(aVar, "Base Color", aVar2);
        if (d10 != null && c10 != null && listener != null) {
            bVar.f(d10, listener.b(), "baseColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar);
        C5.b bVar2 = new C5.b(new c(listener), "Shift Color A", aVar2);
        if (d10 != null && c10 != null && listener != null) {
            bVar2.f(d10, listener.b(), "shiftColorA", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar2);
        C5.b bVar3 = new C5.b(new d(listener), "Shift Color B", aVar2);
        if (d10 != null && c10 != null && listener != null) {
            bVar3.f(d10, listener.b(), "shiftColorB", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar3);
        C5.b bVar4 = new C5.b(new e(listener), "Flake Color", aVar2);
        if (d10 != null && c10 != null && listener != null) {
            bVar4.f(d10, listener.b(), "flakeColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar4);
        f fVar = new f(listener);
        b.a aVar3 = b.a.SLFloat;
        steppedArrayList.add(new C5.b(fVar, "Film Thickness", aVar3));
        steppedArrayList.add(new C5.b(new g(listener), "Iridescence Strength", aVar3));
        steppedArrayList.add(new C5.b(new h(listener), "Flake Intensity", aVar3));
        steppedArrayList.add(new C5.b(new i(listener), "Roughness", aVar3));
        steppedArrayList.add(new C5.b(new j(listener), "Metallic", aVar3));
        steppedArrayList.add(new C5.b(new b(listener), "Normal Strength", aVar3));
        return steppedArrayList;
    }

    public void U0(Color baseColor) {
        boolean z10 = this.baseColor.instance.intColor != baseColor.instance.intColor;
        this.baseColor = baseColor;
        if (z10) {
            Z();
            e1();
        }
    }

    public void V0(float filmThickness) {
        boolean z10 = this.filmThickness != filmThickness;
        this.filmThickness = filmThickness;
        if (z10) {
            Z();
            f1();
        }
    }

    public void W0(Color flakeColor) {
        boolean z10 = this.flakeColor.instance.intColor != flakeColor.instance.intColor;
        this.flakeColor = flakeColor;
        if (z10) {
            Z();
            g1();
        }
    }

    public void X0(float flakeIntensity) {
        boolean z10 = this.flakeIntensity != flakeIntensity;
        this.flakeIntensity = flakeIntensity;
        if (z10) {
            Z();
            h1();
        }
    }

    public void Y0(float iridescenceStrength) {
        boolean z10 = this.iridescenceStrength != iridescenceStrength;
        this.iridescenceStrength = iridescenceStrength;
        if (z10) {
            Z();
            i1();
        }
    }

    public void Z0(float metallic) {
        boolean z10 = this.metallic != metallic;
        this.metallic = metallic;
        if (z10) {
            Z();
            j1();
        }
    }

    public void a1(float normalStrength) {
        boolean z10 = this.normalStrength != normalStrength;
        this.normalStrength = normalStrength;
        if (z10) {
            Z();
            k1();
        }
    }

    public void b1(float roughness) {
        boolean z10 = this.roughness != roughness;
        this.roughness = roughness;
        if (z10) {
            Z();
            l1();
        }
    }

    public void c1(Color shiftColorA) {
        boolean z10 = this.shiftColorA.instance.intColor != shiftColorA.instance.intColor;
        this.shiftColorA = shiftColorA;
        if (z10) {
            Z();
            m1();
        }
    }

    public void d1(Color shiftColorB) {
        boolean z10 = this.shiftColorB.instance.intColor != shiftColorB.instance.intColor;
        this.shiftColorB = shiftColorB;
        if (z10) {
            Z();
            n1();
        }
    }

    public final void f1() {
        C0("filmThickness", this.filmThickness);
    }

    public final void g1() {
        B0("flakeColor", this.flakeColor);
    }

    public final void h1() {
        C0("flakeIntensity", this.flakeIntensity);
    }

    public final void i1() {
        C0("iridescenceStrength", this.iridescenceStrength);
    }

    @Override
    public ShaderBinder l() {
        IridescentBinder iridescentBinder = new IridescentBinder();
        iridescentBinder.baseColor = this.baseColor.copy();
        iridescentBinder.shiftColorA = this.shiftColorA.copy();
        iridescentBinder.shiftColorB = this.shiftColorB.copy();
        iridescentBinder.flakeColor = this.flakeColor.copy();
        iridescentBinder.filmThickness = this.filmThickness;
        iridescentBinder.iridescenceStrength = this.iridescenceStrength;
        iridescentBinder.flakeIntensity = this.flakeIntensity;
        iridescentBinder.roughness = this.roughness;
        iridescentBinder.metallic = this.metallic;
        iridescentBinder.normalStrength = this.normalStrength;
        F0(iridescentBinder);
        return iridescentBinder;
    }

    public final void m1() {
        B0("shiftColorA", this.shiftColorA);
    }

    public final void n1() {
        B0("shiftColorB", this.shiftColorB);
    }
}
