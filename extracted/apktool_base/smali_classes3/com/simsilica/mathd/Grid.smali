.class public Lcom/simsilica/mathd/Grid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simsilica/mathd/Grid$Mask;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x2aL


# instance fields
.field private final dimensions:I

.field private final gridSpacing:Lcom/simsilica/mathd/Vec3i;

.field private final xMask:Lcom/simsilica/mathd/Grid$Mask;

.field private final yMask:Lcom/simsilica/mathd/Grid$Mask;

.field private final zMask:Lcom/simsilica/mathd/Grid$Mask;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1, p1}, Lcom/simsilica/mathd/Grid;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/simsilica/mathd/Grid;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 3
    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {v0, p1, p2, p3}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/simsilica/mathd/Grid;-><init>(Lcom/simsilica/mathd/Vec3i;Lcom/simsilica/mathd/Vec3i;)V

    return-void
.end method

.method public constructor <init>(IIILcom/simsilica/mathd/Vec3i;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {v0, p1, p2, p3}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    invoke-direct {p0, v0, p4}, Lcom/simsilica/mathd/Grid;-><init>(Lcom/simsilica/mathd/Vec3i;Lcom/simsilica/mathd/Vec3i;)V

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/Vec3i;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/simsilica/mathd/Grid;-><init>(Lcom/simsilica/mathd/Vec3i;Lcom/simsilica/mathd/Vec3i;)V

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/Vec3i;Lcom/simsilica/mathd/Vec3i;)V
    .locals 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    if-eqz p2, :cond_1

    .line 7
    iget v1, p2, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v2, p2, Lcom/simsilica/mathd/Vec3i;->y:I

    add-int/2addr v1, v2

    iget v2, p2, Lcom/simsilica/mathd/Vec3i;->z:I

    add-int/2addr v1, v2

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bit overfload in bit sizes:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    .line 10
    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1

    .line 11
    :goto_2
    iget v5, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    if-eqz v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    .line 12
    :goto_3
    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    if-eqz p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .line 13
    :cond_4
    iput v1, p0, Lcom/simsilica/mathd/Grid;->dimensions:I

    .line 14
    div-int/2addr v0, v1

    if-nez p2, :cond_5

    mul-int/2addr v4, v0

    mul-int/2addr v5, v0

    mul-int/2addr v2, v0

    goto :goto_7

    :cond_5
    if-lez v4, :cond_7

    .line 15
    iget p1, p2, Lcom/simsilica/mathd/Vec3i;->x:I

    if-eqz p1, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grid spacing has x but no xBits allocated"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_4
    if-lez v5, :cond_9

    .line 17
    iget p1, p2, Lcom/simsilica/mathd/Vec3i;->y:I

    if-eqz p1, :cond_8

    goto :goto_5

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grid spacing has y but no yBits allocated"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_5
    if-lez v2, :cond_b

    .line 19
    iget p1, p2, Lcom/simsilica/mathd/Vec3i;->z:I

    if-eqz p1, :cond_a

    goto :goto_6

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grid spacing has z but no zBits allocated"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_b
    :goto_6
    iget v4, p2, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 22
    iget v5, p2, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 23
    iget v2, p2, Lcom/simsilica/mathd/Vec3i;->z:I

    .line 24
    :goto_7
    new-instance p1, Lcom/simsilica/mathd/Grid$Mask;

    invoke-direct {p1, v4}, Lcom/simsilica/mathd/Grid$Mask;-><init>(I)V

    iput-object p1, p0, Lcom/simsilica/mathd/Grid;->xMask:Lcom/simsilica/mathd/Grid$Mask;

    .line 25
    new-instance p1, Lcom/simsilica/mathd/Grid$Mask;

    invoke-direct {p1, v5}, Lcom/simsilica/mathd/Grid$Mask;-><init>(I)V

    iput-object p1, p0, Lcom/simsilica/mathd/Grid;->yMask:Lcom/simsilica/mathd/Grid$Mask;

    .line 26
    new-instance p1, Lcom/simsilica/mathd/Grid$Mask;

    invoke-direct {p1, v2}, Lcom/simsilica/mathd/Grid$Mask;-><init>(I)V

    iput-object p1, p0, Lcom/simsilica/mathd/Grid;->zMask:Lcom/simsilica/mathd/Grid$Mask;

    return-void
.end method

.method private cellToWorld(II)I
    .locals 0

    .line 1
    mul-int/2addr p1, p2

    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p1, p0, Lcom/simsilica/mathd/Grid;->xMask:Lcom/simsilica/mathd/Grid$Mask;

    if-nez p1, :cond_3

    const/16 p1, 0x40

    iget v0, p0, Lcom/simsilica/mathd/Grid;->dimensions:I

    div-int/2addr p1, v0

    iget-object v0, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget v0, v0, Lcom/simsilica/mathd/Vec3i;->x:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/simsilica/mathd/Grid$Mask;

    invoke-direct {v0, p1}, Lcom/simsilica/mathd/Grid$Mask;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/simsilica/mathd/Grid$Mask;

    invoke-direct {v0, v1}, Lcom/simsilica/mathd/Grid$Mask;-><init>(I)V

    :goto_0
    iget-object v2, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget v2, v2, Lcom/simsilica/mathd/Vec3i;->y:I

    if-eqz v2, :cond_1

    new-instance v2, Lcom/simsilica/mathd/Grid$Mask;

    invoke-direct {v2, p1}, Lcom/simsilica/mathd/Grid$Mask;-><init>(I)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/simsilica/mathd/Grid$Mask;

    invoke-direct {v2, v1}, Lcom/simsilica/mathd/Grid$Mask;-><init>(I)V

    :goto_1
    iget-object v3, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget v3, v3, Lcom/simsilica/mathd/Vec3i;->z:I

    if-eqz v3, :cond_2

    new-instance v1, Lcom/simsilica/mathd/Grid$Mask;

    invoke-direct {v1, p1}, Lcom/simsilica/mathd/Grid$Mask;-><init>(I)V

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/simsilica/mathd/Grid$Mask;

    invoke-direct {p1, v1}, Lcom/simsilica/mathd/Grid$Mask;-><init>(I)V

    move-object v1, p1

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v3, "xMask"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v5, "yMask"

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v6, "zMask"

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error deserializing older version"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method private worldToCell(DI)I
    .locals 0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-direct {p0, p1, p3}, Lcom/simsilica/mathd/Grid;->worldToCell(II)I

    move-result p1

    return p1
.end method

.method private worldToCell(II)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-gez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 1
    div-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 2
    :cond_1
    div-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final cellToId(III)J
    .locals 3

    const-wide/16 v0, 0x0

    .line 2
    iget-object v2, p0, Lcom/simsilica/mathd/Grid;->xMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-virtual {v2, p1, v0, v1}, Lcom/simsilica/mathd/Grid$Mask;->apply(IJ)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcom/simsilica/mathd/Grid;->yMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-static {p1}, Lcom/simsilica/mathd/Grid$Mask;->access$000(Lcom/simsilica/mathd/Grid$Mask;)I

    move-result p1

    shl-long/2addr v0, p1

    .line 4
    iget-object p1, p0, Lcom/simsilica/mathd/Grid;->yMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-virtual {p1, p2, v0, v1}, Lcom/simsilica/mathd/Grid$Mask;->apply(IJ)J

    move-result-wide p1

    .line 5
    iget-object v0, p0, Lcom/simsilica/mathd/Grid;->zMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-static {v0}, Lcom/simsilica/mathd/Grid$Mask;->access$000(Lcom/simsilica/mathd/Grid$Mask;)I

    move-result v0

    shl-long/2addr p1, v0

    .line 6
    iget-object v0, p0, Lcom/simsilica/mathd/Grid;->zMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-virtual {v0, p3, p1, p2}, Lcom/simsilica/mathd/Grid$Mask;->apply(IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final cellToId(Lcom/simsilica/mathd/Vec3i;)J
    .locals 2

    .line 1
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/simsilica/mathd/Grid;->cellToId(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public final cellToWorld(IIILcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    if-nez p4, :cond_0

    .line 7
    new-instance p4, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p4}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget v0, v0, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-direct {p0, p1, v0}, Lcom/simsilica/mathd/Grid;->cellToWorld(II)I

    move-result p1

    int-to-double v0, p1

    iput-wide v0, p4, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 9
    iget-object p1, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-direct {p0, p2, p1}, Lcom/simsilica/mathd/Grid;->cellToWorld(II)I

    move-result p1

    int-to-double p1, p1

    iput-wide p1, p4, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 10
    iget-object p1, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-direct {p0, p3, p1}, Lcom/simsilica/mathd/Grid;->cellToWorld(II)I

    move-result p1

    int-to-double p1, p1

    iput-wide p1, p4, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p4
.end method

.method public final cellToWorld(Lcom/simsilica/mathd/Vec3i;Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    .line 13
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/simsilica/mathd/Grid;->cellToWorld(IIILcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object p1

    return-object p1
.end method

.method public final cellToWorld(III)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    .line 2
    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3i;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/simsilica/mathd/Grid;->cellToWorld(IIILcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    return-object p1
.end method

.method public final cellToWorld(IIILcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {p4}, Lcom/simsilica/mathd/Vec3i;-><init>()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget v0, v0, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-direct {p0, p1, v0}, Lcom/simsilica/mathd/Grid;->cellToWorld(II)I

    move-result p1

    iput p1, p4, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 5
    iget-object p1, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-direct {p0, p2, p1}, Lcom/simsilica/mathd/Grid;->cellToWorld(II)I

    move-result p1

    iput p1, p4, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 6
    iget-object p1, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-direct {p0, p3, p1}, Lcom/simsilica/mathd/Grid;->cellToWorld(II)I

    move-result p1

    iput p1, p4, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p4
.end method

.method public final cellToWorld(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 3

    .line 11
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    new-instance v2, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {v2}, Lcom/simsilica/mathd/Vec3i;-><init>()V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/simsilica/mathd/Grid;->cellToWorld(IIILcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    return-object p1
.end method

.method public final cellToWorld(Lcom/simsilica/mathd/Vec3i;Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 2

    .line 12
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/simsilica/mathd/Grid;->cellToWorld(IIILcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    return-object p1
.end method

.method public final getContainingCell(DDD)Lcom/simsilica/mathd/GridCell;
    .locals 1

    .line 1
    new-instance v0, Lcom/simsilica/mathd/GridCell;

    invoke-virtual/range {p0 .. p6}, Lcom/simsilica/mathd/Grid;->worldToCell(DDD)Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/simsilica/mathd/GridCell;-><init>(Lcom/simsilica/mathd/Grid;Lcom/simsilica/mathd/Vec3i;)V

    return-object v0
.end method

.method public final getContainingCell(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/GridCell;
    .locals 7

    .line 2
    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/simsilica/mathd/Grid;->getContainingCell(DDD)Lcom/simsilica/mathd/GridCell;

    move-result-object p1

    return-object p1
.end method

.method public final getContainingCell(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/GridCell;
    .locals 8

    .line 3
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v0

    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v4, v0

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v6, p1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/simsilica/mathd/Grid;->getContainingCell(DDD)Lcom/simsilica/mathd/GridCell;

    move-result-object p1

    return-object p1
.end method

.method public final getDimensions()I
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/Grid;->dimensions:I

    return v0
.end method

.method public final getGridCell(III)Lcom/simsilica/mathd/GridCell;
    .locals 2

    .line 2
    new-instance v0, Lcom/simsilica/mathd/GridCell;

    new-instance v1, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {v1, p1, p2, p3}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    invoke-direct {v0, p0, v1}, Lcom/simsilica/mathd/GridCell;-><init>(Lcom/simsilica/mathd/Grid;Lcom/simsilica/mathd/Vec3i;)V

    return-object v0
.end method

.method public final getGridCell(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/GridCell;
    .locals 1

    .line 1
    new-instance v0, Lcom/simsilica/mathd/GridCell;

    invoke-virtual {p1}, Lcom/simsilica/mathd/Vec3i;->clone()Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/simsilica/mathd/GridCell;-><init>(Lcom/simsilica/mathd/Grid;Lcom/simsilica/mathd/Vec3i;)V

    return-object v0
.end method

.method public final getIdBits()Lcom/simsilica/mathd/Vec3i;
    .locals 4

    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    iget-object v1, p0, Lcom/simsilica/mathd/Grid;->xMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-static {v1}, Lcom/simsilica/mathd/Grid$Mask;->access$000(Lcom/simsilica/mathd/Grid$Mask;)I

    move-result v1

    iget-object v2, p0, Lcom/simsilica/mathd/Grid;->yMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-static {v2}, Lcom/simsilica/mathd/Grid$Mask;->access$000(Lcom/simsilica/mathd/Grid$Mask;)I

    move-result v2

    iget-object v3, p0, Lcom/simsilica/mathd/Grid;->zMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-static {v3}, Lcom/simsilica/mathd/Grid$Mask;->access$000(Lcom/simsilica/mathd/Grid$Mask;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-object v0
.end method

.method public final getSpacing()Lcom/simsilica/mathd/Vec3i;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    return-object v0
.end method

.method public final idToCell(J)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    .line 9
    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3i;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/simsilica/mathd/Grid;->idToCell(JLcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    return-object p1
.end method

.method public final idToCell(JLcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/simsilica/mathd/Grid;->zMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-virtual {v0, p1, p2}, Lcom/simsilica/mathd/Grid$Mask;->extract(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/simsilica/mathd/Grid;->zMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-static {v1}, Lcom/simsilica/mathd/Grid$Mask;->access$000(Lcom/simsilica/mathd/Grid$Mask;)I

    move-result v1

    shr-long/2addr p1, v1

    .line 3
    iget-object v1, p0, Lcom/simsilica/mathd/Grid;->yMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-virtual {v1, p1, p2}, Lcom/simsilica/mathd/Grid$Mask;->extract(J)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/simsilica/mathd/Grid;->yMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-static {v2}, Lcom/simsilica/mathd/Grid$Mask;->access$000(Lcom/simsilica/mathd/Grid$Mask;)I

    move-result v2

    shr-long/2addr p1, v2

    .line 5
    iget-object v2, p0, Lcom/simsilica/mathd/Grid;->xMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-virtual {v2, p1, p2}, Lcom/simsilica/mathd/Grid$Mask;->extract(J)I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/simsilica/mathd/Grid;->xMask:Lcom/simsilica/mathd/Grid$Mask;

    invoke-static {p2}, Lcom/simsilica/mathd/Grid$Mask;->access$000(Lcom/simsilica/mathd/Grid$Mask;)I

    if-nez p3, :cond_0

    .line 7
    new-instance p3, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {p3, p1, v1, v0}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3, p1, v1, v0}, Lcom/simsilica/mathd/Vec3i;->set(III)Lcom/simsilica/mathd/Vec3i;

    :goto_0
    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Grid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final worldToCell(DDD)Lcom/simsilica/mathd/Vec3i;
    .locals 8

    .line 4
    new-instance v7, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {v7}, Lcom/simsilica/mathd/Vec3i;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/simsilica/mathd/Grid;->worldToCell(DDDLcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    return-object p1
.end method

.method public final worldToCell(DDDLcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    if-nez p7, :cond_0

    .line 5
    new-instance p7, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {p7}, Lcom/simsilica/mathd/Vec3i;-><init>()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget v0, v0, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-direct {p0, p1, p2, v0}, Lcom/simsilica/mathd/Grid;->worldToCell(DI)I

    move-result p1

    iput p1, p7, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 7
    iget-object p1, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-direct {p0, p3, p4, p1}, Lcom/simsilica/mathd/Grid;->worldToCell(DI)I

    move-result p1

    iput p1, p7, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 8
    iget-object p1, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-direct {p0, p5, p6, p1}, Lcom/simsilica/mathd/Grid;->worldToCell(DI)I

    move-result p1

    iput p1, p7, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p7
.end method

.method public final worldToCell(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3i;
    .locals 8

    .line 9
    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    new-instance v7, Lcom/simsilica/mathd/Vec3i;

    invoke-direct {v7}, Lcom/simsilica/mathd/Vec3i;-><init>()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/simsilica/mathd/Grid;->worldToCell(DDDLcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    return-object p1
.end method

.method public final worldToCell(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 8

    .line 10
    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    move-object v0, p0

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/simsilica/mathd/Grid;->worldToCell(DDDLcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;

    move-result-object p1

    return-object p1
.end method

.method public final worldToId(DDD)J
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget v0, v0, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-direct {p0, p1, p2, v0}, Lcom/simsilica/mathd/Grid;->worldToCell(DI)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget p2, p2, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-direct {p0, p3, p4, p2}, Lcom/simsilica/mathd/Grid;->worldToCell(DI)I

    move-result p2

    .line 4
    iget-object p3, p0, Lcom/simsilica/mathd/Grid;->gridSpacing:Lcom/simsilica/mathd/Vec3i;

    iget p3, p3, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-direct {p0, p5, p6, p3}, Lcom/simsilica/mathd/Grid;->worldToCell(DI)I

    move-result p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/simsilica/mathd/Grid;->cellToId(III)J

    move-result-wide p1

    return-wide p1
.end method

.method public final worldToId(Lcom/simsilica/mathd/Vec3d;)J
    .locals 7

    .line 1
    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/simsilica/mathd/Grid;->worldToId(DDD)J

    move-result-wide v0

    return-wide v0
.end method
