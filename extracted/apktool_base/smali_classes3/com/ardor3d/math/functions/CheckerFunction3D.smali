.class public Lcom/ardor3d/math/functions/CheckerFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 0

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide p3

    add-long/2addr p1, p3

    invoke-static {p5, p6}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide p3

    add-long/2addr p1, p3

    const-wide/16 p3, 0x2

    rem-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1
.end method
