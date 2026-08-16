package com.itsmagic.engine.Engines.Engine.Material;

import C5.b;
import Ic.C2629h;
import Ic.C2632k;
import Ic.C2634m;
import JAVARuntime.Runnable;
import Ob.a;
import a8.C3589a;
import android.content.Context;
import android.util.Log;
import cc.C4173d;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Utils.A;
import com.itsmagic.engine.Activities.Editor.Utils.B;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.AnimatedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialShader;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Matcap.MatcapBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Dictionary.ShaderNotFoundException;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.EnumC12816b;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphBinder;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphDiskCache;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.n;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import da.C12888b;
import da.InterfaceC12890d;
import da.InterfaceC12893g;
import dc.C12903a;
import dc.C12906d;
import dc.j;
import dc.k;
import ec.EnumC13053a;
import gb.C13317e;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;
import n.C14331a;
import r4.C15147a;
import ub.p;

public class Material extends C2634m implements Serializable {

    public JAVARuntime.Material f78881A;

    public boolean f78882b;

    public boolean f78883c;

    public String f78885e;

    public transient String f78887i;

    public transient n f78888j;

    public transient boolean f78889k;

    public boolean f78896r;

    @Expose
    private ShaderGraphData shaderGraphData;

    @Expose
    private String shaderName;

    @Expose
    private final List<SerializableShaderEntry> serializedShaderEntries = new SteppedArrayList();

    public k f78884d = null;

    public transient boolean f78886g = false;

    public boolean f78890l = false;

    public boolean f78891m = false;

    public boolean f78892n = false;

    public final List<g> f78893o = new SteppedArrayList(10);

    public final List<c9.d> f78894p = new SteppedArrayList(10);

    public final List<Hb.b> f78895q = new SteppedArrayList(10);

    public Camera f78897s = null;

    public boolean f78898t = false;

    public final Mc.a<InterfaceC12890d> f78899u = new Mc.a<>();

    public class a implements D5.h {

        public final Context f78900a;

        public class C1334a implements B {

            public class C1335a implements Runnable {

                public final String f78903b;

                public C1335a(final String val$name) {
                    this.f78903b = val$name;
                }

                @Override
                public void run() {
                    Material.this.f0(this.f78903b);
                }
            }

            public C1334a() {
            }

            @Override
            public void onSelected(String name) {
                K8.a.I(new C1335a(name));
            }
        }

        public a(final Context val$context) {
            this.f78900a = val$context;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                A.c(this.f78900a, variable.f81490c, new C1334a());
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (C14331a.c()) {
                Z6.k.w1("https://itsmagic.com.br/index.html", null, C15147a.e.Below, 300.0f, 450.0f);
            } else {
                N7.c.D().B0(new n4.e(Material.this));
            }
        }
    }

    public class c implements ShaderBinder.b {

        public final InterfaceC12893g f78906a;

        public c(final InterfaceC12893g val$materialInspectorCallbacks) {
            this.f78906a = val$materialInspectorCallbacks;
        }

        @Override
        public void a() {
            this.f78906a.a();
        }

        @Override
        public Component b() {
            return this.f78906a.b();
        }

        @Override
        public String c() {
            return this.f78906a.c();
        }

        @Override
        public String d() {
            return this.f78906a.d();
        }

        @Override
        public void e() {
            Material.this.f78892n = true;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            Material.this.o0();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            Material.this.m();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            Material.this.m();
        }
    }

    public static class g {

        public final WeakReference<Object> f78911a;

        public g(Object modelRenderer) {
            this.f78911a = new WeakReference<>(modelRenderer);
        }

        public Object a() {
            return this.f78911a.get();
        }

        public boolean b() {
            return this.f78911a.get() != null;
        }

        public boolean c() {
            return this.f78911a.get() != null;
        }
    }

    public static class h {

        public final EnumC13053a f78912a;

        public final boolean f78913b;

        public final boolean f78914c;

        public final EnumC12816b f78915d;

        public h(EnumC13053a blendingMode, boolean doubleSided, boolean drawInFront, EnumC12816b refractionType) {
            this.f78912a = blendingMode;
            this.f78913b = doubleSided;
            this.f78914c = drawInFront;
            this.f78915d = refractionType;
        }
    }

    public Material() {
        this.f78885e = "";
        this.f78885e = "New material " + Tc.b.L();
    }

    public static Material n(String json) {
        Material material = null;
        try {
            Material material2 = (Material) X7.a.m().fromJson(json, Material.class);
            if (material2 == null) {
                return material2;
            }
            try {
                material2.p0();
                return material2;
            } catch (Exception e10) {
                try {
                    e10.printStackTrace();
                    return material2;
                } catch (JsonSyntaxException e11) {
                    e = e11;
                    material = material2;
                    e.printStackTrace();
                    return material;
                }
            }
        } catch (JsonSyntaxException e12) {
            e = e12;
        }
    }

    private void p0() {
    }

    private void reloadInspector() {
        if (!C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
            return;
        }
        int i10 = 0;
        while (true) {
            C3589a c3589a = W7.b.f27309i;
            if (i10 >= c3589a.f31909a.f31910a.N()) {
                return;
            }
            try {
                Component L10 = c3589a.f31909a.f31910a.L(i10);
                if (L10 instanceof ModelRenderer) {
                    ModelRenderer modelRenderer = (ModelRenderer) L10;
                    if (modelRenderer.f73747F == this) {
                        modelRenderer.reloadInspector();
                    }
                } else if (L10 instanceof SkinnedModelRenderer) {
                    SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                    if (skinnedModelRenderer.getMaterial() == this) {
                        skinnedModelRenderer.reloadInspector();
                    }
                } else if (L10 instanceof AnimatedModelRenderer) {
                    AnimatedModelRenderer animatedModelRenderer = (AnimatedModelRenderer) L10;
                    if (animatedModelRenderer.getMaterial() == this) {
                        animatedModelRenderer.reloadInspector();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            i10++;
        }
    }

    public List<C5.b> A(Context context, InterfaceC12893g materialInspectorCallbacks) {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new a(context), this.shaderName, b.a.SLDropdownWrap);
        bVar.f2078m = "Shader";
        linkedList.add(bVar);
        if (com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.l(this)) {
            linkedList.add(new C5.b(new b(), "Open graph editor", b.a.Button));
        }
        k kVar = this.f78884d;
        if (kVar != null) {
            String str = "";
            if (kVar.g() != null && !this.f78884d.g().isEmpty()) {
                str = "" + this.f78884d.g() + "\n";
            }
            if (!str.isEmpty() || this.f78884d.k() == null) {
                linkedList.add(new C5.b("Error:\n" + str, 12, R.color.theme_error));
            } else {
                linkedList.addAll(this.f78884d.k().H(context, new c(materialInspectorCallbacks)));
            }
        }
        return linkedList;
    }

    public List<SerializableShaderEntry> B() {
        return this.serializedShaderEntries;
    }

    public ShaderGraphData C() {
        k(this.shaderGraphData);
        return this.shaderGraphData;
    }

    public String D() {
        return this.shaderName;
    }

    @Deprecated
    public boolean E(Material other, boolean forceTextureName) {
        return false;
    }

    public boolean F() {
        String g10;
        if (I()) {
            return true;
        }
        k kVar = this.f78884d;
        return (kVar == null || (g10 = kVar.g()) == null || g10.isEmpty()) ? false : true;
    }

    public boolean G() {
        return this.f78892n;
    }

    public boolean H() {
        k kVar = this.f78884d;
        return kVar != null ? this.f78882b || kVar.d() : this.f78882b;
    }

    public boolean I() {
        return z() != null;
    }

    public boolean J() {
        if (!com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.l(this)) {
            return false;
        }
        ShaderGraphData shaderGraphData = this.shaderGraphData;
        if (shaderGraphData == null || !shaderGraphData.f81296b) {
            return (this.f78888j == null || this.f78889k) ? false : true;
        }
        return true;
    }

    public c9.d K(int idx) {
        return this.f78894p.get(idx);
    }

    public int L() {
        return this.f78894p.size();
    }

    public Hb.b M(int idx) {
        return this.f78895q.get(idx);
    }

    public int N() {
        return this.f78895q.size();
    }

    public void O() {
        if (com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.l(this)) {
            if (this.shaderGraphData == null) {
                this.shaderGraphData = com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.e();
            }
            this.shaderGraphData.e();
            com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.h(this.shaderGraphData);
            ShaderGraphData shaderGraphData = this.shaderGraphData;
            if (shaderGraphData.f81296b) {
                try {
                    ShaderGraphDiskCache.v(this, shaderGraphData);
                    com.itsmagic.engine.Engines.Graphics.ShaderGraph.h hVar = new com.itsmagic.engine.Engines.Graphics.ShaderGraph.h();
                    ShaderGraphData shaderGraphData2 = this.shaderGraphData;
                    com.itsmagic.engine.Engines.Graphics.ShaderGraph.f h10 = hVar.h(shaderGraphData2, shaderGraphData2.h());
                    ShaderGraphDiskCache.t(this, h10);
                    this.f78888j = n.f(h10, this.shaderGraphData);
                    this.f78889k = false;
                    this.shaderGraphData.f81296b = false;
                    k kVar = this.f78884d;
                    if (kVar != null) {
                        kVar.a();
                        this.f78884d = null;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } else if (this.f78888j == null) {
                try {
                    com.itsmagic.engine.Engines.Graphics.ShaderGraph.f n10 = ShaderGraphDiskCache.n(this);
                    if (n10 == null || !ShaderGraphDiskCache.k(n10)) {
                        ShaderGraphDiskCache.v(this, this.shaderGraphData);
                        com.itsmagic.engine.Engines.Graphics.ShaderGraph.h hVar2 = new com.itsmagic.engine.Engines.Graphics.ShaderGraph.h();
                        ShaderGraphData shaderGraphData3 = this.shaderGraphData;
                        com.itsmagic.engine.Engines.Graphics.ShaderGraph.f h11 = hVar2.h(shaderGraphData3, shaderGraphData3.h());
                        ShaderGraphDiskCache.t(this, h11);
                        this.f78888j = n.f(h11, this.shaderGraphData);
                        this.f78889k = false;
                        this.shaderGraphData.f81296b = false;
                    } else {
                        this.f78888j = n.f(n10, this.shaderGraphData);
                        this.f78889k = false;
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            if (this.f78888j != null && !this.f78889k) {
                h T10 = T();
                this.f78888j.i(T10.f78912a, T10.f78913b, T10.f78914c, T10.f78915d);
                this.f78889k = true;
            }
            if (this.f78888j != null && this.f78889k && this.f78884d == null) {
                K8.a.B(new f());
                reloadInspector();
            }
            k kVar2 = this.f78884d;
            if (kVar2 != null && kVar2.k() != null && (this.f78884d.k() instanceof ShaderGraphBinder)) {
                ((ShaderGraphBinder) this.f78884d.k()).V0();
            }
        }
        k kVar3 = this.f78884d;
        if (kVar3 != null) {
            kVar3.i();
        }
    }

    public void P() {
        synchronized (this.f78899u) {
            for (int i10 = 0; i10 < this.f78899u.size(); i10++) {
                try {
                    this.f78899u.get(i10).a(z());
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void Q() {
        this.f78882b = false;
        k kVar = this.f78884d;
        if (kVar != null) {
            kVar.l();
        }
    }

    public void S() {
        K8.a.B(new d());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:1|(3:2|3|(1:9))|11|(2:12|13)|(9:15|17|18|(1:20)|22|23|(1:29)|31|32)|36|17|18|(0)|22|23|(3:25|27|29)|31|32) */
    /* JADX WARN: Can't wrap try/catch for region: R(17:1|2|3|(1:9)|11|12|13|(9:15|17|18|(1:20)|22|23|(1:29)|31|32)|36|17|18|(0)|22|23|(3:25|27|29)|31|32) */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d A[Catch: Exception -> 0x0041, TRY_LEAVE, TryCatch #3 {Exception -> 0x0041, blocks: (B:18:0x0033, B:20:0x003d), top: B:17:0x0033 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final h T() {
        boolean z10;
        SerializableShaderEntry d10;
        String s10;
        SerializableShaderEntry d11;
        SerializableShaderEntry d12;
        String s11;
        EnumC13053a enumC13053a = EnumC13053a.OPAQUE;
        EnumC12816b enumC12816b = EnumC12816b.NONE;
        try {
            SerializableShaderEntry d13 = SerializableShaderEntry.d("blendingMode", SerializableShaderEntry.f81157k, this.serializedShaderEntries);
            if (d13 != null && (s11 = SerializableShaderEntry.s(d13)) != null && !s11.isEmpty()) {
                enumC13053a = EnumC13053a.valueOf(s11);
            }
        } catch (Exception unused) {
        }
        boolean z11 = false;
        try {
            d12 = SerializableShaderEntry.d("doubleSided", "Boolean", this.serializedShaderEntries);
        } catch (Exception unused2) {
        }
        if (d12 != null) {
            z10 = SerializableShaderEntry.a(d12);
            d11 = SerializableShaderEntry.d("drawInFront", "Boolean", this.serializedShaderEntries);
            if (d11 != null) {
                z11 = SerializableShaderEntry.a(d11);
            }
            d10 = SerializableShaderEntry.d("refractionType", SerializableShaderEntry.f81157k, this.serializedShaderEntries);
            if (d10 != null && (s10 = SerializableShaderEntry.s(d10)) != null && !s10.isEmpty()) {
                enumC12816b = EnumC12816b.valueOf(s10);
            }
            return new h(enumC13053a, z10, z11, enumC12816b);
        }
        z10 = false;
        d11 = SerializableShaderEntry.d("drawInFront", "Boolean", this.serializedShaderEntries);
        if (d11 != null) {
        }
        d10 = SerializableShaderEntry.d("refractionType", SerializableShaderEntry.f81157k, this.serializedShaderEntries);
        if (d10 != null) {
            enumC12816b = EnumC12816b.valueOf(s10);
        }
        return new h(enumC13053a, z10, z11, enumC12816b);
    }

    public void U(ModelRenderer modelRenderer) {
        if (modelRenderer == null) {
            throw new NullPointerException("renderer can't be null");
        }
        synchronized (this.f78894p) {
            for (int i10 = 0; i10 < this.f78894p.size(); i10++) {
                try {
                    c9.d dVar = this.f78894p.get(i10);
                    if (dVar != null && dVar.c() && dVar.a() == modelRenderer) {
                        this.f78894p.remove(dVar);
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void V(SkinnedModelRenderer modelRenderer) {
        if (modelRenderer == null) {
            throw new NullPointerException("renderer can't be null");
        }
        synchronized (this.f78895q) {
            for (int i10 = 0; i10 < this.f78895q.size(); i10++) {
                try {
                    Hb.b bVar = this.f78895q.get(i10);
                    if (bVar != null && bVar.c() && bVar.a() == modelRenderer) {
                        this.f78895q.remove(bVar);
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void W(Object value) {
        if (value == null) {
            throw new NullPointerException("renderer can't be null");
        }
        synchronized (this.f78893o) {
            for (int i10 = 0; i10 < this.f78893o.size(); i10++) {
                try {
                    g gVar = this.f78893o.get(i10);
                    if (gVar != null && gVar.c() && gVar.a() == value) {
                        this.f78893o.remove(gVar);
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void X(InterfaceC12890d listener) {
        listener.getClass();
        synchronized (this.f78899u) {
            this.f78899u.remove(listener);
        }
    }

    public void Y() {
        this.f78882b = true;
    }

    public String Z() {
        return serialize(N7.c.t()).toString();
    }

    public String a0(Context context) {
        return serialize(context).toString();
    }

    public void b0(String entry, ColorINT value) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        if (value == null) {
            throw new NullPointerException("Color can't be null");
        }
        this.f78892n = true;
        k kVar = this.f78884d;
        if (kVar == null || kVar.k() == null) {
            SerializableShaderEntry.l(SerializableShaderEntry.e(entry, SerializableShaderEntry.f81153g, this.serializedShaderEntries), value);
            return;
        }
        try {
            this.f78884d.k().e0(entry, value);
        } catch (EntryNotFoundException e10) {
            throw new EntryNotFoundException(e10.getMessage());
        }
    }

    public void c0(boolean editedInGame) {
        this.f78892n = editedInGame;
    }

    public void d0(boolean pendingSave) {
        this.f78882b = pendingSave;
    }

    public void e0(ShaderGraphData shaderGraphData) {
        ShaderGraphData shaderGraphData2 = this.shaderGraphData;
        if (shaderGraphData2 != null) {
            shaderGraphData2.p(null);
        }
        this.shaderGraphData = shaderGraphData;
        k(shaderGraphData);
    }

    public void f(ModelRenderer modelRenderer) {
        if (modelRenderer == null) {
            throw new NullPointerException("renderer can't be null");
        }
        synchronized (this.f78894p) {
            for (int i10 = 0; i10 < this.f78894p.size(); i10++) {
                try {
                    c9.d dVar = this.f78894p.get(i10);
                    if (dVar != null && dVar.c() && dVar.a() == modelRenderer) {
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f78894p.add(new c9.d(modelRenderer));
        }
    }

    public void f0(String shaderName) {
        String str = this.shaderName;
        boolean z10 = str == null || !str.equals(shaderName);
        this.shaderName = shaderName;
        this.f78892n = true;
        if (z10 && !com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.l(this)) {
            this.shaderGraphData = null;
            this.f78888j = null;
            this.f78889k = false;
        }
        if (z10) {
            K8.a.B(new e());
        }
    }

    public void g0(String shaderName) {
        this.shaderName = shaderName;
        this.f78892n = true;
    }

    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        ShaderGraphData shaderGraphData;
        C2632k i10;
        String str;
        C2632k c2632k = new C2632k();
        if (!this.serializedShaderEntries.isEmpty()) {
            for (int i11 = 0; i11 < this.serializedShaderEntries.size(); i11++) {
                SerializableShaderEntry serializableShaderEntry = this.serializedShaderEntries.get(i11);
                if (serializableShaderEntry != null && SerializableShaderEntry.f81152f.equalsIgnoreCase(serializableShaderEntry.type) && (str = serializableShaderEntry.data) != null && !str.isEmpty()) {
                    c2632k.f9114a.add(serializableShaderEntry.data);
                }
            }
        }
        if (com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.l(this) && (shaderGraphData = this.shaderGraphData) != null) {
            shaderGraphData.e();
            if (this.shaderGraphData.f81295a != null) {
                for (int i12 = 0; i12 < this.shaderGraphData.f81295a.size(); i12++) {
                    ShaderGraphNode shaderGraphNode = this.shaderGraphData.f81295a.get(i12);
                    if (shaderGraphNode != null && (i10 = shaderGraphNode.i(dependencyRequest)) != null && i10.f9114a != null) {
                        for (int i13 = 0; i13 < i10.f9114a.size(); i13++) {
                            String str2 = i10.f9114a.get(i13);
                            if (str2 != null && !str2.isEmpty()) {
                                c2632k.f9114a.add(str2);
                            }
                        }
                    }
                }
            }
        }
        return c2632k;
    }

    public String getFile() {
        return this.f78885e;
    }

    public void h(SkinnedModelRenderer modelRenderer) {
        if (modelRenderer == null) {
            throw new NullPointerException("renderer can't be null");
        }
        synchronized (this.f78895q) {
            for (int i10 = 0; i10 < this.f78895q.size(); i10++) {
                try {
                    Hb.b bVar = this.f78895q.get(i10);
                    if (bVar != null && bVar.c() && bVar.a() == modelRenderer) {
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f78895q.add(new Hb.b(modelRenderer));
        }
    }

    public void h0(String entry, p value) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        this.f78892n = true;
        k kVar = this.f78884d;
        if (kVar != null && kVar.k() != null) {
            try {
                this.f78884d.k().r0(entry, value);
            } catch (EntryNotFoundException e10) {
                throw new EntryNotFoundException(e10.getMessage());
            }
        } else if (value instanceof ub.g) {
            SerializableShaderEntry.p(SerializableShaderEntry.e(entry, SerializableShaderEntry.f81152f, this.serializedShaderEntries), (ub.g) value);
        } else {
            if (value != null) {
                throw new IllegalArgumentException("Only textures loaded from a file can be serialized on a material that is not running on world");
            }
            SerializableShaderEntry.p(SerializableShaderEntry.e(entry, SerializableShaderEntry.f81152f, this.serializedShaderEntries), null);
        }
    }

    public void i(Object value) {
        if (value == null) {
            throw new NullPointerException("renderer can't be null");
        }
        synchronized (this.f78893o) {
            for (int i10 = 0; i10 < this.f78893o.size(); i10++) {
                try {
                    g gVar = this.f78893o.get(i10);
                    if (gVar != null && gVar.c() && gVar.a() == value) {
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f78893o.add(new g(value));
        }
    }

    public void i0(String entry, String file) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        this.f78892n = true;
        k kVar = this.f78884d;
        if (kVar == null || kVar.k() == null) {
            SerializableShaderEntry.o(SerializableShaderEntry.e(entry, SerializableShaderEntry.f81152f, this.serializedShaderEntries), file);
            return;
        }
        try {
            this.f78884d.k().s0(entry, file);
        } catch (EntryNotFoundException e10) {
            throw new EntryNotFoundException(e10.getMessage());
        }
    }

    public boolean isDrawInFront() {
        k kVar = this.f78884d;
        if (kVar == null) {
            return false;
        }
        return kVar.k().Q();
    }

    public void j(InterfaceC12890d listener) {
        listener.getClass();
        synchronized (this.f78899u) {
            this.f78899u.add(listener);
        }
    }

    public void j0(String entry, Vector2 value) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        if (value == null) {
            throw new NullPointerException("Vector can't be null");
        }
        this.f78892n = true;
        k kVar = this.f78884d;
        if (kVar == null || kVar.k() == null) {
            SerializableShaderEntry.m(SerializableShaderEntry.e(entry, SerializableShaderEntry.f81150d, this.serializedShaderEntries), value);
            return;
        }
        try {
            this.f78884d.k().w0(entry, value);
        } catch (EntryNotFoundException e10) {
            throw new EntryNotFoundException(e10.getMessage());
        }
    }

    public final void k(ShaderGraphData shaderGraphData) {
        if (shaderGraphData != null) {
            shaderGraphData.p(new Runnable() {
                @Override
                public final void run() {
                    Material.this.Y();
                }
            });
        }
    }

    public JAVARuntime.Material k0() {
        JAVARuntime.Material material = this.f78881A;
        if (material != null) {
            return material;
        }
        JAVARuntime.Material material2 = new JAVARuntime.Material(this);
        this.f78881A = material2;
        return material2;
    }

    public void l(String matcap, p texture) {
        k kVar = this.f78884d;
        if (kVar == null || kVar.k() == null) {
            return;
        }
        ShaderBinder k10 = this.f78884d.k();
        if (k10 instanceof MatcapBinder) {
            ((MatcapBinder) k10).z0(matcap, texture);
        }
    }

    public p l0(String entry) {
        try {
            return v(entry);
        } catch (Exception unused) {
            return null;
        }
    }

    public void m() {
        k kVar = this.f78884d;
        if (kVar != null && !kVar.h().equalsIgnoreCase(this.shaderName)) {
            try {
                this.f78884d.f(this.serializedShaderEntries);
            } catch (IndexOutOfBoundsException e10) {
                e10.printStackTrace();
                try {
                    this.f78884d.f(this.serializedShaderEntries);
                } catch (IndexOutOfBoundsException e11) {
                    e11.printStackTrace();
                }
            }
            this.f78884d.a();
            this.f78884d = null;
        }
        o0();
    }

    public void m0(String entry, p texture) {
        try {
            h0(entry, texture);
        } catch (Exception unused) {
        }
    }

    public void n0() {
        k kVar = this.f78884d;
        if (kVar != null) {
            kVar.j();
        }
    }

    public void o(C12888b event) {
        k kVar = this.f78884d;
        if (kVar != null) {
            kVar.c(event);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x014d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void o0() {
        p6.g gVar;
        C4173d c4173d;
        C4173d h10;
        if (this.f78884d == null) {
            boolean z10 = true;
            if (p6.d.E1()) {
                gVar = p6.d.L1("Loading shader [" + Tc.b.w(getFile(), true) + "]");
            } else {
                gVar = null;
            }
            if (this.shaderName == null) {
                this.shaderName = a.b.f16600a.h().l();
            }
            if (com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.l(this)) {
                try {
                    if (this.shaderGraphData == null) {
                        this.shaderGraphData = com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.e();
                        reloadInspector();
                    }
                    n nVar = this.f78888j;
                    if (nVar != null && this.f78889k) {
                        j c10 = nVar.c(this);
                        this.f78884d = c10;
                        c10.e(this, this.serializedShaderEntries);
                        P();
                        reloadInspector();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f78884d = null;
                }
                p6.d.J1(gVar);
                return;
            }
            try {
                p6.g L12 = p6.d.E1() ? p6.d.L1("Find in templates") : null;
                c4173d = a.b.f16600a.f(this.shaderName);
                try {
                    this.shaderName = c4173d.l();
                    p6.d.J1(L12);
                } catch (ShaderNotFoundException unused) {
                    p6.g L13 = p6.d.E1() ? p6.d.L1("Search shader") : null;
                    synchronized (K8.a.l().d().materialShaders) {
                        int i10 = 0;
                        while (true) {
                            try {
                                if (i10 >= K8.a.l().d().materialShaders.size()) {
                                    z10 = false;
                                    break;
                                }
                                MaterialShader materialShader = K8.a.l().d().materialShaders.get(i10);
                                if (this.shaderName.equals(materialShader.c())) {
                                    p6.g L14 = p6.d.E1() ? p6.d.L1("Compile") : null;
                                    C12903a c12903a = new C12903a(this, this.shaderName, materialShader);
                                    this.f78884d = c12903a;
                                    c12903a.e(this, this.serializedShaderEntries);
                                    P();
                                    reloadInspector();
                                    p6.d.J1(L14);
                                } else {
                                    i10++;
                                }
                            } finally {
                            }
                        }
                    }
                    if (!z10) {
                        try {
                            h10 = a.b.f16600a.k(this.shaderName);
                            this.shaderName = h10.l();
                        } catch (ShaderNotFoundException unused2) {
                            Log.e("Material", "ShaderNotFound:" + this.shaderName);
                            h10 = a.b.f16600a.h();
                            this.shaderName = h10.l();
                        }
                        c4173d = h10;
                    }
                    p6.d.J1(L13);
                    if (c4173d != null) {
                    }
                    p6.d.J1(gVar);
                }
            } catch (ShaderNotFoundException unused3) {
                c4173d = null;
            }
            if (c4173d != null) {
                try {
                    p6.g L15 = p6.d.E1() ? p6.d.L1("Compile") : null;
                    C12906d f10 = c4173d.f(this);
                    this.f78884d = f10;
                    f10.e(this, this.serializedShaderEntries);
                    p6.d.J1(L15);
                    reloadInspector();
                } catch (Exception e11) {
                    System.out.println("FAILED SHADER:" + this.shaderName);
                    e11.printStackTrace();
                    k kVar = this.f78884d;
                    if (kVar != null) {
                        kVar.a();
                    }
                    this.f78884d = null;
                }
            }
            p6.d.J1(gVar);
        }
    }

    public boolean p(String entry) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        k kVar = this.f78884d;
        if (kVar != null && kVar.k() != null) {
            try {
                return this.f78884d.k().s(entry);
            } catch (EntryNotFoundException e10) {
                throw new EntryNotFoundException(e10.getMessage());
            }
        }
        SerializableShaderEntry d10 = SerializableShaderEntry.d(entry, "Boolean", this.serializedShaderEntries);
        if (d10 != null) {
            return SerializableShaderEntry.a(d10);
        }
        throw new EntryNotFoundException(entry);
    }

    public ColorINT q(String entry) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        k kVar = this.f78884d;
        if (kVar != null && kVar.k() != null) {
            try {
                return this.f78884d.k().t(entry);
            } catch (EntryNotFoundException e10) {
                throw new EntryNotFoundException(e10.getMessage());
            }
        }
        SerializableShaderEntry d10 = SerializableShaderEntry.d(entry, SerializableShaderEntry.f81153g, this.serializedShaderEntries);
        if (d10 != null) {
            return SerializableShaderEntry.c(d10);
        }
        throw new EntryNotFoundException(entry);
    }

    public float r(String entry) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        k kVar = this.f78884d;
        if (kVar != null && kVar.k() != null) {
            try {
                return this.f78884d.k().u(entry);
            } catch (EntryNotFoundException e10) {
                throw new EntryNotFoundException(e10.getMessage());
            }
        }
        SerializableShaderEntry d10 = SerializableShaderEntry.d(entry, SerializableShaderEntry.f81148b, this.serializedShaderEntries);
        if (d10 != null) {
            return SerializableShaderEntry.g(d10);
        }
        throw new EntryNotFoundException(entry);
    }

    public void reloadFilesPaths(BuildDictionary dictionary) {
        ShaderGraphData shaderGraphData;
        String str;
        BuildDicFile f10;
        if (!this.serializedShaderEntries.isEmpty()) {
            for (int i10 = 0; i10 < this.serializedShaderEntries.size(); i10++) {
                SerializableShaderEntry serializableShaderEntry = this.serializedShaderEntries.get(i10);
                if (serializableShaderEntry != null && SerializableShaderEntry.f81152f.equalsIgnoreCase(serializableShaderEntry.type) && (str = serializableShaderEntry.data) != null && !str.isEmpty() && (f10 = dictionary.f(serializableShaderEntry.data)) != null) {
                    dictionary.h("Material: REPLACING " + serializableShaderEntry.data + " TO " + f10.b());
                    if (f10.c().contains("/")) {
                        serializableShaderEntry.data = f10.b();
                    } else {
                        serializableShaderEntry.data = f10.b();
                    }
                }
            }
        }
        if (!com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.l(this) || (shaderGraphData = this.shaderGraphData) == null) {
            return;
        }
        shaderGraphData.e();
        if (this.shaderGraphData.f81295a != null) {
            for (int i11 = 0; i11 < this.shaderGraphData.f81295a.size(); i11++) {
                ShaderGraphNode shaderGraphNode = this.shaderGraphData.f81295a.get(i11);
                if (shaderGraphNode != null) {
                    shaderGraphNode.C(dictionary);
                }
            }
            this.shaderGraphData.q();
        }
    }

    public int s(String entry) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        k kVar = this.f78884d;
        if (kVar != null && kVar.k() != null) {
            try {
                return this.f78884d.k().v(entry);
            } catch (EntryNotFoundException e10) {
                throw new EntryNotFoundException(e10.getMessage());
            }
        }
        SerializableShaderEntry d10 = SerializableShaderEntry.d(entry, SerializableShaderEntry.f81155i, this.serializedShaderEntries);
        if (d10 != null) {
            return SerializableShaderEntry.h(d10);
        }
        throw new EntryNotFoundException(entry);
    }

    public JsonElement serialize(Context context) {
        k kVar = this.f78884d;
        if (kVar != null) {
            kVar.f(this.serializedShaderEntries);
        }
        JsonElement jsonTree = X7.a.m().toJsonTree(this);
        return jsonTree;
    }

    public void setBoolean(String entry, boolean value) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        this.f78892n = true;
        k kVar = this.f78884d;
        if (kVar == null || kVar.k() == null) {
            SerializableShaderEntry.q(SerializableShaderEntry.e(entry, "Boolean", this.serializedShaderEntries), value);
            return;
        }
        try {
            this.f78884d.k().d0(entry, value);
        } catch (EntryNotFoundException e10) {
            throw new EntryNotFoundException(e10.getMessage());
        }
    }

    public void setFile(String file) {
        this.f78885e = file;
    }

    public void setFloat(String entry, float value) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        this.f78892n = true;
        k kVar = this.f78884d;
        if (kVar == null || kVar.k() == null) {
            SerializableShaderEntry.i(SerializableShaderEntry.e(entry, SerializableShaderEntry.f81148b, this.serializedShaderEntries), value);
            return;
        }
        try {
            this.f78884d.k().i0(entry, value);
        } catch (EntryNotFoundException e10) {
            throw new EntryNotFoundException(e10.getMessage());
        }
    }

    public void setInt(String entry, int value) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        this.f78892n = true;
        k kVar = this.f78884d;
        if (kVar == null || kVar.k() == null) {
            SerializableShaderEntry.j(SerializableShaderEntry.e(entry, SerializableShaderEntry.f81155i, this.serializedShaderEntries), value);
            return;
        }
        try {
            this.f78884d.k().l0(entry, value);
        } catch (EntryNotFoundException e10) {
            throw new EntryNotFoundException(e10.getMessage());
        }
    }

    public void setString(String entry, String value) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        this.f78892n = true;
        k kVar = this.f78884d;
        if (kVar == null || kVar.k() == null) {
            SerializableShaderEntry.o(SerializableShaderEntry.e(entry, SerializableShaderEntry.f81157k, this.serializedShaderEntries), value);
            return;
        }
        try {
            this.f78884d.k().q0(entry, value);
        } catch (EntryNotFoundException e10) {
            throw new EntryNotFoundException(e10.getMessage());
        }
    }

    public String u(String entry) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        k kVar = this.f78884d;
        if (kVar != null && kVar.k() != null) {
            try {
                return this.f78884d.k().x(entry);
            } catch (EntryNotFoundException e10) {
                throw new EntryNotFoundException(e10.getMessage());
            }
        }
        SerializableShaderEntry d10 = SerializableShaderEntry.d(entry, SerializableShaderEntry.f81157k, this.serializedShaderEntries);
        if (d10 != null) {
            return SerializableShaderEntry.s(d10);
        }
        throw new EntryNotFoundException(entry);
    }

    public p v(String entry) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        k kVar = this.f78884d;
        if (kVar != null && kVar.k() != null) {
            try {
                return this.f78884d.k().y(entry);
            } catch (EntryNotFoundException e10) {
                throw new EntryNotFoundException(e10.getMessage());
            }
        }
        SerializableShaderEntry d10 = SerializableShaderEntry.d(entry, SerializableShaderEntry.f81152f, this.serializedShaderEntries);
        if (d10 != null) {
            return SerializableShaderEntry.u(d10);
        }
        throw new EntryNotFoundException(entry);
    }

    public String w(String entry) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        k kVar = this.f78884d;
        if (kVar != null && kVar.k() != null) {
            try {
                return this.f78884d.k().z(entry);
            } catch (EntryNotFoundException e10) {
                throw new EntryNotFoundException(e10.getMessage());
            }
        }
        SerializableShaderEntry d10 = SerializableShaderEntry.d(entry, SerializableShaderEntry.f81152f, this.serializedShaderEntries);
        if (d10 != null) {
            return d10.data;
        }
        throw new EntryNotFoundException(entry);
    }

    public Vector2 x(String entry) {
        if (entry == null || entry.isEmpty()) {
            throw new RuntimeException("Invalid entry name");
        }
        this.f78892n = true;
        k kVar = this.f78884d;
        if (kVar != null && kVar.k() != null) {
            try {
                return this.f78884d.k().A(entry);
            } catch (EntryNotFoundException e10) {
                throw new EntryNotFoundException(e10.getMessage());
            }
        }
        SerializableShaderEntry d10 = SerializableShaderEntry.d(entry, SerializableShaderEntry.f81150d, this.serializedShaderEntries);
        if (d10 != null) {
            return SerializableShaderEntry.v(d10);
        }
        throw new EntryNotFoundException(entry);
    }

    public k y() {
        return this.f78884d;
    }

    public FilamentMaterial z() {
        k kVar = this.f78884d;
        if (kVar == null) {
            return null;
        }
        return kVar.b();
    }
}
