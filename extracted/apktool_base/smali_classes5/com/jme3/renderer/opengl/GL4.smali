.class public interface abstract Lcom/jme3/renderer/opengl/GL4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/renderer/opengl/GL3;


# static fields
.field public static final GL_ALREADY_SIGNALED:I = 0x911a

.field public static final GL_ATOMIC_COUNTER_BUFFER:I = 0x92c0

.field public static final GL_COMPUTE_SHADER:I = 0x91b9

.field public static final GL_CONDITION_SATISFIED:I = 0x911c

.field public static final GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS:I = 0x90dc

.field public static final GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS:I = 0x90db

.field public static final GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS:I = 0x90da

.field public static final GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS:I = 0x90d7

.field public static final GL_MAX_SHADER_STORAGE_BLOCK_SIZE:I = 0x90de

.field public static final GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS:I = 0x90dd

.field public static final GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS:I = 0x90d8

.field public static final GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS:I = 0x90d9

.field public static final GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS:I = 0x90d6

.field public static final GL_PATCHES:I = 0xe

.field public static final GL_SHADER_STORAGE_BARRIER_BIT:I = 0x2000

.field public static final GL_SHADER_STORAGE_BLOCK:I = 0x92e6

.field public static final GL_SHADER_STORAGE_BUFFER:I = 0x90d2

.field public static final GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT:I = 0x90df

.field public static final GL_SYNC_GPU_COMMANDS_COMPLETE:I = 0x9117

.field public static final GL_TESS_CONTROL_SHADER:I = 0x8e88

.field public static final GL_TESS_EVALUATION_SHADER:I = 0x8e87

.field public static final GL_TEXTURE_FETCH_BARRIER_BIT:I = 0x8

.field public static final GL_TIMEOUT_EXPIRED:I = 0x911b

.field public static final GL_WAIT_FAILED:I = 0x911d


# virtual methods
.method public abstract glBindImageTexture(IIIZIII)V
.end method

.method public abstract glClientWaitSync(Lcom/jme3/renderer/opengl/GLFence;IJ)I
.end method

.method public abstract glDeleteSync(Lcom/jme3/renderer/opengl/GLFence;)V
.end method

.method public abstract glDispatchCompute(III)V
.end method

.method public abstract glFenceSync(II)Lcom/jme3/renderer/opengl/GLFence;
.end method

.method public abstract glGetProgramResourceIndex(IILjava/lang/String;)I
.end method

.method public abstract glMemoryBarrier(I)V
.end method

.method public abstract glPatchParameter(I)V
.end method

.method public abstract glShaderStorageBlockBinding(III)V
.end method
