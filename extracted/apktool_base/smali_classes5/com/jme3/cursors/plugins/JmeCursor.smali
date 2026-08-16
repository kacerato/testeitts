.class public Lcom/jme3/cursors/plugins/JmeCursor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private height:I

.field private imagesData:Ljava/nio/IntBuffer;

.field private imagesDelay:Ljava/nio/IntBuffer;

.field private numImages:I

.field private width:I

.field private xHotSpot:I

.field private yHotSpot:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/jme3/cursors/plugins/JmeCursor;->height:I

    return v0
.end method

.method public getImagesData()Ljava/nio/IntBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cursors/plugins/JmeCursor;->imagesData:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getImagesDelay()Ljava/nio/IntBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cursors/plugins/JmeCursor;->imagesDelay:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getNumImages()I
    .locals 1

    iget v0, p0, Lcom/jme3/cursors/plugins/JmeCursor;->numImages:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/jme3/cursors/plugins/JmeCursor;->width:I

    return v0
.end method

.method public getXHotSpot()I
    .locals 1

    iget v0, p0, Lcom/jme3/cursors/plugins/JmeCursor;->xHotSpot:I

    return v0
.end method

.method public getYHotSpot()I
    .locals 1

    iget v0, p0, Lcom/jme3/cursors/plugins/JmeCursor;->yHotSpot:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/cursors/plugins/JmeCursor;->height:I

    return-void
.end method

.method public setImagesData(Ljava/nio/IntBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cursors/plugins/JmeCursor;->imagesData:Ljava/nio/IntBuffer;

    return-void
.end method

.method public setImagesDelay(Ljava/nio/IntBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cursors/plugins/JmeCursor;->imagesDelay:Ljava/nio/IntBuffer;

    return-void
.end method

.method public setNumImages(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/cursors/plugins/JmeCursor;->numImages:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/cursors/plugins/JmeCursor;->width:I

    return-void
.end method

.method public setxHotSpot(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/cursors/plugins/JmeCursor;->xHotSpot:I

    return-void
.end method

.method public setyHotSpot(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/cursors/plugins/JmeCursor;->yHotSpot:I

    return-void
.end method
