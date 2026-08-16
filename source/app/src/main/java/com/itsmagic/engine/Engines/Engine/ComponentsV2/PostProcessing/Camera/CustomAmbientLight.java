package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import Ic.C2636o;
import JAVARuntime.Component;
import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentIndirectLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;
import ub.p;
import wb.C15980b;
import wb.C15986h;
import yb.C16165b;

public class CustomAmbientLight extends BasePostProcessing<l> implements Serializable {

    public static final int f74880D0 = 7;

    public static final String f74881T = "CustomAmbientLight";

    public static final Class f74882U = CustomAmbientLight.class;

    public static final int f74883V = 0;

    public static final int f74884W = 1;

    public static final int f74885X = 2;

    public static final int f74886Y = 3;

    public static final int f74887Z = 4;

    public static final int f74888b1 = 8;

    public static final int f74889i1 = 9;

    public static final int f74890m1 = 10;

    public static final int f74891q0 = 5;

    public static final int f74892q1 = 11;

    public static final int f74893v0 = 6;

    public static final int f74894v1 = 12;

    public static int[] f74895y1;

    public String f74896H;

    public String f74897I;

    public MaterialConfig f74898J;

    public final List<Vb.b> f74899K;

    public final List<ec.f> f74900L;

    public final List<ec.g> f74901M;

    public String f74902N;

    public float f74903O;

    public final float[] f74904P;

    public int f74905Q;

    public C15986h f74906R;

    public Component f74907S;

    @Expose
    @eb.f
    private int ambientLightReso;

    @Expose
    public List<Variable> global_variables;

    @Expose
    @eb.f
    private float lux;

    @Expose
    private String shaderFile;

    public class a implements D5.h {

        public final c.s0 f74908a;

        public final int f74909b;

        public a(final c.s0 val$listener, final int val$shadowResolutionID) {
            this.f74908a = val$listener;
            this.f74909b = val$shadowResolutionID;
        }

        @Override
        public Variable get() {
            return new Variable("", CustomAmbientLight.f74895y1[this.f74909b] + "x" + CustomAmbientLight.f74895y1[this.f74909b]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f74908a.b(variable.int_value);
            }
        }
    }

    public static class b {

        public static final int[] f74911a;

        static {
            int[] iArr = new int[Variable.a.values().length];
            f74911a = iArr;
            try {
                iArr[Variable.a.FloatArray.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74911a[Variable.a.Float.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74911a[Variable.a.InspectorString.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return CustomAmbientLight.f74882U;
        }

        @Override
        public String c() {
            return CustomAmbientLight.f74881T;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Light";
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", CustomAmbientLight.this.shaderFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                CustomAmbientLight.this.shaderFile = variable.str_value;
            }
        }
    }

    public class e implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                try {
                    return new Variable("", CustomAmbientLight.this.lux + "");
                } catch (Exception unused) {
                    return new Variable("", "0");
                }
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    try {
                        CustomAmbientLight.this.lux = variable.float_value;
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public class b implements c.s0 {
            public b() {
            }

            @Override
            public void a() {
            }

            @Override
            public void b(int id2) {
                CustomAmbientLight.this.ambientLightReso = id2;
            }
        }

        public e() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), "Lux", b.a.SLFloat);
            CustomAmbientLight customAmbientLight = CustomAmbientLight.this;
            entries.add(bVar.d(customAmbientLight.f79250n, customAmbientLight, "lux", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            entries.add(CustomAmbientLight.this.createResolutionEntry(Lang.l(Lang.T.RESOLUTION), CustomAmbientLight.this.ambientLightReso, new b()));
            return entries;
        }
    }

    public class f implements D5.h {

        public final Vb.b f74916a;

        public class a implements Runnable {

            public final Variable f74918b;

            public a(final Variable val$variable) {
                this.f74918b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("CustomAmbientLight - set texture") : null;
                try {
                    f.this.f74916a.f26804f = C16165b.u(this.f74918b.str_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public f(final Vb.b val$param) {
            this.f74916a = val$param;
        }

        @Override
        public Variable get() {
            Object obj = this.f74916a.f26804f;
            return new Variable("temp", obj instanceof ub.g ? ((ub.g) obj).getFile() : "");
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new a(variable));
        }
    }

    public class g implements D5.h {

        public final Vb.b f74920a;

        public g(final Vb.b val$param) {
            this.f74920a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f74920a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[4];
            }
            float[] fArr = (float[]) bVar.f26804f;
            return new Variable("", new ColorINT(fArr[3], fArr[0], fArr[1], fArr[2]));
        }

        @Override
        public void set(Variable v10) {
            Vb.b bVar = this.f74920a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[4];
            }
            float[] fArr = (float[]) bVar.f26804f;
            fArr[0] = v10.color_value.w();
            fArr[1] = v10.color_value.u();
            fArr[2] = v10.color_value.s();
            fArr[3] = v10.color_value.r();
        }
    }

    public class h implements D5.h {

        public final Vb.b f74922a;

        public h(final Vb.b val$param) {
            this.f74922a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f74922a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[3];
            }
            float[] fArr = (float[]) bVar.f26804f;
            return new Variable("", new ColorINT(fArr[0], fArr[1], fArr[2]));
        }

        @Override
        public void set(Variable v10) {
            Vb.b bVar = this.f74922a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[3];
            }
            float[] fArr = (float[]) bVar.f26804f;
            fArr[0] = v10.color_value.w();
            fArr[1] = v10.color_value.u();
            fArr[2] = v10.color_value.s();
        }
    }

    public class i implements D5.h {

        public final Vb.b f74924a;

        public i(final Vb.b val$param) {
            this.f74924a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f74924a;
            if (bVar.f26804f == null) {
                bVar.f26804f = 0;
            }
            return new Variable("", this.f74924a.f26804f + "");
        }

        @Override
        public void set(Variable v10) {
            this.f74924a.f26804f = Float.valueOf(v10.float_value);
        }
    }

    public class j implements D5.h {

        public final Vb.b f74926a;

        public j(final Vb.b val$param) {
            this.f74926a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f74926a;
            if (bVar.f26804f == null) {
                bVar.f26804f = 0;
            }
            return new Variable("", this.f74926a.f26804f + "");
        }

        @Override
        public void set(Variable v10) {
            this.f74926a.f26804f = Float.valueOf(v10.float_value);
        }
    }

    public class k implements D5.h {

        public final Vb.b f74928a;

        public k(final Vb.b val$param) {
            this.f74928a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f74928a;
            if (bVar.f26804f == null) {
                bVar.f26804f = 0;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(((Float) this.f74928a.f26804f).floatValue() == 1.0f);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Vb.b bVar = this.f74928a;
                if (bVar.f26804f == null) {
                    bVar.f26804f = 0;
                }
                this.f74928a.f26804f = Integer.valueOf(variable.booolean_value.booleanValue() ? 1 : 0);
            }
        }
    }

    public static class l {

        public FilamentIndirectLight f74930a;

        public float f74931b;

        public C15980b f74932c;
    }

    static {
        C13201a.b(new c());
        f74895y1 = new int[]{16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024};
    }

    public CustomAmbientLight() {
        super(f74881T);
        this.global_variables = null;
        this.lux = 25.0f;
        this.ambientLightReso = 2;
        this.f74899K = new SteppedArrayList();
        this.f74900L = new SteppedArrayList();
        this.f74901M = new SteppedArrayList();
        this.f74902N = "";
        this.f74904P = new float[]{0.0f, 1.0f, 0.0f};
        this.f74905Q = -1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x0119. Please report as an issue. */
    private void applySettingsTo(C15986h cubemap) {
        char c10;
        String str;
        boolean z10;
        FilamentMaterial l10 = cubemap.l();
        if (l10 == null) {
            return;
        }
        l10.w("time", this.f74903O);
        float[] fArr = this.f74904P;
        l10.B("sunDir", fArr[0], fArr[1], fArr[2]);
        for (int i10 = 0; i10 < this.f74899K.size(); i10++) {
            Vb.b bVar = this.f74899K.get(i10);
            if (bVar.f26803e) {
                String str2 = bVar.f26800b;
                str2.hashCode();
                switch (str2.hashCode()) {
                    case -1271649962:
                        if (str2.equals("float2")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1271649961:
                        if (str2.equals("float3")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1271649960:
                        if (str2.equals("float4")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -766443171:
                        if (str2.equals("float01")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 112845:
                        if (str2.equals("rgb")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 3029738:
                        if (str2.equals("bool")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 3498292:
                        if (str2.equals("rgba")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 97526364:
                        if (str2.equals(TypedValues.Custom.S_FLOAT)) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1113023578:
                        if (str2.equals("sampler2D")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                }
                c10 = '\uffff';
                switch (c10) {
                    case 0:
                        Object obj = bVar.f26804f;
                        if (obj instanceof float[]) {
                            float[] fArr2 = (float[]) obj;
                            if (fArr2.length >= 2) {
                                l10.y(bVar.f26799a, fArr2[0], fArr2[1]);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            break;
                        }
                    case 1:
                    case 4:
                        Object obj2 = bVar.f26804f;
                        if (obj2 instanceof float[]) {
                            float[] fArr3 = (float[]) obj2;
                            if (fArr3.length >= 3) {
                                l10.B(bVar.f26799a, fArr3[0], fArr3[1], fArr3[2]);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            break;
                        }
                    case 2:
                    case 6:
                        Object obj3 = bVar.f26804f;
                        if (obj3 instanceof float[]) {
                            float[] fArr4 = (float[]) obj3;
                            if (fArr4.length >= 4) {
                                l10.E(bVar.f26799a, fArr4[0], fArr4[1], fArr4[2], fArr4[3]);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            break;
                        }
                    case 3:
                    case 5:
                    case 7:
                        Object obj4 = bVar.f26804f;
                        if (obj4 instanceof Float) {
                            l10.w(bVar.f26799a, ((Float) obj4).floatValue());
                            break;
                        } else if (obj4 instanceof Integer) {
                            l10.w(bVar.f26799a, ((Integer) obj4).intValue());
                            break;
                        } else {
                            break;
                        }
                    case '\b':
                        Object obj5 = bVar.f26804f;
                        p pVar = obj5 instanceof p ? (p) obj5 : null;
                        if (!p.L(pVar) && (str = bVar.f26802d) != null && !str.isEmpty()) {
                            String str3 = bVar.f26802d;
                            str3.hashCode();
                            switch (str3.hashCode()) {
                                case -1274499742:
                                    if (str3.equals("filled")) {
                                        z10 = false;
                                        break;
                                    }
                                    break;
                                case 93818879:
                                    if (str3.equals("black")) {
                                        z10 = true;
                                        break;
                                    }
                                    break;
                                case 96634189:
                                    if (str3.equals("empty")) {
                                        z10 = 2;
                                        break;
                                    }
                                    break;
                            }
                            z10 = -1;
                            switch (z10) {
                                case false:
                                    pVar = C16165b.f130161g;
                                    break;
                                case true:
                                    pVar = C16165b.f130163i;
                                    break;
                                case true:
                                    pVar = C16165b.f130162h;
                                    break;
                            }
                        }
                        if (pVar != null && pVar.J()) {
                            pVar.f(l10, bVar.f26799a);
                            break;
                        }
                        break;
                    default:
                        J4.d.E1();
                        J4.d.M1("Invalid param type[" + bVar.f26800b + "] at shader:" + this.shaderFile);
                        break;
                }
            }
        }
    }

    private void destroyReflectionCubemap() {
        C15986h c15986h = this.f74906R;
        if (c15986h != null) {
            c15986h.h();
            this.f74906R = null;
        }
    }

    private String findCode(String text) {
        return text.substring(text.lastIndexOf("-MANIFEST-") + 10);
    }

    private String findManifest(String text) {
        return text.substring(text.indexOf("-MANIFEST-") + 10, text.lastIndexOf("-MANIFEST-"));
    }

    private boolean isFailed() {
        String str = this.f74902N;
        return (str == null || str.isEmpty()) ? false : true;
    }

    private void loadShaderFile(String file) {
        this.f74896H = file;
        this.f74899K.clear();
        this.f74900L.clear();
        this.f74901M.clear();
        this.f74898J = null;
        this.f74897I = null;
        this.f74902N = "";
        this.f74903O = 0.0f;
        try {
            String h10 = C2636o.h(X7.a.o(file));
            if (h10 != null) {
                this.f74898J = (MaterialConfig) X7.a.m().fromJson(findManifest(h10), MaterialConfig.class);
                HashMap hashMap = new HashMap();
                HashMap hashMap2 = new HashMap();
                hashMap.put("sunDir", new Vb.c(MaterialBuilder.r.FLOAT3, MaterialBuilder.g.HIGH));
                Vb.d.f(this.f74898J, hashMap, hashMap2, this.f74899K, file);
                rebuildShaderParams(hashMap, hashMap2);
                this.f74897I = findCode(h10);
                this.f74902N = "";
                restoreVariables();
                reloadInspector();
                this.f74905Q = -1;
                this.f74906R = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f74902N = e10.getMessage();
            reloadInspector();
            J4.d.E1();
            J4.d.b2("Failed to prepare custom ambient light shader params: " + e10.getMessage());
        }
    }

    private void rebuildShaderParams(Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers) {
        this.f74900L.clear();
        this.f74901M.clear();
        for (Map.Entry<String, Vb.c> entry : uniforms.entrySet()) {
            Vb.c value = entry.getValue();
            this.f74900L.add(new ec.f(value.f26805a, entry.getKey(), value.f26806b));
        }
        for (Map.Entry<String, MaterialBuilder.m> entry2 : samplers.entrySet()) {
            this.f74901M.add(new ec.g(entry2.getValue(), MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, entry2.getKey()));
        }
    }

    private void restoreVariables() {
        if (this.global_variables != null) {
            for (int i10 = 0; i10 < this.global_variables.size(); i10++) {
                try {
                    Variable variable = this.global_variables.get(i10);
                    for (int i11 = 0; i11 < this.f74899K.size(); i11++) {
                        Vb.b bVar = this.f74899K.get(i11);
                        if (!bVar.f26799a.equals("time") && bVar.f26799a.equals(variable.name)) {
                            int i12 = b.f74911a[variable.type.ordinal()];
                            if (i12 == 1) {
                                bVar.f26804f = variable.farray_value;
                            } else if (i12 == 2) {
                                bVar.f26804f = Float.valueOf(variable.float_value);
                            } else if (i12 == 3) {
                                bVar.f26804f = C16165b.u(variable.str_value);
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x003f. Please report as an issue. */
    private void storeVariables() {
        if (this.f74898J != null) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i10 = 0; i10 < this.f74899K.size(); i10++) {
                Vb.b bVar = this.f74899K.get(i10);
                if (!bVar.f26799a.equals("time") && bVar.f26804f != null) {
                    Variable variable = new Variable();
                    variable.name = bVar.f26799a;
                    String str = bVar.f26800b;
                    str.hashCode();
                    char c10 = '\uffff';
                    switch (str.hashCode()) {
                        case -1271649962:
                            if (str.equals("float2")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case -1271649961:
                            if (str.equals("float3")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case -1271649960:
                            if (str.equals("float4")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case -766443171:
                            if (str.equals("float01")) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case 112845:
                            if (str.equals("rgb")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case 3498292:
                            if (str.equals("rgba")) {
                                c10 = 5;
                                break;
                            }
                            break;
                        case 97526364:
                            if (str.equals(TypedValues.Custom.S_FLOAT)) {
                                c10 = 6;
                                break;
                            }
                            break;
                        case 1113023578:
                            if (str.equals("sampler2D")) {
                                c10 = 7;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                        case 1:
                        case 2:
                        case 4:
                        case 5:
                            variable.type = Variable.a.FloatArray;
                            variable.farray_value = (float[]) bVar.f26804f;
                            break;
                        case 3:
                        case 6:
                            variable.type = Variable.a.Float;
                            variable.float_value = ((Float) bVar.f26804f).floatValue();
                            break;
                        case 7:
                            variable.type = Variable.a.InspectorString;
                            variable.str_value = null;
                            Object obj = bVar.f26804f;
                            variable.str_value = obj instanceof ub.g ? ((ub.g) obj).getFile() : null;
                            break;
                        default:
                            J4.d.E1();
                            J4.d.b2("Invalid param type[" + bVar.f26800b + "] at shader:" + this.shaderFile);
                            break;
                    }
                }
            }
            this.global_variables = steppedArrayList;
        }
    }

    private void updateReflectionsCubemapInstance() {
        int i10 = TextureConfig.f79814s[this.ambientLightReso];
        if (this.f74906R == null || this.f74905Q != i10) {
            this.f74905Q = i10;
            try {
                this.f74906R = new C15986h(i10, this.f74897I, this.f74900L, this.f74901M, false);
            } catch (Exception e10) {
                e10.printStackTrace();
                this.f74902N = e10.getMessage();
            }
        }
    }

    private void updateSunDirection() {
        float[] fArr = this.f74904P;
        fArr[0] = 0.0f;
        fArr[1] = 1.0f;
        fArr[2] = 0.0f;
        try {
            List<com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component> h10 = R8.f.h(SunLight.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component = h10.get(i10);
                if (component != null && component.isHierarchyActive()) {
                    component.f79250n.transform.C(this.f74904P);
                    return;
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        l cache = getCache(camera);
        if (camera.overrideAmbientLight() == null) {
            getEffectiveScene().u(cache.f74930a);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        l cache = getCache(camera);
        float effectiveLux = getEffectiveLux();
        if (cache.f74930a != null && cache.f74931b == effectiveLux && cache.f74932c == this.f74906R) {
            return;
        }
        cache.f74931b = effectiveLux;
        cache.f74932c = this.f74906R;
        cache.f74930a = new FilamentIndirectLight(new IndirectLight.a().c(1, new float[]{1.0f, 1.0f, 1.0f}).b(effectiveLux * 1000.0f), this.f74906R);
    }

    public C5.b createResolutionEntry(String tittle, int value, c.s0 listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 : f74895y1) {
            steppedArrayList.add(i10 + "x" + i10);
        }
        return new C5.b(new a(listener, value), f74895y1[value] + "x" + f74895y1[value], steppedArrayList, b.a.SLDropdown, tittle);
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        l peekCache = peekCache(camera);
        if (peekCache == null || peekCache.f74930a == null || getEffectiveScene().n() != peekCache.f74930a) {
            return;
        }
        getEffectiveScene().u(null);
    }

    @InterfaceC15237a
    public int getAmbientLightResolutionID() {
        return this.ambientLightReso;
    }

    public float getEffectiveLux() {
        return GraphicsSettings.d() ? this.lux : this.lux * 3.0f;
    }

    @Override
    public int getIconResource() {
        return R.drawable.vulkan_icon;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0071. Please report as an issue. */
    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new d(), "Shader file", b.a.InputFile, ".avsc"));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.AMBIENT_LIGHT), new e()));
        if (isFailed()) {
            linkedList.add(new C5.b(this.f74902N, 12, R.color.nse_actioncaller_setter));
        } else {
            for (int i10 = 0; i10 < this.f74899K.size(); i10++) {
                Vb.b bVar = this.f74899K.get(i10);
                if (!bVar.f26799a.equals("time")) {
                    String str = bVar.f26800b;
                    str.hashCode();
                    char c10 = '\uffff';
                    switch (str.hashCode()) {
                        case -1271649962:
                            if (str.equals("float2")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case -1271649961:
                            if (str.equals("float3")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case -1271649960:
                            if (str.equals("float4")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case -766443171:
                            if (str.equals("float01")) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case 112845:
                            if (str.equals("rgb")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case 3029738:
                            if (str.equals("bool")) {
                                c10 = 5;
                                break;
                            }
                            break;
                        case 3498292:
                            if (str.equals("rgba")) {
                                c10 = 6;
                                break;
                            }
                            break;
                        case 97526364:
                            if (str.equals(TypedValues.Custom.S_FLOAT)) {
                                c10 = 7;
                                break;
                            }
                            break;
                        case 1113023578:
                            if (str.equals("sampler2D")) {
                                c10 = '\b';
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            if (bVar.f26804f == null) {
                                bVar.f26804f = new float[2];
                            }
                            linkedList.add(F5.c.A(bVar.f26799a, (float[]) bVar.f26804f).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.VEC2));
                            break;
                        case 1:
                            if (bVar.f26804f == null) {
                                bVar.f26804f = new float[3];
                            }
                            linkedList.add(F5.c.N(bVar.f26799a, (float[]) bVar.f26804f).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.VEC3));
                            break;
                        case 2:
                            if (bVar.f26804f == null) {
                                bVar.f26804f = new float[4];
                            }
                            linkedList.add(F5.c.T(bVar.f26799a, (float[]) bVar.f26804f));
                            break;
                        case 3:
                            linkedList.add(new C5.b(new j(bVar), bVar.f26799a, b.a.SLFloat01).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
                            break;
                        case 4:
                            linkedList.add(new C5.b(new h(bVar), bVar.f26799a, b.a.Color).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
                            break;
                        case 5:
                            linkedList.add(new C5.b(new k(bVar), bVar.f26799a, b.a.SLBoolean));
                            break;
                        case 6:
                            linkedList.add(new C5.b(new g(bVar), bVar.f26799a, b.a.Color).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
                            break;
                        case 7:
                            linkedList.add(new C5.b(new i(bVar), bVar.f26799a, b.a.SLFloat).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
                            break;
                        case '\b':
                            linkedList.add(new C5.b(new f(bVar), bVar.f26799a, b.a.Texture, context));
                            break;
                        default:
                            J4.d.E1();
                            J4.d.M1("Invalid param type[" + bVar.f26800b + "] at shader:" + this.shaderFile);
                            break;
                    }
                }
            }
        }
        return linkedList;
    }

    @InterfaceC15237a
    public float getLux() {
        return this.lux;
    }

    @Override
    public String getTitle() {
        String str = this.shaderFile;
        return str != null ? Tc.b.v(str) : f74881T;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        C15986h c15986h = this.f74906R;
        if (c15986h != null) {
            c15986h.n();
        }
    }

    @Override
    public void onDetach() {
        Iterator<l> it = getCaches().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            l next = it.next();
            if (next != null && next.f74930a != null && getEffectiveScene().n() == next.f74930a) {
                getEffectiveScene().u(null);
                break;
            }
        }
        super.onDetach();
        destroyReflectionCubemap();
    }

    @Override
    public void preRender() {
        C15986h c15986h;
        super.preRender();
        if (this.f74897I == null || isFailed() || (c15986h = this.f74906R) == null || !c15986h.m()) {
            return;
        }
        this.f74906R.o();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        String str = this.shaderFile;
        if (str == null) {
            this.f74896H = null;
            this.f74899K.clear();
            this.f74900L.clear();
            this.f74901M.clear();
            this.f74898J = null;
            this.f74897I = null;
            this.f74902N = "";
            this.f74906R = null;
        } else if (!str.equals(this.f74896H)) {
            loadShaderFile(this.shaderFile);
        }
        if (this.f74897I == null || isFailed()) {
            return;
        }
        updateReflectionsCubemapInstance();
        updateSunDirection();
        C15986h c15986h = this.f74906R;
        if (c15986h != null) {
            applySettingsTo(c15986h);
        }
        this.f74903O += K8.d.b();
    }

    @Override
    public JsonElement serialize(Context context) {
        storeVariables();
        return super.serialize(context);
    }

    @InterfaceC15237a
    public void setAmbientLightResolutionID(int ambientLightReso) {
        if (ambientLightReso >= 0 && ambientLightReso < f74895y1.length) {
            this.ambientLightReso = ambientLightReso;
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("resolution ID out of bounds [0..");
        sb2.append(f74895y1.length - 1);
        sb2.append("]");
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    @InterfaceC15237a
    public void setLux(float lux) {
        this.lux = lux;
    }

    @Override
    public void setRuntime(Component run) {
        this.f74907S = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74907S;
        if (component != null) {
            return component;
        }
        JAVARuntime.CustomAmbientLight customAmbientLight = new JAVARuntime.CustomAmbientLight(this);
        this.f74907S = customAmbientLight;
        return customAmbientLight;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        CustomAmbientLight customAmbientLight = new CustomAmbientLight();
        customAmbientLight.shaderFile = this.shaderFile;
        customAmbientLight.lux = this.lux;
        customAmbientLight.ambientLightReso = this.ambientLightReso;
        return customAmbientLight;
    }

    @Override
    public void destroyCache(l cache) {
        if (cache == null) {
            return;
        }
        if (cache.f74930a != null) {
            if (getEffectiveScene().n() == cache.f74930a) {
                getEffectiveScene().u(null);
            }
            cache.f74930a.destroyImmediate();
            cache.f74930a = null;
        }
        cache.f74932c = null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public l newCacheInstance() {
        return new l();
    }

    public CustomAmbientLight(String shaderFile) {
        super(f74881T);
        this.global_variables = null;
        this.lux = 25.0f;
        this.ambientLightReso = 2;
        this.f74899K = new SteppedArrayList();
        this.f74900L = new SteppedArrayList();
        this.f74901M = new SteppedArrayList();
        this.f74902N = "";
        this.f74904P = new float[]{0.0f, 1.0f, 0.0f};
        this.f74905Q = -1;
        this.shaderFile = shaderFile;
    }
}
