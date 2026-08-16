package Gb;

import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;
import vc.q;

public class f {

    public double f7745a;

    public int f7746b;

    public int f7747c;

    public final Vertex f7748d = new Vertex();

    public static class a {

        public double f7749a;

        public double f7750b;

        public double f7751c;

        public a(double x10, double y10, double z10) {
            this.f7749a = x10;
            this.f7750b = y10;
            this.f7751c = z10;
        }

        public a a(a other) {
            return new a(this.f7749a + other.f7749a, this.f7750b + other.f7750b, this.f7751c + other.f7751c);
        }

        public a b(a other) {
            double d10 = this.f7750b;
            double d11 = other.f7751c;
            double d12 = this.f7751c;
            double d13 = other.f7750b;
            double d14 = (d10 * d11) - (d12 * d13);
            double d15 = other.f7749a;
            double d16 = this.f7749a;
            return new a(d14, (d12 * d15) - (d11 * d16), (d16 * d13) - (d10 * d15));
        }

        public double c(a other) {
            return (this.f7749a * other.f7749a) + (this.f7750b * other.f7750b) + (this.f7751c * other.f7751c);
        }

        public a d() {
            double d10 = this.f7749a;
            double d11 = this.f7750b;
            double d12 = (d10 * d10) + (d11 * d11);
            double d13 = this.f7751c;
            double sqrt = Math.sqrt(d12 + (d13 * d13));
            return new a(this.f7749a / sqrt, this.f7750b / sqrt, this.f7751c / sqrt);
        }

        public a e(double scalar) {
            return new a(this.f7749a * scalar, this.f7750b * scalar, this.f7751c * scalar);
        }

        public a f(a other) {
            return new a(this.f7749a - other.f7749a, this.f7750b - other.f7750b, this.f7751c - other.f7751c);
        }
    }

    public f(double radius, int stacks, int slices) {
        this.f7745a = radius;
        this.f7746b = stacks;
        this.f7747c = slices;
        List<a> b10 = b();
        List<Integer> a10 = a();
        q qVar = new q(b10.size());
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(a10.size());
        qVar.r(0);
        nativeIntBuffer.position(0);
        for (a aVar : b10) {
            qVar.s((float) aVar.f7751c, (float) aVar.f7750b, (float) aVar.f7749a);
        }
        Iterator<Integer> it = a10.iterator();
        while (it.hasNext()) {
            nativeIntBuffer.put(it.next().intValue());
        }
        this.f7748d.r2(qVar);
        this.f7748d.i2(nativeIntBuffer);
        this.f7748d.K1();
        this.f7748d.F(true, true);
    }

    public final List<Integer> a() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f7746b; i10++) {
            int i11 = 0;
            while (true) {
                int i12 = this.f7747c;
                if (i11 < i12) {
                    int i13 = ((i12 + 1) * i10) + i11;
                    int i14 = i12 + i13;
                    int i15 = i14 + 1;
                    steppedArrayList.add(Integer.valueOf(i13));
                    steppedArrayList.add(Integer.valueOf(i15));
                    int i16 = i13 + 1;
                    steppedArrayList.add(Integer.valueOf(i16));
                    steppedArrayList.add(Integer.valueOf(i15));
                    steppedArrayList.add(Integer.valueOf(i14 + 2));
                    steppedArrayList.add(Integer.valueOf(i16));
                    i11++;
                }
            }
        }
        return steppedArrayList;
    }

    public final List<a> b() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        int i10 = 0;
        while (true) {
            int i11 = this.f7746b;
            if (i10 > i11) {
                return steppedArrayList;
            }
            double d10 = 3.141592653589793d;
            double d11 = (i10 * 3.141592653589793d) / i11;
            double sin = Math.sin(d11);
            double cos = Math.cos(d11);
            int i12 = 0;
            while (true) {
                int i13 = this.f7747c;
                if (i12 <= i13) {
                    double d12 = ((i12 * 2) * d10) / i13;
                    double sin2 = Math.sin(d12);
                    double cos2 = Math.cos(d12) * sin;
                    double d13 = this.f7745a;
                    steppedArrayList.add(new a(cos2 * d13, cos * d13, sin2 * sin * d13));
                    i12++;
                    d10 = 3.141592653589793d;
                }
            }
            i10++;
        }
    }

    public Vertex c() {
        return this.f7748d;
    }
}
