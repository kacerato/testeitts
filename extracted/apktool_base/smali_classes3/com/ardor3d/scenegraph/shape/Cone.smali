.class public Lcom/ardor3d/scenegraph/shape/Cone;
.super Lcom/ardor3d/scenegraph/shape/Cylinder;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Cylinder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIFF)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/scenegraph/shape/Cone;-><init>(Ljava/lang/String;IIFFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIFFZ)V
    .locals 9

    float-to-double v4, p4

    float-to-double v6, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, p6

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/scenegraph/shape/Cylinder;-><init>(Ljava/lang/String;IIDDZ)V

    const-wide/16 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/scenegraph/shape/Cylinder;->setRadius2(D)V

    return-void
.end method


# virtual methods
.method public setHalfAngle(F)V
    .locals 2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/scenegraph/shape/Cylinder;->setRadius1(D)V

    return-void
.end method
