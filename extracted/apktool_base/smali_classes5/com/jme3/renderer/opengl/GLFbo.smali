.class public interface abstract Lcom/jme3/renderer/opengl/GLFbo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GL_COLOR_ATTACHMENT0_EXT:I = 0x8ce0

.field public static final GL_COLOR_ATTACHMENT10_EXT:I = 0x8cea

.field public static final GL_COLOR_ATTACHMENT11_EXT:I = 0x8ceb

.field public static final GL_COLOR_ATTACHMENT12_EXT:I = 0x8cec

.field public static final GL_COLOR_ATTACHMENT13_EXT:I = 0x8ced

.field public static final GL_COLOR_ATTACHMENT14_EXT:I = 0x8cee

.field public static final GL_COLOR_ATTACHMENT15_EXT:I = 0x8cef

.field public static final GL_COLOR_ATTACHMENT1_EXT:I = 0x8ce1

.field public static final GL_COLOR_ATTACHMENT2_EXT:I = 0x8ce2

.field public static final GL_COLOR_ATTACHMENT3_EXT:I = 0x8ce3

.field public static final GL_COLOR_ATTACHMENT4_EXT:I = 0x8ce4

.field public static final GL_COLOR_ATTACHMENT5_EXT:I = 0x8ce5

.field public static final GL_COLOR_ATTACHMENT6_EXT:I = 0x8ce6

.field public static final GL_COLOR_ATTACHMENT7_EXT:I = 0x8ce7

.field public static final GL_COLOR_ATTACHMENT8_EXT:I = 0x8ce8

.field public static final GL_COLOR_ATTACHMENT9_EXT:I = 0x8ce9

.field public static final GL_DEPTH_ATTACHMENT_EXT:I = 0x8d00

.field public static final GL_DRAW_FRAMEBUFFER_BINDING_EXT:I = 0x8ca6

.field public static final GL_DRAW_FRAMEBUFFER_EXT:I = 0x8ca9

.field public static final GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT:I = 0x8cd1

.field public static final GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT:I = 0x8cd0

.field public static final GL_FRAMEBUFFER_COMPLETE_EXT:I = 0x8cd5

.field public static final GL_FRAMEBUFFER_EXT:I = 0x8d40

.field public static final GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT:I = 0x8cd6

.field public static final GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT:I = 0x8cd9

.field public static final GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT:I = 0x8cdb

.field public static final GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT:I = 0x8cda

.field public static final GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT:I = 0x8cd7

.field public static final GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT:I = 0x8d56

.field public static final GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT:I = 0x8cdc

.field public static final GL_FRAMEBUFFER_UNSUPPORTED_EXT:I = 0x8cdd

.field public static final GL_INVALID_FRAMEBUFFER_OPERATION_EXT:I = 0x506

.field public static final GL_MAX_COLOR_ATTACHMENTS_EXT:I = 0x8cdf

.field public static final GL_MAX_RENDERBUFFER_SIZE_EXT:I = 0x84e8

.field public static final GL_READ_FRAMEBUFFER_BINDING_EXT:I = 0x8caa

.field public static final GL_READ_FRAMEBUFFER_EXT:I = 0x8ca8

.field public static final GL_RENDERBUFFER_EXT:I = 0x8d41


# virtual methods
.method public abstract glBindFramebufferEXT(II)V
.end method

.method public abstract glBindRenderbufferEXT(II)V
.end method

.method public abstract glBlitFramebufferEXT(IIIIIIIIII)V
.end method

.method public abstract glCheckFramebufferStatusEXT(I)I
.end method

.method public abstract glDeleteFramebuffersEXT(Ljava/nio/IntBuffer;)V
.end method

.method public abstract glDeleteRenderbuffersEXT(Ljava/nio/IntBuffer;)V
.end method

.method public abstract glFramebufferRenderbufferEXT(IIII)V
.end method

.method public abstract glFramebufferTexture2DEXT(IIIII)V
.end method

.method public abstract glFramebufferTextureLayerEXT(IIIII)V
.end method

.method public abstract glGenFramebuffersEXT(Ljava/nio/IntBuffer;)V
.end method

.method public abstract glGenRenderbuffersEXT(Ljava/nio/IntBuffer;)V
.end method

.method public abstract glGenerateMipmapEXT(I)V
.end method

.method public abstract glRenderbufferStorageEXT(IIII)V
.end method

.method public abstract glRenderbufferStorageMultisampleEXT(IIIII)V
.end method
