package com.itsmagic.engine.Engines.Engine.Texture.Sprite;

import com.google.gson.annotations.Expose;

public class Rect {

    @Expose
    private float f79773fh;

    @Expose
    private float fw;

    @Expose
    private float fx;

    @Expose
    private float fy;

    @Expose
    private int f79774ih;

    @Expose
    private int imageHeight;

    @Expose
    private int imageWidth;

    @Expose
    private int iw;

    @Expose
    private int ix;

    @Expose
    private int iy;

    public Rect() {
    }

    public static Rect a(Rect rect) {
        if (rect == null) {
            return null;
        }
        Rect rect2 = new Rect();
        rect2.s(rect.k(), rect.l(), rect.j(), rect.g(), rect.i(), rect.h());
        return rect2;
    }

    public void A(int iw) {
        this.iw = iw;
        p();
    }

    public void B(int ix) {
        this.ix = ix;
        p();
    }

    public void C(int iy) {
        this.iy = iy;
        p();
    }

    public void D(int ix, int iy, int iw, int ih2) {
        this.ix = ix;
        this.iy = iy;
        this.iw = iw;
        this.f79774ih = ih2;
        p();
    }

    public void E(int imageWidth, int imageHeight) {
        this.imageWidth = imageWidth;
        this.imageHeight = imageHeight;
        p();
    }

    public float b() {
        return this.f79773fh;
    }

    public float c() {
        return this.fw;
    }

    public float d() {
        return this.fx;
    }

    public float e() {
        return this.fy;
    }

    public int f() {
        return this.f79774ih;
    }

    public int g() {
        return this.f79774ih;
    }

    public int h() {
        return this.imageHeight;
    }

    public int i() {
        return this.imageWidth;
    }

    public int j() {
        return this.iw;
    }

    public int k() {
        return this.ix;
    }

    public int l() {
        return this.iy;
    }

    public int m() {
        return this.ix;
    }

    public int n() {
        return this.iy;
    }

    public int o() {
        return this.iw;
    }

    public final void p() {
        int i10;
        int i11 = this.imageWidth;
        if (i11 <= 0 || (i10 = this.imageHeight) <= 0) {
            this.fx = 0.0f;
            this.fy = 0.0f;
            this.fw = 0.0f;
            this.f79773fh = 0.0f;
            return;
        }
        this.fx = this.ix / i11;
        this.fy = this.iy / i10;
        this.fw = this.iw / i11;
        this.f79773fh = this.f79774ih / i10;
    }

    public void q(int ix, int iy, int iw, int ih2) {
        D(ix, iy, iw, ih2);
    }

    public void r(int ix, int iy, int iw, int ih2, int imageWidth, int imageHeight) {
        s(ix, iy, iw, ih2, imageWidth, imageHeight);
    }

    public void s(int ix, int iy, int iw, int ih2, int imageWidth, int imageHeight) {
        D(ix, iy, iw, ih2);
        this.imageWidth = imageWidth;
        this.imageHeight = imageHeight;
        p();
    }

    public void t(float fh2) {
        this.f79773fh = fh2;
    }

    public void u(float fw) {
        this.fw = fw;
    }

    public void v(float fx) {
        this.fx = fx;
    }

    public void w(float fy) {
        this.fy = fy;
    }

    public void x(int ih2) {
        this.f79774ih = ih2;
        p();
    }

    public void y(int imageHeight) {
        this.imageHeight = imageHeight;
        p();
    }

    public void z(int imageWidth) {
        this.imageWidth = imageWidth;
        p();
    }

    public Rect(int ix, int iy, int iw, int ih2, int imageWidth, int imageHeight) {
        s(ix, iy, iw, ih2, imageWidth, imageHeight);
    }
}
