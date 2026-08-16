.class public Lcom/threed/jpct/Polyline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private buffer:[F

.field private color:Lcom/threed/jpct/RGBColor;

.field private length:I

.field private maxLength:I

.field private percentage:F

.field private transparencyMode:I

.field private vertices:Lcom/threed/jpct/FloatBufferWrapper;

.field private visible:Z

.field private width:F


# direct methods
.method public constructor <init>([Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/RGBColor;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Polyline;->length:I

    iput v0, p0, Lcom/threed/jpct/Polyline;->maxLength:I

    sget-object v1, Lcom/threed/jpct/RGBColor;->WHITE:Lcom/threed/jpct/RGBColor;

    iput-object v1, p0, Lcom/threed/jpct/Polyline;->color:Lcom/threed/jpct/RGBColor;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/threed/jpct/Polyline;->width:F

    iput v0, p0, Lcom/threed/jpct/Polyline;->transparencyMode:I

    const/4 v2, 0x3

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    iput v1, p0, Lcom/threed/jpct/Polyline;->percentage:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/Polyline;->visible:Z

    new-instance v3, Lcom/threed/jpct/FloatBufferWrapper;

    array-length v4, p1

    mul-int/2addr v4, v2

    invoke-direct {v3, v4}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(I)V

    iput-object v3, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    array-length v2, p1

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v0}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    array-length p1, p1

    iput p1, p0, Lcom/threed/jpct/Polyline;->length:I

    iput p1, p0, Lcom/threed/jpct/Polyline;->maxLength:I

    invoke-virtual {p0, p2}, Lcom/threed/jpct/Polyline;->setColor(Lcom/threed/jpct/RGBColor;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    aget-object v5, p1, v3

    iget v6, v5, Lcom/threed/jpct/SimpleVector;->x:F

    aput v6, v4, v0

    iget v6, v5, Lcom/threed/jpct/SimpleVector;->y:F

    aput v6, v4, v1

    const/4 v6, 0x2

    iget v5, v5, Lcom/threed/jpct/SimpleVector;->z:F

    aput v5, v4, v6

    iget-object v5, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v5, v4}, Lcom/threed/jpct/FloatBufferWrapper;->put([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getColor()Lcom/threed/jpct/RGBColor;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Polyline;->color:Lcom/threed/jpct/RGBColor;

    return-object v0
.end method

.method public getData()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v0, v0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getLength()I
    .locals 2

    iget v0, p0, Lcom/threed/jpct/Polyline;->percentage:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/threed/jpct/Polyline;->length:I

    return v0

    :cond_0
    iget v1, p0, Lcom/threed/jpct/Polyline;->length:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getPercentage()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Polyline;->percentage:F

    return v0
.end method

.method public getTransparencyMode()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Polyline;->transparencyMode:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Polyline;->width:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Polyline;->visible:Z

    return v0
.end method

.method public setColor(Lcom/threed/jpct/RGBColor;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Polyline;->color:Lcom/threed/jpct/RGBColor;

    return-void
.end method

.method public setPercentage(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Lcom/threed/jpct/Polyline;->percentage:F

    return-void
.end method

.method public setTransparencyMode(I)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/Polyline;->transparencyMode:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Polyline;->visible:Z

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/Polyline;->width:F

    return-void
.end method

.method public update([Lcom/threed/jpct/SimpleVector;)V
    .locals 7

    array-length v0, p1

    iget v1, p0, Lcom/threed/jpct/Polyline;->maxLength:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const-string p1, "New data\'s size exceeds the size of the Polyline!"

    invoke-static {p1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v1}, Lcom/threed/jpct/FloatBufferWrapper;->clear()V

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_1

    iget-object p1, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {p1}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    iput v0, p0, Lcom/threed/jpct/Polyline;->length:I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    aget-object v4, p1, v1

    iget v5, v4, Lcom/threed/jpct/SimpleVector;->x:F

    aput v5, v3, v2

    iget v5, v4, Lcom/threed/jpct/SimpleVector;->y:F

    const/4 v6, 0x1

    aput v5, v3, v6

    const/4 v5, 0x2

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->z:F

    aput v4, v3, v5

    iget-object v4, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v4, v3}, Lcom/threed/jpct/FloatBufferWrapper;->put([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
