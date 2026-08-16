.class public Lcom/ardor3d/math/functions/GridPatternFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# instance fields
.field private final _grid:[[D

.field private final _xScaleFactor:D

.field private final _yScaleFactor:D


# direct methods
.method public constructor <init>([[D)V
    .locals 6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/math/functions/GridPatternFunction3D;-><init>([[DDD)V

    return-void
.end method

.method public constructor <init>([[DDD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ardor3d/math/functions/GridPatternFunction3D;->_grid:[[D

    .line 4
    iput-wide p2, p0, Lcom/ardor3d/math/functions/GridPatternFunction3D;->_xScaleFactor:D

    .line 5
    iput-wide p4, p0, Lcom/ardor3d/math/functions/GridPatternFunction3D;->_yScaleFactor:D

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 12

    move-object v7, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, v7, Lcom/ardor3d/math/functions/GridPatternFunction3D;->_xScaleFactor:D

    div-double/2addr v0, v4

    iget-wide v4, v7, Lcom/ardor3d/math/functions/GridPatternFunction3D;->_yScaleFactor:D

    div-double/2addr v2, v4

    iget-object v4, v7, Lcom/ardor3d/math/functions/GridPatternFunction3D;->_grid:[[D

    array-length v5, v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    array-length v4, v4

    int-to-double v5, v5

    div-double v8, v0, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    mul-double/2addr v8, v5

    sub-double v8, v0, v8

    int-to-double v0, v4

    div-double v10, v2, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    mul-double/2addr v10, v0

    sub-double v10, v2, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    rem-double/2addr v2, v5

    double-to-int v2, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    rem-double/2addr v3, v0

    double-to-int v3, v3

    move-object v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v8

    move-wide v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/functions/GridPatternFunction3D;->getCellValue(IIDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCellValue(IIDD)D
    .locals 0

    iget-object p3, p0, Lcom/ardor3d/math/functions/GridPatternFunction3D;->_grid:[[D

    aget-object p1, p3, p1

    aget-wide p2, p1, p2

    return-wide p2
.end method
