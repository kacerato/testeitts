.class public Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/FrameBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameBufferTarget"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newTarget(Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;
    .locals 2

    .line 3
    new-instance v0, Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;-><init>(Lcom/jme3/texture/FrameBuffer$1;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;->setFormat(Lcom/jme3/texture/Image$Format;)V

    return-object v0
.end method

.method public static newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;
    .locals 2

    .line 1
    new-instance v0, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;-><init>(Lcom/jme3/texture/FrameBuffer$1;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;->setTexture(Lcom/jme3/texture/Texture;)V

    return-object v0
.end method

.method public static newTarget(Lcom/jme3/texture/Texture;Lcom/jme3/texture/TextureCubeMap$Face;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;
    .locals 2

    .line 5
    new-instance v0, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;-><init>(Lcom/jme3/texture/FrameBuffer$1;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->face:I

    .line 7
    invoke-virtual {v0, p0}, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;->setTexture(Lcom/jme3/texture/Texture;)V

    return-object v0
.end method
