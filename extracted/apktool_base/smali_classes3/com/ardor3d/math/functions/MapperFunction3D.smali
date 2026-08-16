.class public Lcom/ardor3d/math/functions/MapperFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/math/functions/MapperFunction3D$Entry;
    }
.end annotation


# instance fields
.field private _domainEnd:D

.field private _domainStart:D

.field private final _entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/math/functions/MapperFunction3D$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private _mapFunction:Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/functions/Function3D;DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_entries:Ljava/util/List;

    iput-object p1, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_mapFunction:Lcom/ardor3d/math/functions/Function3D;

    iput-wide p2, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_domainStart:D

    iput-wide p4, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_domainEnd:D

    return-void
.end method


# virtual methods
.method public addFunction(Lcom/ardor3d/math/functions/Function3D;DDD)V
    .locals 2

    new-instance v0, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;-><init>(Lcom/ardor3d/math/functions/MapperFunction3D$1;)V

    iput-object p1, v0, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->source:Lcom/ardor3d/math/functions/Function3D;

    iput-wide p2, v0, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->offsetStart:D

    iput-wide p4, v0, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->easeIn:D

    iput-wide p6, v0, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->easeOut:D

    iget-object p1, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_entries:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearFunctions()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public eval(DDD)D
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/math/functions/MapperFunction3D;->_mapFunction:Lcom/ardor3d/math/functions/Function3D;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v2

    iget-wide v4, v0, Lcom/ardor3d/math/functions/MapperFunction3D;->_domainStart:D

    iget-wide v6, v0, Lcom/ardor3d/math/functions/MapperFunction3D;->_domainEnd:D

    invoke-static/range {v2 .. v7}, Lcom/ardor3d/math/MathUtils;->clamp(DDD)D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/math/functions/MapperFunction3D;->_entries:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;

    iget-wide v4, v0, Lcom/ardor3d/math/functions/MapperFunction3D;->_domainStart:D

    iget-wide v6, v3, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->offsetStart:D

    add-double/2addr v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v8, v6

    :goto_0
    iget-object v9, v0, Lcom/ardor3d/math/functions/MapperFunction3D;->_entries:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt v7, v9, :cond_5

    iget-object v9, v0, Lcom/ardor3d/math/functions/MapperFunction3D;->_entries:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    iget-object v9, v0, Lcom/ardor3d/math/functions/MapperFunction3D;->_entries:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;

    goto :goto_1

    :cond_0
    move-object v9, v6

    :goto_1
    if-eqz v9, :cond_1

    iget-wide v10, v9, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->offsetStart:D

    add-double/2addr v10, v4

    goto :goto_2

    :cond_1
    iget-wide v10, v0, Lcom/ardor3d/math/functions/MapperFunction3D;->_domainEnd:D

    :goto_2
    cmpg-double v12, v1, v10

    if-gtz v12, :cond_4

    if-eqz v8, :cond_2

    iget-wide v6, v3, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->easeIn:D

    add-double v12, v4, v6

    cmpg-double v12, v1, v12

    if-gez v12, :cond_2

    sub-double/2addr v1, v4

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Lcom/ardor3d/math/MathUtils;->scurve5(D)D

    move-result-wide v1

    iget-object v9, v8, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->source:Lcom/ardor3d/math/functions/Function3D;

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    invoke-interface/range {v9 .. v15}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v4

    iget-object v6, v3, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->source:Lcom/ardor3d/math/functions/Function3D;

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-interface/range {v6 .. v12}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v6

    move-wide/from16 p1, v1

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    invoke-static/range {p1 .. p6}, Lcom/ardor3d/math/MathUtils;->lerp(DDD)D

    move-result-wide v1

    return-wide v1

    :cond_2
    if-eqz v9, :cond_3

    iget-wide v4, v3, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->easeOut:D

    sub-double v6, v10, v4

    cmpl-double v6, v1, v6

    if-lez v6, :cond_3

    sub-double/2addr v1, v10

    div-double/2addr v1, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v4

    invoke-static {v1, v2}, Lcom/ardor3d/math/MathUtils;->scurve5(D)D

    move-result-wide v1

    iget-object v10, v3, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->source:Lcom/ardor3d/math/functions/Function3D;

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move-wide/from16 v15, p5

    invoke-interface/range {v10 .. v16}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v3

    iget-object v10, v9, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->source:Lcom/ardor3d/math/functions/Function3D;

    invoke-interface/range {v10 .. v16}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v5

    move-wide/from16 p1, v1

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    invoke-static/range {p1 .. p6}, Lcom/ardor3d/math/MathUtils;->lerp(DDD)D

    move-result-wide v1

    return-wide v1

    :cond_3
    iget-object v3, v3, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->source:Lcom/ardor3d/math/functions/Function3D;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v1

    return-wide v1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    move-object v8, v3

    move-object v3, v9

    move-wide v4, v10

    goto/16 :goto_0

    :cond_5
    iget-object v12, v8, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;->source:Lcom/ardor3d/math/functions/Function3D;

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    move-wide/from16 v17, p5

    invoke-interface/range {v12 .. v18}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public getDomainEnd()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_domainEnd:D

    return-wide v0
.end method

.method public getDomainStart()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_domainStart:D

    return-wide v0
.end method

.method public getMapFunction()Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_mapFunction:Lcom/ardor3d/math/functions/Function3D;

    return-object v0
.end method

.method public removeFunction(I)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setDomainEnd(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_domainEnd:D

    return-void
.end method

.method public setDomainStart(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_domainStart:D

    return-void
.end method

.method public setMapFunction(Lcom/ardor3d/math/functions/Function3D;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/math/functions/MapperFunction3D;->_mapFunction:Lcom/ardor3d/math/functions/Function3D;

    return-void
.end method
