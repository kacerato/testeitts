.class public final Lcom/jme3/renderer/opengl/GLImageFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final colorRenderable:Z

.field public final compressed:Z

.field public final dataType:I

.field public final depthRenderable:Z

.field public final filterable:Z

.field public final format:I

.field public final internalFormat:I

.field public final swizzleRequired:Z


# direct methods
.method public constructor <init>(IIIZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    .line 3
    iput p2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    .line 4
    iput p3, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->compressed:Z

    .line 6
    iput-boolean p4, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->colorRenderable:Z

    .line 7
    iput-boolean p5, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->depthRenderable:Z

    .line 8
    iput-boolean p6, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->filterable:Z

    .line 9
    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->swizzleRequired:Z

    return-void
.end method

.method public constructor <init>(IIIZZZZ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    .line 12
    iput p2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    .line 13
    iput p3, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    .line 14
    iput-boolean p4, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->compressed:Z

    .line 15
    iput-boolean p5, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->colorRenderable:Z

    .line 16
    iput-boolean p6, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->depthRenderable:Z

    .line 17
    iput-boolean p7, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->filterable:Z

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->swizzleRequired:Z

    return-void
.end method

.method public constructor <init>(IIIZZZZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    .line 21
    iput p2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    .line 22
    iput p3, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    .line 23
    iput-boolean p4, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->compressed:Z

    .line 24
    iput-boolean p6, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->colorRenderable:Z

    .line 25
    iput-boolean p7, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->depthRenderable:Z

    .line 26
    iput-boolean p8, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->filterable:Z

    .line 27
    iput-boolean p5, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->swizzleRequired:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/jme3/renderer/opengl/GLImageFormat;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/jme3/renderer/opengl/GLImageFormat;

    iget v2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    iget v3, p1, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    iget v3, p1, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    iget v3, p1, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->compressed:Z

    iget-boolean v3, p1, Lcom/jme3/renderer/opengl/GLImageFormat;->compressed:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->colorRenderable:Z

    iget-boolean v3, p1, Lcom/jme3/renderer/opengl/GLImageFormat;->colorRenderable:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->depthRenderable:Z

    iget-boolean v3, p1, Lcom/jme3/renderer/opengl/GLImageFormat;->depthRenderable:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->filterable:Z

    iget-boolean v3, p1, Lcom/jme3/renderer/opengl/GLImageFormat;->filterable:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->swizzleRequired:Z

    iget-boolean p1, p1, Lcom/jme3/renderer/opengl/GLImageFormat;->swizzleRequired:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x2a7

    iget v1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    iget v1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    iget v1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    iget-boolean v1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->compressed:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    iget-boolean v1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->colorRenderable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    iget-boolean v1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->depthRenderable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    iget-boolean v1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->filterable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    iget-boolean v1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->swizzleRequired:Z

    add-int/2addr v0, v1

    return v0
.end method
