package com.itsmagic.engine.Engines.Engine.Texture.Data;

import M9.d;
import M9.f;
import android.graphics.Bitmap;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.UnsupportedTextureOperation;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import java.io.File;

public abstract class a extends com.itsmagic.engine.Engines.Native.Base.a {

    public static final int f79753b = 0;

    public static final int f79754c = 1;

    public static final int f79755d = 2;

    public static final int f79756e = 0;

    public static final int f79757g = 1;

    public static final int f79758i = 2;

    public enum EnumC1369a {
        PNG,
        JPG
    }

    public interface b {
        void on(Bitmap bitmap);
    }

    public a() {
        super.setCanAsyncCleaner(false);
    }

    public boolean A() {
        throw new RuntimeException("Override this method!");
    }

    public boolean B() {
        return false;
    }

    public void C(a nativeTexture, int startX, int startY, int width, int height) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void D(int x10, int y10, float r10, float g10, float b10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void E(int x10, int y10, float r10, float g10, float b10, float a10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void F(int x10, int y10, int r10, int g10, int b10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void G(int x10, int y10, int r10, int g10, int b10, int a10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void H(int x10, int y10, ColorINT color) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void I(int x10, int y10, float v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void J(int x10, int y10, int v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void K(int x10, int y10, float v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void L(int x10, int y10, int v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void M(int x10, int y10, float v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void N(int x10, int y10, int v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void O(boolean enabled) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void P(int x10, int y10, float v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void Q(int x10, int y10, int v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void S(int ofx, int ofy, int w10, int h10, b extractCallback) {
        throw new RuntimeException("Override!");
    }

    public boolean e(Runnable post) {
        throw new RuntimeException("Override ths method! [" + getClass().getSimpleName() + "]");
    }

    public void f(FilamentMaterial m10, String attributeName) {
        throw new RuntimeException("Override ths method! [" + getClass().getSimpleName() + "]");
    }

    public int getHeight() {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public int getWidth() {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    @Override
    public d gpuUsageType() {
        return d.TEXTURE;
    }

    public void h(File file, int quality, EnumC1369a exportFormat) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public ColorINT i(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    @Override
    public boolean isNative() {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public ColorINT j(int x10, int y10, ColorINT out) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public abstract FilamentTexture k();

    public float l(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public float m(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public float n(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    @Override
    public f nativeUsageType() {
        return f.TEXTURE;
    }

    public float o(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public long p() {
        throw new RuntimeException("Override ths method! [" + getClass().getSimpleName() + "]");
    }

    public int q(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public int r(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public int s(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public int u(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public TextureConfig.d v() {
        throw new RuntimeException("Override ths method! [" + getClass().getSimpleName() + "]");
    }

    public long w() {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public boolean x() {
        return false;
    }

    public boolean y() {
        throw new RuntimeException("Override this method!");
    }

    public boolean z() {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }
}
