.class public Lcom/jme3/renderer/Statistics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected enabled:Z

.field protected fbosUsed:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected lastShader:I

.field protected memoryFrameBuffers:I

.field protected memoryShaders:I

.field protected memoryTextures:I

.field protected numFboSwitches:I

.field protected numObjects:I

.field protected numShaderSwitches:I

.field protected numTextureBinds:I

.field protected numTriangles:I

.field protected numUniformsSet:I

.field protected numVertices:I

.field protected shadersUsed:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected texturesUsed:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Statistics;->shadersUsed:Lcom/jme3/util/IntMap;

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Statistics;->texturesUsed:Lcom/jme3/util/IntMap;

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Statistics;->fbosUsed:Lcom/jme3/util/IntMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->lastShader:I

    return-void
.end method


# virtual methods
.method public clearFrame()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->shadersUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->clear()V

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->texturesUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->clear()V

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->fbosUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numObjects:I

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numTriangles:I

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numVertices:I

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numShaderSwitches:I

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numTextureBinds:I

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numFboSwitches:I

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numUniformsSet:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->lastShader:I

    return-void
.end method

.method public clearMemory()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryFrameBuffers:I

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    return-void
.end method

.method public getData([I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/jme3/renderer/Statistics;->numVertices:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/jme3/renderer/Statistics;->numTriangles:I

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/jme3/renderer/Statistics;->numUniformsSet:I

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/jme3/renderer/Statistics;->numObjects:I

    aput v1, p1, v0

    const/4 v0, 0x4

    iget v1, p0, Lcom/jme3/renderer/Statistics;->numShaderSwitches:I

    aput v1, p1, v0

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->shadersUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    const/4 v1, 0x5

    aput v0, p1, v1

    const/4 v0, 0x6

    iget v1, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    aput v1, p1, v0

    const/4 v0, 0x7

    iget v1, p0, Lcom/jme3/renderer/Statistics;->numTextureBinds:I

    aput v1, p1, v0

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->texturesUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    const/16 v1, 0x8

    aput v0, p1, v1

    const/16 v0, 0x9

    iget v1, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    aput v1, p1, v0

    const/16 v0, 0xa

    iget v1, p0, Lcom/jme3/renderer/Statistics;->numFboSwitches:I

    aput v1, p1, v0

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->fbosUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    const/16 v1, 0xb

    aput v0, p1, v1

    const/16 v0, 0xc

    iget v1, p0, Lcom/jme3/renderer/Statistics;->memoryFrameBuffers:I

    aput v1, p1, v0

    return-void
.end method

.method public getLabels()[Ljava/lang/String;
    .locals 13

    const-string v11, "FrameBuffers (F)"

    const-string v12, "FrameBuffers (M)"

    const-string v0, "Vertices"

    const-string v1, "Triangles"

    const-string v2, "Uniforms"

    const-string v3, "Objects"

    const-string v4, "Shaders (S)"

    const-string v5, "Shaders (F)"

    const-string v6, "Shaders (M)"

    const-string v7, "Textures (S)"

    const-string v8, "Textures (F)"

    const-string v9, "Textures (M)"

    const-string v10, "FrameBuffers (S)"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    return v0
.end method

.method public onDeleteFrameBuffer()V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/jme3/renderer/Statistics;->memoryFrameBuffers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryFrameBuffers:I

    return-void
.end method

.method public onDeleteShader()V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    return-void
.end method

.method public onDeleteTexture()V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    return-void
.end method

.method public onFrameBufferUse(Lcom/jme3/texture/FrameBuffer;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->fbosUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->fbosUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    iget p1, p0, Lcom/jme3/renderer/Statistics;->numFboSwitches:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jme3/renderer/Statistics;->numFboSwitches:I

    :cond_2
    return-void
.end method

.method public onMeshDrawn(Lcom/jme3/scene/Mesh;I)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/renderer/Statistics;->onMeshDrawn(Lcom/jme3/scene/Mesh;II)V

    return-void
.end method

.method public onMeshDrawn(Lcom/jme3/scene/Mesh;II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/jme3/renderer/Statistics;->numObjects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numObjects:I

    .line 3
    iget v0, p0, Lcom/jme3/renderer/Statistics;->numTriangles:I

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Mesh;->getTriangleCount(I)I

    move-result p2

    mul-int/2addr p2, p3

    add-int/2addr v0, p2

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numTriangles:I

    .line 4
    iget p2, p0, Lcom/jme3/renderer/Statistics;->numVertices:I

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result p1

    mul-int/2addr p1, p3

    add-int/2addr p2, p1

    iput p2, p0, Lcom/jme3/renderer/Statistics;->numVertices:I

    return-void
.end method

.method public onNewFrameBuffer()V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/jme3/renderer/Statistics;->memoryFrameBuffers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryFrameBuffers:I

    return-void
.end method

.method public onNewShader()V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    return-void
.end method

.method public onNewTexture()V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    return-void
.end method

.method public onShaderUse(Lcom/jme3/shader/Shader;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/jme3/renderer/Statistics;->lastShader:I

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Statistics;->lastShader:I

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->shadersUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->shadersUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    iget p1, p0, Lcom/jme3/renderer/Statistics;->numShaderSwitches:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jme3/renderer/Statistics;->numShaderSwitches:I

    :cond_2
    return-void
.end method

.method public onTextureUse(Lcom/jme3/texture/Image;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->texturesUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->texturesUsed:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    iget p1, p0, Lcom/jme3/renderer/Statistics;->numTextureBinds:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jme3/renderer/Statistics;->numTextureBinds:I

    :cond_2
    return-void
.end method

.method public onUniformSet()V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/jme3/renderer/Statistics;->numUniformsSet:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numUniformsSet:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/renderer/Statistics;->enabled:Z

    return-void
.end method
