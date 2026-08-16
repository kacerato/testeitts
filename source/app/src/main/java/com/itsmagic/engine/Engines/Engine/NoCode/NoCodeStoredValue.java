package com.itsmagic.engine.Engines.Engine.NoCode;

import JAVARuntime.File;
import JAVARuntime.ObjectFile;
import JAVARuntime.ProjectFile;
import JAVARuntime.SoundFile;
import JAVARuntime.WorldFile;
import Tc.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.FileCubemap;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvObjectReference;
import ga.C13305a;
import ga.C13308d;
import ga.H;
import ga.l;
import ga.m;
import gb.C13317e;
import java.util.Iterator;
import java.util.List;
import ub.g;
import ub.p;
import wb.C15981c;
import yb.C16165b;

public class NoCodeStoredValue {

    public transient Object f79031a;

    @Expose
    public boolean booleanValue;

    @Expose
    public final ColorINT color;

    @Expose
    public String file;

    @Expose
    public final Gradient gradient;

    @Expose
    public H listItemType;

    @Expose
    public List<NoCodeStoredValue> listItems;

    @Expose
    public float number;

    @Expose
    public String referenceJson;

    @Expose
    public String text;

    @Expose
    public H type;

    @Expose
    public final Vector2 vector2;

    @Expose
    public final Vector3 vector3;

    @Expose
    public final Vector4 vector4;

    public static class a {

        public static final int[] f79032a;

        static {
            int[] iArr = new int[H.values().length];
            f79032a = iArr;
            try {
                iArr[H.NUMBER01.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79032a[H.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f79032a[H.BIG_NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f79032a[H.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f79032a[H.FLOAT2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f79032a[H.FLOAT3.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f79032a[H.DIRECTION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f79032a[H.FLOAT4.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f79032a[H.QUATERNION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f79032a[H.COLOR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f79032a[H.TEXT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f79032a[H.GAME_OBJECT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f79032a[H.MATERIAL.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f79032a[H.FILE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f79032a[H.PROJECT_FILE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f79032a[H.OBJECT_FILE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f79032a[H.WORLD_FILE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f79032a[H.SOUND_FILE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f79032a[H.TEXTURE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f79032a[H.CUBEMAP.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f79032a[H.COLOR_GRADIENT.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f79032a[H.BLENDING_MODE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f79032a[H.UV_SOURCE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f79032a[H.INPUT_DIALOG_TYPE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f79032a[H.POPUP_DIALOG_TYPE.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f79032a[H.LIST.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
        }
    }

    public NoCodeStoredValue() {
        H h10 = H.NUMBER;
        this.type = h10;
        this.listItemType = h10;
        this.number = 0.0f;
        this.booleanValue = false;
        this.vector2 = new Vector2();
        this.vector3 = new Vector3();
        this.vector4 = new Vector4();
        this.color = new ColorINT(1.0f, 1.0f, 1.0f, 1.0f);
        this.gradient = d();
        this.text = "";
        this.file = "";
        this.referenceJson = "";
        this.listItems = new SteppedArrayList();
    }

    public static Gradient d() {
        Gradient gradient = new Gradient();
        gradient.n();
        return gradient;
    }

    public static String v(String path) {
        if (path == null || path.trim().isEmpty()) {
            return "";
        }
        String o10 = b.o(path);
        String R10 = com.itsmagic.engine.Core.Components.ProjectController.a.R();
        if (R10 != null && !R10.isEmpty()) {
            String o11 = b.o(R10);
            if (o10.startsWith(o11)) {
                o10 = o10.substring(o11.length());
                while (o10.startsWith("/")) {
                    o10 = o10.substring(1);
                }
            }
        }
        return o10;
    }

    public void a(H newType, H newListItemType, GameObject owner, Component ownerComponent) {
        Object w10 = w(owner, ownerComponent);
        i(newType, newListItemType);
        H h10 = this.type;
        if (h10 == H.LIST) {
            return;
        }
        f(m.c(w10, h10), owner, ownerComponent);
    }

    public NoCodeStoredValue b() {
        e();
        NoCodeStoredValue noCodeStoredValue = new NoCodeStoredValue();
        noCodeStoredValue.type = this.type;
        noCodeStoredValue.listItemType = this.listItemType;
        noCodeStoredValue.number = this.number;
        noCodeStoredValue.booleanValue = this.booleanValue;
        noCodeStoredValue.vector2.x0(this.vector2);
        noCodeStoredValue.vector3.set(this.vector3);
        noCodeStoredValue.vector4.l(this.vector4);
        noCodeStoredValue.color.K(this.color);
        noCodeStoredValue.gradient.r(this.gradient);
        noCodeStoredValue.text = this.text;
        noCodeStoredValue.file = this.file;
        noCodeStoredValue.referenceJson = this.referenceJson;
        noCodeStoredValue.listItems = new SteppedArrayList();
        Iterator<NoCodeStoredValue> it = this.listItems.iterator();
        while (it.hasNext()) {
            NoCodeStoredValue next = it.next();
            noCodeStoredValue.listItems.add(next != null ? next.b() : null);
        }
        noCodeStoredValue.e();
        return noCodeStoredValue;
    }

    public void c(NoCodeStoredValue other) {
        if (other == null) {
            i(this.type, this.listItemType);
            return;
        }
        NoCodeStoredValue b10 = other.b();
        this.type = b10.type;
        this.listItemType = b10.listItemType;
        this.number = b10.number;
        this.booleanValue = b10.booleanValue;
        this.vector2.x0(b10.vector2);
        this.vector3.set(b10.vector3);
        this.vector4.l(b10.vector4);
        this.color.K(b10.color);
        this.gradient.r(b10.gradient);
        this.text = b10.text;
        this.file = b10.file;
        this.referenceJson = b10.referenceJson;
        this.listItems = b10.listItems;
        this.f79031a = null;
        e();
    }

    public void e() {
        if (this.text == null) {
            this.text = "";
        }
        if (this.file == null) {
            this.file = "";
        }
        if (this.referenceJson == null) {
            this.referenceJson = "";
        }
        if (this.listItems == null) {
            this.listItems = new SteppedArrayList();
        }
        H h10 = C13305a.h(this.type);
        this.type = h10;
        if (h10 == H.LIST) {
            this.listItemType = C13305a.i(this.listItemType);
        } else {
            this.listItemType = H.NUMBER;
        }
    }

    /* JADX WARN: Type inference failed for: r5v12, types: [jb.a, JAVARuntime.ProjectFile] */
    /* JADX WARN: Type inference failed for: r5v13, types: [JAVARuntime.ObjectFile, jb.a] */
    /* JADX WARN: Type inference failed for: r5v14, types: [JAVARuntime.WorldFile, jb.a] */
    /* JADX WARN: Type inference failed for: r5v15, types: [JAVARuntime.SoundFile, jb.a] */
    public void f(Object value, GameObject owner, Component ownerComponent) {
        String str;
        e();
        this.f79031a = null;
        H h10 = this.type;
        if (h10 == H.LIST) {
            l a02 = m.a0(value);
            H i10 = C13305a.i(a02 != null ? a02.d() : this.listItemType);
            this.listItemType = i10;
            this.listItems.clear();
            if (a02 != null) {
                for (Object obj : a02.e()) {
                    NoCodeStoredValue noCodeStoredValue = new NoCodeStoredValue();
                    noCodeStoredValue.i(i10, H.NUMBER);
                    noCodeStoredValue.f(obj, owner, ownerComponent);
                    this.listItems.add(noCodeStoredValue);
                }
                return;
            }
            return;
        }
        int i11 = a.f79032a[h10.ordinal()];
        str = "";
        switch (i11) {
            case 1:
            case 2:
                this.number = m.V(value);
                return;
            case 3:
                this.text = m.M(value).h();
                return;
            case 4:
                this.booleanValue = m.O(value);
                return;
            case 5:
                m.m0(value, this.vector2);
                return;
            case 6:
            case 7:
                m.o0(value, this.vector3);
                return;
            case 8:
                m.q0(value, this.vector4);
                return;
            case 9:
                Quaternion f02 = m.f0(value);
                this.vector4.j(f02.getX(), f02.getY(), f02.getZ(), f02.I());
                return;
            case 10:
                m.R(value, this.color);
                return;
            case 11:
                this.text = m.i0(value);
                return;
            case 12:
                u(C13308d.A(value), owner);
                return;
            case 13:
                Material b02 = m.b0(value);
                if (b02 != null && b02.getFile() != null) {
                    str = b02.getFile();
                }
                this.text = str;
                return;
            case 14:
                File U10 = m.U(value);
                this.file = U10 != null ? v(U10.getAbsolutePath()) : "";
                return;
            case 15:
                ?? e02 = m.e0(value);
                if (e02 != 0 && e02.getFilePath() != null) {
                    str = e02.getFilePath();
                }
                this.file = str;
                return;
            case 16:
                ?? c02 = m.c0(value);
                if (c02 != 0 && c02.getFilePath() != null) {
                    str = c02.getFilePath();
                }
                this.file = str;
                return;
            case 17:
                ?? r02 = m.r0(value);
                if (r02 != 0 && r02.getFilePath() != null) {
                    str = r02.getFilePath();
                }
                this.file = str;
                return;
            case 18:
                ?? h02 = m.h0(value);
                if (h02 != 0 && h02.getFilePath() != null) {
                    str = h02.getFilePath();
                }
                this.file = str;
                return;
            case 19:
                p j02 = m.j0(value);
                if (j02 instanceof g) {
                    this.file = ((g) j02).getFile();
                    return;
                } else {
                    this.file = "";
                    return;
                }
            case 20:
                FileCubemap T10 = m.T(value);
                if (T10 != null && T10.p() != null) {
                    str = T10.p();
                }
                this.file = str;
                return;
            case 21:
                m.X(value, this.gradient);
                return;
            case 22:
                this.text = m.N(value).name();
                return;
            case 23:
                this.text = m.k0(value).name();
                return;
            case 24:
                this.text = m.Y(value).name();
                return;
            case 25:
                this.text = m.d0(value).name();
                return;
            default:
                if (C13308d.n(this.type)) {
                    t(value instanceof JAVARuntime.Component ? (JAVARuntime.Component) value : null, owner);
                    return;
                } else {
                    this.number = m.V(value);
                    return;
                }
        }
    }

    public H g() {
        return C13305a.i(this.listItemType);
    }

    public NoCodeStoredValue h() {
        NoCodeStoredValue noCodeStoredValue = new NoCodeStoredValue();
        noCodeStoredValue.i(g(), H.NUMBER);
        return noCodeStoredValue;
    }

    public void i(H newType, H newListItemType) {
        H h10 = C13305a.h(newType);
        this.type = h10;
        this.listItemType = h10 == H.LIST ? C13305a.i(newListItemType) : H.NUMBER;
        this.number = 0.0f;
        this.booleanValue = false;
        this.vector2.v0(0.0f);
        this.vector3.set(0.0f);
        this.vector4.i(0.0f);
        this.color.W();
        this.gradient.n();
        this.text = "";
        this.file = "";
        this.referenceJson = "";
        this.listItems = new SteppedArrayList();
        this.f79031a = null;
    }

    public final JAVARuntime.Component j(GameObject owner) {
        Object obj = this.f79031a;
        if (obj instanceof JAVARuntime.Component) {
            JAVARuntime.Component component = (JAVARuntime.Component) obj;
            if (C13308d.s(this.type, component)) {
                return component;
            }
        }
        JAVARuntime.Component x10 = C13308d.x(this.referenceJson, owner);
        if (!C13308d.s(this.type, x10)) {
            return null;
        }
        this.f79031a = x10;
        this.text = C13308d.p(x10);
        return x10;
    }

    public final FileCubemap k() {
        FileCubemap fileCubemap;
        String p10;
        Object obj = this.f79031a;
        if ((obj instanceof FileCubemap) && (p10 = (fileCubemap = (FileCubemap) obj).p()) != null && p10.equals(this.file)) {
            return fileCubemap;
        }
        this.f79031a = null;
        String str = this.file;
        if (str != null && !str.isEmpty()) {
            this.f79031a = C15981c.m(this.file);
        }
        Object obj2 = this.f79031a;
        if (obj2 instanceof FileCubemap) {
            return (FileCubemap) obj2;
        }
        return null;
    }

    public final File l() {
        String str = this.file;
        if (str == null) {
            str = "";
        }
        if (str.isEmpty()) {
            return null;
        }
        File U10 = m.U(str);
        Object obj = this.f79031a;
        if (obj instanceof File) {
            File file = (File) obj;
            String absolutePath = file.getAbsolutePath();
            if (absolutePath == null) {
                absolutePath = "";
            }
            if (absolutePath.equals(U10 != null ? U10.getAbsolutePath() : "")) {
                return file;
            }
        }
        this.f79031a = U10;
        return U10;
    }

    public final GameObject m(GameObject owner) {
        Object obj = this.f79031a;
        if (obj instanceof GameObject) {
            GameObject gameObject = (GameObject) obj;
            if (C13317e.J(gameObject)) {
                return gameObject;
            }
        }
        String str = this.referenceJson;
        if (str != null && !str.trim().isEmpty()) {
            try {
                AdvObjectReference advObjectReference = (AdvObjectReference) X7.a.m().fromJson(this.referenceJson, AdvObjectReference.class);
                if (advObjectReference != null) {
                    advObjectReference.o(owner);
                    GameObject k10 = advObjectReference.k();
                    if (C13317e.J(k10)) {
                        this.f79031a = k10;
                        if (k10.getName() != null) {
                            this.text = k10.getName();
                        }
                        return k10;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return owner;
    }

    public final l n(GameObject owner, Component ownerComponent) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        H g10 = g();
        for (NoCodeStoredValue noCodeStoredValue : this.listItems) {
            if (noCodeStoredValue != null) {
                noCodeStoredValue.type = g10;
                steppedArrayList.add(noCodeStoredValue.w(owner, ownerComponent));
            }
        }
        return m.m(g10, steppedArrayList);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [JAVARuntime.ObjectFile, jb.a] */
    public final ObjectFile o() {
        String str = this.file;
        if (str == null) {
            str = "";
        }
        Object obj = this.f79031a;
        if (obj instanceof ObjectFile) {
            ?? r12 = (ObjectFile) obj;
            if (r12.getFilePath() == null || str.equals(r12.getFilePath())) {
                r12.setFilePath(str);
                return r12;
            }
        }
        ObjectFile objectFile = new ObjectFile(str);
        this.f79031a = objectFile;
        return objectFile;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [jb.a, JAVARuntime.ProjectFile] */
    public final ProjectFile p() {
        String str = this.file;
        if (str == null) {
            str = "";
        }
        if (str.isEmpty()) {
            return null;
        }
        Object obj = this.f79031a;
        if (obj instanceof ProjectFile) {
            ?? r22 = (ProjectFile) obj;
            String filePath = r22.getFilePath();
            if ((filePath != null ? filePath : "").equals(str)) {
                return r22;
            }
        }
        ProjectFile e02 = m.e0(str);
        this.f79031a = e02;
        return e02;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [JAVARuntime.SoundFile, jb.a] */
    public final SoundFile q() {
        String str = this.file;
        if (str == null) {
            str = "";
        }
        Object obj = this.f79031a;
        if (obj instanceof SoundFile) {
            ?? r12 = (SoundFile) obj;
            if (r12.getFilePath() == null || str.equals(r12.getFilePath())) {
                r12.setFilePath(str);
                return r12;
            }
        }
        SoundFile soundFile = new SoundFile(str);
        this.f79031a = soundFile;
        return soundFile;
    }

    public final p r() {
        String file;
        Object obj = this.f79031a;
        if (obj instanceof p) {
            p pVar = (p) obj;
            if ((pVar instanceof g) && (file = ((g) pVar).getFile()) != null && file.equals(this.file)) {
                return pVar;
            }
        }
        this.f79031a = null;
        String str = this.file;
        if (str != null && !str.isEmpty()) {
            this.f79031a = C16165b.u(this.file);
        }
        Object obj2 = this.f79031a;
        if (obj2 instanceof p) {
            return (p) obj2;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [JAVARuntime.WorldFile, jb.a] */
    public final WorldFile s() {
        String str = this.file;
        if (str == null) {
            str = "";
        }
        Object obj = this.f79031a;
        if (obj instanceof WorldFile) {
            ?? r12 = (WorldFile) obj;
            if (r12.getFilePath() == null || str.equals(r12.getFilePath())) {
                r12.setFilePath(str);
                return r12;
            }
        }
        WorldFile worldFile = new WorldFile(str);
        this.f79031a = worldFile;
        return worldFile;
    }

    public final void t(JAVARuntime.Component component, GameObject owner) {
        this.referenceJson = C13308d.d(component, owner);
        this.text = C13308d.p(component);
        this.f79031a = component;
    }

    public final void u(GameObject gameObject, GameObject owner) {
        if (!C13317e.J(gameObject)) {
            this.referenceJson = "";
            this.text = C13308d.f88188b;
            this.f79031a = null;
            return;
        }
        try {
            AdvObjectReference advObjectReference = new AdvObjectReference(gameObject);
            advObjectReference.o(owner);
            advObjectReference.q();
            this.referenceJson = advObjectReference.r();
        } catch (Exception unused) {
            this.referenceJson = "";
        }
        this.text = gameObject.getName() != null ? gameObject.getName() : "";
        this.f79031a = gameObject;
    }

    public Object w(GameObject owner, Component ownerComponent) {
        e();
        switch (a.f79032a[this.type.ordinal()]) {
            case 1:
            case 2:
                return Float.valueOf(this.number);
            case 3:
                return m.M(this.text);
            case 4:
                return Boolean.valueOf(this.booleanValue);
            case 5:
                return Vector2.y(this.vector2);
            case 6:
            case 7:
                return Vector3.clone(this.vector3);
            case 8:
                Vector4 vector4 = this.vector4;
                return vector4 != null ? new Vector4(vector4.getX(), this.vector4.getY(), this.vector4.getZ(), this.vector4.f()) : new Vector4();
            case 9:
                return this.vector4 != null ? new Quaternion(this.vector4.f(), this.vector4.getX(), this.vector4.getY(), this.vector4.getZ()) : new Quaternion();
            case 10:
                return ColorINT.k(this.color);
            case 11:
                String str = this.text;
                return str != null ? str : "";
            case 12:
                return m(owner);
            case 13:
                return m.b0(this.text);
            case 14:
                return l();
            case 15:
                return p();
            case 16:
                return o();
            case 17:
                return s();
            case 18:
                return q();
            case 19:
                return r();
            case 20:
                return k();
            case 21:
                return this.gradient;
            case 22:
                return m.N(this.text);
            case 23:
                return m.k0(this.text);
            case 24:
                return m.Y(this.text);
            case 25:
                return m.d0(this.text);
            case 26:
                return n(owner, ownerComponent);
            default:
                return C13308d.n(this.type) ? j(owner) : m.f(this.type, owner);
        }
    }
}
