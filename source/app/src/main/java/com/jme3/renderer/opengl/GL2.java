package com.jme3.renderer.opengl;

import java.nio.ByteBuffer;

public interface GL2 extends GL {
    public static final int GL_ALPHA8 = 32828;
    public static final int GL_ALPHA_TEST = 3008;
    public static final int GL_BGR = 32992;
    public static final int GL_BGRA = 32993;
    public static final int GL_COMPARE_REF_TO_TEXTURE = 34894;
    public static final int GL_DEPTH_COMPONENT24 = 33190;
    public static final int GL_DEPTH_COMPONENT32 = 33191;
    public static final int GL_DEPTH_TEXTURE_MODE = 34891;
    public static final int GL_DOUBLEBUFFER = 3122;
    public static final int GL_DRAW_BUFFER = 3073;
    public static final int GL_FILL = 6914;
    public static final int GL_GENERATE_MIPMAP = 33169;
    public static final int GL_INTENSITY = 32841;
    public static final int GL_LINE = 6913;
    public static final int GL_LUMINANCE8 = 32832;
    public static final int GL_LUMINANCE8_ALPHA8 = 32837;
    public static final int GL_MAX_ELEMENTS_INDICES = 33001;
    public static final int GL_MAX_ELEMENTS_VERTICES = 33000;
    public static final int GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 35657;
    public static final int GL_MAX_VERTEX_UNIFORM_COMPONENTS = 35658;
    public static final int GL_POINT = 6912;
    public static final int GL_POINT_SPRITE = 34913;
    public static final int GL_READ_BUFFER = 3074;
    public static final int GL_READ_ONLY = 35000;
    public static final int GL_READ_WRITE = 35002;
    public static final int GL_RGB8 = 32849;
    public static final int GL_STACK_OVERFLOW = 1283;
    public static final int GL_STACK_UNDERFLOW = 1284;
    public static final int GL_TEXTURE_3D = 32879;
    public static final int GL_TEXTURE_BASE_LEVEL = 33084;
    public static final int GL_TEXTURE_COMPARE_FUNC = 34893;
    public static final int GL_TEXTURE_COMPARE_MODE = 34892;
    public static final int GL_TEXTURE_MAX_LEVEL = 33085;
    public static final int GL_TEXTURE_WRAP_R = 32882;
    public static final int GL_UNSIGNED_INT_8_8_8_8 = 32821;
    public static final int GL_VERTEX_PROGRAM_POINT_SIZE = 34370;
    public static final int GL_WRITE_ONLY = 35001;

    void glAlphaFunc(int i10, float f10);

    void glCompressedTexImage3D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, ByteBuffer byteBuffer);

    void glCompressedTexSubImage3D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, ByteBuffer byteBuffer);

    void glDrawBuffer(int i10);

    void glPointSize(float f10);

    void glPolygonMode(int i10, int i11);

    void glReadBuffer(int i10);

    void glTexImage3D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, ByteBuffer byteBuffer);

    void glTexSubImage3D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, ByteBuffer byteBuffer);
}
