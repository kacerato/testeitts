package com.itsmagic.engine.Engines.Engine.Texture.Sprite;

import Ab.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class SpriteData {

    @Expose
    private int framesPerSecond = 30;

    @Expose
    private b sliceType = b.Automatic;

    @Expose
    private int alphaThreshold = 3;

    @Expose
    private int minIslandSizePixels = 10;

    @Expose
    private int gridCellWidth = 32;

    @Expose
    private int gridCellHeight = 32;

    @Expose
    private int gridCellCountX = 4;

    @Expose
    private int gridCellCountY = 4;

    @Expose
    private int gridOffsetX = 0;

    @Expose
    private int gridOffsetY = 0;

    @Expose
    private final List<Rect> sprites = new SteppedArrayList();

    public static SpriteData d(SpriteData spriteData) {
        if (spriteData == null) {
            return null;
        }
        SpriteData spriteData2 = new SpriteData();
        spriteData2.r(spriteData.f());
        spriteData2.z(spriteData.n());
        spriteData2.q(spriteData.e());
        spriteData2.y(spriteData.m());
        spriteData2.v(spriteData.j());
        spriteData2.u(spriteData.i());
        spriteData2.s(spriteData.g());
        spriteData2.t(spriteData.h());
        spriteData2.w(spriteData.k());
        spriteData2.x(spriteData.l());
        for (int i10 = 0; i10 < spriteData.C(); i10++) {
            spriteData2.a(Rect.a(spriteData.B(i10)));
        }
        return spriteData2;
    }

    public void A(int i10, Rect rect) {
        this.sprites.set(i10, rect);
    }

    public Rect B(int i10) {
        return this.sprites.get(i10);
    }

    public int C() {
        return this.sprites.size();
    }

    public void a(Rect rect) {
        this.sprites.add(rect);
    }

    public void b(List<Rect> rects) {
        this.sprites.addAll(rects);
    }

    public void c() {
        this.sprites.clear();
    }

    public int e() {
        return this.alphaThreshold;
    }

    public int f() {
        return this.framesPerSecond;
    }

    public int g() {
        return this.gridCellCountX;
    }

    public int h() {
        return this.gridCellCountY;
    }

    public int i() {
        return this.gridCellHeight;
    }

    public int j() {
        return this.gridCellWidth;
    }

    public int k() {
        return this.gridOffsetX;
    }

    public int l() {
        return this.gridOffsetY;
    }

    public int m() {
        return this.minIslandSizePixels;
    }

    public b n() {
        return this.sliceType;
    }

    public void o(Rect rect) {
        this.sprites.remove(rect);
    }

    public void p(int i10) {
        this.sprites.remove(i10);
    }

    public void q(int alphaThreshold) {
        this.alphaThreshold = alphaThreshold;
    }

    public void r(int framesPerSecond) {
        this.framesPerSecond = framesPerSecond;
    }

    public void s(int gridCellCountX) {
        this.gridCellCountX = gridCellCountX;
    }

    public void t(int gridCellCountY) {
        this.gridCellCountY = gridCellCountY;
    }

    public void u(int gridCellHeight) {
        this.gridCellHeight = gridCellHeight;
    }

    public void v(int gridCellWidth) {
        this.gridCellWidth = gridCellWidth;
    }

    public void w(int gridOffsetX) {
        this.gridOffsetX = gridOffsetX;
    }

    public void x(int gridOffsetY) {
        this.gridOffsetY = gridOffsetY;
    }

    public void y(int minIslandSizePixels) {
        this.minIslandSizePixels = minIslandSizePixels;
    }

    public void z(b sliceType) {
        if (sliceType == null) {
            sliceType = b.Automatic;
        }
        this.sliceType = sliceType;
    }
}
