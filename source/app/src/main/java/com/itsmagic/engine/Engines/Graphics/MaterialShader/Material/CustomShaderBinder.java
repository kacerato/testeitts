package com.itsmagic.engine.Engines.Graphics.MaterialShader.Material;

import C5.b;
import F5.c;
import Ic.C2636o;
import JAVARuntime.Texture;
import P8.o;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.Keep;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialShader;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Material.CustomShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import nc.C14377b;
import ub.j;
import ub.p;
import yb.C16165b;

@o
public class CustomShaderBinder extends ShaderBinder {
    private final MaterialShader materialShader;
    private final int[] paramVersions;
    private float time;
    private FilamentMaterial tmpMat;
    private final int[] uploadedParamVersions;
    private final List<Vb.b> params = new SteppedArrayList();
    private int timeVersion = 1;
    private int uploadedTimeVersion = Integer.MIN_VALUE;
    private boolean forceUploadAll = true;

    @eb.f
    private float localWindIntensity = 0.0f;

    @Keep
    public final ec.d localWindIntensity_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CustomShaderBinder.this.K0();
        }
    };

    @eb.f
    private float windVerticality = 1.0f;

    @Keep
    public final ec.d windVerticality_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            CustomShaderBinder.this.M0();
        }
    };

    public class a implements D5.h {

        public final Vb.b f81115a;

        public final ShaderBinder.b f81116b;

        public class RunnableC1487a implements Runnable {

            public final Variable f81118b;

            public RunnableC1487a(final Variable val$variable) {
                this.f81118b = val$variable;
            }

            @Override
            public void run() {
                ub.g u10 = C16165b.u(this.f81118b.str_value);
                a aVar = a.this;
                Vb.b bVar = aVar.f81115a;
                bVar.f26804f = u10;
                CustomShaderBinder.this.W0(bVar.f26799a);
                a aVar2 = a.this;
                CustomShaderBinder.this.X0(aVar2.f81116b);
            }
        }

        public a(final Vb.b val$param, final ShaderBinder.b val$listener) {
            this.f81115a = val$param;
            this.f81116b = val$listener;
        }

        @Override
        public Variable get() {
            Object obj = this.f81115a.f26804f;
            return new Variable("temp", obj instanceof ub.g ? ((ub.g) obj).getFile() : "");
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new RunnableC1487a(variable));
        }
    }

    public class b implements D5.h {

        public final Vb.b f81120a;

        public final ShaderBinder.b f81121b;

        public b(final Vb.b val$param, final ShaderBinder.b val$listener) {
            this.f81120a = val$param;
            this.f81121b = val$listener;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f81120a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[4];
            }
            float[] fArr = (float[]) bVar.f26804f;
            return new Variable("", new ColorINT(fArr[3], fArr[0], fArr[1], fArr[2]));
        }

        @Override
        public void set(Variable v10) {
            Vb.b bVar = this.f81120a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[4];
            }
            float[] fArr = (float[]) bVar.f26804f;
            fArr[0] = v10.color_value.w();
            fArr[1] = v10.color_value.u();
            fArr[2] = v10.color_value.s();
            fArr[3] = v10.color_value.r();
            CustomShaderBinder.this.W0(this.f81120a.f26799a);
            CustomShaderBinder.this.X0(this.f81121b);
        }
    }

    public class c implements D5.h {

        public final Vb.b f81123a;

        public final ShaderBinder.b f81124b;

        public c(final Vb.b val$param, final ShaderBinder.b val$listener) {
            this.f81123a = val$param;
            this.f81124b = val$listener;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f81123a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[3];
            }
            float[] fArr = (float[]) bVar.f26804f;
            return new Variable("", new ColorINT(fArr[0], fArr[1], fArr[2]));
        }

        @Override
        public void set(Variable v10) {
            Vb.b bVar = this.f81123a;
            if (bVar.f26804f == null) {
                bVar.f26804f = new float[3];
            }
            float[] fArr = (float[]) bVar.f26804f;
            fArr[0] = v10.color_value.w();
            fArr[1] = v10.color_value.u();
            fArr[2] = v10.color_value.s();
            CustomShaderBinder.this.W0(this.f81123a.f26799a);
            CustomShaderBinder.this.X0(this.f81124b);
        }
    }

    public class d implements D5.h {

        public final Vb.b f81126a;

        public final ShaderBinder.b f81127b;

        public d(final Vb.b val$param, final ShaderBinder.b val$listener) {
            this.f81126a = val$param;
            this.f81127b = val$listener;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f81126a;
            if (bVar.f26804f == null) {
                bVar.f26804f = Float.valueOf(0.0f);
            }
            return new Variable("", CustomShaderBinder.this.b1(this.f81126a.f26804f) + "");
        }

        @Override
        public void set(Variable v10) {
            this.f81126a.f26804f = Float.valueOf(v10.float_value);
            CustomShaderBinder.this.W0(this.f81126a.f26799a);
            CustomShaderBinder.this.X0(this.f81127b);
        }
    }

    public class e implements D5.h {

        public final Vb.b f81129a;

        public final ShaderBinder.b f81130b;

        public e(final Vb.b val$param, final ShaderBinder.b val$listener) {
            this.f81129a = val$param;
            this.f81130b = val$listener;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f81129a;
            if (bVar.f26804f == null) {
                bVar.f26804f = Float.valueOf(0.0f);
            }
            return new Variable("", CustomShaderBinder.this.b1(this.f81129a.f26804f) + "");
        }

        @Override
        public void set(Variable v10) {
            this.f81129a.f26804f = Float.valueOf(v10.float_value);
            CustomShaderBinder.this.W0(this.f81129a.f26799a);
            CustomShaderBinder.this.X0(this.f81130b);
        }
    }

    public class f implements D5.h {

        public final Vb.b f81132a;

        public final ShaderBinder.b f81133b;

        public f(final Vb.b val$param, final ShaderBinder.b val$listener) {
            this.f81132a = val$param;
            this.f81133b = val$listener;
        }

        @Override
        public Variable get() {
            Vb.b bVar = this.f81132a;
            if (bVar.f26804f == null) {
                bVar.f26804f = Float.valueOf(0.0f);
            }
            return new Variable("", CustomShaderBinder.this.a1(this.f81132a.f26804f) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Vb.b bVar = this.f81132a;
                if (bVar.f26804f == null) {
                    bVar.f26804f = Float.valueOf(0.0f);
                }
                this.f81132a.f26804f = Float.valueOf(variable.booolean_value.booleanValue() ? 1.0f : 0.0f);
                CustomShaderBinder.this.W0(this.f81132a.f26799a);
                CustomShaderBinder.this.X0(this.f81133b);
            }
        }
    }

    public class g implements c.o0 {

        public final ShaderBinder.b f81135a;

        public class a implements D5.h {

            public class RunnableC1488a implements Runnable {

                public final Variable f81138b;

                public RunnableC1488a(final Variable val$variable) {
                    this.f81138b = val$variable;
                }

                @Override
                public void run() {
                    CustomShaderBinder.this.c1(Math.max(0.0f, this.f81138b.float_value));
                    g gVar = g.this;
                    CustomShaderBinder.this.X0(gVar.f81135a);
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", CustomShaderBinder.this.localWindIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1488a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f81141b;

                public a(final Variable val$variable) {
                    this.f81141b = val$variable;
                }

                @Override
                public void run() {
                    CustomShaderBinder.this.d1(Math.max(0.0f, Math.min(1.0f, this.f81141b.float_value)));
                    g gVar = g.this;
                    CustomShaderBinder.this.X0(gVar.f81135a);
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", CustomShaderBinder.this.windVerticality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public g(final ShaderBinder.b val$listener) {
            this.f81135a = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), "Intensity", b.a.SLFloat);
            if (this.f81135a.d() != null && this.f81135a.b() != null) {
                bVar.f(this.f81135a.d(), this.f81135a.b(), "localWindIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar);
            C5.b bVar2 = new C5.b(new b(), "Verticality", b.a.SLFloat01);
            if (this.f81135a.d() != null && this.f81135a.b() != null) {
                bVar2.f(this.f81135a.d(), this.f81135a.b(), "windVerticality", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar2);
            return entries;
        }
    }

    public class h implements c.o0 {

        public final ShaderBinder.b f81143a;

        public class a implements D5.h {

            public class RunnableC1489a implements Runnable {

                public final Variable f81146b;

                public RunnableC1489a(final Variable val$variable) {
                    this.f81146b = val$variable;
                }

                @Override
                public void run() {
                    CustomShaderBinder.this.n0(Math.max(-32768, Math.min(32767, this.f81146b.int_value)));
                    h hVar = h.this;
                    CustomShaderBinder.this.X0(hVar.f81143a);
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", CustomShaderBinder.this.K() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1489a(variable));
                }
            }
        }

        public h(final ShaderBinder.b val$listener) {
            this.f81143a = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Material ID", b.a.SLInt));
            return entries;
        }
    }

    public CustomShaderBinder(MaterialShader materialShader) {
        this.materialShader = materialShader;
        k0(new nc.h());
        g0(new C14377b());
        for (int i10 = 0; i10 < materialShader.f80149g.size(); i10++) {
            this.params.add(materialShader.f80149g.get(i10).a());
        }
        this.paramVersions = new int[this.params.size()];
        this.uploadedParamVersions = new int[this.params.size()];
        for (int i11 = 0; i11 < this.params.size(); i11++) {
            this.paramVersions[i11] = 1;
            this.uploadedParamVersions[i11] = Integer.MIN_VALUE;
        }
        e1();
    }

    public void K0() {
        nc.h F10 = F();
        if (F10 != null) {
            F10.v(this.localWindIntensity);
        }
    }

    public void M0() {
        nc.h F10 = F();
        if (F10 != null) {
            F10.w(this.windVerticality);
        }
    }

    private Texture Y0(Material material, NoiseData noiseData, String fileName) {
        File z10 = Tc.b.z(material.f78885e);
        j jVar = new j(noiseData);
        jVar.U0();
        Bitmap createBitmap = Bitmap.createBitmap(jVar.getWidth(), jVar.getHeight(), Bitmap.Config.ARGB_8888);
        int width = jVar.getWidth();
        int height = jVar.getHeight();
        for (int i10 = 0; i10 < width; i10++) {
            for (int i11 = 0; i11 < height; i11++) {
                createBitmap.setPixel(i10, i11, jVar.i(i10, i11).intColor);
            }
        }
        TextureConfig textureConfig = noiseData.textureConfig;
        File file = new File(z10, fileName + ".png");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                createBitmap.compress(Bitmap.CompressFormat.PNG, textureConfig.s(), fileOutputStream);
                fileOutputStream.close();
            } finally {
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        File file2 = new File(z10, fileName + ".texture");
        if (file2.exists()) {
            file2.delete();
        }
        File file3 = new File(z10, fileName + ".png.config");
        if (file3.exists()) {
            file3.delete();
        }
        C2636o.e(textureConfig.K0(), file3);
        Vc.e.f();
        ub.g u10 = C16165b.u(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
        if (u10 == null) {
            return null;
        }
        u10.E0();
        return u10.p0();
    }

    @Override
    public Vector2 A(String entry) {
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26799a.equals(entry) && bVar.f26800b.equals("float2")) {
                float[] fArr = (float[]) bVar.f26804f;
                return fArr != null ? new Vector2(fArr[0], fArr[1]) : new Vector2();
            }
        }
        return null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0049. Please report as an issue. */
    @Override
    public List<C5.b> H(Context context, final ShaderBinder.b listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        MaterialShader materialShader = this.materialShader;
        if (materialShader.f80143a) {
            steppedArrayList.add(new C5.b(materialShader.f80144b, 12, R.color.nse_actioncaller_setter));
        } else {
            for (int i10 = 0; i10 < this.params.size(); i10++) {
                final Vb.b bVar = this.params.get(i10);
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
                            steppedArrayList.add(F5.c.C(bVar.f26799a, (float[]) bVar.f26804f, null, new c.u0() {
                                @Override
                                public final void a() {
                                    CustomShaderBinder.this.T0(bVar, listener);
                                }
                            }));
                            break;
                        case 1:
                            if (bVar.f26804f == null) {
                                bVar.f26804f = new float[3];
                            }
                            steppedArrayList.add(F5.c.P(bVar.f26799a, (float[]) bVar.f26804f, null, new c.u0() {
                                @Override
                                public final void a() {
                                    CustomShaderBinder.this.S0(bVar, listener);
                                }
                            }));
                            break;
                        case 2:
                            if (bVar.f26804f == null) {
                                bVar.f26804f = new float[4];
                            }
                            steppedArrayList.add(F5.c.V(bVar.f26799a, (float[]) bVar.f26804f, null, new c.u0() {
                                @Override
                                public final void a() {
                                    CustomShaderBinder.this.R0(bVar, listener);
                                }
                            }));
                            break;
                        case 3:
                            steppedArrayList.add(new C5.b(new e(bVar, listener), bVar.f26799a, b.a.SLFloat01));
                            break;
                        case 4:
                            steppedArrayList.add(new C5.b(new c(bVar, listener), bVar.f26799a, b.a.Color));
                            break;
                        case 5:
                            steppedArrayList.add(new C5.b(new f(bVar, listener), bVar.f26799a, b.a.SLBoolean));
                            break;
                        case 6:
                            steppedArrayList.add(new C5.b(new b(bVar, listener), bVar.f26799a, b.a.Color));
                            break;
                        case 7:
                            steppedArrayList.add(new C5.b(new d(bVar, listener), bVar.f26799a, b.a.SLFloat));
                            break;
                        case '\b':
                            steppedArrayList.add(new C5.b(new a(bVar, listener), bVar.f26799a, b.a.Texture, context));
                            break;
                        default:
                            J4.d.E1();
                            J4.d.M1("Invalid param type[" + bVar.f26800b + "] at shader:" + this.materialShader.b());
                            break;
                    }
                }
            }
            steppedArrayList.add(F5.c.e("Wind effect", new g(listener)));
            steppedArrayList.add(F5.c.e("Others", new h(listener)));
        }
        return steppedArrayList;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void L0(Vb.b param) {
        char c10;
        p pVar;
        char c11 = '\uffff';
        if (param == null || param.f26799a == null) {
            return;
        }
        String str = param.f26800b;
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
                        this.tmpMat.y(param.f26799a, fArr[0], fArr[1]);
                        return;
                    }
                    return;
                }
                if (obj instanceof Vector2) {
                    Vector2 vector2 = (Vector2) obj;
                    this.tmpMat.y(param.f26799a, vector2.getX(), vector2.getY());
                    return;
                }
                return;
            case 1:
                Object obj2 = param.f26804f;
                if (obj2 instanceof float[]) {
                    float[] fArr2 = (float[]) obj2;
                    if (fArr2.length >= 3) {
                        this.tmpMat.B(param.f26799a, fArr2[0], fArr2[1], fArr2[2]);
                        return;
                    }
                    return;
                }
                if (obj2 instanceof Vector3) {
                    Vector3 vector3 = (Vector3) obj2;
                    this.tmpMat.B(param.f26799a, vector3.getX(), vector3.getY(), vector3.getZ());
                    return;
                }
                return;
            case 2:
                Object obj3 = param.f26804f;
                if (obj3 instanceof float[]) {
                    float[] fArr3 = (float[]) obj3;
                    if (fArr3.length >= 4) {
                        this.tmpMat.E(param.f26799a, fArr3[0], fArr3[1], fArr3[2], fArr3[3]);
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
                    this.tmpMat.w(param.f26799a, ((Number) obj4).floatValue());
                    return;
                } else {
                    if (obj4 instanceof Boolean) {
                        this.tmpMat.r(param.f26799a, ((Boolean) obj4).booleanValue());
                        return;
                    }
                    return;
                }
            case 4:
                Object obj5 = param.f26804f;
                if (obj5 instanceof float[]) {
                    float[] fArr4 = (float[]) obj5;
                    if (fArr4.length >= 3) {
                        this.tmpMat.B(param.f26799a, fArr4[0], fArr4[1], fArr4[2]);
                        return;
                    }
                    return;
                }
                if (obj5 instanceof ColorINT) {
                    ColorINT colorINT = (ColorINT) obj5;
                    this.tmpMat.B(param.f26799a, colorINT.w(), colorINT.u(), colorINT.s());
                    return;
                }
                return;
            case 6:
                Object obj6 = param.f26804f;
                if (obj6 instanceof float[]) {
                    float[] fArr5 = (float[]) obj6;
                    if (fArr5.length >= 4) {
                        this.tmpMat.E(param.f26799a, fArr5[0], fArr5[1], fArr5[2], fArr5[3]);
                        return;
                    }
                    return;
                }
                if (obj6 instanceof ColorINT) {
                    ColorINT colorINT2 = (ColorINT) obj6;
                    this.tmpMat.E(param.f26799a, colorINT2.w(), colorINT2.u(), colorINT2.s(), colorINT2.r());
                    return;
                }
                return;
            case '\b':
                Object obj7 = param.f26804f;
                if (obj7 instanceof p) {
                    pVar = (p) obj7;
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
                                break;
                            case 93818879:
                                if (str3.equals("black")) {
                                    c11 = 1;
                                    break;
                                }
                                break;
                            case 96634189:
                                if (str3.equals("empty")) {
                                    c11 = 2;
                                    break;
                                }
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
                    pVar.f(this.tmpMat, param.f26799a);
                    return;
                }
                return;
            default:
                J4.d.E1();
                J4.d.M1("Invalid param type[" + param.f26800b + "] at shader:" + this.materialShader.b());
                return;
        }
    }

    public final Object N0(Object value) {
        if (!(value instanceof float[])) {
            return value;
        }
        float[] fArr = (float[]) value;
        float[] fArr2 = new float[fArr.length];
        System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
        return fArr2;
    }

    public float O0() {
        return this.localWindIntensity;
    }

    public float P0() {
        return this.windVerticality;
    }

    public final boolean Q0(String type) {
        return "rgba".equals(type) || "rgb".equals(type) || "float4".equals(type) || "float3".equals(type) || "float2".equals(type);
    }

    public final void R0(Vb.b bVar, ShaderBinder.b bVar2) {
        W0(bVar.f26799a);
        X0(bVar2);
    }

    public final void S0(Vb.b bVar, ShaderBinder.b bVar2) {
        W0(bVar.f26799a);
        X0(bVar2);
    }

    public final void T0(Vb.b bVar, ShaderBinder.b bVar2) {
        W0(bVar.f26799a);
        X0(bVar2);
    }

    public final void U0() {
        this.forceUploadAll = true;
        for (int i10 = 0; i10 < this.paramVersions.length; i10++) {
            V0(i10);
        }
    }

    public final void V0(int index) {
        if (index >= 0) {
            int[] iArr = this.paramVersions;
            if (index >= iArr.length) {
                return;
            }
            int i10 = iArr[index] + 1;
            iArr[index] = i10 != Integer.MIN_VALUE ? i10 : 1;
        }
    }

    public final void W0(String name) {
        if (name == null) {
            return;
        }
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar != null && name.equals(bVar.f26799a)) {
                V0(i10);
                return;
            }
        }
    }

    public final void X0(ShaderBinder.b listener) {
        Z();
        Material J10 = J();
        if (J10 != null) {
            c0(J10.B());
        }
    }

    public void Z0(Material material, ec.e shader, FilamentMaterial filamentMaterial) {
        this.tmpMat = filamentMaterial;
        float b10 = this.time + K8.d.b();
        this.time = b10;
        int i10 = this.timeVersion + 1;
        this.timeVersion = i10;
        if (i10 == Integer.MIN_VALUE) {
            this.timeVersion = 1;
        }
        if (this.forceUploadAll || this.uploadedTimeVersion != this.timeVersion) {
            this.tmpMat.w("time", b10);
            this.uploadedTimeVersion = this.timeVersion;
        }
        for (int i11 = 0; i11 < this.params.size(); i11++) {
            Vb.b bVar = this.params.get(i11);
            if (bVar.f26803e) {
                boolean Q02 = Q0(bVar.f26800b);
                if (this.forceUploadAll || Q02 || this.uploadedParamVersions[i11] != this.paramVersions[i11]) {
                    L0(bVar);
                    this.uploadedParamVersions[i11] = this.paramVersions[i11];
                }
            }
        }
        this.forceUploadAll = false;
        this.tmpMat = null;
    }

    @Override
    public boolean a0() {
        return true;
    }

    public final boolean a1(Object value) {
        return value instanceof Boolean ? ((Boolean) value).booleanValue() : b1(value) == 1.0f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008d, code lost:
    
        switch(r6) {
            case 0: goto L54;
            case 1: goto L54;
            case 2: goto L54;
            case 3: goto L51;
            case 4: goto L54;
            case 5: goto L51;
            case 6: goto L54;
            case 7: goto L51;
            case 8: goto L48;
            default: goto L47;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0090, code lost:
    
        J4.d.E1();
        J4.d.M1("Invalid param type[" + r3.f26800b + "] at shader:" + r8.materialShader.b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b8, code lost:
    
        r4 = com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.d(r3.f26799a, com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.f81152f, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c0, code lost:
    
        if (r4 == null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c2, code lost:
    
        r3.f26804f = com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.u(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c9, code lost:
    
        r4 = com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.d(r3.f26799a, com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.f81148b, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00cf, code lost:
    
        if (r4 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d1, code lost:
    
        r3.f26804f = java.lang.Float.valueOf(com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.g(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00dc, code lost:
    
        r4 = com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.d(r3.f26799a, com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.f81149c, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e4, code lost:
    
        if (r4 == null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e6, code lost:
    
        r3.f26804f = com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.f(r4);
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b0(List<SerializableShaderEntry> dataList) {
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26803e) {
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
            }
        }
        SerializableShaderEntry d10 = SerializableShaderEntry.d("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d10 != null) {
            c1(SerializableShaderEntry.g(d10));
        }
        SerializableShaderEntry d11 = SerializableShaderEntry.d("windVerticality", SerializableShaderEntry.f81148b, dataList);
        if (d11 != null) {
            d1(SerializableShaderEntry.g(d11));
        }
        SerializableShaderEntry d12 = SerializableShaderEntry.d("materialID", SerializableShaderEntry.f81155i, dataList);
        if (d12 != null) {
            n0(SerializableShaderEntry.h(d12));
        }
        U0();
    }

    public final float b1(Object value) {
        return value instanceof Number ? ((Number) value).floatValue() : ((value instanceof Boolean) && ((Boolean) value).booleanValue()) ? 1.0f : 0.0f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0092, code lost:
    
        switch(r7) {
            case 0: goto L57;
            case 1: goto L57;
            case 2: goto L57;
            case 3: goto L54;
            case 4: goto L57;
            case 5: goto L54;
            case 6: goto L57;
            case 7: goto L54;
            case 8: goto L48;
            default: goto L47;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0095, code lost:
    
        J4.d.E1();
        J4.d.M1("Invalid param type[" + r4.f26800b + "] at shader:" + r9.materialShader.b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bd, code lost:
    
        r5 = r4.f26804f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bf, code lost:
    
        if (r5 == null) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c1, code lost:
    
        r5 = (ub.p) r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c7, code lost:
    
        if ((r5 instanceof ub.g) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c9, code lost:
    
        r4 = com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.e(r4.f26799a, com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.f81152f, r10);
        r1.add(r4);
        com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.p(r4, (ub.g) r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d8, code lost:
    
        r4 = com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.e(r4.f26799a, com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.f81152f, r10);
        r1.add(r4);
        com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.p(r4, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e8, code lost:
    
        if (r4.f26804f == null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ea, code lost:
    
        r5 = com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.e(r4.f26799a, com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.f81148b, r10);
        r1.add(r5);
        com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.i(r5, b1(r4.f26804f));
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ff, code lost:
    
        if (r4.f26804f == null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0101, code lost:
    
        r5 = com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.e(r4.f26799a, com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.f81149c, r10);
        r1.add(r5);
        com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry.r(r5, (float[]) r4.f26804f);
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c0(List<SerializableShaderEntry> dataList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26803e) {
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
            }
        }
        SerializableShaderEntry e10 = SerializableShaderEntry.e("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e10);
        SerializableShaderEntry.i(e10, this.localWindIntensity);
        SerializableShaderEntry e11 = SerializableShaderEntry.e("windVerticality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e11);
        SerializableShaderEntry.i(e11, this.windVerticality);
        SerializableShaderEntry e12 = SerializableShaderEntry.e("materialID", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e12);
        SerializableShaderEntry.j(e12, K());
        dataList.clear();
        dataList.addAll(steppedArrayList);
    }

    public void c1(float localWindIntensity) {
        float max = Math.max(0.0f, localWindIntensity);
        boolean z10 = this.localWindIntensity != max;
        this.localWindIntensity = max;
        if (z10) {
            Z();
            K0();
        }
    }

    @Override
    public boolean d() {
        return true;
    }

    public void d1(float windVerticality) {
        float max = Math.max(0.0f, Math.min(1.0f, windVerticality));
        boolean z10 = this.windVerticality != max;
        this.windVerticality = max;
        if (z10) {
            Z();
            M0();
        }
    }

    @Override
    public void e0(String entry, ColorINT colorINT) {
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26799a.equals(entry) && bVar.f26800b.equals("rgba")) {
                float[] fArr = (float[]) bVar.f26804f;
                if (fArr == null) {
                    fArr = new float[4];
                }
                fArr[0] = colorINT.w();
                fArr[1] = colorINT.u();
                fArr[2] = colorINT.p();
                fArr[3] = colorINT.r();
                bVar.f26804f = fArr;
                V0(i10);
                Z();
                return;
            }
            if (bVar.f26799a.equals(entry) && bVar.f26800b.equals("rgb")) {
                float[] fArr2 = (float[]) bVar.f26804f;
                if (fArr2 == null) {
                    fArr2 = new float[4];
                }
                fArr2[0] = colorINT.w();
                fArr2[1] = colorINT.u();
                fArr2[2] = colorINT.p();
                bVar.f26804f = fArr2;
                V0(i10);
                Z();
                return;
            }
        }
    }

    public final void e1() {
        nc.h F10 = F();
        if (F10 == null) {
            return;
        }
        F10.v(this.localWindIntensity);
        F10.w(this.windVerticality);
    }

    @Override
    public void h0(FilamentMaterial filamentMaterial, Material material) {
        super.h0(filamentMaterial, material);
        e1();
    }

    @Override
    public void i0(String entry, float value) {
        if (entry.equalsIgnoreCase("windeffect") || entry.equalsIgnoreCase("localWindIntensity")) {
            c1(value);
            return;
        }
        if (entry.equalsIgnoreCase("windVerticality")) {
            d1(value);
            return;
        }
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26799a.equals(entry) && (bVar.f26800b.equals(TypedValues.Custom.S_FLOAT) || bVar.f26800b.equals("float01"))) {
                bVar.f26804f = Float.valueOf(value);
                V0(i10);
                Z();
                return;
            }
        }
    }

    @Override
    public void k0(nc.h globalShaderEntity) {
        super.k0(globalShaderEntity);
        e1();
    }

    @Override
    public ShaderBinder l() {
        CustomShaderBinder customShaderBinder = new CustomShaderBinder(this.materialShader);
        customShaderBinder.params.clear();
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            Vb.b a10 = bVar.a();
            a10.f26804f = N0(bVar.f26804f);
            customShaderBinder.params.add(a10);
        }
        customShaderBinder.localWindIntensity = this.localWindIntensity;
        customShaderBinder.windVerticality = this.windVerticality;
        customShaderBinder.n0(K());
        customShaderBinder.e1();
        return customShaderBinder;
    }

    @Override
    public void r0(String entry, p texture) {
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26799a.equals(entry) && bVar.f26800b.equals("sampler2D")) {
                bVar.f26804f = texture;
                V0(i10);
                Z();
            }
        }
    }

    @Override
    public void s0(String entry, String file) {
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26799a.equals(entry) && bVar.f26800b.equals("sampler2D")) {
                p pVar = (p) bVar.f26804f;
                if (pVar != null && (pVar instanceof ub.g) && ((ub.g) pVar).getFile().equals(file)) {
                    return;
                }
                if (file == null || file.isEmpty()) {
                    bVar.f26804f = null;
                } else {
                    bVar.f26804f = C16165b.u(file);
                }
                V0(i10);
                Z();
            }
        }
    }

    @Override
    public ColorINT t(String entry) {
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26799a.equals(entry) && bVar.f26800b.equals("rgba")) {
                float[] fArr = (float[]) bVar.f26804f;
                return fArr != null ? new ColorINT(fArr[3], fArr[0], fArr[1], fArr[2]) : new ColorINT(0, 0, 0, 0);
            }
            if (bVar.f26799a.equals(entry) && bVar.f26800b.equals("rgb")) {
                float[] fArr2 = (float[]) bVar.f26804f;
                return fArr2 != null ? new ColorINT(1.0f, fArr2[0], fArr2[1], fArr2[2]) : new ColorINT(0, 0, 0, 0);
            }
        }
        return null;
    }

    @Override
    public float u(String entry) {
        if (entry.equalsIgnoreCase("windeffect") || entry.equalsIgnoreCase("localWindIntensity")) {
            return this.localWindIntensity;
        }
        if (entry.equalsIgnoreCase("windVerticality")) {
            return this.windVerticality;
        }
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26799a.equals(entry) && (bVar.f26800b.equals(TypedValues.Custom.S_FLOAT) || bVar.f26800b.equals("float01"))) {
                if (bVar.f26804f == null) {
                    bVar.f26804f = Float.valueOf(0.0f);
                }
                return b1(bVar.f26804f);
            }
        }
        return 0.0f;
    }

    @Override
    public void w0(String entry, Vector2 vector2) {
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26799a.equals(entry) && bVar.f26800b.equals("float2")) {
                float[] fArr = (float[]) bVar.f26804f;
                if (fArr == null) {
                    fArr = new float[2];
                }
                fArr[0] = vector2.getX();
                fArr[1] = vector2.getY();
                bVar.f26804f = fArr;
                V0(i10);
                Z();
                return;
            }
        }
    }

    @Override
    public p y(String entry) {
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26799a.equals(entry) && bVar.f26800b.equals("sampler2D")) {
                Object obj = bVar.f26804f;
                if (obj instanceof p) {
                    return (p) obj;
                }
            }
        }
        return null;
    }

    @Override
    public String z(String entry) {
        for (int i10 = 0; i10 < this.params.size(); i10++) {
            Vb.b bVar = this.params.get(i10);
            if (bVar.f26799a.equals(entry) && bVar.f26800b.equals("sampler2D")) {
                Object obj = bVar.f26804f;
                if (obj instanceof ub.g) {
                    return ((ub.g) obj).getFile();
                }
            }
        }
        return null;
    }
}
