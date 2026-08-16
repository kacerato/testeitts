.class public Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;
.super Lcom/jme3/texture/FrameBuffer$RenderBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/FrameBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameBufferBufferTarget"
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
    invoke-direct {p0}, Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public setFormat(Lcom/jme3/texture/Image$Format;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    return-void
.end method
