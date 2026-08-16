package com.threed.jpct;

public class TextureInfo {
    public static final int MAX_PHYSICAL_TEXTURE_STAGES = 4;
    public static final int MODE_ADD = 2;
    private static final int MODE_BASE = 0;
    public static final int MODE_BLEND = 4;
    public static final int MODE_MODULATE = 1;
    public static final int MODE_REPLACE = 3;
    int[] mode;
    int stageCnt;
    int[] textures;

    float[] f83628u0;

    float[] f83629u1;

    float[] f83630u2;

    float[] f83631v0;

    float[] f83632v1;

    float[] f83633v2;

    public TextureInfo(int i10, float f10, float f11, float f12, float f13, float f14, float f15) {
        int i11 = Config.maxTextureLayers;
        this.textures = new int[i11];
        this.mode = new int[i11];
        this.f83628u0 = new float[i11];
        this.f83631v0 = new float[i11];
        this.f83629u1 = new float[i11];
        this.f83632v1 = new float[i11];
        this.f83630u2 = new float[i11];
        this.f83633v2 = new float[i11];
        this.stageCnt = 0;
        add(i10, f10, f11, f12, f13, f14, f15, 0);
    }

    public void add(int i10, int i11) {
        add(i10, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, i11);
    }

    public void set(int i10, int i11, int i12) {
        set(i10, i11, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, i12);
    }

    public void add(int i10, float f10, float f11, float f12, float f13, float f14, float f15, int i11) {
        set(i10, this.stageCnt, f10, f11, f12, f13, f14, f15, i11);
        this.stageCnt++;
    }

    public void set(int i10, int i11, float f10, float f11, float f12, float f13, float f14, float f15, int i12) {
        if (i12 == 0 && i11 != 0) {
            Logger.log("Wrong mode for texture blending!", 0);
            return;
        }
        if (i11 >= Config.maxTextureLayers) {
            Logger.log("Maximum number of texture layer configured by Config.maxTextureLayers is " + Config.maxTextureLayers + "!", 1);
            return;
        }
        this.textures[i11] = i10;
        this.f83628u0[i11] = f10;
        this.f83631v0[i11] = f11;
        this.f83629u1[i11] = f12;
        this.f83632v1[i11] = f13;
        this.f83630u2[i11] = f14;
        this.f83633v2[i11] = f15;
        this.mode[i11] = i12;
    }

    public TextureInfo(int i10) {
        int i11 = Config.maxTextureLayers;
        this.textures = new int[i11];
        this.mode = new int[i11];
        this.f83628u0 = new float[i11];
        this.f83631v0 = new float[i11];
        this.f83629u1 = new float[i11];
        this.f83632v1 = new float[i11];
        this.f83630u2 = new float[i11];
        this.f83633v2 = new float[i11];
        this.stageCnt = 0;
        add(i10, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0);
    }
}
