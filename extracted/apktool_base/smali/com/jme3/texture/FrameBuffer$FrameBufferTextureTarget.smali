.class public Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;
.super Lcom/jme3/texture/FrameBuffer$RenderBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/FrameBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameBufferTextureTarget"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/texture/FrameBuffer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public face(I)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;
    .locals 0

    .line 2
    iput p1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->face:I

    return-object p0
.end method

.method public face(Lcom/jme3/texture/TextureCubeMap$Face;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;->face(I)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object p1

    return-object p1
.end method

.method public layer(I)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;
    .locals 0

    iput p1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->layer:I

    return-object p0
.end method

.method public level(I)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;
    .locals 0

    iput p1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->level:I

    return-object p0
.end method

.method public setFormat(Lcom/jme3/texture/Image$Format;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    return-void
.end method

.method public setTexture(Lcom/jme3/texture/Texture;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->tex:Lcom/jme3/texture/Texture;

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    return-void
.end method
