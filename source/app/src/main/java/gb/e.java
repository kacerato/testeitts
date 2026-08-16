package Gb;

import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;
import vc.q;

public class e {

    public double f7738a;

    public int f7739b;

    public int f7740c;

    public final Vertex f7741d = new Vertex();

    public static class a {

        public double f7742a;

        public double f7743b;

        public double f7744c;

        public a(double x10, double y10, double z10) {
            this.f7742a = x10;
            this.f7743b = y10;
            this.f7744c = z10;
        }

        public a a(a other) {
            return new a(this.f7742a + other.f7742a, this.f7743b + other.f7743b, this.f7744c + other.f7744c);
        }

        public a b(a other) {
            double d10 = this.f7743b;
            double d11 = other.f7744c;
            double d12 = this.f7744c;
            double d13 = other.f7743b;
            double d14 = (d10 * d11) - (d12 * d13);
            double d15 = other.f7742a;
            double d16 = this.f7742a;
            return new a(d14, (d12 * d15) - (d11 * d16), (d16 * d13) - (d10 * d15));
        }

        public double c(a other) {
            return (this.f7742a * other.f7742a) + (this.f7743b * other.f7743b) + (this.f7744c * other.f7744c);
        }

        public a d() {
            double d10 = this.f7742a;
            double d11 = this.f7743b;
            double d12 = (d10 * d10) + (d11 * d11);
            double d13 = this.f7744c;
            double sqrt = Math.sqrt(d12 + (d13 * d13));
            return new a(this.f7742a / sqrt, this.f7743b / sqrt, this.f7744c / sqrt);
        }

        public a e(double scalar) {
            return new a(this.f7742a * scalar, this.f7743b * scalar, this.f7744c * scalar);
        }

        public a f(a other) {
            return new a(this.f7742a - other.f7742a, this.f7743b - other.f7743b, this.f7744c - other.f7744c);
        }
    }

    public e(double radius, int stacks, int slices) {
        this.f7738a = radius;
        this.f7739b = stacks;
        this.f7740c = slices;
        List<a> b10 = b();
        List<Integer> a10 = a();
        q qVar = new q(b10.size());
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(a10.size());
        qVar.r(0);
        nativeIntBuffer.position(0);
        for (a aVar : b10) {
            qVar.s((float) aVar.f7744c, (float) aVar.f7743b, (float) aVar.f7742a);
        }
        Iterator<Integer> it = a10.iterator();
        while (it.hasNext()) {
            nativeIntBuffer.put(it.next().intValue());
        }
        this.f7741d.r2(qVar);
        this.f7741d.i2(nativeIntBuffer);
        this.f7741d.K1();
        this.f7741d.F(true, true);
    }

    public final List<Integer> a() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f7739b; i10++) {
            int i11 = 0;
            while (true) {
                int i12 = this.f7740c;
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
            if (i10 > this.f7739b) {
                return steppedArrayList;
            }
            double d10 = 3.141592653589793d;
            double d11 = (i10 * 3.141592653589793d) / (r4 * 2);
            double sin = Math.sin(d11);
            double cos = Math.cos(d11);
            int i11 = 0;
            while (true) {
                int i12 = this.f7740c;
                if (i11 <= i12) {
                    double d12 = ((i11 * 2) * d10) / i12;
                    double sin2 = Math.sin(d12);
                    double cos2 = Math.cos(d12) * sin;
                    double d13 = this.f7738a;
                    steppedArrayList.add(new a(cos2 * d13, cos * d13, sin2 * sin * d13));
                    i11++;
                    d10 = 3.141592653589793d;
                }
            }
            i10++;
        }
    }

    public Vertex c() {
        return this.f7741d;
    }
}
