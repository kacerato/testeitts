package com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic;

import JAVARuntime.Color;
import JAVARuntime.FloatSlider;
import JAVARuntime.Texture;
import P8.o;
import android.content.Context;
import androidx.annotation.Keep;
import cc.C4171b;
import cc.f;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.itsmagic.engine.Engines.Engine.Animation.c;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.EmbeddedMatMR;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.EntryNotFoundException;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.Rect;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.C12888b;
import eb.C13050a;
import eb.g;
import ec.d;
import ec.i;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;
import nc.C14377b;
import nc.h;
import ub.p;
import yb.C16165b;

@o
public class ShaderBinder {
    private C14377b easyShaderEntity;
    private FilamentMaterial filamentMaterial;
    private h globalShaderEntity;
    private Material material;
    private boolean pendingSave;
    private List<g> publicEntryRefs;
    private f varianceWatcher;
    private Field[] fields = null;

    @eb.f
    private int materialID = 0;

    @Keep
    public final d materialID_OFCBRL = new d() {
        @Override
        public final void a() {
            ShaderBinder.this.h();
        }
    };
    private boolean animEntriesChecked = false;

    public class a extends P8.a {

        public final b f81113a;

        public a(final b val$listener) {
            this.f81113a = val$listener;
        }

        @Override
        public void a(Field field, Object instance, Class address) {
            this.f81113a.e();
        }

        @Override
        public void b() {
            this.f81113a.a();
        }
    }

    public interface b {
        void a();

        Component b();

        String c();

        String d();

        void e();
    }

    public static String V(String value) {
        if (value == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < value.length(); i10++) {
            char charAt = value.charAt(i10);
            if (Character.isLetterOrDigit(charAt)) {
                sb2.append(Character.toLowerCase(charAt));
            }
        }
        return sb2.toString();
    }

    public static ShaderBinder m(ShaderBinder shaderBinder) {
        ShaderBinder l10 = shaderBinder.l();
        if (shaderBinder.C() != null) {
            l10.g0(shaderBinder.C().a());
        }
        if (shaderBinder.F() != null) {
            l10.k0(shaderBinder.F().a());
        }
        l10.n0(shaderBinder.K());
        return l10;
    }

    public Vector2 A(String entry) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry not found: " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Vector2.class && field.getName().equalsIgnoreCase(entry)) {
                try {
                    Vector2 vector2 = (Vector2) field.get(this);
                    if (vector2 != null) {
                        return vector2;
                    }
                    return null;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            if (field.getType() == JAVARuntime.Vector2.class && field.getName().equalsIgnoreCase(entry)) {
                try {
                    JAVARuntime.Vector2 vector22 = (JAVARuntime.Vector2) field.get(this);
                    if (vector22 != null) {
                        return vector22.instance;
                    }
                    return null;
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                }
            }
            i10++;
        }
    }

    public ColorINT B(String entryName) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return gVar.b().getType() == Color.class ? ((Color) gVar.b().get(this)).instance : (ColorINT) gVar.b().get(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public C14377b C() {
        return this.easyShaderEntity;
    }

    public FilamentMaterial D() {
        return this.filamentMaterial;
    }

    public float E(String entryName) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return gVar.b().getFloat(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return 0.0f;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public h F() {
        return this.globalShaderEntity;
    }

    public Class G() {
        return getClass();
    }

    public List<C5.b> H(Context context, b listener) {
        Class G10;
        LinkedList linkedList = new LinkedList();
        if (context != null && (G10 = G()) != null) {
            linkedList.addAll(P8.f.B(G10, this, context, false, new a(listener)));
        }
        return linkedList;
    }

    public int I(String entryName) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return gVar.b().getInt(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return 0;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public Material J() {
        return this.material;
    }

    public int K() {
        return this.materialID;
    }

    public Quaternion L(String entryName) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return (Quaternion) gVar.b().get(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public i M() {
        f fVar = this.varianceWatcher;
        if (fVar == null) {
            return null;
        }
        return fVar.getVariance();
    }

    public Vector2 N(String entryName) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return (Vector2) gVar.b().get(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public Vector3 O(String entryName) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return (Vector3) gVar.b().get(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public void P() {
        f fVar = this.varianceWatcher;
        if (fVar != null) {
            fVar.a();
        }
    }

    public boolean Q() {
        return false;
    }

    public boolean R() {
        return false;
    }

    public boolean S() {
        return this.pendingSave;
    }

    public void T(Texture textureInstance, boolean wantedGamma, String attached) {
        if (textureInstance == null) {
            return;
        }
        U(textureInstance.instance, wantedGamma, attached);
    }

    public void U(p textureInstance, boolean wantedGamma, String attached) {
        if (textureInstance == null || this.material == null || !(textureInstance instanceof ub.g)) {
            return;
        }
        ub.g gVar = (ub.g) textureInstance;
        if (gVar.u0().gammaCorrection != wantedGamma) {
            J4.d.E1();
            if (wantedGamma) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(J4.d.H1("LINT: ", "41, 255, 8"));
                sb2.append(J4.d.F1(Tc.b.d(attached)));
                sb2.append(J4.d.y2(" texture:"));
                sb2.append(J4.d.u2(J4.d.v2(J4.d.q2(Tc.b.v(gVar.getFile())), "open:" + gVar.getFile())));
                sb2.append(J4.d.y2(" of material "));
                sb2.append(J4.d.u2(J4.d.v2(J4.d.q2(Tc.b.v(this.material.getFile())), "open:" + this.material.getFile())));
                sb2.append(J4.d.y2(" needs gamma correction toggle to be "));
                sb2.append(J4.d.F1("activated"));
                sb2.append(J4.d.y2(" in texture settings, gamma correction needs to be activated on albedo/emissive textures."));
                sb2.append(J4.d.y2(" Tap in file name here to open file in files panel!"));
                J4.d.L1(sb2.toString());
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(J4.d.H1("LINT: ", "41, 255, 8"));
            sb3.append(J4.d.F1(Tc.b.d(attached)));
            sb3.append(J4.d.y2(" texture:"));
            sb3.append(J4.d.u2(J4.d.v2(J4.d.q2(Tc.b.v(gVar.getFile())), "open:" + gVar.getFile())));
            sb3.append(J4.d.y2(" of material "));
            sb3.append(J4.d.u2(J4.d.v2(J4.d.q2(Tc.b.v(this.material.getFile())), "open:" + this.material.getFile())));
            sb3.append(J4.d.y2(" needs gamma correction toggle to be "));
            sb3.append(J4.d.F1("deactivated"));
            sb3.append(J4.d.y2(" in texture settings, only activate gamma correction to albedo/emissive textures."));
            sb3.append(J4.d.y2(" Tap in file name here to open file in files panel!"));
            J4.d.L1(sb3.toString());
        }
    }

    public void W() {
        this.pendingSave = false;
    }

    public void X() {
    }

    public final void Y() {
        if (this.fields == null) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (Class<?> cls = getClass(); cls != Component.class && cls != ShaderBinder.class && cls != null && cls != Object.class; cls = cls.getSuperclass()) {
                for (Field field : cls.getDeclaredFields()) {
                    steppedArrayList.add(field);
                    field.setAccessible(true);
                }
            }
            this.fields = (Field[]) steppedArrayList.toArray(new Field[steppedArrayList.size()]);
        }
    }

    public void Z() {
        this.pendingSave = true;
    }

    public boolean a0() {
        return false;
    }

    public void b() {
    }

    public void b0(List<SerializableShaderEntry> dataList) {
        throw new RuntimeException("override this method on class " + getClass().getSimpleName());
    }

    public void c() {
    }

    public void c0(List<SerializableShaderEntry> dataList) {
        throw new RuntimeException("override this method on class " + getClass().getSimpleName());
    }

    public boolean d() {
        return true;
    }

    public void d0(String entry, boolean value) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry of type Boolean not found with name " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Boolean.TYPE && field.getName().equalsIgnoreCase(entry)) {
                try {
                    field.setBoolean(this, value);
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            i10++;
        }
    }

    public int e() {
        List<g> list = this.publicEntryRefs;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void e0(String entry, ColorINT colorINT) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry of type Color not found with name " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Color.class && (field.getName().equalsIgnoreCase(entry) || (entry.equalsIgnoreCase("color") && field.getName().equalsIgnoreCase("diffuse")))) {
                try {
                    if (colorINT != null) {
                        field.set(this, colorINT.e0());
                        w(field);
                    } else {
                        field.set(this, null);
                        w(field);
                    }
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            i10++;
        }
    }

    public String f(int index) {
        List<g> list = this.publicEntryRefs;
        if (list == null) {
            return null;
        }
        return list.get(index).c();
    }

    public void f0(String entryName, ColorINT value) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    if (gVar.b().getType() == Color.class) {
                        gVar.b().set(this, value.e0());
                        gVar.a(this);
                    } else {
                        gVar.b().set(this, value);
                        gVar.a(this);
                    }
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public c g(int index) {
        g gVar;
        List<g> list = this.publicEntryRefs;
        if (list != null && (gVar = list.get(index)) != null && gVar.b() != null) {
            if (gVar.b().getType() == ColorINT.class || gVar.b().getType() == Color.class) {
                return c.COLOR;
            }
            if (gVar.b().getType() == Vector3.class || gVar.b().getType() == JAVARuntime.Vector3.class) {
                return c.VEC3;
            }
            if (gVar.b().getType() == Vector2.class || gVar.b().getType() == JAVARuntime.Vector2.class) {
                return c.VEC2;
            }
            if (gVar.b().getType() == Quaternion.class || gVar.b().getType() == JAVARuntime.Quaternion.class) {
                return c.QUAT;
            }
            if (gVar.b().getType() == Float.TYPE) {
                return c.FLOAT;
            }
            if (gVar.b().getType() == Integer.TYPE) {
                return c.INT;
            }
        }
        return null;
    }

    public void g0(C14377b easyShaderEntity) {
        this.easyShaderEntity = easyShaderEntity;
    }

    public final void h() {
        h hVar = this.globalShaderEntity;
        if (hVar != null) {
            hVar.x(this.materialID);
        }
    }

    public void h0(FilamentMaterial filamentMaterial, Material material) {
        this.filamentMaterial = filamentMaterial;
        this.material = material;
        h hVar = this.globalShaderEntity;
        if (hVar != null) {
            hVar.d(filamentMaterial);
        }
        C14377b c14377b = this.easyShaderEntity;
        if (c14377b != null) {
            c14377b.d(filamentMaterial);
        }
        h();
    }

    @Deprecated
    public boolean i(Texture tex, p fallback, String name, FilamentMaterial filamentMaterial) {
        if (Texture.isRenderable(tex)) {
            if (filamentMaterial.m(name + "Sprite")) {
                filamentMaterial.E(name + "Sprite", 0.0f, 0.0f, 1.0f, 1.0f);
            }
            tex.instance.f(filamentMaterial, name);
            return true;
        }
        if (!p.L(fallback)) {
            return false;
        }
        if (filamentMaterial.m(name + "Sprite")) {
            filamentMaterial.E(name + "Sprite", 0.0f, 0.0f, 1.0f, 1.0f);
        }
        fallback.f(filamentMaterial, name);
        return true;
    }

    public void i0(String entry, float value) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry of type Float not found with name " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Float.TYPE) {
                if (field.getName().equalsIgnoreCase(entry)) {
                    try {
                        field.setFloat(this, value);
                        Z();
                        return;
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                } else {
                    continue;
                }
            } else if (field.getType() == FloatSlider.class && field.getName().equalsIgnoreCase(entry)) {
                try {
                    FloatSlider floatSlider = (FloatSlider) field.get(this);
                    if (floatSlider == null) {
                        floatSlider = new FloatSlider(0.0f, 0.0f, 1.0f);
                    }
                    floatSlider.setValue(value);
                    field.set(this, floatSlider);
                    w(field);
                    Z();
                    return;
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                }
            }
            i10++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean j(Texture tex, p fallback, String name, FilamentMaterial filamentMaterial, int spriteIndex) {
        float f10;
        float f11;
        float f12;
        float f13;
        if (!Texture.isRenderable(tex)) {
            if (!p.L(fallback)) {
                return false;
            }
            if (filamentMaterial.m(name + "Sprite")) {
                filamentMaterial.E(name + "Sprite", 0.0f, 0.0f, 1.0f, 1.0f);
            }
            fallback.f(filamentMaterial, name);
            return true;
        }
        p pVar = tex.instance;
        if (pVar instanceof ub.g) {
            TextureConfig u02 = ((ub.g) pVar).u0();
            if (u02.type == TextureConfig.f.Sprite && u02.v() != null && u02.v().C() > 0) {
                Rect B10 = u02.v().B(Nc.b.F(0, spriteIndex, u02.v().C() - 1));
                float d10 = B10.d();
                float e10 = B10.e();
                float c10 = B10.c();
                f13 = B10.b();
                f10 = d10;
                f11 = e10;
                f12 = c10;
                if (filamentMaterial.m(name + "Sprite")) {
                    filamentMaterial.E(name + "Sprite", f10, f11, f12, f13);
                }
                tex.instance.f(filamentMaterial, name);
                return true;
            }
        }
        f10 = 0.0f;
        f11 = 0.0f;
        f12 = 1.0f;
        f13 = 1.0f;
        if (filamentMaterial.m(name + "Sprite")) {
        }
        tex.instance.f(filamentMaterial, name);
        return true;
    }

    public void j0(String entryName, float value) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().setFloat(this, value);
                    gVar.a(this);
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public List<i> k(C4171b renderPass) {
        return null;
    }

    public void k0(h globalShaderEntity) {
        this.globalShaderEntity = globalShaderEntity;
        h();
    }

    public ShaderBinder l() {
        throw new RuntimeException("override this method on class " + getClass().getSimpleName());
    }

    public void l0(String entry, int value) {
        Y();
        if (entry.equalsIgnoreCase("materialID")) {
            n0(value);
            Z();
        } else {
            throw new EntryNotFoundException("Entry of type Int not found with name " + entry);
        }
    }

    public void m0(String entryName, int value) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().setInt(this, value);
                    gVar.a(this);
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public final void n() {
        if (this.animEntriesChecked) {
            return;
        }
        this.animEntriesChecked = true;
        this.publicEntryRefs = C13050a.g(getClass());
    }

    public void n0(int materialID) {
        int max = Math.max(-32768, Math.min(32767, materialID));
        boolean z10 = this.materialID != max;
        this.materialID = max;
        if (z10) {
            h();
            Z();
        }
    }

    public void o(C12888b event) {
        h hVar = this.globalShaderEntity;
        if (hVar != null) {
            hVar.b(event);
        }
        C14377b c14377b = this.easyShaderEntity;
        if (c14377b != null) {
            c14377b.b(event);
        }
    }

    public void o0(boolean pendingSave) {
        this.pendingSave = pendingSave;
    }

    public void p(GameObject gameObject, EmbeddedMatMR modelRenderer, List<C5.b> entries) {
        String str;
        c g10;
        n();
        if (this.publicEntryRefs == null || entries == null) {
            return;
        }
        for (C5.b bVar : entries) {
            if (bVar != null && bVar.f2061N == null && (str = bVar.f2077l) != null) {
                String V10 = V(str);
                if (!V10.isEmpty()) {
                    g gVar = null;
                    int i10 = 0;
                    g gVar2 = null;
                    c cVar = null;
                    while (true) {
                        if (i10 >= this.publicEntryRefs.size()) {
                            gVar = gVar2;
                            break;
                        }
                        g gVar3 = this.publicEntryRefs.get(i10);
                        if (gVar3 != null && (g10 = g(i10)) != null) {
                            String V11 = V(gVar3.c());
                            if (!V11.isEmpty() && (V11.equalsIgnoreCase(V10) || V11.contains(V10) || V10.contains(V11))) {
                                if (gVar2 != null && gVar2 != gVar3) {
                                    cVar = null;
                                    break;
                                } else {
                                    gVar2 = gVar3;
                                    cVar = g10;
                                }
                            }
                        }
                        i10++;
                    }
                    if (gVar != null && cVar != null) {
                        bVar.d(gameObject, modelRenderer, gVar.c(), cVar);
                    }
                }
            }
        }
    }

    public void p0(String entryName, Quaternion value) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().set(this, value);
                    gVar.a(this);
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public void q(GameObject gameObject, ModelRenderer modelRenderer, List<C5.b> entries) {
        String str;
        c g10;
        n();
        if (this.publicEntryRefs == null || entries == null) {
            return;
        }
        for (C5.b bVar : entries) {
            if (bVar != null && bVar.f2061N == null && (str = bVar.f2077l) != null) {
                String V10 = V(str);
                if (!V10.isEmpty()) {
                    g gVar = null;
                    int i10 = 0;
                    g gVar2 = null;
                    c cVar = null;
                    while (true) {
                        if (i10 >= this.publicEntryRefs.size()) {
                            gVar = gVar2;
                            break;
                        }
                        g gVar3 = this.publicEntryRefs.get(i10);
                        if (gVar3 != null && (g10 = g(i10)) != null) {
                            String V11 = V(gVar3.c());
                            if (!V11.isEmpty() && (V11.equalsIgnoreCase(V10) || V11.contains(V10) || V10.contains(V11))) {
                                if (gVar2 != null && gVar2 != gVar3) {
                                    cVar = null;
                                    break;
                                } else {
                                    gVar2 = gVar3;
                                    cVar = g10;
                                }
                            }
                        }
                        i10++;
                    }
                    if (gVar != null && cVar != null) {
                        bVar.d(gameObject, modelRenderer, gVar.c(), cVar);
                    }
                }
            }
        }
    }

    public void q0(String entry, String value) {
        Field field;
        Enum r42;
        Enum r32;
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry of type String not found with name " + entry);
            }
            field = fieldArr[i10];
            if (field.getName().equalsIgnoreCase(entry)) {
                if (field.getType() == String.class) {
                    try {
                        field.set(this, value);
                        w(field);
                        Z();
                        return;
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                } else if (field.getType().isEnum()) {
                    try {
                        Class<?> type = field.getType();
                        try {
                            r32 = Enum.valueOf(type, value);
                            break;
                        } catch (IllegalArgumentException unused) {
                            Enum[] enumArr = (Enum[]) type.getEnumConstants();
                            int length = enumArr.length;
                            int i11 = 0;
                            while (true) {
                                if (i11 >= length) {
                                    r42 = null;
                                    break;
                                }
                                Enum r72 = enumArr[i11];
                                if (r72.name().equalsIgnoreCase(value)) {
                                    r42 = r72;
                                    break;
                                }
                                i11++;
                            }
                            if (r42 == null) {
                                throw new IllegalArgumentException("Valor '" + value + "' n\u00e3o existe no enum " + type.getSimpleName());
                            }
                            r32 = r42;
                        }
                    } catch (IllegalAccessException e11) {
                        e11.printStackTrace();
                    }
                } else {
                    continue;
                }
            }
            i10++;
        }
        field.set(this, r32);
        w(field);
        Z();
    }

    public p r(String entry) {
        if (entry == null) {
            return null;
        }
        if (entry.equalsIgnoreCase("albedo") || entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE)) {
            return C16165b.f130161g;
        }
        return null;
    }

    public void r0(String entry, p texture) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry of type Texture not found with name " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Texture.class && (field.getName().equalsIgnoreCase(entry) || (entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE) && field.getName().equalsIgnoreCase("albedo")))) {
                try {
                    if (texture != null) {
                        field.set(this, texture.p0());
                        w(field);
                    } else {
                        field.set(this, null);
                        w(field);
                    }
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            i10++;
        }
    }

    public boolean s(String entry) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry not found: " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Boolean.TYPE && field.getName().equalsIgnoreCase(entry)) {
                try {
                    return field.getBoolean(this);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            i10++;
        }
    }

    public void s0(String entry, String file) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry of type Texture not found with name " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Texture.class && (field.getName().equalsIgnoreCase(entry) || (entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE) && field.getName().equalsIgnoreCase("albedo")))) {
                try {
                    Texture texture = (Texture) field.get(this);
                    if (texture != null) {
                        p pVar = texture.instance;
                        if ((pVar instanceof ub.g) && ((ub.g) pVar).getFile().equals(file)) {
                            return;
                        }
                    }
                    if (file == null || file.isEmpty()) {
                        field.set(this, null);
                        w(field);
                        Z();
                        return;
                    }
                    ub.g u10 = C16165b.u(file);
                    if (u10 != null) {
                        field.set(this, u10.p0());
                        w(field);
                    } else {
                        field.set(this, null);
                        w(field);
                    }
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            i10++;
        }
    }

    public ColorINT t(String entry) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry not found: " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Color.class && (field.getName().equalsIgnoreCase(entry) || (entry.equalsIgnoreCase("color") && field.getName().equalsIgnoreCase("diffuse")))) {
                try {
                    Color color = (Color) field.get(this);
                    if (color != null) {
                        return color.instance;
                    }
                    return null;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            i10++;
        }
    }

    public void t0(f varianceWatcher) {
        this.varianceWatcher = varianceWatcher;
    }

    public float u(String entry) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry not found: " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Float.TYPE) {
                if (field.getName().equalsIgnoreCase(entry)) {
                    try {
                        return field.getFloat(this);
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                } else {
                    continue;
                }
            } else if (field.getType() == FloatSlider.class && field.getName().equalsIgnoreCase(entry)) {
                try {
                    FloatSlider floatSlider = (FloatSlider) field.get(this);
                    if (floatSlider == null) {
                        floatSlider = new FloatSlider(0.0f, 0.0f, 1.0f);
                    }
                    return floatSlider.getValue();
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                }
            }
            i10++;
        }
    }

    public void u0(String entryName, Vector2 value) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().set(this, value);
                    gVar.a(this);
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public int v(String entry) {
        Y();
        if (entry.equalsIgnoreCase("materialID")) {
            return this.materialID;
        }
        throw new EntryNotFoundException("Entry not found: " + entry);
    }

    public void v0(String entryName, Vector3 value) {
        n();
        if (this.publicEntryRefs == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.publicEntryRefs.size(); i10++) {
            g gVar = this.publicEntryRefs.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().set(this, value);
                    gVar.a(this);
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public final void w(Field field) {
        try {
            Y();
            int i10 = 0;
            while (true) {
                Field[] fieldArr = this.fields;
                if (i10 >= fieldArr.length) {
                    return;
                }
                Field field2 = fieldArr[i10];
                if (field2.getName().equals(field.getName() + "_OFCBRL")) {
                    field2.setAccessible(true);
                    ((d) field2.get(this)).a();
                    return;
                }
                i10++;
            }
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
        }
    }

    public void w0(String entry, Vector2 vector2) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry of type Vector2 not found with name " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Vector2.class && field.getName().equalsIgnoreCase(entry)) {
                try {
                    if (vector2 != null) {
                        field.set(this, vector2);
                        w(field);
                    } else {
                        field.set(this, null);
                        w(field);
                    }
                    Z();
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            if (field.getType() == JAVARuntime.Vector2.class && field.getName().equalsIgnoreCase(entry)) {
                try {
                    if (vector2 != null) {
                        field.set(this, vector2.K0());
                        w(field);
                    } else {
                        field.set(this, null);
                        w(field);
                    }
                    Z();
                    return;
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                }
            }
            i10++;
        }
    }

    public String x(String entry) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry not found: " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == String.class) {
                if (field.getName().equalsIgnoreCase(entry)) {
                    try {
                        return field.get(this).toString();
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                } else {
                    continue;
                }
            } else if (field.getType().isEnum() && field.getName().equalsIgnoreCase(entry)) {
                try {
                    Object obj = field.get(this);
                    if (obj != null) {
                        return obj.toString();
                    }
                    return null;
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                }
            }
            i10++;
        }
    }

    public void x0() {
        h hVar = this.globalShaderEntity;
        if (hVar != null) {
            hVar.e();
        }
        C14377b c14377b = this.easyShaderEntity;
        if (c14377b != null) {
            c14377b.e();
        }
    }

    public p y(String entry) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry not found: " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Texture.class && (field.getName().equalsIgnoreCase(entry) || (entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE) && field.getName().equalsIgnoreCase("albedo")))) {
                try {
                    Texture texture = (Texture) field.get(this);
                    if (texture != null) {
                        return texture.instance;
                    }
                    return null;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            i10++;
        }
    }

    public i y0(i variance, C4171b renderPass) {
        return variance;
    }

    public String z(String entry) {
        Y();
        int i10 = 0;
        while (true) {
            Field[] fieldArr = this.fields;
            if (i10 >= fieldArr.length) {
                throw new EntryNotFoundException("Entry not found: " + entry);
            }
            Field field = fieldArr[i10];
            if (field.getType() == Texture.class && (field.getName().equalsIgnoreCase(entry) || (entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE) && field.getName().equalsIgnoreCase("albedo")))) {
                try {
                    Texture texture = (Texture) field.get(this);
                    if (texture == null) {
                        break;
                    }
                    p pVar = texture.instance;
                    if (!(pVar instanceof ub.g)) {
                        break;
                    }
                    return ((ub.g) pVar).getFile();
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            i10++;
        }
        return null;
    }
}
