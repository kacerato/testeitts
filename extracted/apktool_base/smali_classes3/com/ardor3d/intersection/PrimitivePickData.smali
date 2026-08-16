.class public Lcom/ardor3d/intersection/PrimitivePickData;
.super Lcom/ardor3d/intersection/PickData;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/Ray3;Lcom/ardor3d/intersection/Pickable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ardor3d/intersection/PickData;-><init>(Lcom/ardor3d/math/Ray3;Lcom/ardor3d/intersection/Pickable;Z)V

    invoke-interface {p2, p1}, Lcom/ardor3d/intersection/Pickable;->intersectsPrimitivesWhere(Lcom/ardor3d/math/Ray3;)Lcom/ardor3d/intersection/IntersectionRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/intersection/PickData;->_intersectionRecord:Lcom/ardor3d/intersection/IntersectionRecord;

    return-void
.end method
