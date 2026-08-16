.class public Lcom/jme3/renderer/opengl/ComputeShader;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"


# instance fields
.field private final gl:Lcom/jme3/renderer/opengl/GL4;

.field private final source:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/jme3/renderer/opengl/ComputeShader;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iput-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    .line 11
    iget p1, p1, Lcom/jme3/util/NativeObject;->id:I

    iput p1, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/jme3/renderer/opengl/ComputeShader;->source:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/opengl/GL4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    .line 3
    iput-object p2, p0, Lcom/jme3/renderer/opengl/ComputeShader;->source:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/jme3/renderer/opengl/ComputeShader;->createComputeShader()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/opengl/GL4;Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    .line 7
    invoke-direct {p0, p2, p3}, Lcom/jme3/renderer/opengl/ComputeShader;->addDefines(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/renderer/opengl/ComputeShader;->source:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Lcom/jme3/renderer/opengl/ComputeShader;->createComputeShader()V

    return-void
.end method

.method private addDefines(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "\\r?\\n"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_0

    aget-object v6, p2, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#define "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v6, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v5

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createComputeShader()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    const v1, 0x91b9

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glCreateShader(I)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/jme3/renderer/opengl/ComputeShader;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v3, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget-object v5, p0, Lcom/jme3/renderer/opengl/ComputeShader;->source:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5, v2}, Lcom/jme3/renderer/opengl/GL;->glShaderSource(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V

    iget-object v3, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v3, v0}, Lcom/jme3/renderer/opengl/GL;->glCompileShader(I)V

    iget-object v3, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    const v5, 0x8b81

    invoke-interface {v3, v0, v5, v2}, Lcom/jme3/renderer/opengl/GL;->glGetShader(IILjava/nio/IntBuffer;)V

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    const v5, 0x8b84

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v3}, Lcom/jme3/renderer/opengl/GL;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/jme3/util/NativeObject;->id:I

    if-lez v3, :cond_1

    iget-object v6, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v6, v3, v0}, Lcom/jme3/renderer/opengl/GL;->glAttachShader(II)V

    iget-object v3, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v6, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-interface {v3, v6}, Lcom/jme3/renderer/opengl/GL;->glLinkProgram(I)V

    iget-object v3, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v6, p0, Lcom/jme3/util/NativeObject;->id:I

    const v7, 0x8b82

    invoke-interface {v3, v6, v7, v2}, Lcom/jme3/renderer/opengl/GL;->glGetProgram(IILjava/nio/IntBuffer;)V

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/opengl/GL;->glDeleteShader(I)V

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v3, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-interface {v1, v3, v5, v2}, Lcom/jme3/renderer/opengl/GL;->glGetProgram(IILjava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v3, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-interface {v1, v3, v2}, Lcom/jme3/renderer/opengl/GL;->glGetProgramInfoLog(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v2, v0}, Lcom/jme3/renderer/opengl/GL;->glDeleteShader(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v2, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-interface {v0, v2}, Lcom/jme3/renderer/opengl/GL;->glDeleteProgram(I)V

    new-instance v0, Lcom/jme3/renderer/RendererException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compute shader program linking failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/opengl/GL;->glDeleteShader(I)V

    new-instance v0, Lcom/jme3/renderer/RendererException;

    const-string v1, "Failed to create shader program"

    invoke-direct {v0, v1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v1, v0, v5, v2}, Lcom/jme3/renderer/opengl/GL;->glGetShader(IILjava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/jme3/renderer/opengl/GL;->glGetShaderInfoLog(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v2, v0}, Lcom/jme3/renderer/opengl/GL;->glDeleteShader(I)V

    new-instance v0, Lcom/jme3/renderer/RendererException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compute shader compilation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/jme3/renderer/RendererException;

    const-string v1, "Failed to create compute shader"

    invoke-direct {v0, v1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindShaderStorageBuffer(ILcom/jme3/renderer/opengl/ShaderStorageBufferObject;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    const v1, 0x90d2

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p2

    invoke-interface {v0, v1, p1, p2}, Lcom/jme3/renderer/opengl/GL3;->glBindBufferBase(III)V

    return-void
.end method

.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 1

    new-instance v0, Lcom/jme3/renderer/opengl/ComputeShader;

    invoke-direct {v0, p0}, Lcom/jme3/renderer/opengl/ComputeShader;-><init>(Lcom/jme3/renderer/opengl/ComputeShader;)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 1

    iget p1, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v0, p1}, Lcom/jme3/renderer/opengl/GL;->glDeleteProgram(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/renderer/opengl/ComputeShader;->resetObject()V

    return-void
.end method

.method public dispatch(III)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v0, p1, p2, p3}, Lcom/jme3/renderer/opengl/GL4;->glDispatchCompute(III)V

    return-void
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v1, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-interface {v0, v1, p1}, Lcom/jme3/renderer/opengl/GL;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUniqueId()J
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public makeActive()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/ComputeShader;->createComputeShader()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v1, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glUseProgram(I)V

    return-void
.end method

.method public resetObject()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method

.method public setUniform(IF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v0, p1, p2}, Lcom/jme3/renderer/opengl/GL;->glUniform1f(IF)V

    return-void
.end method

.method public setUniform(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v0, p1, p2}, Lcom/jme3/renderer/opengl/GL;->glUniform1i(II)V

    return-void
.end method

.method public setUniform(ILcom/jme3/math/Matrix4f;)V
    .locals 2

    const/16 v0, 0x10

    .line 6
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p2, v0, v1}, Lcom/jme3/math/Matrix4f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    iget-object p2, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lcom/jme3/renderer/opengl/GL;->glUniformMatrix4(IZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public setUniform(ILcom/jme3/math/Vector2f;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v1, p2, Lcom/jme3/math/Vector2f;->x:F

    iget p2, p2, Lcom/jme3/math/Vector2f;->y:F

    invoke-interface {v0, p1, v1, p2}, Lcom/jme3/renderer/opengl/GL;->glUniform2f(IFF)V

    return-void
.end method

.method public setUniform(ILcom/jme3/math/Vector3f;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v1, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->y:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/jme3/renderer/opengl/GL;->glUniform3f(IFFF)V

    return-void
.end method

.method public setUniform(ILcom/jme3/math/Vector4f;)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/jme3/renderer/opengl/ComputeShader;->gl:Lcom/jme3/renderer/opengl/GL4;

    iget v2, p2, Lcom/jme3/math/Vector4f;->x:F

    iget v3, p2, Lcom/jme3/math/Vector4f;->y:F

    iget v4, p2, Lcom/jme3/math/Vector4f;->z:F

    iget v5, p2, Lcom/jme3/math/Vector4f;->w:F

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/jme3/renderer/opengl/GL;->glUniform4f(IFFFF)V

    return-void
.end method
