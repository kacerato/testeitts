package com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import Ic.C2636o;
import JAVARuntime.Component;
import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.CustomVFXEffect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import oc.C14497a;

public class CustomVFXEffect extends BaseVFXEffect implements Serializable {

    public static final String f77395W = "CustomVFXEffect";

    public static final Class f77396X = CustomVFXEffect.class;

    public static final String f77397Y = "void vfx_fn_fragment(inout VFXMaterialInputs material, VFXEmitter emitter) {\n}\n";

    public static final String f77398Z = "void vfx_fn_subMaterial(inout SubMaterialData smData, VFXEmitter emitter) {\n}\n";

    public static final String f77399q0 = "void vfx_fn_vertex(inout MaterialVertexInputs v, VFXEmitter emitter) {\n}\n";

    public static final String f77400v0 = "time";

    public String f77401N;

    public final List<Vb.b> f77402O;

    public MaterialConfig f77403P;

    public String f77404Q;

    public String f77405R;

    public String f77406S;

    public String f77407T;

    public float f77408U;

    public Component f77409V;

    @Expose
    public List<Variable> global_variables;

    @Expose
    private String shaderFile;

    public class a implements D5.h {

        public final Vb.b f77410a;

        public a(final Vb.b val$param) {
            this.f77410a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f77410a;
            if (bVar.f26804f == null) {
                bVar.f26804f = 0;
            }
            return new Variable("", ((Number) this.f77410a.f26804f).intValue());
        }

        @Override
        public void set(Variable v10) {
            this.f77410a.f26804f = Integer.valueOf(v10.int_value);
            CustomVFXEffect.this.lambda$getInspectorEntries$2(this.f77410a);
        }
    }

    public static class b {

        public static final int[] f77412a;

        static {
            int[] iArr = new int[Variable.a.values().length];
            f77412a = iArr;
            try {
                iArr[Variable.a.FloatArray.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f77412a[Variable.a.Float.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f77412a[Variable.a.Int.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return CustomVFXEffect.f77396X;
        }

        @Override
        public String c() {
            return CustomVFXEffect.f77395W;
        }

        @Override
        public String e() {
            return "VFX";
        }

        @Override
        public String f() {
            return "Custom VFX Effect";
        }
    }

    public class d implements BiConsumer<String, String> {

        public final MaterialConfig f77413a;

        public final String f77414b;

        public final List f77415c;

        public d(final MaterialConfig val$config, final String val$debugIpp, final List val$outParams) {
            this.f77413a = val$config;
            this.f77414b = val$debugIpp;
            this.f77415c = val$outParams;
        }

        @Override
        public void accept(String name, String type) {
            if (CustomVFXEffect.this.isReservedDynamicParamName(name)) {
                return;
            }
            Vb.b bVar = new Vb.b();
            bVar.f26799a = name;
            bVar.f26800b = type;
            Map<String, String> map = this.f77413a.precision;
            bVar.f26801c = map != null ? map.get(name) : null;
            Map<String, String> map2 = this.f77413a.defaults;
            bVar.f26802d = map2 != null ? map2.get(name) : null;
            boolean validateParamType = CustomVFXEffect.this.validateParamType(bVar, this.f77414b);
            bVar.f26803e = validateParamType;
            if (validateParamType) {
                bVar.b();
            }
            this.f77415c.add(bVar);
        }
    }

    public class e implements Runnable {

        public final Vb.b f77417b;

        public e(final Vb.b val$param) {
            this.f77417b = val$param;
        }

        @Override
        public void run() {
            t6.e S12 = t6.j.J1() ? t6.j.S1("CustomVFXEffect - send param") : null;
            try {
                CustomVFXEffect.this.sendParam(this.f77417b);
            } finally {
                t6.j.P1(S12);
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", CustomVFXEffect.this.shaderFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                CustomVFXEffect.this.shaderFile = variable.str_value;
            }
        }
    }

    public class g implements D5.h {

        public final Vb.b f77420a;

        public g(final Vb.b val$param) {
            this.f77420a = val$param;
        }

        @Override
        public Variable get() {
            float[] ensureArray = CustomVFXEffect.this.ensureArray(this.f77420a, 4);
            return new Variable("", new ColorINT(ensureArray[3], ensureArray[0], ensureArray[1], ensureArray[2]));
        }

        @Override
        public void set(Variable v10) {
            float[] ensureArray = CustomVFXEffect.this.ensureArray(this.f77420a, 4);
            ensureArray[0] = v10.color_value.w();
            ensureArray[1] = v10.color_value.u();
            ensureArray[2] = v10.color_value.s();
            ensureArray[3] = v10.color_value.r();
            CustomVFXEffect.this.lambda$getInspectorEntries$2(this.f77420a);
        }
    }

    public class h implements D5.h {

        public final Vb.b f77422a;

        public h(final Vb.b val$param) {
            this.f77422a = val$param;
        }

        @Override
        public Variable get() {
            float[] ensureArray = CustomVFXEffect.this.ensureArray(this.f77422a, 3);
            return new Variable("", new ColorINT(ensureArray[0], ensureArray[1], ensureArray[2]));
        }

        @Override
        public void set(Variable v10) {
            float[] ensureArray = CustomVFXEffect.this.ensureArray(this.f77422a, 3);
            ensureArray[0] = v10.color_value.w();
            ensureArray[1] = v10.color_value.u();
            ensureArray[2] = v10.color_value.s();
            CustomVFXEffect.this.lambda$getInspectorEntries$2(this.f77422a);
        }
    }

    public class i implements D5.h {

        public final Vb.b f77424a;

        public i(final Vb.b val$param) {
            this.f77424a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f77424a;
            if (bVar.f26804f == null) {
                bVar.f26804f = Float.valueOf(0.0f);
            }
            return new Variable("", this.f77424a.f26804f + "");
        }

        @Override
        public void set(Variable v10) {
            this.f77424a.f26804f = Float.valueOf(v10.float_value);
            CustomVFXEffect.this.lambda$getInspectorEntries$2(this.f77424a);
        }
    }

    public class j implements D5.h {

        public final Vb.b f77426a;

        public j(final Vb.b val$param) {
            this.f77426a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f77426a;
            if (bVar.f26804f == null) {
                bVar.f26804f = Float.valueOf(0.0f);
            }
            return new Variable("", this.f77426a.f26804f + "");
        }

        @Override
        public void set(Variable v10) {
            this.f77426a.f26804f = Float.valueOf(v10.float_value);
            CustomVFXEffect.this.lambda$getInspectorEntries$2(this.f77426a);
        }
    }

    public class k implements D5.h {

        public final Vb.b f77428a;

        public k(final Vb.b val$param) {
            this.f77428a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f77428a;
            if (bVar.f26804f == null) {
                bVar.f26804f = Float.valueOf(0.0f);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(((Float) this.f77428a.f26804f).floatValue() == 1.0f);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f77428a.f26804f = Float.valueOf(variable.booolean_value.booleanValue() ? 1.0f : 0.0f);
                CustomVFXEffect.this.lambda$getInspectorEntries$2(this.f77428a);
            }
        }
    }

    static {
        C13201a.b(new c());
    }

    public CustomVFXEffect() {
        super(f77395W, buildUID(null));
        this.global_variables = null;
        this.f77402O = new SteppedArrayList();
        this.f77404Q = f77397Y;
        this.f77405R = f77398Z;
        this.f77406S = f77399q0;
        this.f77407T = "";
    }

    private static String buildUID(String shaderFile) {
        if (shaderFile == null || shaderFile.isEmpty()) {
            return f77395W;
        }
        long j10 = 1125899906842597L;
        for (int i10 = 0; i10 < shaderFile.length(); i10++) {
            j10 = (j10 * 31) + shaderFile.charAt(i10);
        }
        return "CustomVFX_" + Long.toHexString(j10).replace("-", "N");
    }

    private float[] checkedArray(Object value, int size, String type) {
        if (value instanceof float[]) {
            float[] fArr = (float[]) value;
            if (fArr.length == size) {
                return (float[]) fArr.clone();
            }
        }
        throw new RuntimeException("Param of type " + type + " needs a value of a float array [" + size + "]");
    }

    private float[] colorToArray(Object value, int size, String type) {
        if (!(value instanceof ColorINT)) {
            return checkedArray(value, size, type);
        }
        ColorINT colorINT = (ColorINT) value;
        return size == 4 ? new float[]{colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r()} : new float[]{colorINT.w(), colorINT.u(), colorINT.s()};
    }

    public float[] ensureArray(Vb.b param, int size) {
        Object obj = param.f26804f;
        if (!(obj instanceof float[]) || ((float[]) obj).length < size) {
            param.f26804f = new float[size];
        }
        return (float[]) param.f26804f;
    }

    private String findTaggedBlock(String text, String tag) {
        int indexOf = text.indexOf(tag);
        int lastIndexOf = text.lastIndexOf(tag);
        if (indexOf >= 0 && lastIndexOf > indexOf) {
            return text.substring(indexOf + tag.length(), lastIndexOf).trim();
        }
        throw new RuntimeException("VFX shader missing " + tag + " block");
    }

    private boolean hasErrors() {
        String str = this.f77407T;
        return (str == null || str.isEmpty()) ? false : true;
    }

    public boolean isReservedDynamicParamName(String name) {
        return "time".equals(name);
    }

    private void loadShaderData() {
        this.f77402O.clear();
        this.f77403P = null;
        this.f77404Q = f77397Y;
        this.f77406S = f77399q0;
        this.f77407T = "";
        String str = this.shaderFile;
        if (str == null || str.isEmpty()) {
            reloadInspector();
            return;
        }
        try {
            String h10 = C2636o.h(X7.a.o(this.shaderFile));
            if (h10 == null || h10.isEmpty()) {
                throw new RuntimeException("Failed to load VFX shader file: " + this.shaderFile);
            }
            MaterialConfig materialConfig = (MaterialConfig) X7.a.m().fromJson(findTaggedBlock(h10, "-MANIFEST-"), MaterialConfig.class);
            this.f77403P = materialConfig;
            if (materialConfig == null) {
                this.f77403P = new MaterialConfig();
            }
            prepareVFXParams(this.f77403P, this.f77402O, this.shaderFile);
            try {
                this.f77404Q = findTaggedBlock(h10, "-FRAGMENT SHADER-");
            } catch (Exception unused) {
                this.f77404Q = f77397Y;
            }
            try {
                this.f77405R = findTaggedBlock(h10, "-SUB MATERIAL SHADER-");
            } catch (Exception unused2) {
                this.f77405R = f77398Z;
            }
            try {
                this.f77406S = findTaggedBlock(h10, "-VERTEX SHADER-");
            } catch (Exception unused3) {
                this.f77406S = f77399q0;
            }
            restoreVariables();
            sendParams();
            reloadInspector();
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f77407T = e10.getMessage();
            reloadInspector();
            J4.d.E1();
            J4.d.M1(J4.d.q2("Failed to load VFX shader " + Tc.b.v(this.shaderFile) + ": " + this.f77407T));
        }
    }

    private void prepareVFXParams(MaterialConfig config, List<Vb.b> outParams, String debugIpp) {
        Map<String, String> map = config.params;
        if (map == null) {
            return;
        }
        map.forEach(new d(config, debugIpp, outParams));
    }

    public void sendParam(Vb.b param) {
        String str = param.f26800b;
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
            case 104431:
                if (str.equals("int")) {
                    c10 = 4;
                    break;
                }
                break;
            case 112845:
                if (str.equals("rgb")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3029738:
                if (str.equals("bool")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3498292:
                if (str.equals("rgba")) {
                    c10 = 7;
                    break;
                }
                break;
            case 97526364:
                if (str.equals(TypedValues.Custom.S_FLOAT)) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                float[] ensureArray = ensureArray(param, 2);
                setF2Param(param.f26799a, new Vector2(ensureArray[0], ensureArray[1]));
                return;
            case 1:
            case 5:
                float[] ensureArray2 = ensureArray(param, 3);
                setF3Param(param.f26799a, new Vector3(ensureArray2[0], ensureArray2[1], ensureArray2[2]));
                return;
            case 2:
            case 7:
                float[] ensureArray3 = ensureArray(param, 4);
                setF4Param(param.f26799a, new Vector4(ensureArray3[0], ensureArray3[1], ensureArray3[2], ensureArray3[3]));
                return;
            case 3:
            case 6:
            case '\b':
                Object obj = param.f26804f;
                if (obj instanceof Number) {
                    setF1Param(param.f26799a, ((Number) obj).floatValue());
                    return;
                }
                return;
            case 4:
                Object obj2 = param.f26804f;
                if (obj2 instanceof Number) {
                    setI1Param(param.f26799a, ((Number) obj2).intValue());
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void lambda$getInspectorEntries$2(Vb.b param) {
        K8.a.I(new e(param));
    }

    private void sendParams() {
        if (hasErrors()) {
            return;
        }
        sendTimeParam();
        for (int i10 = 0; i10 < this.f77402O.size(); i10++) {
            Vb.b bVar = this.f77402O.get(i10);
            if (bVar != null && bVar.f26803e) {
                sendParam(bVar);
            }
        }
    }

    private void sendTimeParam() {
        setF1Param("time", this.f77408U);
    }

    private static boolean stringEquals(String a10, String b10) {
        return a10 == null ? b10 == null : a10.equals(b10);
    }

    private MaterialBuilder.r uniformTypeFrom(String type) {
        type.hashCode();
        char c10 = '\uffff';
        switch (type.hashCode()) {
            case -1271649962:
                if (type.equals("float2")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1271649961:
                if (type.equals("float3")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1271649960:
                if (type.equals("float4")) {
                    c10 = 2;
                    break;
                }
                break;
            case -766443171:
                if (type.equals("float01")) {
                    c10 = 3;
                    break;
                }
                break;
            case 104431:
                if (type.equals("int")) {
                    c10 = 4;
                    break;
                }
                break;
            case 112845:
                if (type.equals("rgb")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3029738:
                if (type.equals("bool")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3498292:
                if (type.equals("rgba")) {
                    c10 = 7;
                    break;
                }
                break;
            case 97526364:
                if (type.equals(TypedValues.Custom.S_FLOAT)) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return MaterialBuilder.r.FLOAT2;
            case 1:
            case 5:
                return MaterialBuilder.r.FLOAT3;
            case 2:
            case 7:
                return MaterialBuilder.r.FLOAT4;
            case 3:
            case 6:
            case '\b':
                return MaterialBuilder.r.FLOAT;
            case 4:
                return MaterialBuilder.r.INT;
            default:
                return null;
        }
    }

    private void updateShaderPipeline(boolean notifyScene) {
        if (stringEquals(this.shaderFile, this.f77401N)) {
            return;
        }
        boolean z10 = notifyScene && isHierarchyActive();
        if (z10) {
            C14497a.q(this);
        }
        String str = this.shaderFile;
        this.f77401N = str;
        setUID(buildUID(str));
        loadShaderData();
        if (z10) {
            C14497a.p(this);
            C14497a.r();
            sendParams();
        }
    }

    public boolean validateParamType(Vb.b param, String debugIpp) {
        if ("sampler2D".equals(param.f26800b) || "samplerCube".equals(param.f26800b)) {
            this.f77407T += "VFX shader does not support texture parameters yet: " + param.f26799a + " (" + param.f26800b + ")\n";
            J4.d.E1();
            J4.d.M1(J4.d.q2("Invalid VFX shader param type[" + param.f26800b + "] at shader:" + debugIpp));
            return false;
        }
        String str = param.f26800b;
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
            case 104431:
                if (str.equals("int")) {
                    c10 = 4;
                    break;
                }
                break;
            case 112845:
                if (str.equals("rgb")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3029738:
                if (str.equals("bool")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3498292:
                if (str.equals("rgba")) {
                    c10 = 7;
                    break;
                }
                break;
            case 97526364:
                if (str.equals(TypedValues.Custom.S_FLOAT)) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
                return true;
            default:
                this.f77407T += "Invalid param type[" + param.f26800b + "] at shader:" + debugIpp + "\n";
                J4.d.E1();
                J4.d.M1(J4.d.q2("Invalid param type[" + param.f26800b + "] at shader:" + debugIpp));
                return false;
        }
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.f77408U = 0.0f;
    }

    @Override
    public oc.c getConstructor() {
        MaterialBuilder.r uniformTypeFrom;
        oc.c constructor = super.getConstructor();
        constructor.r(hasErrors() ? f77399q0 : this.f77406S);
        constructor.p(hasErrors() ? f77397Y : this.f77404Q);
        constructor.q(hasErrors() ? f77398Z : this.f77405R);
        constructor.a(MaterialBuilder.r.FLOAT, MaterialBuilder.g.HIGH, "time");
        if (!hasErrors()) {
            for (int i10 = 0; i10 < this.f77402O.size(); i10++) {
                Vb.b bVar = this.f77402O.get(i10);
                if (bVar != null && bVar.f26803e && (uniformTypeFrom = uniformTypeFrom(bVar.f26800b)) != null) {
                    constructor.a(uniformTypeFrom, Vb.d.e(bVar.f26801c), bVar.f26799a);
                }
            }
        }
        return constructor;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.shaderFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.shaderFile);
        }
        return c2632k;
    }

    @Override
    public int getIconResource() {
        return R.drawable.vulkan_icon;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0060. Please report as an issue. */
    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new f(), "VFX shader file", b.a.InputFile, ".vfxs"));
        if (hasErrors()) {
            linkedList.add(new C5.b(this.f77407T, 12, R.color.nse_actioncaller_setter));
        } else {
            for (int i10 = 0; i10 < this.f77402O.size(); i10++) {
                final Vb.b bVar = this.f77402O.get(i10);
                if (bVar != null && bVar.f26803e && !isReservedDynamicParamName(bVar.f26799a)) {
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
                        case 104431:
                            if (str.equals("int")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case 112845:
                            if (str.equals("rgb")) {
                                c10 = 5;
                                break;
                            }
                            break;
                        case 3029738:
                            if (str.equals("bool")) {
                                c10 = 6;
                                break;
                            }
                            break;
                        case 3498292:
                            if (str.equals("rgba")) {
                                c10 = 7;
                                break;
                            }
                            break;
                        case 97526364:
                            if (str.equals(TypedValues.Custom.S_FLOAT)) {
                                c10 = '\b';
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            linkedList.add(F5.c.C(bVar.f26799a, ensureArray(bVar, 2), null, new c.u0() {
                                @Override
                                public final void a() {
                                    CustomVFXEffect.this.lambda$getInspectorEntries$2(bVar);
                                }
                            }).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.VEC2));
                            break;
                        case 1:
                            linkedList.add(F5.c.P(bVar.f26799a, ensureArray(bVar, 3), null, new c.u0() {
                                @Override
                                public final void a() {
                                    CustomVFXEffect.this.lambda$getInspectorEntries$1(bVar);
                                }
                            }).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.VEC3));
                            break;
                        case 2:
                            linkedList.add(F5.c.V(bVar.f26799a, ensureArray(bVar, 4), null, new c.u0() {
                                @Override
                                public final void a() {
                                    CustomVFXEffect.this.lambda$getInspectorEntries$0(bVar);
                                }
                            }));
                            break;
                        case 3:
                            linkedList.add(new C5.b(new j(bVar), bVar.f26799a, b.a.SLFloat01).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
                            break;
                        case 4:
                            linkedList.add(new C5.b(new a(bVar), bVar.f26799a, b.a.SLInt));
                            break;
                        case 5:
                            linkedList.add(new C5.b(new h(bVar), bVar.f26799a, b.a.Color).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
                            break;
                        case 6:
                            linkedList.add(new C5.b(new k(bVar), bVar.f26799a, b.a.SLBoolean));
                            break;
                        case 7:
                            linkedList.add(new C5.b(new g(bVar), bVar.f26799a, b.a.Color).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
                            break;
                        case '\b':
                            linkedList.add(new C5.b(new i(bVar), bVar.f26799a, b.a.SLFloat).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
                            break;
                    }
                }
            }
        }
        return linkedList;
    }

    @Override
    public int getMaxSimultaneousEmitters() {
        MaterialConfig materialConfig = this.f77403P;
        if (materialConfig == null) {
            return 6;
        }
        return C14497a.c(materialConfig.max_simultaneous_emitters);
    }

    public String getShaderFile() {
        return this.shaderFile;
    }

    public float getTime() {
        return this.f77408U;
    }

    @Override
    public String getTitle() {
        String str = this.shaderFile;
        return str != null ? Tc.b.v(str) : f77395W;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void onAttach() {
        updateShaderPipeline(false);
        super.onAttach();
        sendParams();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            sendParams();
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        updateShaderPipeline(true);
        this.f77408U += K8.d.b();
        sendTimeParam();
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof o9.c) {
            storeVariables();
            reload();
        }
    }

    public void reload() {
        this.f77401N = null;
        this.f77402O.clear();
        this.f77403P = null;
        C14497a.r();
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.shaderFile;
        if (str == null || str.isEmpty() || this.shaderFile.startsWith("@@ASSET@@") || (f10 = dictionary.f(this.shaderFile)) == null) {
            return;
        }
        dictionary.h("CustomVFXEffect: REPLACING " + this.shaderFile + " TO " + f10.b());
        this.shaderFile = f10.b();
    }

    public void restoreVariables() {
        if (this.global_variables != null) {
            for (int i10 = 0; i10 < this.global_variables.size(); i10++) {
                try {
                    Variable variable = this.global_variables.get(i10);
                    int i11 = 0;
                    while (true) {
                        if (i11 < this.f77402O.size()) {
                            Vb.b bVar = this.f77402O.get(i11);
                            if (!isReservedDynamicParamName(bVar.f26799a) && bVar.f26799a.equals(variable.name)) {
                                int i12 = b.f77412a[variable.type.ordinal()];
                                if (i12 == 1) {
                                    bVar.f26804f = variable.farray_value;
                                } else if (i12 == 2) {
                                    bVar.f26804f = Float.valueOf(variable.float_value);
                                } else if (i12 == 3) {
                                    bVar.f26804f = Integer.valueOf(variable.int_value);
                                }
                            }
                            i11++;
                        }
                    }
                } catch (ConcurrentModificationException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
    }

    @Override
    public void reuploadParams() {
        super.reuploadParams();
        sendParams();
    }

    @Override
    public JsonElement serialize(Context context) {
        storeVariables();
        return super.serialize(context);
    }

    public void setParam(String name, Object value) {
        setParamInternal(name, value);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0091, code lost:
    
        if (r10.equals("float3") == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setParamInternal(String name, Object value) {
        char c10 = 1;
        for (int i10 = 0; i10 < this.f77402O.size(); i10++) {
            Vb.b bVar = this.f77402O.get(i10);
            if (bVar.f26803e && !isReservedDynamicParamName(bVar.f26799a) && bVar.f26799a.equals(name)) {
                String str = bVar.f26800b;
                str.hashCode();
                switch (str.hashCode()) {
                    case -1271649962:
                        if (str.equals("float2")) {
                            c10 = 0;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case -1271649961:
                        break;
                    case -1271649960:
                        if (str.equals("float4")) {
                            c10 = 2;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case -766443171:
                        if (str.equals("float01")) {
                            c10 = 3;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case 104431:
                        if (str.equals("int")) {
                            c10 = 4;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case 112845:
                        if (str.equals("rgb")) {
                            c10 = 5;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case 3029738:
                        if (str.equals("bool")) {
                            c10 = 6;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case 3498292:
                        if (str.equals("rgba")) {
                            c10 = 7;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case 97526364:
                        if (str.equals(TypedValues.Custom.S_FLOAT)) {
                            c10 = '\b';
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    default:
                        c10 = '\uffff';
                        break;
                }
                switch (c10) {
                    case 0:
                        bVar.f26804f = checkedArray(value, 2, bVar.f26800b);
                        break;
                    case 1:
                        bVar.f26804f = checkedArray(value, 3, bVar.f26800b);
                        break;
                    case 2:
                        bVar.f26804f = checkedArray(value, 4, bVar.f26800b);
                        break;
                    case 3:
                    case '\b':
                        if (!(value instanceof Number)) {
                            throw new RuntimeException("Param of type " + bVar.f26800b + " needs a value of a float");
                        }
                        bVar.f26804f = Float.valueOf(((Number) value).floatValue());
                        break;
                    case 4:
                        if (!(value instanceof Number)) {
                            throw new RuntimeException("Param of type " + bVar.f26800b + " needs a value of an int");
                        }
                        bVar.f26804f = Integer.valueOf(((Number) value).intValue());
                        break;
                    case 5:
                        bVar.f26804f = colorToArray(value, 3, bVar.f26800b);
                        break;
                    case 6:
                        if (!(value instanceof Boolean)) {
                            if (!(value instanceof Number)) {
                                throw new RuntimeException("Param of type " + bVar.f26800b + " needs a boolean value");
                            }
                            bVar.f26804f = Float.valueOf(((Number) value).floatValue() == 0.0f ? 0.0f : 1.0f);
                            break;
                        } else {
                            bVar.f26804f = Float.valueOf(((Boolean) value).booleanValue() ? 1.0f : 0.0f);
                            break;
                        }
                    case 7:
                        bVar.f26804f = colorToArray(value, 4, bVar.f26800b);
                        break;
                }
                sendParam(bVar);
                return;
            }
        }
    }

    @Override
    public void setRuntime(Component run) {
        this.f77409V = run;
    }

    public void setShaderFile(String shaderFile) {
        this.shaderFile = shaderFile;
    }

    public void setTime(float time) {
        this.f77408U = time;
        sendTimeParam();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x003d. Please report as an issue. */
    public void storeVariables() {
        if (this.f77403P != null) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i10 = 0; i10 < this.f77402O.size(); i10++) {
                Vb.b bVar = this.f77402O.get(i10);
                if (!isReservedDynamicParamName(bVar.f26799a) && bVar.f26804f != null) {
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
                        case 104431:
                            if (str.equals("int")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case 112845:
                            if (str.equals("rgb")) {
                                c10 = 5;
                                break;
                            }
                            break;
                        case 3029738:
                            if (str.equals("bool")) {
                                c10 = 6;
                                break;
                            }
                            break;
                        case 3498292:
                            if (str.equals("rgba")) {
                                c10 = 7;
                                break;
                            }
                            break;
                        case 97526364:
                            if (str.equals(TypedValues.Custom.S_FLOAT)) {
                                c10 = '\b';
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                        case 1:
                        case 2:
                        case 5:
                        case 7:
                            variable.type = Variable.a.FloatArray;
                            variable.farray_value = (float[]) bVar.f26804f;
                            break;
                        case 3:
                        case 6:
                        case '\b':
                            variable.type = Variable.a.Float;
                            variable.float_value = ((Number) bVar.f26804f).floatValue();
                            break;
                        case 4:
                            variable.type = Variable.a.Int;
                            variable.int_value = ((Number) bVar.f26804f).intValue();
                            break;
                    }
                    steppedArrayList.add(variable);
                }
            }
            this.global_variables = steppedArrayList;
        }
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f77409V;
        if (component != null) {
            return component;
        }
        JAVARuntime.CustomVFXEffect customVFXEffect = new JAVARuntime.CustomVFXEffect(this);
        this.f77409V = customVFXEffect;
        return customVFXEffect;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        CustomVFXEffect customVFXEffect = new CustomVFXEffect(this.shaderFile);
        if (this.global_variables != null) {
            customVFXEffect.global_variables = new SteppedArrayList(this.global_variables);
        }
        return customVFXEffect;
    }

    public void setParam(String name, float value) {
        setParamInternal(name, Float.valueOf(value));
    }

    public void setParam(String name, int value) {
        setParamInternal(name, Integer.valueOf(value));
    }

    public void setParam(String name, boolean value) {
        setParamInternal(name, Boolean.valueOf(value));
    }

    public void setParam(String name, float[] value) {
        setParamInternal(name, value);
    }

    public void setParam(String name, ColorINT value) {
        setParamInternal(name, value);
    }

    public CustomVFXEffect(String shaderFile) {
        this();
        this.shaderFile = shaderFile;
        setUID(buildUID(shaderFile));
    }
}
