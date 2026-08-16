package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.CarPaint;

import C5.b;
import JAVARuntime.Color;
import JAVARuntime.Runnable;
import P8.o;
import android.content.Context;
import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.CarPaint.CarbonFiberBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

@o
public class CarbonFiberBinder extends CarPaintBinder {

    @eb.f
    public Color baseColor = new Color(14, 14, 14);

    @Keep
    public final ec.d baseColor_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CarbonFiberBinder.this.c1();
        }
    };

    @eb.f
    public Color fiberColorA = new Color(8, 8, 8);

    @Keep
    public final ec.d fiberColorA_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CarbonFiberBinder.this.d1();
        }
    };

    @eb.f
    public Color fiberColorB = new Color(24, 24, 24);

    @Keep
    public final ec.d fiberColorB_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CarbonFiberBinder.this.e1();
        }
    };

    @eb.f
    public float weaveScale = 82.0f;

    @Keep
    public final ec.d weaveScale_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CarbonFiberBinder.this.k1();
        }
    };

    @eb.f
    public float weaveContrast = 0.72f;

    @Keep
    public final ec.d weaveContrast_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CarbonFiberBinder.this.j1();
        }
    };

    @eb.f
    public float fiberDepth = 0.31f;

    @Keep
    public final ec.d fiberDepth_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CarbonFiberBinder.this.f1();
        }
    };

    @eb.f
    public float roughness = 0.56f;

    @Keep
    public final ec.d roughness_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CarbonFiberBinder.this.i1();
        }
    };

    @eb.f
    public float metallic = 0.16f;

    @Keep
    public final ec.d metallic_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CarbonFiberBinder.this.g1();
        }
    };

    @eb.f
    public float normalStrength = 0.7f;

    @Keep
    public final ec.d normalStrength_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CarbonFiberBinder.this.h1();
        }
    };

    public class a implements D5.h {

        public final ShaderBinder.b f80150a;

        public class C1376a implements Runnable {

            public final Variable f80152b;

            public C1376a(final Variable val$variable) {
                this.f80152b = val$variable;
            }

            @Override
            public void run() {
                CarbonFiberBinder.this.T0(new ColorINT(this.f80152b.color_value.intColor).e0());
                ShaderBinder.b bVar = a.this.f80150a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public a(final ShaderBinder.b val$listener) {
            this.f80150a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", CarbonFiberBinder.this.baseColor.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1376a(variable));
            }
        }
    }

    public class b implements D5.h {

        public final ShaderBinder.b f80154a;

        public class a implements Runnable {

            public final Variable f80156b;

            public a(final Variable val$variable) {
                this.f80156b = val$variable;
            }

            @Override
            public void run() {
                CarbonFiberBinder.this.U0(new ColorINT(this.f80156b.color_value.intColor).e0());
                ShaderBinder.b bVar = b.this.f80154a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public b(final ShaderBinder.b val$listener) {
            this.f80154a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", CarbonFiberBinder.this.fiberColorA.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements D5.h {

        public final ShaderBinder.b f80158a;

        public class a implements Runnable {

            public final Variable f80160b;

            public a(final Variable val$variable) {
                this.f80160b = val$variable;
            }

            @Override
            public void run() {
                CarbonFiberBinder.this.V0(new ColorINT(this.f80160b.color_value.intColor).e0());
                ShaderBinder.b bVar = c.this.f80158a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public c(final ShaderBinder.b val$listener) {
            this.f80158a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", CarbonFiberBinder.this.fiberColorB.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements D5.h {

        public final ShaderBinder.b f80162a;

        public class a implements Runnable {

            public final Variable f80164b;

            public a(final Variable val$variable) {
                this.f80164b = val$variable;
            }

            @Override
            public void run() {
                CarbonFiberBinder.this.b1(this.f80164b.float_value);
                ShaderBinder.b bVar = d.this.f80162a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public d(final ShaderBinder.b val$listener) {
            this.f80162a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", CarbonFiberBinder.this.weaveScale + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public final ShaderBinder.b f80166a;

        public class a implements Runnable {

            public final Variable f80168b;

            public a(final Variable val$variable) {
                this.f80168b = val$variable;
            }

            @Override
            public void run() {
                CarbonFiberBinder.this.a1(this.f80168b.float_value);
                ShaderBinder.b bVar = e.this.f80166a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public e(final ShaderBinder.b val$listener) {
            this.f80166a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", CarbonFiberBinder.this.weaveContrast + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {

        public final ShaderBinder.b f80170a;

        public class a implements Runnable {

            public final Variable f80172b;

            public a(final Variable val$variable) {
                this.f80172b = val$variable;
            }

            @Override
            public void run() {
                CarbonFiberBinder.this.W0(this.f80172b.float_value);
                ShaderBinder.b bVar = f.this.f80170a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public f(final ShaderBinder.b val$listener) {
            this.f80170a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", CarbonFiberBinder.this.fiberDepth + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class g implements D5.h {

        public final ShaderBinder.b f80174a;

        public class a implements Runnable {

            public final Variable f80176b;

            public a(final Variable val$variable) {
                this.f80176b = val$variable;
            }

            @Override
            public void run() {
                CarbonFiberBinder.this.Z0(this.f80176b.float_value);
                ShaderBinder.b bVar = g.this.f80174a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public g(final ShaderBinder.b val$listener) {
            this.f80174a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", CarbonFiberBinder.this.roughness + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class h implements D5.h {

        public final ShaderBinder.b f80178a;

        public class a implements Runnable {

            public final Variable f80180b;

            public a(final Variable val$variable) {
                this.f80180b = val$variable;
            }

            @Override
            public void run() {
                CarbonFiberBinder.this.X0(this.f80180b.float_value);
                ShaderBinder.b bVar = h.this.f80178a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public h(final ShaderBinder.b val$listener) {
            this.f80178a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", CarbonFiberBinder.this.metallic + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class i implements D5.h {

        public final ShaderBinder.b f80182a;

        public class a implements Runnable {

            public final Variable f80184b;

            public a(final Variable val$variable) {
                this.f80184b = val$variable;
            }

            @Override
            public void run() {
                CarbonFiberBinder.this.Y0(this.f80184b.float_value);
                ShaderBinder.b bVar = i.this.f80182a;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public i(final ShaderBinder.b val$listener) {
            this.f80182a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", CarbonFiberBinder.this.normalStrength + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public void g1() {
        C0("metallic", this.metallic);
    }

    public void h1() {
        C0("normalStrength", this.normalStrength);
    }

    public void i1() {
        C0("roughness", this.roughness);
    }

    @Override
    public void D0() {
        c1();
        d1();
        e1();
        k1();
        j1();
        f1();
        i1();
        g1();
        h1();
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
        C5.b bVar2 = new C5.b(new b(listener), "Fiber Color A", aVar2);
        if (d10 != null && c10 != null && listener != null) {
            bVar2.f(d10, listener.b(), "fiberColorA", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(listener), "Fiber Color B", aVar2);
        if (d10 != null && c10 != null && listener != null) {
            bVar3.f(d10, listener.b(), "fiberColorB", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar3);
        d dVar = new d(listener);
        b.a aVar3 = b.a.SLFloat;
        steppedArrayList.add(new C5.b(dVar, "Weave Scale", aVar3));
        steppedArrayList.add(new C5.b(new e(listener), "Weave Contrast", aVar3));
        steppedArrayList.add(new C5.b(new f(listener), "Fiber Depth", aVar3));
        steppedArrayList.add(new C5.b(new g(listener), "Roughness", aVar3));
        steppedArrayList.add(new C5.b(new h(listener), "Metallic", aVar3));
        steppedArrayList.add(new C5.b(new i(listener), "Normal Strength", aVar3));
        return steppedArrayList;
    }

    public void T0(Color baseColor) {
        boolean z10 = this.baseColor.instance.intColor != baseColor.instance.intColor;
        this.baseColor = baseColor;
        if (z10) {
            Z();
            c1();
        }
    }

    public void U0(Color fiberColorA) {
        boolean z10 = this.fiberColorA.instance.intColor != fiberColorA.instance.intColor;
        this.fiberColorA = fiberColorA;
        if (z10) {
            Z();
            d1();
        }
    }

    public void V0(Color fiberColorB) {
        boolean z10 = this.fiberColorB.instance.intColor != fiberColorB.instance.intColor;
        this.fiberColorB = fiberColorB;
        if (z10) {
            Z();
            e1();
        }
    }

    public void W0(float fiberDepth) {
        boolean z10 = this.fiberDepth != fiberDepth;
        this.fiberDepth = fiberDepth;
        if (z10) {
            Z();
            f1();
        }
    }

    public void X0(float metallic) {
        boolean z10 = this.metallic != metallic;
        this.metallic = metallic;
        if (z10) {
            Z();
            g1();
        }
    }

    public void Y0(float normalStrength) {
        boolean z10 = this.normalStrength != normalStrength;
        this.normalStrength = normalStrength;
        if (z10) {
            Z();
            h1();
        }
    }

    public void Z0(float roughness) {
        boolean z10 = this.roughness != roughness;
        this.roughness = roughness;
        if (z10) {
            Z();
            i1();
        }
    }

    public void a1(float weaveContrast) {
        boolean z10 = this.weaveContrast != weaveContrast;
        this.weaveContrast = weaveContrast;
        if (z10) {
            Z();
            j1();
        }
    }

    public void b1(float weaveScale) {
        boolean z10 = this.weaveScale != weaveScale;
        this.weaveScale = weaveScale;
        if (z10) {
            Z();
            k1();
        }
    }

    public final void c1() {
        B0("baseColor", this.baseColor);
    }

    public final void d1() {
        B0("fiberColorA", this.fiberColorA);
    }

    public final void e1() {
        B0("fiberColorB", this.fiberColorB);
    }

    public final void f1() {
        C0("fiberDepth", this.fiberDepth);
    }

    public final void j1() {
        C0("weaveContrast", this.weaveContrast);
    }

    public final void k1() {
        C0("weaveScale", this.weaveScale);
    }

    @Override
    public ShaderBinder l() {
        CarbonFiberBinder carbonFiberBinder = new CarbonFiberBinder();
        carbonFiberBinder.baseColor = this.baseColor.copy();
        carbonFiberBinder.fiberColorA = this.fiberColorA.copy();
        carbonFiberBinder.fiberColorB = this.fiberColorB.copy();
        carbonFiberBinder.weaveScale = this.weaveScale;
        carbonFiberBinder.weaveContrast = this.weaveContrast;
        carbonFiberBinder.fiberDepth = this.fiberDepth;
        carbonFiberBinder.roughness = this.roughness;
        carbonFiberBinder.metallic = this.metallic;
        carbonFiberBinder.normalStrength = this.normalStrength;
        F0(carbonFiberBinder);
        return carbonFiberBinder;
    }
}
