.class public Lcom/simsilica/mathd/GridCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x2aL


# instance fields
.field private final cell:Lcom/simsilica/mathd/Vec3i;

.field private final grid:Lcom/simsilica/mathd/Grid;

.field private final worldOrigin:Lcom/simsilica/mathd/Vec3i;


# direct methods
.method public constructor <init>(Lcom/simsilica/mathd/Grid;Lcom/simsilica/mathd/Vec3i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/simsilica/mathd/GridCell;->grid:Lcom/simsilica/mathd/Grid;

    iput-object p2, p0, Lcom/simsilica/mathd/GridCell;->cell:Lcom/simsilica/mathd/Vec3i;

    invoke-virtual {p1, p2}, Lcom/simsilica/mathd/Grid;->cellToWorld(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    iput-object p1, p0, Lcom/simsilica/mathd/GridCell;->worldOrigin:Lcom/simsilica/mathd/Vec3i;

    return-void
.end method


# virtual methods
.method public final contains(DDD)Z
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/simsilica/mathd/GridCell;->grid:Lcom/simsilica/mathd/Grid;

    invoke-virtual {v0}, Lcom/simsilica/mathd/Grid;->getSpacing()Lcom/simsilica/mathd/Vec3i;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/simsilica/mathd/GridCell;->worldOrigin:Lcom/simsilica/mathd/Vec3i;

    iget v2, v1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v2

    sub-double/2addr p1, v2

    .line 4
    iget v2, v1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v2, v2

    sub-double/2addr p3, v2

    .line 5
    iget v1, v1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v1, v1

    sub-double/2addr p5, v1

    .line 6
    iget v1, v0, Lcom/simsilica/mathd/Vec3i;->x:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    cmpg-double v5, p1, v3

    if-ltz v5, :cond_0

    int-to-double v5, v1

    cmpl-double p1, p1, v5

    if-ltz p1, :cond_1

    :cond_0
    return v2

    .line 7
    :cond_1
    iget p1, v0, Lcom/simsilica/mathd/Vec3i;->y:I

    if-eqz p1, :cond_3

    cmpg-double p2, p3, v3

    if-ltz p2, :cond_2

    int-to-double p1, p1

    cmpl-double p1, p3, p1

    if-ltz p1, :cond_3

    :cond_2
    return v2

    .line 8
    :cond_3
    iget p1, v0, Lcom/simsilica/mathd/Vec3i;->z:I

    if-eqz p1, :cond_5

    cmpg-double p2, p5, v3

    if-ltz p2, :cond_4

    int-to-double p1, p1

    cmpl-double p1, p5, p1

    if-ltz p1, :cond_5

    :cond_4
    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final contains(Lcom/simsilica/mathd/Vec3d;)Z
    .locals 7

    .line 1
    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/simsilica/mathd/GridCell;->contains(DDD)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/simsilica/mathd/GridCell;

    iget-object v2, p1, Lcom/simsilica/mathd/GridCell;->cell:Lcom/simsilica/mathd/Vec3i;

    iget v3, v2, Lcom/simsilica/mathd/Vec3i;->x:I

    iget-object v4, p0, Lcom/simsilica/mathd/GridCell;->cell:Lcom/simsilica/mathd/Vec3i;

    iget v5, v4, Lcom/simsilica/mathd/Vec3i;->x:I

    if-ne v3, v5, :cond_2

    iget v3, v2, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v5, v4, Lcom/simsilica/mathd/Vec3i;->y:I

    if-ne v3, v5, :cond_2

    iget v2, v2, Lcom/simsilica/mathd/Vec3i;->z:I

    iget v3, v4, Lcom/simsilica/mathd/Vec3i;->z:I

    if-ne v2, v3, :cond_2

    iget-object p1, p1, Lcom/simsilica/mathd/GridCell;->grid:Lcom/simsilica/mathd/Grid;

    iget-object v2, p0, Lcom/simsilica/mathd/GridCell;->grid:Lcom/simsilica/mathd/Grid;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getCell()Lcom/simsilica/mathd/Vec3i;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/GridCell;->cell:Lcom/simsilica/mathd/Vec3i;

    return-object v0
.end method

.method public final getGrid()Lcom/simsilica/mathd/Grid;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/GridCell;->grid:Lcom/simsilica/mathd/Grid;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-object v0, p0, Lcom/simsilica/mathd/GridCell;->grid:Lcom/simsilica/mathd/Grid;

    iget-object v1, p0, Lcom/simsilica/mathd/GridCell;->cell:Lcom/simsilica/mathd/Vec3i;

    invoke-virtual {v0, v1}, Lcom/simsilica/mathd/Grid;->cellToId(Lcom/simsilica/mathd/Vec3i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWorldOrigin()Lcom/simsilica/mathd/Vec3i;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/GridCell;->worldOrigin:Lcom/simsilica/mathd/Vec3i;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/GridCell;->cell:Lcom/simsilica/mathd/Vec3i;

    invoke-virtual {v0}, Lcom/simsilica/mathd/Vec3i;->hashCode()I

    move-result v0

    return v0
.end method

.method public final localToWorld(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 1

    .line 1
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/simsilica/mathd/GridCell;->localToWorld(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object p1

    return-object p1
.end method

.method public final localToWorld(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 5

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p2}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/simsilica/mathd/GridCell;->worldOrigin:Lcom/simsilica/mathd/Vec3i;

    iget v1, v0, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v1, v1

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    add-double/2addr v1, v3

    iput-wide v1, p2, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 4
    iget v1, v0, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v1, v1

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    add-double/2addr v1, v3

    iput-wide v1, p2, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 5
    iget v0, v0, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v0, v0

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p2
.end method

.method public final localToWorld(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    .line 6
    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3i;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/simsilica/mathd/GridCell;->localToWorld(Lcom/simsilica/mathd/Vec3i;Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    return-object p1
.end method

.method public final localToWorld(Lcom/simsilica/mathd/Vec3i;Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 3

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {p2}, Lcom/simsilica/mathd/Vec3i;-><init>()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/simsilica/mathd/GridCell;->worldOrigin:Lcom/simsilica/mathd/Vec3i;

    iget v1, v0, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    add-int/2addr v1, v2

    iput v1, p2, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 9
    iget v1, v0, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    add-int/2addr v1, v2

    iput v1, p2, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 10
    iget v0, v0, Lcom/simsilica/mathd/Vec3i;->z:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    add-int/2addr v0, p1

    iput v0, p2, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/GridCell;->cell:Lcom/simsilica/mathd/Vec3i;

    iget v1, v1, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simsilica/mathd/GridCell;->cell:Lcom/simsilica/mathd/Vec3i;

    iget v2, v2, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/GridCell;->cell:Lcom/simsilica/mathd/Vec3i;

    iget v1, v1, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final worldToLocal(DDD)Lcom/simsilica/mathd/Vec3d;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 6
    invoke-virtual/range {v0 .. v7}, Lcom/simsilica/mathd/GridCell;->worldToLocal(DDDLcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object p1

    return-object p1
.end method

.method public final worldToLocal(DDDLcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 3

    if-nez p7, :cond_0

    .line 7
    new-instance p7, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p7}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/simsilica/mathd/GridCell;->worldOrigin:Lcom/simsilica/mathd/Vec3i;

    iget v1, v0, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v1, v1

    sub-double/2addr p1, v1

    iput-wide p1, p7, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 9
    iget p1, v0, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double p1, p1

    sub-double/2addr p3, p1

    iput-wide p3, p7, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 10
    iget p1, v0, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double p1, p1

    sub-double/2addr p5, p1

    iput-wide p5, p7, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p7
.end method

.method public final worldToLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/simsilica/mathd/GridCell;->worldToLocal(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object p1

    return-object p1
.end method

.method public final worldToLocal(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 5

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p2}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    .line 3
    :cond_0
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-object v2, p0, Lcom/simsilica/mathd/GridCell;->worldOrigin:Lcom/simsilica/mathd/Vec3i;

    iget v3, v2, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v3, v3

    sub-double/2addr v0, v3

    iput-wide v0, p2, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 4
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget v3, v2, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v3, v3

    sub-double/2addr v0, v3

    iput-wide v0, p2, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 5
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    iget p1, v2, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v2, p1

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p2
.end method
