.class public Lcom/ardor3d/intersection/PickData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _intersectionRecord:Lcom/ardor3d/intersection/IntersectionRecord;

.field private final _ray:Lcom/ardor3d/math/Ray3;

.field private final _target:Lcom/ardor3d/intersection/Pickable;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/Ray3;Lcom/ardor3d/intersection/Pickable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/intersection/PickData;->_ray:Lcom/ardor3d/math/Ray3;

    iput-object p2, p0, Lcom/ardor3d/intersection/PickData;->_target:Lcom/ardor3d/intersection/Pickable;

    if-eqz p3, :cond_0

    invoke-interface {p2, p1}, Lcom/ardor3d/intersection/Pickable;->intersectsWorldBoundsWhere(Lcom/ardor3d/math/Ray3;)Lcom/ardor3d/intersection/IntersectionRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/intersection/PickData;->_intersectionRecord:Lcom/ardor3d/intersection/IntersectionRecord;

    :cond_0
    return-void
.end method


# virtual methods
.method public getIntersectionRecord()Lcom/ardor3d/intersection/IntersectionRecord;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/PickData;->_intersectionRecord:Lcom/ardor3d/intersection/IntersectionRecord;

    return-object v0
.end method

.method public getRay()Lcom/ardor3d/math/Ray3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/PickData;->_ray:Lcom/ardor3d/math/Ray3;

    return-object v0
.end method

.method public getTarget()Lcom/ardor3d/intersection/Pickable;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/PickData;->_target:Lcom/ardor3d/intersection/Pickable;

    return-object v0
.end method
