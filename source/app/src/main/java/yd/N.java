package Yd;

import be.InterfaceC3871d;
import java.util.Random;
import java.util.RandomAccess;

public class N extends J implements InterfaceC3871d {

    public static final long f30098e = -283967356065247728L;

    public final InterfaceC3871d f30099d;

    public N(InterfaceC3871d interfaceC3871d) {
        super(interfaceC3871d);
        this.f30099d = interfaceC3871d;
    }

    private Object a() {
        InterfaceC3871d interfaceC3871d = this.f30099d;
        return interfaceC3871d instanceof RandomAccess ? new z0(interfaceC3871d) : this;
    }

    @Override
    public float B0(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int G3(float f10, int i10, int i11) {
        return this.f30099d.G3(f10, i10, i11);
    }

    @Override
    public int H3(float f10) {
        return this.f30099d.H3(f10);
    }

    @Override
    public void J0(Random random) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void Ka(int i10, float[] fArr, int i11, int i12) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void M2(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float Q8(int i10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] R5(float[] fArr, int i10, int i11, int i12) {
        return this.f30099d.R5(fArr, i10, i11, i12);
    }

    @Override
    public void T7(int i10, float[] fArr, int i11, int i12) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void Te(int i10, float[] fArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] U8(float[] fArr, int i10, int i11) {
        return this.f30099d.U8(fArr, i10, i11);
    }

    @Override
    public InterfaceC3871d V2(he.I i10) {
        return this.f30099d.V2(i10);
    }

    @Override
    public void We(float[] fArr, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int X3(float f10) {
        return this.f30099d.X3(f10);
    }

    @Override
    public void bd(int i10, float[] fArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public InterfaceC3871d d5(he.I i10) {
        return this.f30099d.d5(i10);
    }

    @Override
    public int d6(int i10, float f10) {
        return this.f30099d.d6(i10, f10);
    }

    @Override
    public void e3(float[] fArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30099d.equals(obj);
    }

    @Override
    public float get(int i10) {
        return this.f30099d.get(i10);
    }

    @Override
    public int hashCode() {
        return this.f30099d.hashCode();
    }

    @Override
    public int j6(float f10) {
        return this.f30099d.j6(f10);
    }

    @Override
    public float l5(int i10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void l8(int i10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float max() {
        return this.f30099d.max();
    }

    @Override
    public float min() {
        return this.f30099d.min();
    }

    @Override
    public void n(Ud.d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float o() {
        return this.f30099d.o();
    }

    @Override
    public void q6(int i10, int i11, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void sort() {
        throw new UnsupportedOperationException();
    }

    @Override
    public InterfaceC3871d subList(int i10, int i11) {
        return new N(this.f30099d.subList(i10, i11));
    }

    @Override
    public void t0(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void u0() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void w0(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void y0(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] z0(int i10, int i11) {
        return this.f30099d.z0(i10, i11);
    }

    @Override
    public int z6(int i10, float f10) {
        return this.f30099d.z6(i10, f10);
    }

    @Override
    public boolean zc(he.I i10) {
        return this.f30099d.zc(i10);
    }
}
