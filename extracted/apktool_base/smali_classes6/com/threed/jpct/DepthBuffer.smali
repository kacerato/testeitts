.class public Lcom/threed/jpct/DepthBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field height:I

.field lastHandlerId:I

.field renderBuffer:I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/DepthBuffer;->renderBuffer:I

    iput v0, p0, Lcom/threed/jpct/DepthBuffer;->lastHandlerId:I

    iput p1, p0, Lcom/threed/jpct/DepthBuffer;->width:I

    iput p2, p0, Lcom/threed/jpct/DepthBuffer;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/DepthBuffer;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/DepthBuffer;->width:I

    return v0
.end method
