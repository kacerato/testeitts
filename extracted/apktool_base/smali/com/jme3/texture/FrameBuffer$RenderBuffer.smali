.class public Lcom/jme3/texture/FrameBuffer$RenderBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/FrameBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderBuffer"
.end annotation


# instance fields
.field face:I

.field format:Lcom/jme3/texture/Image$Format;

.field id:I

.field layer:I

.field level:I

.field slot:I

.field tex:Lcom/jme3/texture/Texture;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->id:I

    iput v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    iput v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->face:I

    iput v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->layer:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->level:I

    return-void
.end method


# virtual methods
.method public createDestructableClone()Lcom/jme3/texture/FrameBuffer$RenderBuffer;
    .locals 2

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->tex:Lcom/jme3/texture/Texture;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-direct {v0}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;-><init>()V

    iget v1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->id:I

    iput v1, v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->id:I

    return-object v0
.end method

.method public getFace()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->face:I

    return v0
.end method

.method public getFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->id:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->layer:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->level:I

    return v0
.end method

.method public getSlot()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    return v0
.end method

.method public getTexture()Lcom/jme3/texture/Texture;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->tex:Lcom/jme3/texture/Texture;

    return-object v0
.end method

.method public resetObject()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->id:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->id:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->tex:Lcom/jme3/texture/Texture;

    const-string v1, "]"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextureTarget[format="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BufferTarget[format="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
