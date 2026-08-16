.class public Lcom/ardor3d/math/functions/CloudsFunction3D;
.super Lcom/ardor3d/math/functions/FbmFunction3D;
.source "SourceFile"


# static fields
.field public static final MAX_OCTAVES:I = 0x20


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/functions/Function3D;IDDD)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/ardor3d/math/functions/FbmFunction3D;-><init>(Lcom/ardor3d/math/functions/Function3D;IDDD)V

    return-void
.end method


# virtual methods
.method public getValue(DDD)D
    .locals 7

    invoke-virtual {p0}, Lcom/ardor3d/math/functions/FbmFunction3D;->getSource()Lcom/ardor3d/math/functions/Function3D;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, p3

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p3

    return-wide p1
.end method
