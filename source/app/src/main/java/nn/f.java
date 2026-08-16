package nn;

public class f {

    public static class a {

        public static final int[] f98345a;

        static {
            int[] iArr = new int[n.values().length];
            f98345a = iArr;
            try {
                iArr[n.EDGE_JUMP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f98345a[n.EDGE_CLIMB_DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f98345a[n.EDGE_JUMP_OVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public e a(m acfg, n type, c edge) {
        int i10 = a.f98345a[type.ordinal()];
        if (i10 == 1) {
            return c(acfg, edge);
        }
        if (i10 == 2) {
            return b(acfg, edge);
        }
        throw new IllegalArgumentException("Unsupported jump type " + ((Object) type));
    }

    public final e b(m acfg, c edge) {
        e eVar = new e(edge, new b());
        i iVar = eVar.f98339a;
        float f10 = acfg.f98372c;
        iVar.f98352d = 2.0f * f10;
        float[] fArr = new float[3];
        d(fArr, eVar.f98344f, eVar.f98343e, new float[]{acfg.f98376g, -f10});
        e(eVar.f98339a.f98349a, edge.f98337a, fArr);
        e(eVar.f98339a.f98350b, edge.f98338b, fArr);
        d(fArr, eVar.f98344f, eVar.f98343e, new float[]{acfg.f98377h, acfg.f98379j});
        i iVar2 = new i();
        iVar2.f98352d = acfg.f98380k;
        e(iVar2.f98349a, edge.f98337a, fArr);
        e(iVar2.f98350b, edge.f98338b, fArr);
        eVar.f98340b.add(iVar2);
        return eVar;
    }

    public final e c(m acfg, c edge) {
        e eVar = new e(edge, new q(acfg.f98378i));
        i iVar = eVar.f98339a;
        float f10 = acfg.f98372c;
        float f11 = 2.0f;
        iVar.f98352d = f10 * 2.0f;
        float[] fArr = new float[3];
        d(fArr, eVar.f98344f, eVar.f98343e, new float[]{acfg.f98376g, -f10});
        e(eVar.f98339a.f98349a, edge.f98337a, fArr);
        e(eVar.f98339a.f98350b, edge.f98338b, fArr);
        float f12 = acfg.f98377h - (acfg.f98373d * 2.0f);
        int max = Math.max(2, (int) Math.ceil(f12 / acfg.f98370a));
        int i10 = 0;
        while (i10 < max) {
            d(fArr, eVar.f98344f, eVar.f98343e, new float[]{(acfg.f98373d * f11) + ((i10 / (max - 1)) * f12), acfg.f98379j});
            i iVar2 = new i();
            iVar2.f98352d = acfg.f98380k;
            e(iVar2.f98349a, edge.f98337a, fArr);
            e(iVar2.f98350b, edge.f98338b, fArr);
            eVar.f98340b.add(iVar2);
            i10++;
            f11 = 2.0f;
        }
        return eVar;
    }

    public final void d(float[] dst, float[] ax, float[] ay, float[] pt) {
        float f10 = ax[0] * pt[0];
        float f11 = ay[0];
        float f12 = pt[1];
        dst[0] = f10 + (f11 * f12);
        float f13 = ax[1];
        float f14 = pt[0];
        dst[1] = (f13 * f14) + (ay[1] * f12);
        dst[2] = (ax[2] * f14) + (ay[2] * pt[1]);
    }

    public final void e(float[] dest, float[] v12, float[] v22) {
        dest[0] = v12[0] + v22[0];
        dest[1] = v12[1] + v22[1];
        dest[2] = v12[2] + v22[2];
    }
}
