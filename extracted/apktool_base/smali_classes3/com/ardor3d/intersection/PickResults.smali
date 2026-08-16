.class public abstract Lcom/ardor3d/intersection/PickResults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/intersection/PickResults$DistanceComparator;
    }
.end annotation


# instance fields
.field private _checkDistance:Z

.field private _distanceCompare:Lcom/ardor3d/intersection/PickResults$DistanceComparator;

.field private final _nodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PickData;",
            ">;"
        }
    .end annotation
.end field

.field private modified:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/intersection/PickResults;->modified:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/intersection/PickResults;->_nodeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract addPick(Lcom/ardor3d/math/Ray3;Lcom/ardor3d/intersection/Pickable;)V
.end method

.method public addPickData(Lcom/ardor3d/intersection/PickData;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/PickResults;->_nodeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/intersection/PickResults;->modified:Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/PickResults;->_nodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/PickResults;->_nodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPickData(I)Lcom/ardor3d/intersection/PickData;
    .locals 2

    iget-boolean v0, p0, Lcom/ardor3d/intersection/PickResults;->modified:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ardor3d/intersection/PickResults;->_checkDistance:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/intersection/PickResults;->_nodeList:Ljava/util/List;

    iget-object v1, p0, Lcom/ardor3d/intersection/PickResults;->_distanceCompare:Lcom/ardor3d/intersection/PickResults$DistanceComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/intersection/PickResults;->modified:Z

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/intersection/PickResults;->_nodeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/intersection/PickData;

    return-object p1
.end method

.method public processPick()V
    .locals 0

    return-void
.end method

.method public setCheckDistance(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/ardor3d/intersection/PickResults;->_checkDistance:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/ardor3d/intersection/PickResults$DistanceComparator;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/ardor3d/intersection/PickResults$DistanceComparator;-><init>(Lcom/ardor3d/intersection/PickResults$1;)V

    iput-object p1, p0, Lcom/ardor3d/intersection/PickResults;->_distanceCompare:Lcom/ardor3d/intersection/PickResults$DistanceComparator;

    :cond_0
    return-void
.end method

.method public willCheckDistance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/intersection/PickResults;->_checkDistance:Z

    return v0
.end method
