package dc;

import cc.C4171b;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import da.C12888b;
import java.util.List;
import nc.C14377b;
import pc.C14955g;

public class C12906d implements k {

    public final C4171b f84507a;

    public final String f84508b;

    public final ShaderBinder f84509c;

    public boolean f84510d;

    public Material f84511e;

    public final cc.f f84512f;

    public volatile ec.i f84513g;

    public volatile boolean f84514h;

    public volatile boolean f84515i;

    public class a implements cc.f {
        public a() {
        }

        @Override
        public void a() {
            C12906d.this.v();
        }

        @Override
        public ec.i getVariance() {
            return C12906d.this.t();
        }
    }

    public C12906d(String shaderName, ShaderBinder shaderBinder, C4171b forwardPass, Material material) {
        this(shaderName, shaderBinder, forwardPass, material, true);
    }

    @Override
    public void a() {
        ShaderBinder shaderBinder = this.f84509c;
        if (shaderBinder != null) {
            shaderBinder.X();
        }
    }

    @Override
    public FilamentMaterial b() {
        C4171b c4171b = this.f84507a;
        if (c4171b == null) {
            return null;
        }
        return c4171b.e();
    }

    @Override
    public void c(C12888b event) {
        C4171b c4171b;
        if ((event instanceof C14955g) && (c4171b = this.f84507a) != null && c4171b.j()) {
            this.f84515i = true;
        }
        ShaderBinder shaderBinder = this.f84509c;
        if (shaderBinder != null) {
            shaderBinder.o(event);
        }
    }

    @Override
    public boolean d() {
        ShaderBinder shaderBinder = this.f84509c;
        return shaderBinder != null && shaderBinder.S();
    }

    @Override
    public void e(Material material, List<SerializableShaderEntry> serializableShaderEntries) {
        this.f84511e = material;
        this.f84509c.t0(null);
        this.f84509c.b0(serializableShaderEntries);
        this.f84509c.o0(false);
        this.f84509c.t0(this.f84512f);
        this.f84510d = true;
        v();
    }

    @Override
    public void f(List<SerializableShaderEntry> serializedShaderEntries) {
        this.f84509c.c0(serializedShaderEntries);
    }

    @Override
    public String g() {
        C4171b c4171b = this.f84507a;
        if (c4171b == null) {
            return null;
        }
        return c4171b.h();
    }

    @Override
    public String h() {
        return this.f84508b;
    }

    @Override
    public void i() {
        if (r()) {
            x();
        }
        if (q()) {
            w();
        }
    }

    @Override
    public void j() {
        ShaderBinder shaderBinder = this.f84509c;
        if (shaderBinder != null) {
            shaderBinder.x0();
        }
    }

    @Override
    public <T extends ShaderBinder> T k() {
        return (T) this.f84509c;
    }

    @Override
    public void l() {
        ShaderBinder shaderBinder = this.f84509c;
        if (shaderBinder != null) {
            shaderBinder.W();
        }
    }

    public final void p() {
        C14377b C10 = this.f84509c.C();
        if (C10 != null) {
            C10.m(this.f84507a.c());
        }
        this.f84509c.h0(this.f84507a.e(), this.f84511e);
    }

    public final boolean q() {
        if (!this.f84515i) {
            return false;
        }
        this.f84515i = false;
        if (!this.f84507a.j()) {
            return false;
        }
        ec.i g10 = this.f84507a.g();
        if (g10 == null) {
            g10 = this.f84507a.d();
        }
        if (g10 == null) {
            return false;
        }
        boolean l10 = this.f84507a.l(g10);
        String h10 = this.f84507a.h();
        if (l10) {
            return h10 == null || h10.isEmpty();
        }
        return false;
    }

    public boolean r() {
        ec.i iVar = this.f84513g;
        if (!this.f84514h || iVar == null) {
            return false;
        }
        this.f84507a.k(iVar);
        String h10 = this.f84507a.h();
        this.f84513g = null;
        this.f84514h = false;
        return h10 == null || h10.isEmpty();
    }

    @Override
    public C12906d copy() {
        return new C12906d(this.f84508b, ShaderBinder.m(this.f84509c), C4171b.b(this.f84507a), this.f84511e);
    }

    public ec.i t() {
        C4171b c4171b = this.f84507a;
        if (c4171b == null) {
            return null;
        }
        return c4171b.g();
    }

    public String toString() {
        if (this.f84507a == null) {
            return "";
        }
        return ("Deferred:\n") + "\n";
    }

    public final void u() {
        ec.i g10 = this.f84507a.g();
        if (g10 == null) {
            g10 = this.f84507a.d();
        }
        if (g10 == null || !this.f84507a.n(g10, this.f84511e.f78885e)) {
            return;
        }
        p();
        this.f84511e.P();
    }

    public final void v() {
        ec.i g10 = this.f84507a.g();
        ec.i d10 = g10 != null ? g10 : this.f84507a.d();
        ec.i y02 = this.f84509c.y0(d10, this.f84507a);
        if (y02 != null) {
            d10 = y02;
        }
        if (d10 != null && !this.f84507a.i(d10)) {
            this.f84513g = d10;
            this.f84514h = true;
            return;
        }
        if ((g10 == null || d10 != g10) && d10 != null && this.f84507a.n(d10, this.f84511e.f78885e)) {
            this.f84510d = true;
        }
        if (this.f84507a.a(this.f84511e.f78885e)) {
            this.f84510d = true;
        }
        if (this.f84510d && this.f84507a.e() != null) {
            p();
            this.f84511e.P();
        }
        this.f84513g = null;
        this.f84514h = false;
    }

    public final void w() {
        K8.a.B(new Runnable() {
            @Override
            public final void run() {
                C12906d.this.u();
            }
        });
    }

    public void x() {
        K8.a.B(new RunnableC12905c(this));
    }

    public C12906d(String shaderName, ShaderBinder shaderBinder, C4171b forwardPass, Material material, boolean autoBuildVariance) {
        this.f84510d = false;
        a aVar = new a();
        this.f84512f = aVar;
        if (shaderBinder != null) {
            if (shaderName == null || shaderName.isEmpty()) {
                throw new NullPointerException("shadername can`t empty or null");
            }
            if (forwardPass != null) {
                this.f84508b = shaderName;
                this.f84509c = shaderBinder;
                this.f84507a = forwardPass;
                this.f84511e = material;
                shaderBinder.t0(aVar);
                if (autoBuildVariance) {
                    K8.a.I(new RunnableC12905c(this));
                    return;
                }
                return;
            }
            throw new NullPointerException("forwardPass cant be null");
        }
        throw new NullPointerException("shaderBinder cant be null");
    }
}
