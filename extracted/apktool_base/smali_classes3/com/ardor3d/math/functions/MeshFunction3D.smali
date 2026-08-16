.class public Lcom/ardor3d/math/functions/MeshFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# instance fields
.field private final _lineSize:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/ardor3d/math/functions/MeshFunction3D;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/ardor3d/math/functions/MeshFunction3D;->_lineSize:D

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    iget-wide p3, p0, Lcom/ardor3d/math/functions/MeshFunction3D;->_lineSize:D

    div-double/2addr p1, p3

    mul-double/2addr p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, p3

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p3

    return-wide p1
.end method
