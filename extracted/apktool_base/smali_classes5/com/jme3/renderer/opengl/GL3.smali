.class public interface abstract Lcom/jme3/renderer/opengl/GL3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/renderer/opengl/GL2;


# static fields
.field public static final GL_COMPRESSED_RED_RGTC1:I = 0x8dbb

.field public static final GL_COMPRESSED_RG_RGTC2:I = 0x8dbd

.field public static final GL_COMPRESSED_SIGNED_RED_RGTC1:I = 0x8dbc

.field public static final GL_COMPRESSED_SIGNED_RG_RGTC2:I = 0x8dbe

.field public static final GL_DEPTH_STENCIL_ATTACHMENT:I = 0x821a

.field public static final GL_DRAW_FRAMEBUFFER:I = 0x8ca9

.field public static final GL_FRAMEBUFFER:I = 0x8d40

.field public static final GL_GEOMETRY_SHADER:I = 0x8dd9

.field public static final GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS:I = 0x8a33

.field public static final GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS:I = 0x8a32

.field public static final GL_MAX_COMBINED_UNIFORM_BLOCKS:I = 0x8a2e

.field public static final GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS:I = 0x8a31

.field public static final GL_MAX_FRAGMENT_UNIFORM_BLOCKS:I = 0x8a2d

.field public static final GL_MAX_GEOMETRY_UNIFORM_BLOCKS:I = 0x8a2c

.field public static final GL_MAX_UNIFORM_BLOCK_SIZE:I = 0x8a30

.field public static final GL_MAX_UNIFORM_BUFFER_BINDINGS:I = 0x8a2f

.field public static final GL_MAX_VERTEX_UNIFORM_BLOCKS:I = 0x8a2b

.field public static final GL_NUM_EXTENSIONS:I = 0x821d

.field public static final GL_R16F:I = 0x822d

.field public static final GL_R16I:I = 0x8233

.field public static final GL_R16UI:I = 0x8234

.field public static final GL_R32F:I = 0x822e

.field public static final GL_R32I:I = 0x8235

.field public static final GL_R32UI:I = 0x8236

.field public static final GL_R8:I = 0x8229

.field public static final GL_R8I:I = 0x8231

.field public static final GL_R8UI:I = 0x8232

.field public static final GL_READ_FRAMEBUFFER:I = 0x8ca8

.field public static final GL_RED_INTEGER:I = 0x8d94

.field public static final GL_RG:I = 0x8227

.field public static final GL_RG16F:I = 0x822f

.field public static final GL_RG16I:I = 0x8239

.field public static final GL_RG16UI:I = 0x823a

.field public static final GL_RG32F:I = 0x8230

.field public static final GL_RG32I:I = 0x823b

.field public static final GL_RG32UI:I = 0x823c

.field public static final GL_RG8:I = 0x822b

.field public static final GL_RG8I:I = 0x8237

.field public static final GL_RG8UI:I = 0x8238

.field public static final GL_RGB16I:I = 0x8d89

.field public static final GL_RGB16UI:I = 0x8d77

.field public static final GL_RGB32I:I = 0x8d83

.field public static final GL_RGB32UI:I = 0x8d71

.field public static final GL_RGB8I:I = 0x8d8f

.field public static final GL_RGB8UI:I = 0x8d7d

.field public static final GL_RGBA16I:I = 0x8d88

.field public static final GL_RGBA16UI:I = 0x8d76

.field public static final GL_RGBA32I:I = 0x8d82

.field public static final GL_RGBA32UI:I = 0x8d70

.field public static final GL_RGBA8I:I = 0x8d8e

.field public static final GL_RGBA8UI:I = 0x8d7c

.field public static final GL_RGBA_INTEGER:I = 0x8d99

.field public static final GL_RGB_INTEGER:I = 0x8d98

.field public static final GL_RG_INTEGER:I = 0x8228

.field public static final GL_TEXTURE_SWIZZLE_A:I = 0x8e45

.field public static final GL_TEXTURE_SWIZZLE_B:I = 0x8e44

.field public static final GL_TEXTURE_SWIZZLE_G:I = 0x8e43

.field public static final GL_TEXTURE_SWIZZLE_R:I = 0x8e42

.field public static final GL_TRANSFORM_FEEDBACK_BUFFER:I = 0x8c8e

.field public static final GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS:I = 0x8a42

.field public static final GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES:I = 0x8a43

.field public static final GL_UNIFORM_BLOCK_BINDING:I = 0x8a3f

.field public static final GL_UNIFORM_BLOCK_DATA_SIZE:I = 0x8a40

.field public static final GL_UNIFORM_BLOCK_NAME_LENGTH:I = 0x8a41

.field public static final GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER:I = 0x8a46

.field public static final GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER:I = 0x8a45

.field public static final GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER:I = 0x8a44

.field public static final GL_UNIFORM_BUFFER:I = 0x8a11

.field public static final GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT:I = 0x8a34

.field public static final GL_UNIFORM_OFFSET:I = 0x8a3b


# virtual methods
.method public abstract glBindBufferBase(III)V
.end method

.method public abstract glBindFragDataLocation(IILjava/lang/String;)V
.end method

.method public abstract glBindVertexArray(I)V
.end method

.method public abstract glDeleteVertexArrays(Ljava/nio/IntBuffer;)V
.end method

.method public abstract glGenVertexArrays(Ljava/nio/IntBuffer;)V
.end method

.method public abstract glGetString(II)Ljava/lang/String;
.end method

.method public abstract glGetUniformBlockIndex(ILjava/lang/String;)I
.end method

.method public abstract glUniformBlockBinding(III)V
.end method
