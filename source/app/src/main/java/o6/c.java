package o6;

public class c {

    public final b f98561a;

    public final boolean f98562b;

    public final int f98563c;

    public final int f98564d;

    public final double f98565e;

    public final double f98566f;

    public final double f98567g;

    public c(b frameData, long heapUsedBytes, long previousFrameUsedMemory) {
        this.f98561a = frameData;
        this.f98563c = frameData.g();
        this.f98564d = frameData.i();
        double e10 = frameData.e();
        this.f98565e = e10;
        double c10 = frameData.c();
        this.f98566f = c10;
        this.f98567g = e10 + c10;
        this.f98562b = previousFrameUsedMemory > heapUsedBytes;
    }

    public b a() {
        return this.f98561a;
    }

    public double b() {
        return this.f98566f;
    }

    public double c() {
        return this.f98565e;
    }

    public int d() {
        return this.f98563c;
    }

    public double e() {
        return this.f98567g;
    }

    public int f() {
        return this.f98564d;
    }

    public boolean g() {
        return this.f98562b;
    }

    public void h() {
        b bVar = this.f98561a;
        if (bVar != null) {
            bVar.m();
        }
    }
}
