.class public Lcom/ardor3d/spline/ArcLengthTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _curve:Lcom/ardor3d/spline/Curve;

.field private _lookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/spline/ArcLengthTable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/spline/ArcLengthTable;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/spline/Curve;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/spline/ArcLengthTable;->_curve:Lcom/ardor3d/spline/Curve;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "curve was null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private continueLoop(IZ)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    if-lez p1, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/ardor3d/spline/ArcLengthTable;->_curve:Lcom/ardor3d/spline/Curve;

    invoke-virtual {p2}, Lcom/ardor3d/spline/Curve;->getControlPointCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private updateCounter(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public generate(IZ)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-lez v1, :cond_6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/ardor3d/spline/ArcLengthTable;->_lookupTable:Ljava/util/Map;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v10

    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/ardor3d/spline/ArcLengthTable;->_curve:Lcom/ardor3d/spline/Curve;

    invoke-virtual {v4}, Lcom/ardor3d/spline/Curve;->getControlPointCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    int-to-double v5, v1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v13, v11, v5

    move v1, v4

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/ardor3d/spline/ArcLengthTable;->continueLoop(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/ardor3d/spline/ArcLengthTable;->_curve:Lcom/ardor3d/spline/Curve;

    invoke-virtual {v4}, Lcom/ardor3d/spline/Curve;->getControlPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {v10, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6, v5, v6}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;-><init>(DD)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    add-int/lit8 v4, v1, -0x1

    :goto_2
    move/from16 v16, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v1, 0x1

    goto :goto_2

    :goto_3
    move-wide/from16 v17, v5

    :goto_4
    add-double/2addr v5, v13

    cmpl-double v4, v5, v11

    if-lez v4, :cond_2

    move-wide v6, v11

    goto :goto_5

    :cond_2
    move-wide v6, v5

    :goto_5
    iget-object v4, v0, Lcom/ardor3d/spline/ArcLengthTable;->_curve:Lcom/ardor3d/spline/Curve;

    move v5, v1

    move-wide/from16 v19, v6

    move/from16 v6, v16

    move-wide/from16 v7, v19

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ardor3d/spline/Curve;->interpolate(IIDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {v10, v3}, Lcom/ardor3d/math/Vector3;->distance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v4

    add-double v4, v17, v4

    invoke-virtual {v10, v3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    new-instance v6, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;

    invoke-direct {v6, v7, v8, v4, v5}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;-><init>(DD)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpl-double v6, v7, v11

    if-nez v6, :cond_3

    iget-object v4, v0, Lcom/ardor3d/spline/ArcLengthTable;->_lookupTable:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/spline/ArcLengthTable;->updateCounter(IZ)I

    move-result v1

    goto :goto_1

    :cond_3
    move-wide/from16 v17, v4

    move-wide v5, v7

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/ardor3d/spline/ArcLengthTable;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "look up table = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ardor3d/spline/ArcLengthTable;->_lookupTable:Ljava/util/Map;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5
    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v10}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "step must be > 0! step="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDelta(ID)D
    .locals 9

    iget-object v0, p0, Lcom/ardor3d/spline/ArcLengthTable;->_lookupTable:Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;

    invoke-virtual {v3}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->getLength()D

    move-result-wide v4

    cmpg-double v4, v4, p2

    if-gtz v4, :cond_1

    move-object v2, v3

    :cond_1
    invoke-virtual {v3}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->getLength()D

    move-result-wide v4

    cmpl-double v4, v4, p2

    if-ltz v4, :cond_0

    move-object v1, v3

    :cond_2
    if-eqz v2, :cond_6

    if-nez v1, :cond_4

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/ardor3d/spline/ArcLengthTable;->_lookupTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, p1

    :goto_0
    invoke-virtual {v2}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->getLength()D

    move-result-wide v3

    sub-double/2addr p2, v3

    invoke-virtual {p0, v0, p2, p3}, Lcom/ardor3d/spline/ArcLengthTable;->getDelta(ID)D

    move-result-wide p1

    invoke-virtual {v2}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->getDelta()D

    move-result-wide v0

    add-double/2addr p1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->getDelta()D

    move-result-wide p1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->getDelta()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->getDelta()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->getLength()D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->getLength()D

    move-result-wide v0

    sub-double/2addr p2, v7

    sub-double/2addr v0, v7

    div-double/2addr p2, v0

    sub-double/2addr v5, v3

    mul-double/2addr p2, v5

    add-double p1, v3, p2

    :goto_1
    return-wide p1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous was null, either the index or distance parameters were invalid. index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", distance="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "entries was null, the index parameter was invalid. index="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must generate the look up table before calling this method! see generate()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLength(I)D
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/spline/ArcLengthTable;->_lookupTable:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;

    invoke-virtual {p1}, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->getLength()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entries was null, the index parameter was invalid. index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must generate the look up table before calling this method! see generate()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
