package P6;

import C5.b;
import F5.c;
import N9.a;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.FastNoiseLite;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.util.LinkedList;
import java.util.List;

public class b {

    public class a implements D5.h {

        public final NoiseData f20715a;

        public final z f20716b;

        public a(final NoiseData val$data, final z val$listener) {
            this.f20715a = val$data;
            this.f20716b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20715a.getLacunarity() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20715a.setLacunarity(variable.float_value);
                this.f20716b.b();
            }
        }
    }

    public class C0509b implements D5.h {

        public final NoiseData f20717a;

        public final z f20718b;

        public C0509b(final NoiseData val$data, final z val$listener) {
            this.f20717a = val$data;
            this.f20718b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20717a.getGain() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20717a.setGain(variable.float_value);
                this.f20718b.b();
            }
        }
    }

    public class c implements D5.h {

        public final NoiseData f20719a;

        public final z f20720b;

        public c(final NoiseData val$data, final z val$listener) {
            this.f20719a = val$data;
            this.f20720b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20719a.getFractalBounding() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20719a.setFractalBounding(variable.float_value);
                this.f20720b.b();
            }
        }
    }

    public class d implements D5.h {

        public final NoiseData f20721a;

        public final z f20722b;

        public d(final NoiseData val$data, final z val$listener) {
            this.f20721a = val$data;
            this.f20722b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20721a.getWeightedStrength() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20721a.setWeightedStrength(variable.float_value);
                this.f20722b.b();
            }
        }
    }

    public class e implements D5.h {

        public final NoiseData f20723a;

        public final z f20724b;

        public e(final NoiseData val$data, final z val$listener) {
            this.f20723a = val$data;
            this.f20724b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(this.f20723a.enableDomainWarp));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20723a.enableDomainWarp = variable.booolean_value.booleanValue();
                this.f20724b.b();
            }
        }
    }

    public class f extends c.n0<FastNoiseLite.DomainWarpType> {

        public final z f20725a;

        public final NoiseData f20726b;

        public f(final z val$listener, final NoiseData val$data) {
            this.f20725a = val$listener;
            this.f20726b = val$data;
        }

        @Override
        public void a() {
            this.f20725a.a();
        }

        @Override
        public void set(FastNoiseLite.DomainWarpType value) {
            this.f20726b.setDomainWarpType(value);
            this.f20725a.b();
        }
    }

    public class g implements D5.h {

        public final NoiseData f20727a;

        public final z f20728b;

        public g(final NoiseData val$data, final z val$listener) {
            this.f20727a = val$data;
            this.f20728b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20727a.getDomainWarpAmp() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20727a.setDomainWarpAmp(variable.float_value);
                this.f20728b.b();
            }
        }
    }

    public class h implements D5.h {

        public final NoiseData f20729a;

        public final z f20730b;

        public h(final NoiseData val$data, final z val$listener) {
            this.f20729a = val$data;
            this.f20730b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20729a.getDw_frequency() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20729a.setDw_frequency(variable.float_value);
                this.f20730b.b();
            }
        }
    }

    public class i extends c.n0<FastNoiseLite.FractalType> {

        public final z f20731a;

        public final NoiseData f20732b;

        public i(final z val$listener, final NoiseData val$data) {
            this.f20731a = val$listener;
            this.f20732b = val$data;
        }

        @Override
        public void a() {
            this.f20731a.a();
        }

        @Override
        public void set(FastNoiseLite.FractalType value) {
            this.f20732b.setDomainWarpFractalType(value);
            this.f20731a.b();
        }
    }

    public class j implements D5.h {

        public final NoiseData f20733a;

        public final z f20734b;

        public j(final NoiseData val$data, final z val$listener) {
            this.f20733a = val$data;
            this.f20734b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20733a.getDw_octaves() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20733a.setDw_octaves(variable.int_value);
                this.f20734b.b();
            }
        }
    }

    public class k implements D5.h {

        public final TextureConfig f20735a;

        public final z f20736b;

        public k(final TextureConfig val$texConfig, final z val$listener) {
            this.f20735a = val$texConfig;
            this.f20736b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", TextureConfig.f79814s[this.f20735a.maxResolutionID] + "x" + TextureConfig.f79814s[this.f20735a.maxResolutionID]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20735a.maxResolutionID = variable.int_value;
                this.f20736b.b();
            }
        }
    }

    public class l implements D5.h {

        public final NoiseData f20737a;

        public final z f20738b;

        public l(final NoiseData val$data, final z val$listener) {
            this.f20737a = val$data;
            this.f20738b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20737a.getDw_gain() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20737a.setDw_gain(variable.float_value);
                this.f20738b.b();
            }
        }
    }

    public class m implements D5.h {

        public final NoiseData f20739a;

        public final z f20740b;

        public m(final NoiseData val$data, final z val$listener) {
            this.f20739a = val$data;
            this.f20740b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20739a.getDw_lacunarity() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20739a.setDw_lacunarity(variable.float_value);
                this.f20740b.b();
            }
        }
    }

    public class n implements D5.h {

        public final TextureConfig f20741a;

        public final z f20742b;

        public final NoiseData f20743c;

        public n(final TextureConfig val$texConfig, final z val$listener, final NoiseData val$data) {
            this.f20741a = val$texConfig;
            this.f20742b = val$listener;
            this.f20743c = val$data;
        }

        @Override
        public Variable get() {
            return new Variable("", b.e(this.f20743c));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                int i10 = variable.int_value;
                if (i10 == 0) {
                    this.f20741a.j0(TextureConfig.c.Nearest);
                } else if (i10 == 1) {
                    this.f20741a.j0(TextureConfig.c.Linear);
                }
                this.f20742b.b();
            }
        }
    }

    public class o implements D5.h {

        public final TextureConfig f20744a;

        public final z f20745b;

        public final NoiseData f20746c;

        public o(final TextureConfig val$texConfig, final z val$listener, final NoiseData val$data) {
            this.f20744a = val$texConfig;
            this.f20745b = val$listener;
            this.f20746c = val$data;
        }

        @Override
        public Variable get() {
            return new Variable("", b.i(this.f20746c));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                int i10 = variable.int_value;
                if (i10 == 0) {
                    this.f20744a.wrap = TextureConfig.h.Clamp;
                } else if (i10 == 1) {
                    this.f20744a.wrap = TextureConfig.h.Repeat;
                } else if (i10 == 2) {
                    this.f20744a.wrap = TextureConfig.h.MirrorRepeat;
                }
                this.f20745b.b();
            }
        }
    }

    public class p implements D5.h {

        public final TextureConfig f20747a;

        public final z f20748b;

        public p(final TextureConfig val$texConfig, final z val$listener) {
            this.f20747a = val$texConfig;
            this.f20748b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20747a.genMipmaps + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20747a.genMipmaps = variable.booolean_value.booleanValue();
                this.f20748b.b();
            }
        }
    }

    public static class q {

        public static final int[] f20749a;

        public static final int[] f20750b;

        public static final int[] f20751c;

        static {
            int[] iArr = new int[TextureConfig.h.values().length];
            f20751c = iArr;
            try {
                iArr[TextureConfig.h.Clamp.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20751c[TextureConfig.h.Repeat.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20751c[TextureConfig.h.MirrorRepeat.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[TextureConfig.c.values().length];
            f20750b = iArr2;
            try {
                iArr2[TextureConfig.c.Nearest.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20750b[TextureConfig.c.Linear.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[FastNoiseLite.FractalType.values().length];
            f20749a = iArr3;
            try {
                iArr3[FastNoiseLite.FractalType.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f20749a[FastNoiseLite.FractalType.PingPong.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f20749a[FastNoiseLite.FractalType.FBm.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f20749a[FastNoiseLite.FractalType.Ridged.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f20749a[FastNoiseLite.FractalType.DomainWarpIndependent.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f20749a[FastNoiseLite.FractalType.DomainWarpProgressive.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public class r implements D5.h {

        public final TextureConfig f20752a;

        public final z f20753b;

        public r(final TextureConfig val$texConfig, final z val$listener) {
            this.f20752a = val$texConfig;
            this.f20753b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20752a.s() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20752a.B0(variable.int_value);
                this.f20753b.b();
            }
        }
    }

    public class s implements a.b {

        public final z f20754a;

        public s(final z val$listener) {
            this.f20754a = val$listener;
        }

        @Override
        public void a() {
            this.f20754a.b();
        }
    }

    public class t extends c.n0<FastNoiseLite.NoiseType> {

        public final z f20755a;

        public final NoiseData f20756b;

        public t(final z val$listener, final NoiseData val$data) {
            this.f20755a = val$listener;
            this.f20756b = val$data;
        }

        @Override
        public void a() {
            this.f20755a.a();
        }

        @Override
        public void set(FastNoiseLite.NoiseType value) {
            this.f20756b.setNoiseType(value);
            this.f20755a.b();
        }
    }

    public class u implements D5.h {

        public final NoiseData f20757a;

        public final z f20758b;

        public u(final NoiseData val$data, final z val$listener) {
            this.f20757a = val$data;
            this.f20758b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20757a.getSeed() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20757a.setSeed(variable.int_value);
                this.f20758b.b();
            }
        }
    }

    public class v implements D5.h {

        public final NoiseData f20759a;

        public final z f20760b;

        public v(final NoiseData val$data, final z val$listener) {
            this.f20759a = val$data;
            this.f20760b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20759a.getFrequency() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20759a.setFrequency(variable.float_value);
                this.f20760b.b();
            }
        }
    }

    public class w extends c.n0<FastNoiseLite.FractalType> {

        public final z f20761a;

        public final NoiseData f20762b;

        public w(final z val$listener, final NoiseData val$data) {
            this.f20761a = val$listener;
            this.f20762b = val$data;
        }

        @Override
        public void a() {
            this.f20761a.a();
        }

        @Override
        public void set(FastNoiseLite.FractalType value) {
            this.f20762b.setFractalType(value);
            this.f20761a.b();
        }
    }

    public class x implements D5.h {

        public final NoiseData f20763a;

        public final z f20764b;

        public x(final NoiseData val$data, final z val$listener) {
            this.f20763a = val$data;
            this.f20764b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20763a.getPingPongStrength() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20763a.setPingPongStrength(variable.float_value);
                this.f20764b.b();
            }
        }
    }

    public class y implements D5.h {

        public final NoiseData f20765a;

        public final z f20766b;

        public y(final NoiseData val$data, final z val$listener) {
            this.f20765a = val$data;
            this.f20766b = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20765a.getOctaves() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f20765a.setOctaves(variable.int_value);
                this.f20766b.b();
            }
        }
    }

    public interface z {
        void a();

        void b();
    }

    public static List<C5.b> c(NoiseData data, z listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.DOMAIN_WRAP), data.enableDomainWarp, new e(data, listener), data.domainWrapEditor));
        C5.a aVar = bVar.f2064Q;
        aVar.f2043p = R.color.interface_panel;
        aVar.f2042o.add(F5.c.i(Lang.l(Lang.T.TYPE), FastNoiseLite.DomainWarpType.class, data.getDomainWarpType(), new f(listener, data)));
        List<C5.b> list = bVar.f2064Q.f2042o;
        g gVar = new g(data, listener);
        b.a aVar2 = b.a.SLFloat;
        list.add(new C5.b(gVar, "Amplitude", aVar2));
        bVar.f2064Q.f2042o.add(new C5.b(new h(data, listener), "Frequency", aVar2));
        bVar.f2064Q.f2042o.add(F5.c.i(Lang.l(Lang.T.FRACTAL_TYPE), FastNoiseLite.FractalType.class, data.getDomainWarpFractalType(), new i(listener, data)));
        bVar.f2064Q.f2042o.add(new C5.b(new j(data, listener), "Octaves", b.a.SLInt));
        bVar.f2064Q.f2042o.add(new C5.b(new l(data, listener), "Gain", aVar2));
        bVar.f2064Q.f2042o.add(new C5.b(new m(data, listener), "Lacunarity", aVar2));
        steppedArrayList.add(bVar);
        return steppedArrayList;
    }

    public static List<C5.b> d(NoiseData data, z listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(F5.c.i(Lang.l(Lang.T.TYPE), FastNoiseLite.NoiseType.class, data.getNoiseType(), new t(listener, data)));
        steppedArrayList.add(new C5.b(new u(data, listener), "Seed", b.a.SLInt));
        steppedArrayList.add(new C5.b(new v(data, listener), "Frequency", b.a.SLFloat));
        steppedArrayList.add(F5.c.L(Lang.l(Lang.T.OFFSET), data.offset, new Vector3()));
        return steppedArrayList;
    }

    public static String e(NoiseData data) {
        int i10 = q.f20750b[data.textureConfig.k().ordinal()];
        return i10 != 1 ? i10 != 2 ? "Unknown" : "Linear" : "Pixel";
    }

    public static List<C5.b> f(NoiseData data, z listener) {
        LinkedList linkedList = new LinkedList();
        TextureConfig textureConfig = data.textureConfig;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 : TextureConfig.f79814s) {
            steppedArrayList.add(i10 + "x" + i10);
        }
        linkedList.add(new C5.b(new k(textureConfig, listener), TextureConfig.f79814s[textureConfig.maxResolutionID] + "x" + TextureConfig.f79814s[textureConfig.maxResolutionID], steppedArrayList, b.a.SLDropdown, "Max resolution"));
        linkedList.add(new C5.b(new r(textureConfig, listener), "Quality", b.a.SLInt));
        linkedList.add(N9.a.b("Color ramp", data.coloRamp, N7.c.t(), new s(listener)));
        linkedList.addAll(d(data, listener));
        linkedList.addAll(g(data, listener));
        linkedList.addAll(c(data, listener));
        linkedList.addAll(h(data, listener));
        return linkedList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0052, code lost:
    
        if (r2 != 6) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<C5.b> g(NoiseData data, z listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.FRACTAL), true, data.fractalEditor));
        C5.a aVar = bVar.f2064Q;
        aVar.f2043p = R.color.interface_panel;
        aVar.f2042o.add(F5.c.i(Lang.l(Lang.T.TYPE), FastNoiseLite.FractalType.class, data.getFractalType(), new w(listener, data)));
        int i10 = q.f20749a[data.getFractalType().ordinal()];
        if (i10 == 2) {
            bVar.f2064Q.f2042o.add(new C5.b(new x(data, listener), "Ping pong strength", b.a.SLFloat));
        } else if (i10 != 3) {
            if (i10 != 4) {
                if (i10 != 5) {
                }
            }
        }
        bVar.f2064Q.f2042o.add(new C5.b(new y(data, listener), "Octaves", b.a.SLInt));
        List<C5.b> list = bVar.f2064Q.f2042o;
        a aVar2 = new a(data, listener);
        b.a aVar3 = b.a.SLFloat;
        list.add(new C5.b(aVar2, "Lacunarity", aVar3));
        bVar.f2064Q.f2042o.add(new C5.b(new C0509b(data, listener), "Gain", aVar3));
        bVar.f2064Q.f2042o.add(new C5.b(new c(data, listener), "Bounding", aVar3));
        bVar.f2064Q.f2042o.add(new C5.b(new d(data, listener), "Weighted Strength", aVar3));
        steppedArrayList.add(bVar);
        return steppedArrayList;
    }

    public static List<C5.b> h(NoiseData data, z listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        TextureConfig textureConfig = data.textureConfig;
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.TEXTURE), true, data.textureEditor));
        bVar.f2064Q.f2043p = R.color.interface_panel;
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        steppedArrayList2.add("Pixel");
        steppedArrayList2.add("Linear");
        List<C5.b> list = bVar.f2064Q.f2042o;
        n nVar = new n(textureConfig, listener, data);
        String e10 = e(data);
        b.a aVar = b.a.SLDropdown;
        list.add(new C5.b(nVar, e10, steppedArrayList2, aVar, "Filter"));
        SteppedArrayList steppedArrayList3 = new SteppedArrayList();
        steppedArrayList3.add("Clamp");
        steppedArrayList3.add("Repeat");
        steppedArrayList3.add("MirrorRepeat");
        bVar.f2064Q.f2042o.add(new C5.b(new o(textureConfig, listener, data), i(data), steppedArrayList3, aVar, "Wrap"));
        bVar.f2064Q.f2042o.add(new C5.b(new p(textureConfig, listener), "Mipmaps", b.a.SLBoolean));
        steppedArrayList.add(bVar);
        return steppedArrayList;
    }

    public static String i(NoiseData data) {
        int i10 = q.f20751c[data.textureConfig.wrap.ordinal()];
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? "Unknown" : "MirrorRepeat" : "Repeat" : "Clamp";
    }
}
