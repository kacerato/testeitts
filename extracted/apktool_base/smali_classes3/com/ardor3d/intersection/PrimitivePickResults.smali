.class public Lcom/ardor3d/intersection/PrimitivePickResults;
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
    .locals 1

    invoke-interface {p2, p1}, Lcom/ardor3d/intersection/Pickable;->intersectsWorldBound(Lcom/ardor3d/math/Ray3;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ardor3d/intersection/PrimitivePickData;

    invoke-direct {v0, p1, p2}, Lcom/ardor3d/intersection/PrimitivePickData;-><init>(Lcom/ardor3d/math/Ray3;Lcom/ardor3d/intersection/Pickable;)V

    invoke-virtual {v0}, Lcom/ardor3d/intersection/PickData;->getIntersectionRecord()Lcom/ardor3d/intersection/IntersectionRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/ardor3d/intersection/PickData;->getIntersectionRecord()Lcom/ardor3d/intersection/IntersectionRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/intersection/IntersectionRecord;->getNumberOfIntersections()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ardor3d/intersection/PickResults;->addPickData(Lcom/ardor3d/intersection/PickData;)V

    :cond_0
    return-void
.end method
