package com.itsmagic.engine.Engines.Engine.ImGUI.Vectors;

import com.google.gson.annotations.Expose;

public class Square5I {

    @Expose
    private int bottom;

    @Expose
    private int left;

    @Expose
    private int right;

    @Expose
    private int top;

    public Square5I() {
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
    }

    public Square5I clone() {
        Square5I square5I = new Square5I();
        square5I.left = this.left;
        square5I.top = this.top;
        square5I.right = this.right;
        square5I.bottom = this.bottom;
        return square5I;
    }

    public int b() {
        return this.bottom;
    }

    public int c() {
        return this.bottom;
    }

    public int d() {
        return this.left + this.right;
    }

    public int e() {
        return this.left;
    }

    public int f() {
        return this.right;
    }

    public int g() {
        return this.top;
    }

    public int h() {
        return this.top + this.bottom;
    }

    public int i() {
        return this.left;
    }

    public int j() {
        return this.right;
    }

    public int k() {
        return this.top;
    }

    public void l(int a10) {
        this.left = a10;
        this.top = a10;
        this.right = a10;
        this.bottom = a10;
    }

    public void m(int x10, int y10, int z10, int w10) {
        this.left = x10;
        this.top = y10;
        this.right = z10;
        this.bottom = w10;
    }

    public void n(Square5I vector) {
        this.left = vector.left;
        this.top = vector.top;
        this.right = vector.right;
        this.bottom = vector.bottom;
    }

    public void o(int bottom) {
        this.bottom = bottom;
    }

    public void p(int left) {
        this.left = left;
    }

    public void q(int right) {
        this.right = right;
    }

    public void r(int top) {
        this.top = top;
    }

    public Square5I(int a10) {
        this.left = a10;
        this.top = a10;
        this.right = a10;
        this.bottom = a10;
    }

    public Square5I(int x10, int y10, int z10, int w10) {
        this.left = x10;
        this.top = y10;
        this.right = z10;
        this.bottom = w10;
    }
}
