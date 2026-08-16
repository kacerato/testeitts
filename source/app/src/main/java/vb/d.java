package Vb;

import android.provider.MediaStore;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.f;
import ec.g;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import nc.C14377b;
import nc.h;

public class d {

    public class a implements BiConsumer<String, String> {

        public final Map f26807a;

        public final Map f26808b;

        public final List f26809c;

        public final MaterialConfig f26810d;

        public a(final Map val$UNIFORMS, final Map val$SAMPLERS, final List val$finalOutParams, final MaterialConfig val$materialConfig) {
            this.f26807a = val$UNIFORMS;
            this.f26808b = val$SAMPLERS;
            this.f26809c = val$finalOutParams;
            this.f26810d = val$materialConfig;
        }

        @Override
        public void accept(String name, String type) {
            if (name.equals("time") || name.equals(MediaStore.Video.VideoColumns.RESOLUTION) || this.f26807a.containsKey(name) || this.f26808b.containsKey(name) || d.d(this.f26809c, name)) {
                return;
            }
            b bVar = new b();
            bVar.f26799a = name;
            bVar.f26800b = type;
            bVar.f26801c = this.f26810d.precision.get(name);
            bVar.f26802d = this.f26810d.defaults.get(name);
            this.f26809c.add(bVar);
            bVar.b();
        }
    }

    public static void b(Map<String, MaterialBuilder.m> samplers, List<g> entitySamples) {
        if (samplers == null || entitySamples == null || entitySamples.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < entitySamples.size(); i10++) {
            g gVar = entitySamples.get(i10);
            if (gVar != null && gVar.b() != null && !samplers.containsKey(gVar.b()) && gVar.d() != null) {
                samplers.put(gVar.b(), gVar.d());
            }
        }
    }

    public static void c(Map<String, c> uniforms, List<f> entityParams) {
        if (uniforms == null || entityParams == null || entityParams.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < entityParams.size(); i10++) {
            f fVar = entityParams.get(i10);
            if (fVar != null && fVar.a() != null && !uniforms.containsKey(fVar.a())) {
                uniforms.put(fVar.a(), new c(fVar.d(), fVar.b()));
            }
        }
    }

    public static boolean d(List<b> params, String name) {
        for (int i10 = 0; i10 < params.size(); i10++) {
            b bVar = params.get(i10);
            if (bVar != null && name.equals(bVar.f26799a)) {
                return true;
            }
        }
        return false;
    }

    public static MaterialBuilder.g e(String t10) {
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

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0065. Please report as an issue. */
    public static void f(MaterialConfig materialConfig, Map<String, c> UNIFORMS, Map<String, MaterialBuilder.m> SAMPLERS, List<b> outParams, String debugIpp) {
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        UNIFORMS.put("time", new c(rVar, gVar));
        UNIFORMS.put(MediaStore.Video.VideoColumns.RESOLUTION, new c(MaterialBuilder.r.FLOAT2, gVar));
        if (outParams == null) {
            outParams = new SteppedArrayList<>();
        }
        c(UNIFORMS, h.o());
        c(UNIFORMS, C14377b.k());
        b(SAMPLERS, h.p());
        b(SAMPLERS, C14377b.l());
        materialConfig.params.forEach(new a(UNIFORMS, SAMPLERS, outParams, materialConfig));
        for (b bVar : outParams) {
            bVar.f26803e = true;
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
                    UNIFORMS.put(bVar.f26799a, new c(MaterialBuilder.r.FLOAT2, e(bVar.f26801c)));
                    break;
                case 1:
                case 4:
                    UNIFORMS.put(bVar.f26799a, new c(MaterialBuilder.r.FLOAT3, e(bVar.f26801c)));
                    break;
                case 2:
                case 6:
                    UNIFORMS.put(bVar.f26799a, new c(MaterialBuilder.r.FLOAT4, e(bVar.f26801c)));
                    break;
                case 3:
                case 7:
                    UNIFORMS.put(bVar.f26799a, new c(MaterialBuilder.r.FLOAT, e(bVar.f26801c)));
                    break;
                case 5:
                    UNIFORMS.put(bVar.f26799a, new c(MaterialBuilder.r.FLOAT, MaterialBuilder.g.LOW));
                    break;
                case '\b':
                    SAMPLERS.put(bVar.f26799a, MaterialBuilder.m.SAMPLER_2D);
                    break;
                default:
                    bVar.f26803e = false;
                    J4.d.E1();
                    J4.d.M1("Invalid param type[" + bVar.f26800b + "] at shader:" + debugIpp);
                    break;
            }
        }
    }
}
