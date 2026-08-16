package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import Ic.C2636o;
import JAVARuntime.Component;
import Sb.a;
import android.content.Context;
import android.provider.MediaStore;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.DoublePassPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavadocConstants;
import s8.InterfaceC15237a;
import ub.p;
import yb.C16165b;

public class CustomPostProcessing extends DoublePassPostProcessPass implements Serializable {

    public static final int f74933D0 = 0;

    public static final int f74934b1 = 1;

    public static final String f74935i1 = "CustomPostProcessing";

    public static final Class f74936m1 = CustomPostProcessing.class;

    public static final int f74937v0 = 2;

    public String f74938S;

    public final List<Vb.b> f74939T;

    public MaterialConfig f74940U;

    public Sb.a f74941V;

    public String f74942W;

    public boolean f74943X;

    public String f74944Y;

    public float f74945Z;

    @Expose
    public List<Variable> global_variables;

    public Component f74946q0;

    @Expose
    protected String shaderFile;

    public static class a {

        public static final int[] f74947a;

        static {
            int[] iArr = new int[Variable.a.values().length];
            f74947a = iArr;
            try {
                iArr[Variable.a.FloatArray.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74947a[Variable.a.Float.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74947a[Variable.a.InspectorString.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class b extends AbstractC13203c {
        @Override
        public Class b() {
            return CustomPostProcessing.f74936m1;
        }

        @Override
        public String c() {
            return CustomPostProcessing.f74935i1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Custom";
        }
    }

    public class c implements a.b {

        public boolean f74948a = false;

        public boolean f74949b = false;

        public c() {
        }

        @Override
        public void a(String line) {
            if (line.contains("BEGIN-" + CustomPostProcessing.this.f74944Y)) {
                this.f74948a = true;
            }
            if (this.f74948a && !line.contains("compilation terminated") && line.contains("Filament: ERROR:")) {
                String substring = line.substring(line.indexOf("Filament: ERROR: ") + 17);
                if (substring.contains(".  No code generated.")) {
                    substring = substring.replace(".  No code generated.", "");
                }
                String replace = substring.replace("'", JavadocConstants.ANCHOR_PREFIX_END);
                StringBuilder sb2 = new StringBuilder();
                CustomPostProcessing customPostProcessing = CustomPostProcessing.this;
                sb2.append(customPostProcessing.f74942W);
                sb2.append(replace);
                sb2.append("\n");
                customPostProcessing.f74942W = sb2.toString();
                if (line.contains(".  No code generated.")) {
                    CustomPostProcessing.this.f74941V.h();
                    b();
                }
            }
        }

        @Override
        public void b() {
            if (this.f74949b) {
                return;
            }
            this.f74949b = true;
            CustomPostProcessing.this.reloadInspector();
            CustomPostProcessing.this.f74941V = null;
            J4.d.E1();
            J4.d.M1(J4.d.q2(Tc.b.v(CustomPostProcessing.this.shaderFile) + " failed to build!"));
            for (String str : CustomPostProcessing.this.f74942W.split("\n")) {
                J4.d.M1(J4.d.q2(str));
            }
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", CustomPostProcessing.this.shaderFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                CustomPostProcessing.this.shaderFile = variable.str_value;
            }
        }
    }

    public class e implements D5.h {

        public final Vb.b f74952a;

        public class a implements Runnable {

            public final Variable f74954b;

            public a(final Variable val$variable) {
                this.f74954b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("CustomPostProcessing - set texture") : null;
                try {
                    e.this.f74952a.f26804f = C16165b.u(this.f74954b.str_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public e(final Vb.b val$param) {
            this.f74952a = val$param;
        }

        @Override
        public Variable get() {
            Object obj = this.f74952a.f26804f;
            return new Variable("temp", obj instanceof ub.g ? ((ub.g) obj).getFile() : "");
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new a(variable));
        }
    }

    public class f implements D5.h {

        public final Vb.b f74956a;

        public f(final Vb.b val$param) {
            this.f74956a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f74956a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[4];
            }
            float[] fArr = (float[]) bVar.f26804f;
            return new Variable("", new ColorINT(fArr[3], fArr[0], fArr[1], fArr[2]));
        }

        @Override
        public void set(Variable v10) {
            Vb.b bVar = this.f74956a;
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

    public class g implements D5.h {

        public final Vb.b f74958a;

        public g(final Vb.b val$param) {
            this.f74958a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f74958a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[3];
            }
            float[] fArr = (float[]) bVar.f26804f;
            return new Variable("", new ColorINT(fArr[0], fArr[1], fArr[2]));
        }

        @Override
        public void set(Variable v10) {
            Vb.b bVar = this.f74958a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[3];
            }
            float[] fArr = (float[]) bVar.f26804f;
            fArr[0] = v10.color_value.w();
            fArr[1] = v10.color_value.u();
            fArr[2] = v10.color_value.s();
        }
    }

    public class h implements D5.h {

        public final Vb.b f74960a;

        public h(final Vb.b val$param) {
            this.f74960a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f74960a;
            if (bVar.f26804f == null) {
                bVar.f26804f = 0;
            }
            return new Variable("", this.f74960a.f26804f + "");
        }

        @Override
        public void set(Variable v10) {
            this.f74960a.f26804f = Float.valueOf(v10.float_value);
        }
    }

    public class i implements D5.h {

        public final Vb.b f74962a;

        public i(final Vb.b val$param) {
            this.f74962a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f74962a;
            if (bVar.f26804f == null) {
                bVar.f26804f = 0;
            }
            return new Variable("", this.f74962a.f26804f + "");
        }

        @Override
        public void set(Variable v10) {
            this.f74962a.f26804f = Float.valueOf(v10.float_value);
        }
    }

    public class j implements D5.h {

        public final Vb.b f74964a;

        public j(final Vb.b val$param) {
            this.f74964a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f74964a;
            if (bVar.f26804f == null) {
                bVar.f26804f = 0;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(((Float) this.f74964a.f26804f).floatValue() == 1.0f);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Vb.b bVar = this.f74964a;
                if (bVar.f26804f == null) {
                    bVar.f26804f = 0;
                }
                this.f74964a.f26804f = Integer.valueOf(variable.booolean_value.booleanValue() ? 1 : 0);
            }
        }
    }

    static {
        C13201a.b(new b());
    }

    public CustomPostProcessing(String serializedComponentType, boolean internal) {
        super(serializedComponentType);
        this.global_variables = null;
        this.f74939T = new SteppedArrayList();
        this.f74942W = "";
        this.f74943X = false;
        this.f74944Y = "";
        this.f75856N = true;
    }

    public static void buildShaderCache() {
        new CustomPostProcessing().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new CustomPostProcessing().buildShaderCacheFromDefaultsForce();
    }

    public void lambda$getInspectorEntries$0(Vb.b bVar) {
        markTrackedParamDirtyByName(bVar.f26799a);
    }

    public void lambda$getInspectorEntries$1(Vb.b bVar) {
        markTrackedParamDirtyByName(bVar.f26799a);
    }

    public void lambda$getInspectorEntries$2(Vb.b bVar) {
        markTrackedParamDirtyByName(bVar.f26799a);
    }

    @Override
    public void applyParams(Camera unused1, FilamentCamera unused2, FilamentView unused3, Tb.a frameBuffer, Tb.a unused4, Map<String, Object> outParams) {
        char c10;
        boolean z10;
        outParams.put("time", Float.valueOf(this.f74945Z));
        outParams.put(MediaStore.Video.VideoColumns.RESOLUTION, new float[]{getResolutionWidth(frameBuffer), getResolutionHeight(frameBuffer)});
        for (int i10 = 0; i10 < this.f74939T.size(); i10++) {
            Vb.b bVar = this.f74939T.get(i10);
            if (bVar != null && !isReservedDynamicParamName(bVar.f26799a) && bVar.f26803e) {
                String str = bVar.f26800b;
                str.hashCode();
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
                c10 = '\uffff';
                switch (c10) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        Object obj = bVar.f26804f;
                        if (obj != null) {
                            outParams.put(bVar.f26799a, obj);
                            break;
                        } else {
                            break;
                        }
                    case '\b':
                        Object obj2 = bVar.f26804f;
                        if (obj2 == null || !p.L((p) obj2)) {
                            String str2 = bVar.f26802d;
                            if (str2 != null && !str2.isEmpty()) {
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
                                        outParams.put(bVar.f26799a, C16165b.f130161g);
                                        break;
                                    case true:
                                        outParams.put(bVar.f26799a, C16165b.f130163i);
                                        break;
                                    case true:
                                        outParams.put(bVar.f26799a, C16165b.f130162h);
                                        break;
                                }
                            }
                        } else {
                            outParams.put(bVar.f26799a, bVar.f26804f);
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

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.f74945Z = 0.0f;
    }

    public String findCode(String text) {
        return text.substring(text.lastIndexOf("-MANIFEST-") + 10);
    }

    public String findManifest(String text) {
        return text.substring(text.indexOf("-MANIFEST-") + 10, text.lastIndexOf("-MANIFEST-"));
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

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x005a. Please report as an issue. */
    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new d(), "Shader file", b.a.InputFile, ".pvsc"));
        if (isFailed()) {
            linkedList.add(new C5.b(this.f74942W, 12, R.color.nse_actioncaller_setter));
        } else {
            for (int i10 = 0; i10 < this.f74939T.size(); i10++) {
                final Vb.b bVar = this.f74939T.get(i10);
                if (!isReservedDynamicParamName(bVar.f26799a)) {
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
                            linkedList.add(F5.c.C(bVar.f26799a, (float[]) bVar.f26804f, null, new c.u0() {
                                @Override
                                public final void a() {
                                    CustomPostProcessing.this.lambda$getInspectorEntries$2(bVar);
                                }
                            }).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.VEC2));
                            break;
                        case 1:
                            if (bVar.f26804f == null) {
                                bVar.f26804f = new float[3];
                            }
                            linkedList.add(F5.c.P(bVar.f26799a, (float[]) bVar.f26804f, null, new c.u0() {
                                @Override
                                public final void a() {
                                    CustomPostProcessing.this.lambda$getInspectorEntries$1(bVar);
                                }
                            }).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.VEC3));
                            break;
                        case 2:
                            if (bVar.f26804f == null) {
                                bVar.f26804f = new float[4];
                            }
                            linkedList.add(F5.c.V(bVar.f26799a, (float[]) bVar.f26804f, null, new c.u0() {
                                @Override
                                public final void a() {
                                    CustomPostProcessing.this.lambda$getInspectorEntries$0(bVar);
                                }
                            }));
                            break;
                        case 3:
                            linkedList.add(new C5.b(new i(bVar), bVar.f26799a, b.a.SLFloat01).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
                            break;
                        case 4:
                            linkedList.add(new C5.b(new g(bVar), bVar.f26799a, b.a.Color).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
                            break;
                        case 5:
                            linkedList.add(new C5.b(new j(bVar), bVar.f26799a, b.a.SLBoolean));
                            break;
                        case 6:
                            linkedList.add(new C5.b(new f(bVar), bVar.f26799a, b.a.Color).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
                            break;
                        case 7:
                            linkedList.add(new C5.b(new h(bVar), bVar.f26799a, b.a.SLFloat).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
                            break;
                        case '\b':
                            linkedList.add(new C5.b(new e(bVar), bVar.f26799a, b.a.Texture, context));
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

    public int getReservedTrackedSlotsCount() {
        return 2;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(1);
    }

    public float getResolutionHeight(Tb.a frameBuffer) {
        if (frameBuffer != null) {
            return Math.max(1, frameBuffer.h());
        }
        return 1.0f;
    }

    public float getResolutionWidth(Tb.a frameBuffer) {
        if (frameBuffer != null) {
            return Math.max(1, frameBuffer.i());
        }
        return 1.0f;
    }

    @InterfaceC15237a
    public String getShaderFile() {
        return this.shaderFile;
    }

    @InterfaceC15237a
    public float getTime() {
        return this.f74945Z;
    }

    @Override
    public String getTitle() {
        String str = this.shaderFile;
        return str != null ? Tc.b.v(str) : f74935i1;
    }

    public int getTrackedCustomParamCount() {
        List<Vb.b> list = this.f74939T;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public int getTrackedParamIndexForName(String name) {
        if (name != null && this.f74939T != null) {
            for (int i10 = 0; i10 < this.f74939T.size(); i10++) {
                Vb.b bVar = this.f74939T.get(i10);
                if (bVar != null && name.equals(bVar.f26799a)) {
                    return i10;
                }
            }
        }
        return -1;
    }

    @Override
    public long getTrackedParameterMask() {
        int reservedTrackedSlotsCount = getReservedTrackedSlotsCount();
        long j10 = 0;
        for (int i10 = 0; i10 < reservedTrackedSlotsCount; i10++) {
            j10 |= paramBit(i10);
        }
        int min = Math.min(getTrackedCustomParamCount(), getMaxTrackedParams() - reservedTrackedSlotsCount);
        for (int i11 = 0; i11 < min; i11++) {
            j10 |= paramBit(reservedTrackedSlotsCount + i11);
        }
        return j10;
    }

    public int getTrackedSlotForParamIndex(int paramIndex) {
        return getReservedTrackedSlotsCount() + paramIndex;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean isReservedDynamicParamName(String name) {
        return "time".equals(name) || MediaStore.Video.VideoColumns.RESOLUTION.equals(name);
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        if (this.f75856N && !ensurePayloadForCurrentShaderData() && isFailed()) {
            String str = this.f74942W;
            if (str == null || str.isEmpty()) {
                this.f74942W = "Failed to compile shader";
            }
        }
    }

    public void markAllCustomParamsDirty() {
        int reservedTrackedSlotsCount = getReservedTrackedSlotsCount();
        int min = Math.min(getTrackedCustomParamCount(), getMaxTrackedParams() - reservedTrackedSlotsCount);
        for (int i10 = 0; i10 < min; i10++) {
            markParameterDirty(reservedTrackedSlotsCount + i10);
        }
    }

    public void markTrackedParamDirtyByName(String name) {
        int trackedSlotForParamIndex;
        int trackedParamIndexForName = getTrackedParamIndexForName(name);
        if (trackedParamIndexForName >= 0 && (trackedSlotForParamIndex = getTrackedSlotForParamIndex(trackedParamIndexForName)) >= 0 && trackedSlotForParamIndex < getMaxTrackedParams()) {
            markParameterDirty(trackedSlotForParamIndex);
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        updateShaderPipeline(gameObject, isEditor);
        this.f74945Z += K8.d.b();
        markParameterDirty(0);
    }

    public MaterialBuilder.g precisionFrom(String t10) {
        if (t10 == null) {
            return MaterialBuilder.g.MEDIUM;
        }
        char c10 = '\uffff';
        switch (t10.hashCode()) {
            case -1078030475:
                if (t10.equals("medium")) {
                    c10 = 0;
                    break;
                }
                break;
            case 107348:
                if (t10.equals("low")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3202466:
                if (t10.equals("high")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return MaterialBuilder.g.MEDIUM;
            case 1:
                return MaterialBuilder.g.LOW;
            case 2:
                return MaterialBuilder.g.HIGH;
            default:
                return MaterialBuilder.g.MEDIUM;
        }
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
        this.f74938S = null;
        this.f74939T.clear();
        this.f74940U = null;
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.shaderFile;
        if (str == null || str.isEmpty() || this.shaderFile.startsWith("@@ASSET@@") || (f10 = dictionary.f(this.shaderFile)) == null) {
            return;
        }
        dictionary.h("CustomPostProcessing: REPLACING " + this.shaderFile + " TO " + f10.b());
        this.shaderFile = f10.b();
    }

    @Override
    public boolean requiresParameterUploadEveryFrame(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return false;
    }

    public void restoreVariables() {
        if (this.global_variables != null) {
            for (int i10 = 0; i10 < this.global_variables.size(); i10++) {
                try {
                    Variable variable = this.global_variables.get(i10);
                    int i11 = 0;
                    while (true) {
                        if (i11 < this.f74939T.size()) {
                            Vb.b bVar = this.f74939T.get(i11);
                            if (!isReservedDynamicParamName(bVar.f26799a) && bVar.f26799a.equals(variable.name)) {
                                int i12 = a.f74947a[variable.type.ordinal()];
                                if (i12 == 1) {
                                    bVar.f26804f = variable.farray_value;
                                } else if (i12 == 2) {
                                    bVar.f26804f = Float.valueOf(variable.float_value);
                                } else if (i12 == 3) {
                                    bVar.f26804f = C16165b.u(variable.str_value);
                                }
                            }
                            i11++;
                        }
                    }
                } catch (ConcurrentModificationException e10) {
                    e10.printStackTrace();
                }
            }
            markAllCustomParamsDirty();
        }
    }

    @Override
    public JsonElement serialize(Context context) {
        storeVariables();
        return super.serialize(context);
    }

    @InterfaceC15237a
    public void setParam(String name, Object value) {
        setParamInternal(name, value);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x007c, code lost:
    
        if (r5.equals("float3") == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setParamInternal(String name, Object value) {
        char c10 = 1;
        for (int i10 = 0; i10 < this.f74939T.size(); i10++) {
            Vb.b bVar = this.f74939T.get(i10);
            if (bVar.f26803e && bVar.f26799a.equals(name)) {
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
                    case 112845:
                        if (str.equals("rgb")) {
                            c10 = 4;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case 3498292:
                        if (str.equals("rgba")) {
                            c10 = 5;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case 97526364:
                        if (str.equals(TypedValues.Custom.S_FLOAT)) {
                            c10 = 6;
                            break;
                        }
                        c10 = '\uffff';
                        break;
                    case 1113023578:
                        if (str.equals("sampler2D")) {
                            c10 = 7;
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
                        if (!(value instanceof float[]) || ((float[]) value).length != 2) {
                            throw new RuntimeException("Param of type " + bVar.f26800b + " needs a value of a float array [2]");
                        }
                        break;
                    case 1:
                        if (!(value instanceof float[]) || ((float[]) value).length != 3) {
                            throw new RuntimeException("Param of type " + bVar.f26800b + " needs a value of a float array [3]");
                        }
                        break;
                    case 2:
                        if (!(value instanceof float[]) || ((float[]) value).length != 4) {
                            throw new RuntimeException("Param of type " + bVar.f26800b + " needs a value of a float array [4]");
                        }
                        break;
                    case 3:
                    case 6:
                        if (!(value instanceof Float)) {
                            throw new RuntimeException("Param of type " + bVar.f26800b + " needs a value of a float");
                        }
                        break;
                    case 4:
                    case 5:
                        if (!(value instanceof ColorINT)) {
                            throw new RuntimeException("Param of type " + bVar.f26800b + " needs a value of a color");
                        }
                        break;
                    case 7:
                        if (value != null && !(value instanceof p)) {
                            throw new RuntimeException("Param of type " + bVar.f26800b + " needs a value of a texture");
                        }
                        break;
                }
                if (value instanceof float[]) {
                    float[] fArr = (float[]) value;
                    Object obj = bVar.f26804f;
                    if ((obj instanceof float[]) && ((float[]) obj).length == fArr.length) {
                        System.arraycopy(fArr, 0, (float[]) obj, 0, fArr.length);
                    } else {
                        bVar.f26804f = fArr.clone();
                    }
                } else {
                    bVar.f26804f = value;
                }
                markTrackedParamDirtyByName(name);
                return;
            }
        }
    }

    @Override
    public void setRuntime(Component run) {
        this.f74946q0 = run;
    }

    @InterfaceC15237a
    public void setShaderFile(String shaderFile) {
        this.shaderFile = shaderFile;
    }

    @InterfaceC15237a
    public void setTime(float time) {
        this.f74945Z = time;
        markParameterDirty(0);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x003d. Please report as an issue. */
    public void storeVariables() {
        if (this.f74940U != null) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i10 = 0; i10 < this.f74939T.size(); i10++) {
                Vb.b bVar = this.f74939T.get(i10);
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

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74946q0;
        if (component != null) {
            return component;
        }
        JAVARuntime.CustomPostProcessing customPostProcessing = new JAVARuntime.CustomPostProcessing(this);
        this.f74946q0 = customPostProcessing;
        return customPostProcessing;
    }

    public void updateShaderPipeline(GameObject gameObject, boolean isEditor) {
        String str = this.shaderFile;
        if (str == null) {
            this.f74938S = null;
            this.f74939T.clear();
            this.f74940U = null;
            this.f74943X = false;
            this.f74944Y = null;
            markAllCustomParamsDirty();
        } else if (!str.equals(this.f74938S)) {
            String str2 = this.shaderFile;
            this.f74938S = str2;
            String h10 = C2636o.h(X7.a.o(str2));
            if (h10 != null) {
                try {
                    this.f74940U = (MaterialConfig) X7.a.m().fromJson(findManifest(h10), MaterialConfig.class);
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    Vb.d.f(this.f74940U, hashMap, hashMap2, this.f74939T, this.shaderFile);
                    String validateTrackedParamsLimit = validateTrackedParamsLimit();
                    if (validateTrackedParamsLimit != null) {
                        this.f74942W = validateTrackedParamsLimit;
                        this.f74943X = false;
                        invalidateShaderForConfigError();
                        reloadInspector();
                        J4.d.E1();
                        J4.d.M1(J4.d.q2(this.f74942W));
                        return;
                    }
                    String findCode = findCode(h10);
                    this.f74944Y = Tc.b.L();
                    Log.e("Filament", "BEGIN-" + this.f74944Y);
                    this.f74943X = true;
                    setCustomShader(findCode, hashMap, hashMap2);
                    this.f74942W = "";
                    restoreVariables();
                    markAllCustomParamsDirty();
                    reloadInspector();
                    this.f74945Z = 0.0f;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f74942W = e10.getMessage();
                    reloadInspector();
                    J4.d.E1();
                    J4.d.b2("Failed to prepare material params from JSON:" + e10.getMessage());
                }
            }
        }
        if (this.f74943X) {
            if (isFailed() && this.f74941V == null && this.f74942W.isEmpty()) {
                this.f74943X = false;
                this.f74942W = "";
                Sb.a aVar = new Sb.a(new c());
                this.f74941V = aVar;
                aVar.g();
            }
            if (isFailed()) {
                this.f74943X = false;
            }
        }
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera unused1, FilamentCamera unused2, FilamentView unused3, Tb.a frameBuffer, Tb.a unused4, long dirtyMask) {
        Vb.b bVar;
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("time", this.f74945Z);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.e(MediaStore.Video.VideoColumns.RESOLUTION, getResolutionWidth(frameBuffer), getResolutionHeight(frameBuffer));
        }
        int reservedTrackedSlotsCount = getReservedTrackedSlotsCount();
        int min = Math.min(getTrackedCustomParamCount(), getMaxTrackedParams() - reservedTrackedSlotsCount);
        for (int i10 = 0; i10 < min; i10++) {
            if ((paramBit(reservedTrackedSlotsCount + i10) & dirtyMask) != 0 && (bVar = this.f74939T.get(i10)) != null && bVar.f26803e && !isReservedDynamicParamName(bVar.f26799a)) {
                writeCustomParamDirect(writer, bVar);
            }
        }
    }

    public String validateTrackedParamsLimit() {
        int maxTrackedParams = getMaxTrackedParams() - getReservedTrackedSlotsCount();
        int trackedCustomParamCount = getTrackedCustomParamCount();
        if (trackedCustomParamCount <= maxTrackedParams) {
            return null;
        }
        return "Shader has too many params (" + trackedCustomParamCount + "). Max supported is " + maxTrackedParams + " for CustomPostProcessing.";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d2, code lost:
    
        if (r0.equals("empty") == false) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void writeCustomParamDirect(DoublePassPostProcessPass.b writer, Vb.b param) {
        char c10;
        p pVar;
        String str = param.f26800b;
        str.hashCode();
        char c11 = 2;
        switch (str.hashCode()) {
            case -1271649962:
                if (str.equals("float2")) {
                    c10 = 0;
                    break;
                }
                c10 = '\uffff';
                break;
            case -1271649961:
                if (str.equals("float3")) {
                    c10 = 1;
                    break;
                }
                c10 = '\uffff';
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
            case 112845:
                if (str.equals("rgb")) {
                    c10 = 4;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3029738:
                if (str.equals("bool")) {
                    c10 = 5;
                    break;
                }
                c10 = '\uffff';
                break;
            case 3498292:
                if (str.equals("rgba")) {
                    c10 = 6;
                    break;
                }
                c10 = '\uffff';
                break;
            case 97526364:
                if (str.equals(TypedValues.Custom.S_FLOAT)) {
                    c10 = 7;
                    break;
                }
                c10 = '\uffff';
                break;
            case 1113023578:
                if (str.equals("sampler2D")) {
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
                Object obj = param.f26804f;
                if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    if (fArr.length >= 2) {
                        writer.e(param.f26799a, fArr[0], fArr[1]);
                        return;
                    }
                    return;
                }
                return;
            case 1:
                Object obj2 = param.f26804f;
                if (obj2 instanceof float[]) {
                    float[] fArr2 = (float[]) obj2;
                    if (fArr2.length >= 3) {
                        writer.f(param.f26799a, fArr2[0], fArr2[1], fArr2[2]);
                        return;
                    }
                    return;
                }
                return;
            case 2:
                Object obj3 = param.f26804f;
                if (obj3 instanceof float[]) {
                    float[] fArr3 = (float[]) obj3;
                    if (fArr3.length >= 4) {
                        writer.g(param.f26799a, fArr3[0], fArr3[1], fArr3[2], fArr3[3]);
                        return;
                    }
                    return;
                }
                return;
            case 3:
            case 5:
            case 7:
                Object obj4 = param.f26804f;
                if (obj4 instanceof Number) {
                    writer.d(param.f26799a, ((Number) obj4).floatValue());
                    return;
                }
                return;
            case 4:
                Object obj5 = param.f26804f;
                if (obj5 instanceof float[]) {
                    float[] fArr4 = (float[]) obj5;
                    if (fArr4.length >= 3) {
                        writer.f(param.f26799a, fArr4[0], fArr4[1], fArr4[2]);
                        return;
                    }
                    return;
                }
                if (obj5 instanceof ColorINT) {
                    ColorINT colorINT = (ColorINT) obj5;
                    writer.f(param.f26799a, colorINT.w(), colorINT.u(), colorINT.s());
                    return;
                }
                return;
            case 6:
                Object obj6 = param.f26804f;
                if (!(obj6 instanceof float[])) {
                    if (obj6 instanceof ColorINT) {
                        writer.c(param.f26799a, (ColorINT) obj6);
                        return;
                    }
                    return;
                } else {
                    float[] fArr5 = (float[]) obj6;
                    if (fArr5.length >= 4) {
                        writer.g(param.f26799a, fArr5[0], fArr5[1], fArr5[2], fArr5[3]);
                        return;
                    }
                    return;
                }
            case '\b':
                Object obj7 = param.f26804f;
                if ((obj7 instanceof p) && p.L((p) obj7)) {
                    pVar = (p) param.f26804f;
                } else {
                    String str2 = param.f26802d;
                    if (str2 != null && !str2.isEmpty()) {
                        String str3 = param.f26802d;
                        str3.hashCode();
                        switch (str3.hashCode()) {
                            case -1274499742:
                                if (str3.equals("filled")) {
                                    c11 = 0;
                                    break;
                                }
                                c11 = '\uffff';
                                break;
                            case 93818879:
                                if (str3.equals("black")) {
                                    c11 = 1;
                                    break;
                                }
                                c11 = '\uffff';
                                break;
                            case 96634189:
                                break;
                            default:
                                c11 = '\uffff';
                                break;
                        }
                        switch (c11) {
                            case 0:
                                pVar = C16165b.f130161g;
                                break;
                            case 1:
                                pVar = C16165b.f130163i;
                                break;
                            case 2:
                                pVar = C16165b.f130162h;
                                break;
                        }
                    }
                    pVar = null;
                }
                if (pVar != null) {
                    writer.a(param.f26799a, pVar);
                    return;
                }
                return;
            default:
                J4.d.E1();
                J4.d.M1("Invalid param type[" + param.f26800b + "] at shader:" + this.shaderFile);
                return;
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        CustomPostProcessing customPostProcessing = new CustomPostProcessing();
        customPostProcessing.shaderFile = this.shaderFile;
        return customPostProcessing;
    }

    @InterfaceC15237a
    public void setParam(String name, float value) {
        setParamInternal(name, Float.valueOf(value));
    }

    @InterfaceC15237a
    public void setParam(String name, p value) {
        setParamInternal(name, value);
    }

    @InterfaceC15237a
    public void setParam(String name, float[] value) {
        setParamInternal(name, value);
    }

    @InterfaceC15237a
    public void setParam(String name, ColorINT value) {
        setParamInternal(name, value);
    }

    public CustomPostProcessing() {
        this(f74935i1, true);
    }

    public CustomPostProcessing(String shaderFile) {
        this(f74935i1, true);
        this.shaderFile = shaderFile;
    }
}
