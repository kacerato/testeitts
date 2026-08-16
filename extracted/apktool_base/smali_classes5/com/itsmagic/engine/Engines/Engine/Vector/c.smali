.class public Lcom/itsmagic/engine/Engines/Engine/Vector/c;
.super LK8/f;
.source "SourceFile"


# static fields
.field private static cost:D

.field private static newX:D

.field private static newY:D

.field private static newZ:D

.field private static sint:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LK8/f;-><init>()V

    return-void
.end method


# virtual methods
.method public rotateVectorAboutXAxis(DLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "theta",
            "vectorToRotate",
            "vectorToPutResultsIn"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sput-wide v0, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->sint:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->cost:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    float-to-double p1, p1

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newX:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->cost:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    float-to-double v0, v0

    sget-wide v2, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->sint:D

    mul-double/2addr v0, v2

    sub-double/2addr p1, v0

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newY:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->sint:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p3

    float-to-double v0, p3

    sget-wide v2, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->cost:D

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newZ:D

    sget-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newX:D

    invoke-static {p1, p2}, LNc/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    sget-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newY:D

    invoke-static {p1, p2}, LNc/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    sget-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newZ:D

    invoke-static {p1, p2}, LNc/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public rotateVectorAboutYAxis(DLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "theta",
            "vectorToRotate",
            "vectorToPutResultsIn"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sput-wide v0, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->sint:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->cost:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->sint:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    float-to-double v0, v0

    sget-wide v2, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->cost:D

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newX:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    float-to-double p1, p1

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newY:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->cost:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p3

    float-to-double v0, p3

    sget-wide v2, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->sint:D

    mul-double/2addr v0, v2

    sub-double/2addr p1, v0

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newZ:D

    sget-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newX:D

    invoke-static {p1, p2}, LNc/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    sget-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newY:D

    invoke-static {p1, p2}, LNc/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    sget-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newZ:D

    invoke-static {p1, p2}, LNc/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public rotateVectorAboutZAxis(DLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "theta",
            "vectorToRotate",
            "vectorToPutResultsIn"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sput-wide v0, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->sint:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->cost:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->cost:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    float-to-double v0, v0

    sget-wide v2, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->sint:D

    mul-double/2addr v0, v2

    sub-double/2addr p1, v0

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newX:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->sint:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    float-to-double v0, v0

    sget-wide v2, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->cost:D

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newY:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    float-to-double p1, p1

    sput-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newZ:D

    sget-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newX:D

    invoke-static {p1, p2}, LNc/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    sget-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newY:D

    invoke-static {p1, p2}, LNc/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    sget-wide p1, Lcom/itsmagic/engine/Engines/Engine/Vector/c;->newZ:D

    invoke-static {p1, p2}, LNc/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method
