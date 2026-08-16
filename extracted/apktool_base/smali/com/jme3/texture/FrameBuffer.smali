.class public Lcom/jme3/texture/FrameBuffer;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/FrameBuffer$RenderBuffer;,
        Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;,
        Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;,
        Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;
    }
.end annotation


# static fields
.field public static final SLOT_DEPTH:I = -0x64

.field public static final SLOT_DEPTH_STENCIL:I = -0x65

.field public static final SLOT_UNDEF:I = -0x1


# instance fields
.field private colorBufIndex:I

.field private final colorBufs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/texture/FrameBuffer$RenderBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

.field private height:I

.field private mipMapsGenerationHint:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private samples:I

.field private srgb:Z

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/texture/FrameBuffer;->width:I

    .line 3
    iput v0, p0, Lcom/jme3/texture/FrameBuffer;->height:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/jme3/texture/FrameBuffer;->samples:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    .line 7
    iput v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    .line 8
    iput-object v1, p0, Lcom/jme3/texture/FrameBuffer;->mipMapsGenerationHint:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/jme3/texture/FrameBuffer;->width:I

    .line 11
    iput v0, p0, Lcom/jme3/texture/FrameBuffer;->height:I

    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lcom/jme3/texture/FrameBuffer;->samples:I

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    .line 15
    iput v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    .line 16
    iput-object v2, p0, Lcom/jme3/texture/FrameBuffer;->mipMapsGenerationHint:Ljava/lang/Boolean;

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 17
    iput p1, p0, Lcom/jme3/texture/FrameBuffer;->width:I

    .line 18
    iput p2, p0, Lcom/jme3/texture/FrameBuffer;->height:I

    if-nez p3, :cond_0

    move p3, v1

    .line 19
    :cond_0
    iput p3, p0, Lcom/jme3/texture/FrameBuffer;->samples:I

    return-void

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FrameBuffer must have valid size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/jme3/texture/FrameBuffer;)V
    .locals 1

    .line 21
    iget p1, p1, Lcom/jme3/util/NativeObject;->id:I

    invoke-direct {p0, p1}, Lcom/jme3/util/NativeObject;-><init>(I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/jme3/texture/FrameBuffer;->width:I

    .line 23
    iput p1, p0, Lcom/jme3/texture/FrameBuffer;->height:I

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/jme3/texture/FrameBuffer;->samples:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    .line 27
    iput p1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    .line 28
    iput-object v0, p0, Lcom/jme3/texture/FrameBuffer;->mipMapsGenerationHint:Ljava/lang/Boolean;

    return-void
.end method

.method private checkSetTexture(Lcom/jme3/texture/Texture;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Texture image format must be depth."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Texture image format must be color/luminance."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget p2, p0, Lcom/jme3/texture/FrameBuffer;->width:I

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v1

    if-ne p2, v1, :cond_5

    iget p2, p0, Lcom/jme3/texture/FrameBuffer;->height:I

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_5

    iget p2, p0, Lcom/jme3/texture/FrameBuffer;->samples:I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result p1

    if-ne p2, p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Texture samples must match framebuffer samples"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Texture image resolution must match FB resolution"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Texture not initialized with RTT."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addColorBuffer(Lcom/jme3/texture/Image$Format;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-direct {v0}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;-><init>()V

    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    iput-object p1, v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    iget-object p1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Color buffer format must be color/luminance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FrameBuffer already initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    .line 2
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    .line 4
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;Lcom/jme3/texture/TextureCubeMap$Face;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iput p2, p1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->face:I

    .line 7
    iget-object p2, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addColorTexture(Lcom/jme3/texture/Texture2D;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/jme3/texture/FrameBuffer;->checkSetTexture(Lcom/jme3/texture/Texture;Z)V

    .line 4
    new-instance v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-direct {v1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    .line 6
    iput-object p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->tex:Lcom/jme3/texture/Texture;

    .line 7
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p1

    iput-object p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    .line 8
    iget-object p1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FrameBuffer already initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addColorTexture(Lcom/jme3/texture/TextureArray;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, p1, v1}, Lcom/jme3/texture/FrameBuffer;->checkSetTexture(Lcom/jme3/texture/Texture;Z)V

    .line 13
    new-instance v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-direct {v1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    .line 15
    iput-object p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->tex:Lcom/jme3/texture/Texture;

    .line 16
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p1

    iput-object p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    .line 17
    iput p2, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->layer:I

    .line 18
    iget-object p1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FrameBuffer already initialized."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addColorTexture(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/texture/TextureCubeMap$Face;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, v1}, Lcom/jme3/texture/FrameBuffer;->checkSetTexture(Lcom/jme3/texture/Texture;Z)V

    .line 23
    new-instance v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-direct {v1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;-><init>()V

    .line 24
    iget-object v2, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    .line 25
    iput-object p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->tex:Lcom/jme3/texture/Texture;

    .line 26
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p1

    iput-object p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->face:I

    .line 28
    iget-object p1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FrameBuffer already initialized."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearColorTargets()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 1

    new-instance v0, Lcom/jme3/texture/FrameBuffer;

    invoke-direct {v0, p0}, Lcom/jme3/texture/FrameBuffer;-><init>(Lcom/jme3/texture/FrameBuffer;)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/jme3/renderer/Renderer;

    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    return-void
.end method

.method public getColorBuffer()Lcom/jme3/texture/FrameBuffer$RenderBuffer;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    return-object v0
.end method

.method public getColorBuffer(I)Lcom/jme3/texture/FrameBuffer$RenderBuffer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    return-object p1
.end method

.method public getColorTarget()Lcom/jme3/texture/FrameBuffer$RenderBuffer;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    return-object v0
.end method

.method public getColorTarget(I)Lcom/jme3/texture/FrameBuffer$RenderBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    return-object p1
.end method

.method public getDepthBuffer()Lcom/jme3/texture/FrameBuffer$RenderBuffer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    return-object v0
.end method

.method public getDepthTarget()Lcom/jme3/texture/FrameBuffer$RenderBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/FrameBuffer;->height:I

    return v0
.end method

.method public getMipMapsGenerationHint()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->mipMapsGenerationHint:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumColorBuffers()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNumColorTargets()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/FrameBuffer;->samples:I

    return v0
.end method

.method public getTargetIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    return v0
.end method

.method public getUniqueId()J
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x300000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/FrameBuffer;->width:I

    return v0
.end method

.method public isMultiTarget()Z
    .locals 2

    iget v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSrgb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/texture/FrameBuffer;->srgb:Z

    return v0
.end method

.method public removeColorTarget(I)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    iput p1, v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public replaceColorTarget(ILcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p2, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No color target exists to replace at index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public resetObject()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-virtual {v1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->resetObject()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->resetObject()V

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method

.method public setColorBuffer(Lcom/jme3/texture/Image$Format;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-direct {v0}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    iput-object p1, v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    iget-object p1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Color buffer format must be color/luminance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FrameBuffer already initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorTexture(Lcom/jme3/texture/Texture2D;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/texture/FrameBuffer;->clearColorTargets()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/texture/FrameBuffer;->addColorTexture(Lcom/jme3/texture/Texture2D;)V

    return-void
.end method

.method public setColorTexture(Lcom/jme3/texture/TextureArray;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/jme3/texture/FrameBuffer;->clearColorTargets()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/jme3/texture/FrameBuffer;->addColorTexture(Lcom/jme3/texture/TextureArray;I)V

    return-void
.end method

.method public setColorTexture(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/texture/TextureCubeMap$Face;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/jme3/texture/FrameBuffer;->clearColorTargets()V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/jme3/texture/FrameBuffer;->addColorTexture(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/texture/TextureCubeMap$Face;)V

    return-void
.end method

.method public setDepthBuffer(Lcom/jme3/texture/Image$Format;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-direct {v0}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;-><init>()V

    iput-object v0, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-virtual {p1}, Lcom/jme3/texture/Image$Format;->isDepthStencilFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, -0x65

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    :goto_0
    iput v1, v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    iput-object p1, v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Depth buffer format must be depth."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FrameBuffer already initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    .line 3
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image$Format;->isDepthStencilFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x65

    goto :goto_0

    :cond_0
    const/16 v0, -0x64

    :goto_0
    iput v0, p1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Depth buffer format must be depth."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getTexture()Lcom/jme3/texture/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/jme3/texture/FrameBuffer;->checkSetTexture(Lcom/jme3/texture/Texture;Z)V

    .line 6
    iput-object p1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    .line 7
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getTexture()Lcom/jme3/texture/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image$Format;->isDepthStencilFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x65

    goto :goto_0

    :cond_0
    const/16 v0, -0x64

    :goto_0
    iput v0, p1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    return-void
.end method

.method public setDepthTexture(Lcom/jme3/texture/Texture2D;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/jme3/texture/FrameBuffer;->checkSetTexture(Lcom/jme3/texture/Texture;Z)V

    .line 4
    new-instance v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-direct {v1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;-><init>()V

    iput-object v1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    .line 5
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Image$Format;->isDepthStencilFormat()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, -0x65

    goto :goto_0

    :cond_0
    const/16 v2, -0x64

    :goto_0
    iput v2, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    .line 6
    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    iput-object p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->tex:Lcom/jme3/texture/Texture;

    .line 7
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p1

    iput-object p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FrameBuffer already initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDepthTexture(Lcom/jme3/texture/TextureArray;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, p1, v1}, Lcom/jme3/texture/FrameBuffer;->checkSetTexture(Lcom/jme3/texture/Texture;Z)V

    .line 12
    new-instance v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-direct {v1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;-><init>()V

    iput-object v1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    .line 13
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Image$Format;->isDepthStencilFormat()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, -0x65

    goto :goto_0

    :cond_0
    const/16 v2, -0x64

    :goto_0
    iput v2, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    .line 14
    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    iput-object p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->tex:Lcom/jme3/texture/Texture;

    .line 15
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p1

    iput-object p1, v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    .line 16
    iget-object p1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    iput p2, p1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->layer:I

    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FrameBuffer already initialized."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMipMapsGenerationHint(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/texture/FrameBuffer;->mipMapsGenerationHint:Ljava/lang/Boolean;

    return-void
.end method

.method public setMultiTarget(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/texture/FrameBuffer;->name:Ljava/lang/String;

    return-void
.end method

.method public setSrgb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/texture/FrameBuffer;->srgb:Z

    return-void
.end method

.method public setTargetIndex(I)V
    .locals 3

    if-ltz p1, :cond_1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    iput p1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The target at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not set!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Target index must be between 0 and 16"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "mrt"

    :goto_0
    const-string v2, "FrameBuffer[format="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/texture/FrameBuffer;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jme3/texture/FrameBuffer;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/texture/FrameBuffer;->samples:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", drawBuf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    const-string v2, "\n"

    if-eqz v1, :cond_1

    const-string v1, "Depth => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    const-string v4, "Color("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") => "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
