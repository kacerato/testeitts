.class public Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"


# instance fields
.field private final gl:Lcom/jme3/renderer/opengl/GL4;


# direct methods
.method public constructor <init>(Lcom/jme3/renderer/opengl/GL4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->gl:Lcom/jme3/renderer/opengl/GL4;

    .line 3
    invoke-direct {p0}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->ensureBufferReady()V

    return-void
.end method

.method private constructor <init>(Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->gl:Lcom/jme3/renderer/opengl/GL4;

    iput-object v0, p0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->gl:Lcom/jme3/renderer/opengl/GL4;

    .line 6
    iget p1, p1, Lcom/jme3/util/NativeObject;->id:I

    iput p1, p0, Lcom/jme3/util/NativeObject;->id:I

    return-void
.end method

.method private ensureBufferReady()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/opengl/GL;->glGenBuffers(Ljava/nio/IntBuffer;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    :cond_0
    return-void
.end method


# virtual methods
.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 1

    new-instance v0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    invoke-direct {v0, p0}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;-><init>(Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 1

    iget p1, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p1

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v0, p1}, Lcom/jme3/renderer/opengl/GL;->glDeleteBuffers(Ljava/nio/IntBuffer;)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->resetObject()V

    return-void
.end method

.method public getUniqueId()J
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x900000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public initialize(Ljava/nio/IntBuffer;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->ensureBufferReady()V

    .line 6
    iget-object v0, p0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v1, p0, Lcom/jme3/util/NativeObject;->id:I

    const v2, 0x90d2

    invoke-interface {v0, v2, v1}, Lcom/jme3/renderer/opengl/GL;->glBindBuffer(II)V

    .line 7
    iget-object v0, p0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->gl:Lcom/jme3/renderer/opengl/GL4;

    const v1, 0x88ea

    invoke-interface {v0, v2, p1, v1}, Lcom/jme3/renderer/opengl/GL;->glBufferData(ILjava/nio/IntBuffer;I)V

    return-void
.end method

.method public initialize([I)V
    .locals 1

    .line 1
    array-length v0, p1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p0, v0}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->initialize(Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public read(Ljava/nio/IntBuffer;)V
    .locals 5

    .line 6
    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v1, p0, Lcom/jme3/util/NativeObject;->id:I

    const v2, 0x90d2

    invoke-interface {v0, v2, v1}, Lcom/jme3/renderer/opengl/GL;->glBindBuffer(II)V

    .line 8
    iget-object v0, p0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->gl:Lcom/jme3/renderer/opengl/GL4;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4, p1}, Lcom/jme3/renderer/opengl/GL;->glGetBufferSubData(IJLjava/nio/IntBuffer;)V

    .line 9
    iget-object p1, p0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->gl:Lcom/jme3/renderer/opengl/GL4;

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lcom/jme3/renderer/opengl/GL;->glBindBuffer(II)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "SSBO was not ready for read"

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([I)V
    .locals 1

    .line 3
    array-length v0, p1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->read(Ljava/nio/IntBuffer;)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-void
.end method

.method public read(I)[I
    .locals 0

    .line 1
    new-array p1, p1, [I

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->read([I)V

    return-object p1
.end method

.method public resetObject()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method
