.class public LX4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:D

.field public c:D

.field public d:D


# direct methods
.method public constructor <init>(DD)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialDir1x",
            "initialDir1y"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, LX4/a;->c:D

    .line 4
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    iput-wide p1, p0, LX4/a;->b:D

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, LX4/a;->a:F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startCoord"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    float-to-double v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, LX4/a;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public final a(DD)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "angle1",
            "angle2"
        }
    .end annotation

    sub-double/2addr p3, p1

    :goto_0
    const-wide p1, 0x400921fb54442d18L    # Math.PI

    cmpl-double p1, p3, p1

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    if-lez p1, :cond_0

    sub-double/2addr p3, v0

    goto :goto_0

    :cond_0
    :goto_1
    const-wide p1, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double p1, p3, p1

    if-gez p1, :cond_1

    add-double/2addr p3, v0

    goto :goto_1

    :cond_1
    return-wide p3
.end method

.method public b()F
    .locals 2

    iget-wide v0, p0, LX4/a;->d:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, LX4/a;->a:F

    return v0
.end method

.method public d()F
    .locals 2

    iget-wide v0, p0, LX4/a;->c:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public e(DD)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir2x",
            "dir2y"
        }
    .end annotation

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    iget-wide p3, p0, LX4/a;->b:D

    invoke-virtual {p0, p3, p4, p1, p2}, LX4/a;->a(DD)D

    move-result-wide p3

    iput-wide p3, p0, LX4/a;->d:D

    iget-wide v0, p0, LX4/a;->c:D

    add-double/2addr v0, p3

    iput-wide v0, p0, LX4/a;->c:D

    iput-wide p1, p0, LX4/a;->b:D

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherCoord"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, LX4/a;->e(DD)V

    return-void
.end method
