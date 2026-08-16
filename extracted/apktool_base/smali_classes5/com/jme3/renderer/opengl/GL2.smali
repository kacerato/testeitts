.class public interface abstract Lcom/jme3/renderer/opengl/GL2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/renderer/opengl/GL;


# static fields
.field public static final GL_ALPHA8:I = 0x803c

.field public static final GL_ALPHA_TEST:I = 0xbc0

.field public static final GL_BGR:I = 0x80e0

.field public static final GL_BGRA:I = 0x80e1

.field public static final GL_COMPARE_REF_TO_TEXTURE:I = 0x884e

.field public static final GL_DEPTH_COMPONENT24:I = 0x81a6

.field public static final GL_DEPTH_COMPONENT32:I = 0x81a7

.field public static final GL_DEPTH_TEXTURE_MODE:I = 0x884b

.field public static final GL_DOUBLEBUFFER:I = 0xc32

.field public static final GL_DRAW_BUFFER:I = 0xc01

.field public static final GL_FILL:I = 0x1b02

.field public static final GL_GENERATE_MIPMAP:I = 0x8191

.field public static final GL_INTENSITY:I = 0x8049

.field public static final GL_LINE:I = 0x1b01

.field public static final GL_LUMINANCE8:I = 0x8040

.field public static final GL_LUMINANCE8_ALPHA8:I = 0x8045

.field public static final GL_MAX_ELEMENTS_INDICES:I = 0x80e9

.field public static final GL_MAX_ELEMENTS_VERTICES:I = 0x80e8

.field public static final GL_MAX_FRAGMENT_UNIFORM_COMPONENTS:I = 0x8b49

.field public static final GL_MAX_VERTEX_UNIFORM_COMPONENTS:I = 0x8b4a

.field public static final GL_POINT:I = 0x1b00

.field public static final GL_POINT_SPRITE:I = 0x8861

.field public static final GL_READ_BUFFER:I = 0xc02

.field public static final GL_READ_ONLY:I = 0x88b8

.field public static final GL_READ_WRITE:I = 0x88ba

.field public static final GL_RGB8:I = 0x8051

.field public static final GL_STACK_OVERFLOW:I = 0x503

.field public static final GL_STACK_UNDERFLOW:I = 0x504

.field public static final GL_TEXTURE_3D:I = 0x806f

.field public static final GL_TEXTURE_BASE_LEVEL:I = 0x813c

.field public static final GL_TEXTURE_COMPARE_FUNC:I = 0x884d

.field public static final GL_TEXTURE_COMPARE_MODE:I = 0x884c

.field public static final GL_TEXTURE_MAX_LEVEL:I = 0x813d

.field public static final GL_TEXTURE_WRAP_R:I = 0x8072

.field public static final GL_UNSIGNED_INT_8_8_8_8:I = 0x8035

.field public static final GL_VERTEX_PROGRAM_POINT_SIZE:I = 0x8642

.field public static final GL_WRITE_ONLY:I = 0x88b9


# virtual methods
.method public abstract glAlphaFunc(IF)V
.end method

.method public abstract glCompressedTexImage3D(IIIIIIILjava/nio/ByteBuffer;)V
.end method

.method public abstract glCompressedTexSubImage3D(IIIIIIIIILjava/nio/ByteBuffer;)V
.end method

.method public abstract glDrawBuffer(I)V
.end method

.method public abstract glPointSize(F)V
.end method

.method public abstract glPolygonMode(II)V
.end method

.method public abstract glReadBuffer(I)V
.end method

.method public abstract glTexImage3D(IIIIIIIIILjava/nio/ByteBuffer;)V
.end method

.method public abstract glTexSubImage3D(IIIIIIIIIILjava/nio/ByteBuffer;)V
.end method
