package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import Sb.a;
import android.content.Context;
import android.provider.MediaStore;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ProcessingGraph;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.DoublePassPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.A;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawColorNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawFloat2Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawFloat3Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawFloat4Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawGradientNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawNumberNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawSliderNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawTextureNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphAttribute;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphDiskCache;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphInputDefault;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSettings;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.VulkanGraph;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.u;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.x;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.File;
import java.io.Serializable;
import java.lang.constant.ConstantDescs;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavadocConstants;
import s8.InterfaceC15237a;
import ub.p;
import yb.C16165b;

public class ProcessingGraph extends CustomPostProcessing implements Serializable {

    public static final Class f75668F1 = ProcessingGraph.class;

    public static final String f75669y1 = "ProcessingGraph";

    public transient ShaderGraphData f75670q1;

    public transient long f75671v1;

    public class a implements D5.h {

        public final Vb.b f75672a;

        public a(final Vb.b val$param) {
            this.f75672a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f75672a;
            if (bVar.f26804f == null) {
                bVar.f26804f = 0;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(((Float) this.f75672a.f26804f).floatValue() == 1.0f);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Vb.b bVar = this.f75672a;
                if (bVar.f26804f == null) {
                    bVar.f26804f = 0;
                }
                this.f75672a.f26804f = Integer.valueOf(variable.booolean_value.booleanValue() ? 1 : 0);
            }
        }
    }

    public static class b {

        public static final int[] f75674a;

        public static final int[] f75675b;

        static {
            int[] iArr = new int[MaterialBuilder.r.values().length];
            f75675b = iArr;
            try {
                iArr[MaterialBuilder.r.FLOAT2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f75675b[MaterialBuilder.r.FLOAT3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f75675b[MaterialBuilder.r.FLOAT4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f75675b[MaterialBuilder.r.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[C.values().length];
            f75674a = iArr2;
            try {
                iArr2[C.FLOAT2.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f75674a[C.FLOAT3.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f75674a[C.FLOAT4.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f75674a[C.TEXTURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f75674a[C.CUBEMAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f75674a[C.NUMBER01.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f75674a[C.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return ProcessingGraph.f75668F1;
        }

        @Override
        public String c() {
            return ProcessingGraph.f75669y1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Graph";
        }
    }

    public class d implements a.b {

        public boolean f75676a = false;

        public boolean f75677b = false;

        public d() {
        }

        @Override
        public void a(String line) {
            if (line.contains("BEGIN-" + ProcessingGraph.this.f74944Y)) {
                this.f75676a = true;
            }
            if (this.f75676a && !line.contains("compilation terminated") && line.contains("Filament: ERROR:")) {
                String substring = line.substring(line.indexOf("Filament: ERROR: ") + 17);
                if (substring.contains(".  No code generated.")) {
                    substring = substring.replace(".  No code generated.", "");
                }
                String replace = substring.replace("'", JavadocConstants.ANCHOR_PREFIX_END);
                StringBuilder sb2 = new StringBuilder();
                ProcessingGraph processingGraph = ProcessingGraph.this;
                sb2.append(processingGraph.f74942W);
                sb2.append(replace);
                sb2.append("\n");
                processingGraph.f74942W = sb2.toString();
                if (line.contains(".  No code generated.")) {
                    ProcessingGraph.this.f74941V.h();
                    b();
                }
            }
        }

        @Override
        public void b() {
            if (this.f75677b) {
                return;
            }
            this.f75677b = true;
            ProcessingGraph.this.reloadInspector();
            ProcessingGraph.this.f74941V = null;
            J4.d.E1();
            J4.d.M1(J4.d.q2(Tc.b.v(ProcessingGraph.this.shaderFile) + " failed to build!"));
            for (String str : ProcessingGraph.this.f74942W.split("\n")) {
                J4.d.M1(J4.d.q2(str));
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", ProcessingGraph.this.shaderFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ProcessingGraph.this.shaderFile = variable.str_value;
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            String str = ProcessingGraph.this.shaderFile;
            if (str == null || str.isEmpty()) {
                return;
            }
            N7.c.D().B0(new n4.e(ProcessingGraph.this.shaderFile));
        }
    }

    public class g implements D5.h {

        public final Vb.b f75681a;

        public g(final Vb.b val$param) {
            this.f75681a = val$param;
        }

        public static void b(Variable variable, Vb.b bVar) {
            t6.e S12 = t6.j.J1() ? t6.j.S1("ProcessingGraph - set texture") : null;
            try {
                bVar.f26804f = C16165b.u(variable.str_value);
            } finally {
                t6.j.P1(S12);
            }
        }

        @Override
        public Variable get() {
            Object obj = this.f75681a.f26804f;
            return new Variable("temp", obj instanceof ub.g ? ((ub.g) obj).getFile() : "");
        }

        @Override
        public void set(final Variable variable) {
            final Vb.b bVar = this.f75681a;
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    ProcessingGraph.g.b(Variable.this, bVar);
                }
            });
        }
    }

    public class h implements D5.h {

        public final Vb.b f75683a;

        public h(final Vb.b val$param) {
            this.f75683a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f75683a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[4];
            }
            float[] fArr = (float[]) bVar.f26804f;
            return new Variable("", new ColorINT(fArr[3], fArr[0], fArr[1], fArr[2]));
        }

        @Override
        public void set(Variable v10) {
            Vb.b bVar = this.f75683a;
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

    public class i implements D5.h {

        public final Vb.b f75685a;

        public i(final Vb.b val$param) {
            this.f75685a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f75685a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[3];
            }
            float[] fArr = (float[]) bVar.f26804f;
            return new Variable("", new ColorINT(fArr[0], fArr[1], fArr[2]));
        }

        @Override
        public void set(Variable v10) {
            Vb.b bVar = this.f75685a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[3];
            }
            float[] fArr = (float[]) bVar.f26804f;
            fArr[0] = v10.color_value.w();
            fArr[1] = v10.color_value.u();
            fArr[2] = v10.color_value.s();
        }
    }

    public class j implements D5.h {

        public final Vb.b f75687a;

        public j(final Vb.b val$param) {
            this.f75687a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f75687a;
            if (bVar.f26804f == null) {
                bVar.f26804f = 0;
            }
            return new Variable("", this.f75687a.f26804f + "");
        }

        @Override
        public void set(Variable v10) {
            this.f75687a.f26804f = Float.valueOf(v10.float_value);
        }
    }

    public class k implements D5.h {

        public final Vb.b f75689a;

        public k(final Vb.b val$param) {
            this.f75689a = val$param;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f75689a;
            if (bVar.f26804f == null) {
                bVar.f26804f = 0;
            }
            return new Variable("", this.f75689a.f26804f + "");
        }

        @Override
        public void set(Variable v10) {
            this.f75689a.f26804f = Float.valueOf(v10.float_value);
        }
    }

    static {
        C13201a.b(new c());
    }

    public ProcessingGraph() {
        super(f75669y1, true);
    }

    private void applyDefaultsFromGraph(Map<String, Vb.b> paramMap, ShaderGraphData data) {
        List<ShaderGraphAttribute> list;
        Iterator<ShaderGraphAttribute> it;
        int i10;
        int i11 = 2;
        if (data == null) {
            return;
        }
        data.e();
        for (int i12 = 0; i12 < data.f81295a.size(); i12++) {
            if (data.f81295a.get(i12) instanceof RawNumberNode) {
                RawNumberNode rawNumberNode = (RawNumberNode) data.f81295a.get(i12);
                applyParam(paramMap, "sgp_" + rawNumberNode.j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME), TypedValues.Custom.S_FLOAT, Float.valueOf(rawNumberNode.value));
            } else if (data.f81295a.get(i12) instanceof RawSliderNode) {
                RawSliderNode rawSliderNode = (RawSliderNode) data.f81295a.get(i12);
                applyParam(paramMap, "sgp_" + rawSliderNode.j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME), "float01", Float.valueOf(rawSliderNode.value));
            } else if (data.f81295a.get(i12) instanceof RawFloat2Node) {
                RawFloat2Node rawFloat2Node = (RawFloat2Node) data.f81295a.get(i12);
                applyParam(paramMap, "sgp_" + rawFloat2Node.j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME), "float2", new float[]{rawFloat2Node.value.getX(), rawFloat2Node.value.getY()});
            } else if (data.f81295a.get(i12) instanceof RawFloat3Node) {
                RawFloat3Node rawFloat3Node = (RawFloat3Node) data.f81295a.get(i12);
                applyParam(paramMap, "sgp_" + rawFloat3Node.j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME), "float3", new float[]{rawFloat3Node.value.getX(), rawFloat3Node.value.getY(), rawFloat3Node.value.getZ()});
            } else if (data.f81295a.get(i12) instanceof RawFloat4Node) {
                RawFloat4Node rawFloat4Node = (RawFloat4Node) data.f81295a.get(i12);
                applyParam(paramMap, "sgp_" + rawFloat4Node.j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME), "float4", new float[]{rawFloat4Node.value.getX(), rawFloat4Node.value.getY(), rawFloat4Node.value.getZ(), rawFloat4Node.value.f()});
            } else if (data.f81295a.get(i12) instanceof RawColorNode) {
                RawColorNode rawColorNode = (RawColorNode) data.f81295a.get(i12);
                ColorINT colorINT = rawColorNode.value;
                applyParam(paramMap, "sgp_" + rawColorNode.j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME), "rgba", new float[]{colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r()});
            } else if (data.f81295a.get(i12) instanceof RawTextureNode) {
                applyTextureParam(paramMap, ((RawTextureNode) data.f81295a.get(i12)).textureFile);
            } else if (data.f81295a.get(i12) instanceof RawGradientNode) {
                applyParam(paramMap, "sgp_" + ((RawGradientNode) data.f81295a.get(i12)).j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME), "sampler2D", C16165b.f130163i);
            }
            if (data.f81295a.get(i12) != null && data.f81295a.get(i12).inputDefaults != null) {
                for (ShaderGraphInputDefault shaderGraphInputDefault : data.f81295a.get(i12).inputDefaults) {
                    if (shaderGraphInputDefault != null && shaderGraphInputDefault.type == C.TEXTURE) {
                        applyTextureParam(paramMap, shaderGraphInputDefault.fileIPP);
                    }
                }
            }
        }
        ShaderGraphSettings shaderGraphSettings = data.settings;
        if (shaderGraphSettings == null || (list = shaderGraphSettings.attributes) == null) {
            return;
        }
        Iterator<ShaderGraphAttribute> it2 = list.iterator();
        while (it2.hasNext()) {
            ShaderGraphAttribute next = it2.next();
            if (next != null && !"cameraImage".equals(next.name)) {
                String a10 = next.a();
                switch (b.f75674a[next.type.ordinal()]) {
                    case 1:
                        it = it2;
                        i10 = i11;
                        Vector2 vector2 = next.f81225v2;
                        float f10 = vector2.f79838x;
                        float f11 = vector2.f79839y;
                        float[] fArr = new float[i10];
                        fArr[0] = f10;
                        fArr[1] = f11;
                        applyParam(paramMap, a10, "float2", fArr);
                        break;
                    case 2:
                        it = it2;
                        i10 = 2;
                        applyParam(paramMap, a10, "float3", new float[]{next.f81226v3.getX(), next.f81226v3.getY(), next.f81226v3.getZ()});
                        break;
                    case 3:
                        it = it2;
                        applyParam(paramMap, a10, "float4", new float[]{next.f81227v4.getX(), next.f81227v4.getY(), next.f81227v4.getZ(), next.f81227v4.f()});
                        i10 = 2;
                        break;
                    case 4:
                        applyParam(paramMap, a10, "sampler2D", C16165b.u(next.file));
                        break;
                    case 5:
                        break;
                    case 6:
                        applyParam(paramMap, a10, "float01", Float.valueOf(next.number));
                        break;
                    default:
                        applyParam(paramMap, a10, TypedValues.Custom.S_FLOAT, Float.valueOf(next.number));
                        break;
                }
                it = it2;
                i10 = i11;
                it2 = it;
                i11 = i10;
            }
        }
    }

    private void applyParam(Map<String, Vb.b> paramMap, String name, String type, Object value) {
        Vb.b bVar = paramMap.get(name);
        if (bVar == null) {
            return;
        }
        if (type != null) {
            bVar.f26800b = type;
        }
        if (value != null) {
            bVar.f26804f = value;
        }
        bVar.f26803e = true;
    }

    private void applyTextureParam(Map<String, Vb.b> paramMap, String file) {
        Vb.b bVar = paramMap.get(textureSamplerName(file));
        if (bVar == null) {
            return;
        }
        bVar.f26800b = "sampler2D";
        if (file == null || file.isEmpty()) {
            return;
        }
        bVar.f26804f = C16165b.u(file);
    }

    private void clearGraphState() {
        this.f74938S = null;
        this.f74939T.clear();
        this.f75670q1 = null;
        this.f75671v1 = 0L;
        this.f74943X = false;
        this.f74944Y = "";
        this.f74942W = "";
    }

    private Object defaultValueFor(String type) {
        if (type == null) {
            return null;
        }
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
            case 112845:
                if (type.equals("rgb")) {
                    c10 = 4;
                    break;
                }
                break;
            case 3498292:
                if (type.equals("rgba")) {
                    c10 = 5;
                    break;
                }
                break;
            case 97526364:
                if (type.equals(TypedValues.Custom.S_FLOAT)) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new float[2];
            case 1:
            case 4:
                return new float[3];
            case 2:
            case 5:
                return new float[4];
            case 3:
            case 6:
                return Float.valueOf(0.0f);
            default:
                return null;
        }
    }

    private boolean ensureCameraImageAttribute(ShaderGraphData data) {
        ShaderGraphAttribute j10 = A.j(data, "cameraImage");
        if (j10 != null && j10.type == C.TEXTURE) {
            return true;
        }
        this.f74942W = "Missing required attribute 'cameraImage' (Texture).";
        reloadInspector();
        J4.d.E1();
        J4.d.b2(this.f74942W);
        return false;
    }

    private void forceUnlit(ShaderGraphData data) {
        if (data == null) {
            return;
        }
        if (data.settings == null) {
            data.settings = new ShaderGraphSettings();
        }
        data.settings.shadingModel = u.UNLIT;
    }

    private long getGraphFileStamp() {
        try {
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/" + this.shaderFile);
            if (file.exists()) {
                return file.lastModified();
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    private String joinErrors(List<String> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (i10 > 0) {
                sb2.append('\n');
            }
            sb2.append(list.get(i10));
        }
        return sb2.toString();
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

    private ShaderGraphData loadGraphData(String inProjectPath) {
        VulkanGraph e10 = VulkanGraph.e(inProjectPath);
        ShaderGraphData d10 = e10 != null ? e10.d() : null;
        if (d10 == null) {
            d10 = A.e();
        }
        forceUnlit(d10);
        d10.e();
        A.h(d10);
        return d10;
    }

    private String mapUniformType(MaterialBuilder.r type) {
        if (type == null) {
            return TypedValues.Custom.S_FLOAT;
        }
        int i10 = b.f75675b[type.ordinal()];
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? TypedValues.Custom.S_FLOAT : "float4" : "float3" : "float2";
    }

    private void rebuildFromGraph(ShaderGraphData data) {
        if (data == null) {
            return;
        }
        forceUnlit(data);
        A.h(data);
        if (ensureCameraImageAttribute(data)) {
            com.itsmagic.engine.Engines.Graphics.ShaderGraph.f h10 = new com.itsmagic.engine.Engines.Graphics.ShaderGraph.h().h(data, data.h());
            ShaderGraphDiskCache.u(this.shaderFile, h10);
            if (h10 == null || h10.a()) {
                this.f74942W = h10 != null ? joinErrors(h10.f81319e) : "Graph compilation failed";
                reloadInspector();
                return;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            List<ec.f> list = h10.f81317c;
            if (list != null) {
                for (ec.f fVar : list) {
                    if (fVar != null && fVar.a() != null) {
                        linkedHashMap.put(fVar.a(), new Vb.c(fVar.d(), fVar.b()));
                    }
                }
            }
            List<ec.g> list2 = h10.f81318d;
            if (list2 != null) {
                for (ec.g gVar : list2) {
                    if (gVar != null && gVar.b() != null && gVar.d() != null) {
                        linkedHashMap2.put(gVar.b(), gVar.d());
                    }
                }
            }
            linkedHashMap.put(MediaStore.Video.VideoColumns.RESOLUTION, new Vb.c(MaterialBuilder.r.FLOAT2, MaterialBuilder.g.HIGH));
            String str = h10.f81316b;
            if (str == null) {
                str = "";
            }
            rebuildParamsFromGraph(h10, data);
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
            this.f74944Y = Tc.b.L();
            Log.e("Filament", "BEGIN-" + this.f74944Y);
            this.f74943X = true;
            setCustomShader(str, linkedHashMap, linkedHashMap2);
            this.f74942W = "";
            restoreVariables();
            markAllCustomParamsDirty();
            reloadInspector();
            this.f74945Z = 0.0f;
        }
    }

    private void rebuildParamsFromGraph(com.itsmagic.engine.Engines.Graphics.ShaderGraph.f compilation, ShaderGraphData data) {
        this.f74939T.clear();
        if (compilation == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<ec.f> list = compilation.f81317c;
        if (list != null) {
            for (ec.f fVar : list) {
                if (fVar != null && fVar.a() != null) {
                    Vb.b bVar = new Vb.b();
                    bVar.f26799a = fVar.a();
                    bVar.f26800b = mapUniformType(fVar.d());
                    bVar.f26801c = fVar.b() != null ? fVar.b().name() : null;
                    bVar.f26803e = true;
                    bVar.f26804f = defaultValueFor(bVar.f26800b);
                    linkedHashMap.put(bVar.f26799a, bVar);
                }
            }
        }
        List<ec.g> list2 = compilation.f81318d;
        if (list2 != null) {
            for (ec.g gVar : list2) {
                if (gVar != null && gVar.b() != null && gVar.d() != MaterialBuilder.m.SAMPLER_CUBEMAP && linkedHashMap.get(gVar.b()) == null) {
                    Vb.b bVar2 = new Vb.b();
                    String b10 = gVar.b();
                    bVar2.f26799a = b10;
                    bVar2.f26800b = "sampler2D";
                    bVar2.f26803e = true;
                    linkedHashMap.put(b10, bVar2);
                }
            }
        }
        applyDefaultsFromGraph(linkedHashMap, data);
        this.f74939T.addAll(linkedHashMap.values());
    }

    private String textureSamplerName(String file) {
        if (file == null) {
            file = "";
        }
        if (file.isEmpty()) {
            return "sgp_tex_0";
        }
        return "sgp_tex_" + Math.abs(file.hashCode());
    }

    @Override
    public void applyParams(Camera unused1, FilamentCamera unused2, FilamentView unused3, Tb.a frameBuffer, Tb.a unused4, Map<String, Object> outParams) {
        char c10;
        boolean z10;
        float b10 = K8.d.b();
        float e10 = K8.d.e();
        outParams.put(MediaStore.Video.VideoColumns.RESOLUTION, new float[]{getResolutionWidth(frameBuffer), getResolutionHeight(frameBuffer)});
        for (int i10 = 0; i10 < this.f74939T.size(); i10++) {
            Vb.b bVar = this.f74939T.get(i10);
            if (bVar.f26803e && !"cameraImage".equals(bVar.f26799a) && !MediaStore.Video.VideoColumns.RESOLUTION.equals(bVar.f26799a)) {
                if (x.f81392a.equals(bVar.f26799a)) {
                    outParams.put(bVar.f26799a, Float.valueOf(this.f74945Z));
                } else if (x.f81393b.equals(bVar.f26799a)) {
                    outParams.put(bVar.f26799a, Float.valueOf(b10));
                } else if (!x.f81394c.equals(bVar.f26799a)) {
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
                    }
                } else {
                    outParams.put(bVar.f26799a, Float.valueOf(e10));
                }
            }
        }
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.f74945Z = 0.0f;
    }

    @Override
    public int getIconResource() {
        return R.drawable.vulkan_icon;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x0095. Please report as an issue. */
    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new e(), "Graph file", b.a.InputFile, ".vgs"));
        linkedList.add(new C5.b(new f(), "Open graph editor", b.a.Button));
        if (isFailed()) {
            linkedList.add(new C5.b(this.f74942W, 12, R.color.nse_actioncaller_setter));
        } else {
            for (int i10 = 0; i10 < this.f74939T.size(); i10++) {
                final Vb.b bVar = this.f74939T.get(i10);
                if (!bVar.f26799a.equals(x.f81392a) && !bVar.f26799a.equals(x.f81393b) && !bVar.f26799a.equals(x.f81394c) && !MediaStore.Video.VideoColumns.RESOLUTION.equals(bVar.f26799a) && !"cameraImage".equals(bVar.f26799a)) {
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
                                    ProcessingGraph.this.lambda$getInspectorEntries$2(bVar);
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
                                    ProcessingGraph.this.lambda$getInspectorEntries$1(bVar);
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
                                    ProcessingGraph.this.lambda$getInspectorEntries$0(bVar);
                                }
                            }));
                            break;
                        case 3:
                            linkedList.add(new C5.b(new k(bVar), bVar.f26799a, b.a.SLFloat01).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
                            break;
                        case 4:
                            linkedList.add(new C5.b(new i(bVar), bVar.f26799a, b.a.Color).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
                            break;
                        case 5:
                            linkedList.add(new C5.b(new a(bVar), bVar.f26799a, b.a.SLBoolean));
                            break;
                        case 6:
                            linkedList.add(new C5.b(new h(bVar), bVar.f26799a, b.a.Color).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
                            break;
                        case 7:
                            linkedList.add(new C5.b(new j(bVar), bVar.f26799a, b.a.SLFloat).d(this.f79250n, this, bVar.f26799a, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
                            break;
                        case '\b':
                            linkedList.add(new C5.b(new g(bVar), bVar.f26799a, b.a.Texture, context));
                            break;
                        default:
                            J4.d.E1();
                            J4.d.M1("Invalid param type[" + bVar.f26800b + "] at graph:" + this.shaderFile);
                            break;
                    }
                }
            }
        }
        return linkedList;
    }

    @Override
    @InterfaceC15237a
    public String getShaderFile() {
        return this.shaderFile;
    }

    @Override
    public String getTitle() {
        String str = this.shaderFile;
        return str != null ? Tc.b.v(str) : f75669y1;
    }

    @Override
    public long getTrackedParameterMask() {
        return 0L;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof o9.c) {
            storeVariables();
            clearGraphState();
        }
    }

    @Override
    public boolean requiresParameterUploadEveryFrame(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return true;
    }

    @Override
    public JsonElement serialize(Context context) {
        storeVariables();
        return super.serialize(context);
    }

    @Override
    @InterfaceC15237a
    public void setShaderFile(String shaderFile) {
        this.shaderFile = shaderFile;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x006b. Please report as an issue. */
    @Override
    public void storeVariables() {
        String str;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f74939T.size(); i10++) {
            Vb.b bVar = this.f74939T.get(i10);
            if (bVar != null && (str = bVar.f26799a) != null && !x.f81392a.equals(str) && !x.f81393b.equals(bVar.f26799a) && !x.f81394c.equals(bVar.f26799a) && !MediaStore.Video.VideoColumns.RESOLUTION.equals(bVar.f26799a) && !"cameraImage".equals(bVar.f26799a) && bVar.f26804f != null) {
                Variable variable = new Variable();
                variable.name = bVar.f26799a;
                String str2 = bVar.f26800b;
                str2.hashCode();
                char c10 = '\uffff';
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
                switch (c10) {
                    case 0:
                    case 1:
                    case 2:
                    case 4:
                    case 6:
                        variable.type = Variable.a.FloatArray;
                        variable.farray_value = (float[]) bVar.f26804f;
                        break;
                    case 3:
                    case 5:
                    case 7:
                        variable.type = Variable.a.Float;
                        Object obj = bVar.f26804f;
                        if (obj instanceof Number) {
                            variable.float_value = ((Number) obj).floatValue();
                            break;
                        } else {
                            variable.float_value = 0.0f;
                            break;
                        }
                    case '\b':
                        variable.type = Variable.a.InspectorString;
                        Object obj2 = bVar.f26804f;
                        variable.str_value = obj2 instanceof ub.g ? ((ub.g) obj2).getFile() : null;
                        break;
                    default:
                        J4.d.E1();
                        J4.d.b2("Invalid param type[" + bVar.f26800b + "] at graph:" + this.shaderFile);
                        break;
                }
                steppedArrayList.add(variable);
            }
        }
        this.global_variables = steppedArrayList;
    }

    @Override
    public void updateShaderPipeline(GameObject gameObject, boolean isEditor) {
        String str = this.shaderFile;
        if (str == null) {
            clearGraphState();
        } else if (this.f75670q1 == null || !str.equals(this.f74938S) || this.f75671v1 != getGraphFileStamp()) {
            this.f74938S = this.shaderFile;
            this.f75671v1 = getGraphFileStamp();
            try {
                ShaderGraphData loadGraphData = loadGraphData(this.shaderFile);
                this.f75670q1 = loadGraphData;
                rebuildFromGraph(loadGraphData);
            } catch (Exception e10) {
                e10.printStackTrace();
                this.f74942W = e10.getMessage();
                reloadInspector();
                J4.d.E1();
                J4.d.b2("Failed to compile graph: " + e10.getMessage());
            }
        }
        if (this.f74943X) {
            if (isFailed() && this.f74941V == null && this.f74942W.isEmpty()) {
                this.f74943X = false;
                this.f74942W = "";
                Sb.a aVar = new Sb.a(new d());
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
        String str;
        float b10 = K8.d.b();
        float e10 = K8.d.e();
        writer.e(MediaStore.Video.VideoColumns.RESOLUTION, getResolutionWidth(frameBuffer), getResolutionHeight(frameBuffer));
        for (int i10 = 0; i10 < this.f74939T.size(); i10++) {
            Vb.b bVar = this.f74939T.get(i10);
            if (bVar != null && bVar.f26803e && (str = bVar.f26799a) != null && !"cameraImage".equals(str) && !MediaStore.Video.VideoColumns.RESOLUTION.equals(bVar.f26799a)) {
                if (x.f81392a.equals(bVar.f26799a)) {
                    writer.d(bVar.f26799a, this.f74945Z);
                } else if (x.f81393b.equals(bVar.f26799a)) {
                    writer.d(bVar.f26799a, b10);
                } else if (x.f81394c.equals(bVar.f26799a)) {
                    writer.d(bVar.f26799a, e10);
                } else {
                    writeCustomParamDirect(writer, bVar);
                }
            }
        }
    }

    public ProcessingGraph(String shaderFile) {
        super(f75669y1, true);
        this.shaderFile = shaderFile;
    }

    @Override
    public Component mo1248clone() {
        ProcessingGraph processingGraph = new ProcessingGraph();
        processingGraph.shaderFile = this.shaderFile;
        return processingGraph;
    }
}
