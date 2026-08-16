.class public final Lcom/jme3/collision/bih/BIHTriangle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final center:Lcom/jme3/math/Vector3f;

.field private final pointA:Lcom/jme3/math/Vector3f;

.field private final pointB:Lcom/jme3/math/Vector3f;

.field private final pointC:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointA:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointB:Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v2, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointC:Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v3, p0, Lcom/jme3/collision/bih/BIHTriangle;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    const p2, 0x3eaaaaab

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public get1()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointA:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public get2()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointB:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public get3()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointC:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTriangle;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getExtreme(IZ)F
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointA:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointB:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget-object v1, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointC:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointA:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointB:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    iget-object v1, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointC:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointA:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointB:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointC:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    :goto_0
    if-eqz p2, :cond_6

    cmpg-float p2, p1, v0

    if-gez p2, :cond_4

    cmpg-float p2, p1, v1

    if-gez p2, :cond_3

    return p1

    :cond_3
    return v1

    :cond_4
    cmpg-float p1, v0, v1

    if-gez p1, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    cmpl-float p2, p1, v0

    if-lez p2, :cond_8

    cmpl-float p2, p1, v1

    if-lez p2, :cond_7

    return p1

    :cond_7
    return v1

    :cond_8
    cmpl-float p1, v0, v1

    if-lez p1, :cond_9

    return v0

    :cond_9
    return v1
.end method

.method public getNormal()Lcom/jme3/math/Vector3f;
    .locals 7

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointC:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTriangle;->pointA:Lcom/jme3/math/Vector3f;

    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v3, v5

    iget v5, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v4, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v5, v6

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v4

    invoke-virtual {v1, v3, v5, v2}, Lcom/jme3/math/Vector3f;->crossLocal(FFF)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    return-object v0
.end method
