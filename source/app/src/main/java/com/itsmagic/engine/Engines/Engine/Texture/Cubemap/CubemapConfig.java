package com.itsmagic.engine.Engines.Engine.Texture.Cubemap;

import N7.c;
import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;

public class CubemapConfig {

    @Expose
    private int cubeSize;

    @Expose
    private String cubemapFile;

    @Expose
    private boolean isFinal;

    @Expose
    private String panoramaFile;

    @Expose
    private String texFaceNX;

    @Expose
    private String texFaceNY;

    @Expose
    private String texFaceNZ;

    @Expose
    private String texFacePX;

    @Expose
    private String texFacePY;

    @Expose
    private String texFacePZ;

    @Expose
    private a mode = a.PANORAMA;

    @Expose
    private TextureConfig textureConfig = new TextureConfig();

    public enum a {
        PANORAMA,
        SIX_FACES
    }

    public static CubemapConfig a() {
        CubemapConfig cubemapConfig = new CubemapConfig();
        TextureConfig textureConfig = new TextureConfig();
        cubemapConfig.textureConfig = textureConfig;
        textureConfig.allowModifications = false;
        textureConfig.gammaCorrection = true;
        textureConfig.genMipmaps = true;
        textureConfig.mipmapLevels = 6;
        textureConfig.autoGenNormalMap = false;
        textureConfig.maxResolutionID = 14;
        return cubemapConfig;
    }

    public static CubemapConfig b(String json) {
        try {
            return (CubemapConfig) X7.a.m().fromJson(json, CubemapConfig.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void A(String texFacePX) {
        this.texFacePX = texFacePX;
    }

    public void B(String texFacePY) {
        this.texFacePY = texFacePY;
    }

    public void C(String texFacePZ) {
        this.texFacePZ = texFacePZ;
    }

    public void D(TextureConfig textureConfig) {
        this.textureConfig = textureConfig;
    }

    public int c() {
        return this.cubeSize;
    }

    public String d() {
        return this.cubemapFile;
    }

    public a e() {
        return this.mode;
    }

    public String f() {
        return this.panoramaFile;
    }

    public String g() {
        return this.texFaceNX;
    }

    public String h() {
        return this.texFaceNY;
    }

    public String i() {
        return this.texFaceNZ;
    }

    public String j() {
        return this.texFacePX;
    }

    public String k() {
        return this.texFacePY;
    }

    public String l() {
        return this.texFacePZ;
    }

    public TextureConfig m() {
        return this.textureConfig;
    }

    public boolean n() {
        return this.isFinal;
    }

    public final void o() {
    }

    public JsonElement p(Context context) {
        JsonElement jsonTree = X7.a.m().toJsonTree(this);
        return jsonTree;
    }

    public String q() {
        return p(c.t()).toString();
    }

    public String r(Context context) {
        return p(context).toString();
    }

    public void s(int cubeSize) {
        this.cubeSize = cubeSize;
    }

    public void t(String cubemapFile) {
        this.cubemapFile = cubemapFile;
    }

    public void u(boolean aFinal) {
        this.isFinal = aFinal;
    }

    public void v(a mode) {
        this.mode = mode;
    }

    public void w(String panoramaFile) {
        this.panoramaFile = panoramaFile;
    }

    public void x(String texFaceNX) {
        this.texFaceNX = texFaceNX;
    }

    public void y(String texFaceNY) {
        this.texFaceNY = texFaceNY;
    }

    public void z(String texFaceNZ) {
        this.texFaceNZ = texFaceNZ;
    }
}
