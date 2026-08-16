.class public Lcom/ardor3d/math/functions/MandelbrotFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# instance fields
.field private _iterations:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/functions/MandelbrotFunction3D;->setIterations(I)V

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 14

    move-object v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v5, v3

    move-wide v3, v1

    :goto_0
    mul-double v6, v1, v1

    mul-double v8, v3, v3

    add-double v10, v6, v8

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    cmpg-double v10, v10, v12

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    if-gtz v10, :cond_0

    iget v10, v0, Lcom/ardor3d/math/functions/MandelbrotFunction3D;->_iterations:I

    if-ge v5, v10, :cond_0

    sub-double/2addr v6, v8

    add-double/2addr v6, p1

    mul-double/2addr v1, v11

    mul-double/2addr v1, v3

    add-double v3, v1, p3

    add-int/lit8 v5, v5, 0x1

    move-wide v1, v6

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/ardor3d/math/functions/MandelbrotFunction3D;->_iterations:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-ne v5, v1, :cond_1

    return-wide v2

    :cond_1
    int-to-double v4, v5

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v4, v11

    sub-double/2addr v4, v2

    return-wide v4
.end method

.method public getIterations()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/functions/MandelbrotFunction3D;->_iterations:I

    return v0
.end method

.method public setIterations(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/functions/MandelbrotFunction3D;->_iterations:I

    return-void
.end method
