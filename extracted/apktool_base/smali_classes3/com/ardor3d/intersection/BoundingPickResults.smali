.class public Lcom/ardor3d/intersection/BoundingPickResults;
.super Lcom/ardor3d/intersection/PickResults;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ardor3d/intersection/PickResults;-><init>()V

    return-void
.end method


# virtual methods
.method public addPick(Lcom/ardor3d/math/Ray3;Lcom/ardor3d/intersection/Pickable;)V
    .locals 2

    invoke-interface {p2, p1}, Lcom/ardor3d/intersection/Pickable;->intersectsWorldBound(Lcom/ardor3d/math/Ray3;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ardor3d/intersection/PickData;

    invoke-virtual {p0}, Lcom/ardor3d/intersection/PickResults;->willCheckDistance()Z

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/ardor3d/intersection/PickData;-><init>(Lcom/ardor3d/math/Ray3;Lcom/ardor3d/intersection/Pickable;Z)V

    invoke-virtual {p0, v0}, Lcom/ardor3d/intersection/PickResults;->addPickData(Lcom/ardor3d/intersection/PickData;)V

    :cond_0
    return-void
.end method
