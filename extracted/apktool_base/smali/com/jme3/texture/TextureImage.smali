.class public Lcom/jme3/texture/TextureImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/TextureImage$Access;
    }
.end annotation


# instance fields
.field private access:Lcom/jme3/texture/TextureImage$Access;

.field private layer:I

.field private level:I

.field private texture:Lcom/jme3/texture/Texture;

.field private updateFlag:Z


# direct methods
.method public constructor <init>(Lcom/jme3/texture/Texture;)V
    .locals 3

    const/4 v0, -0x1

    .line 1
    sget-object v1, Lcom/jme3/texture/TextureImage$Access;->ReadWrite:Lcom/jme3/texture/TextureImage$Access;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/jme3/texture/TextureImage;-><init>(Lcom/jme3/texture/Texture;IILcom/jme3/texture/TextureImage$Access;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Texture;II)V
    .locals 1

    .line 3
    sget-object v0, Lcom/jme3/texture/TextureImage$Access;->ReadWrite:Lcom/jme3/texture/TextureImage$Access;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/texture/TextureImage;-><init>(Lcom/jme3/texture/Texture;IILcom/jme3/texture/TextureImage$Access;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Texture;IILcom/jme3/texture/TextureImage$Access;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/jme3/texture/TextureImage;->updateFlag:Z

    .line 6
    const-string v0, "Underlying texture cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/jme3/texture/TextureImage;->texture:Lcom/jme3/texture/Texture;

    .line 7
    iput p2, p0, Lcom/jme3/texture/TextureImage;->level:I

    .line 8
    iput p3, p0, Lcom/jme3/texture/TextureImage;->layer:I

    .line 9
    iput-object p4, p0, Lcom/jme3/texture/TextureImage;->access:Lcom/jme3/texture/TextureImage$Access;

    if-ltz p2, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Level cannot be less than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/jme3/texture/Texture;Lcom/jme3/texture/TextureImage$Access;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/jme3/texture/TextureImage;-><init>(Lcom/jme3/texture/Texture;IILcom/jme3/texture/TextureImage$Access;)V

    return-void
.end method


# virtual methods
.method public bindImage(Lcom/jme3/renderer/opengl/GL4;Lcom/jme3/renderer/opengl/TextureUtil;I)V
    .locals 9

    iget-object v0, p0, Lcom/jme3/texture/TextureImage;->texture:Lcom/jme3/texture/Texture;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v3

    iget v4, p0, Lcom/jme3/texture/TextureImage;->level:I

    invoke-virtual {p0}, Lcom/jme3/texture/TextureImage;->isLayered()Z

    move-result v5

    iget v1, p0, Lcom/jme3/texture/TextureImage;->layer:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v1, p0, Lcom/jme3/texture/TextureImage;->access:Lcom/jme3/texture/TextureImage$Access;

    invoke-virtual {v1}, Lcom/jme3/texture/TextureImage$Access;->getGlEnum()I

    move-result v7

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lcom/jme3/renderer/opengl/TextureUtil;->getImageFormat(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object p2

    iget v8, p2, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    move-object v1, p1

    move v2, p3

    invoke-interface/range {v1 .. v8}, Lcom/jme3/renderer/opengl/GL4;->glBindImageTexture(IIIZIII)V

    return-void
.end method

.method public clearUpdateNeeded()Z
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/texture/TextureImage;->updateFlag:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jme3/texture/TextureImage;->updateFlag:Z

    return v0
.end method

.method public getAccess()Lcom/jme3/texture/TextureImage$Access;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/TextureImage;->access:Lcom/jme3/texture/TextureImage$Access;

    return-object v0
.end method

.method public getFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/TextureImage;->texture:Lcom/jme3/texture/Texture;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/jme3/texture/Image;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/TextureImage;->texture:Lcom/jme3/texture/Texture;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/TextureImage;->texture:Lcom/jme3/texture/Texture;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    return v0
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/TextureImage;->layer:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/TextureImage;->level:I

    return v0
.end method

.method public getTexture()Lcom/jme3/texture/Texture;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/TextureImage;->texture:Lcom/jme3/texture/Texture;

    return-object v0
.end method

.method public isLayered()Z
    .locals 1

    iget v0, p0, Lcom/jme3/texture/TextureImage;->layer:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpdateNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/texture/TextureImage;->updateFlag:Z

    return v0
.end method

.method public setAccess(Lcom/jme3/texture/TextureImage$Access;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/TextureImage;->access:Lcom/jme3/texture/TextureImage$Access;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/jme3/texture/TextureImage;->access:Lcom/jme3/texture/TextureImage$Access;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/texture/TextureImage;->updateFlag:Z

    :cond_0
    return-void
.end method

.method public setLayer(I)V
    .locals 1

    iget v0, p0, Lcom/jme3/texture/TextureImage;->layer:I

    if-eq v0, p1, :cond_1

    if-gez v0, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    iput p1, p0, Lcom/jme3/texture/TextureImage;->layer:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/texture/TextureImage;->updateFlag:Z

    :cond_1
    return-void
.end method

.method public setLevel(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/jme3/texture/TextureImage;->level:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/jme3/texture/TextureImage;->level:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/texture/TextureImage;->updateFlag:Z

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Texture image level cannot be negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTexture(Lcom/jme3/texture/Texture;)V
    .locals 1

    const-string v0, "Wrapped texture cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/texture/TextureImage;->texture:Lcom/jme3/texture/Texture;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/jme3/texture/TextureImage;->texture:Lcom/jme3/texture/Texture;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/texture/TextureImage;->updateFlag:Z

    :cond_0
    return-void
.end method

.method public setUpdateNeeded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/texture/TextureImage;->updateFlag:Z

    return-void
.end method
