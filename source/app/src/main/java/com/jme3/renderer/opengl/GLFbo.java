package com.jme3.renderer.opengl;

import java.nio.IntBuffer;

public interface GLFbo {
    public static final int GL_COLOR_ATTACHMENT0_EXT = 36064;
    public static final int GL_COLOR_ATTACHMENT10_EXT = 36074;
    public static final int GL_COLOR_ATTACHMENT11_EXT = 36075;
    public static final int GL_COLOR_ATTACHMENT12_EXT = 36076;
    public static final int GL_COLOR_ATTACHMENT13_EXT = 36077;
    public static final int GL_COLOR_ATTACHMENT14_EXT = 36078;
    public static final int GL_COLOR_ATTACHMENT15_EXT = 36079;
    public static final int GL_COLOR_ATTACHMENT1_EXT = 36065;
    public static final int GL_COLOR_ATTACHMENT2_EXT = 36066;
    public static final int GL_COLOR_ATTACHMENT3_EXT = 36067;
    public static final int GL_COLOR_ATTACHMENT4_EXT = 36068;
    public static final int GL_COLOR_ATTACHMENT5_EXT = 36069;
    public static final int GL_COLOR_ATTACHMENT6_EXT = 36070;
    public static final int GL_COLOR_ATTACHMENT7_EXT = 36071;
    public static final int GL_COLOR_ATTACHMENT8_EXT = 36072;
    public static final int GL_COLOR_ATTACHMENT9_EXT = 36073;
    public static final int GL_DEPTH_ATTACHMENT_EXT = 36096;
    public static final int GL_DRAW_FRAMEBUFFER_BINDING_EXT = 36006;
    public static final int GL_DRAW_FRAMEBUFFER_EXT = 36009;
    public static final int GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = 36049;
    public static final int GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = 36048;
    public static final int GL_FRAMEBUFFER_COMPLETE_EXT = 36053;
    public static final int GL_FRAMEBUFFER_EXT = 36160;
    public static final int GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT = 36054;
    public static final int GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT = 36057;
    public static final int GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT = 36059;
    public static final int GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT = 36058;
    public static final int GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT = 36055;
    public static final int GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT = 36182;
    public static final int GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT = 36060;
    public static final int GL_FRAMEBUFFER_UNSUPPORTED_EXT = 36061;
    public static final int GL_INVALID_FRAMEBUFFER_OPERATION_EXT = 1286;
    public static final int GL_MAX_COLOR_ATTACHMENTS_EXT = 36063;
    public static final int GL_MAX_RENDERBUFFER_SIZE_EXT = 34024;
    public static final int GL_READ_FRAMEBUFFER_BINDING_EXT = 36010;
    public static final int GL_READ_FRAMEBUFFER_EXT = 36008;
    public static final int GL_RENDERBUFFER_EXT = 36161;

    void glBindFramebufferEXT(int i10, int i11);

    void glBindRenderbufferEXT(int i10, int i11);

    void glBlitFramebufferEXT(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19);

    int glCheckFramebufferStatusEXT(int i10);

    void glDeleteFramebuffersEXT(IntBuffer intBuffer);

    void glDeleteRenderbuffersEXT(IntBuffer intBuffer);

    void glFramebufferRenderbufferEXT(int i10, int i11, int i12, int i13);

    void glFramebufferTexture2DEXT(int i10, int i11, int i12, int i13, int i14);

    void glFramebufferTextureLayerEXT(int i10, int i11, int i12, int i13, int i14);

    void glGenFramebuffersEXT(IntBuffer intBuffer);

    void glGenRenderbuffersEXT(IntBuffer intBuffer);

    void glGenerateMipmapEXT(int i10);

    void glRenderbufferStorageEXT(int i10, int i11, int i12, int i13);

    void glRenderbufferStorageMultisampleEXT(int i10, int i11, int i12, int i13, int i14);
}
