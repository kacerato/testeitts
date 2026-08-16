.class public Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
.super Lcom/itsmagic/engine/Engines/Engine/Vector/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:LJAVARuntime/AABB;

.field public cx:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cy:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cz:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public radius:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public x:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public xn:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public y:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public yn:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public z:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public zn:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB$b;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    .line 3
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "xn",
            "yn",
            "zn",
            "cx",
            "cy",
            "cz"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/c;-><init>()V

    .line 6
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    .line 7
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    .line 8
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    .line 9
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    .line 10
    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    .line 11
    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    .line 12
    iput p7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    .line 13
    iput p8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    .line 14
    iput p9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/c;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    .line 17
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    .line 18
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    .line 19
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    .line 20
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    .line 21
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    .line 22
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    add-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    .line 23
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    add-float/2addr v3, v2

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    .line 24
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    add-float/2addr v4, p1

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    sub-float/2addr p2, v0

    sub-float/2addr v2, v3

    sub-float/2addr p1, v4

    mul-float/2addr p2, p2

    mul-float/2addr v2, v2

    add-float/2addr p2, v2

    mul-float/2addr p1, p1

    add-float/2addr p2, p1

    float-to-double p1, p2

    .line 25
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->radius:F

    return-void
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p1
.end method

.method public B()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    return v0
.end method

.method public C()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    return v0
.end method

.method public D()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    return v0
.end method

.method public E()Z
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->w()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->B()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->C()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->D()F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final G(FFFF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "max1",
            "min1",
            "max2",
            "min2"
        }
    .end annotation

    cmpl-float p1, p1, p4

    if-ltz p1, :cond_0

    cmpl-float p1, p3, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public H()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public I()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public J(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->w()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->B()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->w()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->B()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->G(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->C()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->C()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->G(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->D()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->D()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->G(FFFF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    return-void
.end method

.method public L(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->M(F)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->N(F)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->O(F)V

    return-void
.end method

.method public M(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cx"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    return-void
.end method

.method public N(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cy"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    return-void
.end method

.method public O(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cz"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    return-void
.end method

.method public P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->T(F)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->V(F)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->X(F)V

    return-void
.end method

.method public Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->U(F)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->W(F)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->Y(F)V

    return-void
.end method

.method public S(LJAVARuntime/AABB;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->b:LJAVARuntime/AABB;

    return-void
.end method

.method public T(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    return-void
.end method

.method public U(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xn"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    return-void
.end method

.method public V(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    return-void
.end method

.method public W(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "yn"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    return-void
.end method

.method public X(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    return-void
.end method

.method public Y(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zn"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    return-void
.end method

.method public Z()LJAVARuntime/AABB;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->b:LJAVARuntime/AABB;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/AABB;

    invoke-direct {v0, p0}, LJAVARuntime/AABB;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->b:LJAVARuntime/AABB;

    :cond_0
    return-object v0
.end method

.method public final a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "min",
            "max",
            "matrix",
            "newMin",
            "newMax"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    invoke-direct {v2, v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    invoke-direct {v2, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    invoke-direct {v2, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    invoke-direct {v2, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    invoke-direct {v2, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    invoke-direct {v2, p1, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const/4 p1, 0x6

    aput-object v2, v1, p1

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-direct {p1, v2, v5, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const/4 p2, 0x7

    aput-object p1, v1, p2

    move p1, v3

    :goto_0
    if-ge p1, v0, :cond_0

    aget-object p2, v1, p1

    invoke-virtual {p0, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->multiplyMatrixVector([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    aput-object p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    aget-object p1, v1, v3

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object p1, v1, v3

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    aget-object p2, v1, v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    aget-object p2, v1, v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    aget-object p2, v1, v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    aget-object p2, v1, v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    aget-object p2, v1, v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    aget-object p2, v1, v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    return-object v0
.end method

.method public d([F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->u()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    move-object v2, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v0, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->multiplyMatrixVector([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->extractMaxScale([F)F

    move-result p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->setRadius(F)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "matrix can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e([FLcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "output"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->u()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p2, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->multiplyMatrixVector([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->extractMaxScale([F)F

    move-result p1

    mul-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->setRadius(F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "matrix can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extractMaxScale([F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    const/4 v0, 0x0

    aget v0, p1, v0

    mul-float/2addr v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x4

    aget v1, p1, v1

    mul-float/2addr v1, v1

    const/4 v2, 0x5

    aget v2, p1, v2

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v2, v2

    const/16 v3, 0x9

    aget v3, p1, v3

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget p1, p1, v3

    mul-float/2addr p1, p1

    add-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    .locals 11

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->radius:F

    return v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->j()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->k()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->l()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1
.end method

.method public j()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->w()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->B()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public k()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->C()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public l()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->D()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public final multiplyMatrixVector([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "v"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    aget v3, p1, v3

    mul-float/2addr v3, v0

    const/4 v4, 0x4

    aget v4, p1, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0xc

    aget v4, p1, v4

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    const/16 v5, 0xd

    aget v5, p1, v5

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v5, v0

    const/4 v0, 0x6

    aget v0, p1, v0

    mul-float/2addr v0, v1

    add-float/2addr v5, v0

    const/16 v0, 0xa

    aget v0, p1, v0

    mul-float/2addr v0, p2

    add-float/2addr v5, v0

    const/16 p2, 0xe

    aget p1, p1, p2

    add-float/2addr v5, p1

    invoke-direct {v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v2
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p1
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    return v0
.end method

.method public p()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    return v0
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    return v0
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/Vector/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dimensions"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->o()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->o()[F

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->o()[F

    move-result-object v0

    const/4 v3, 0x2

    aget v0, v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->n()[F

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->n()[F

    move-result-object v0

    aget v0, v0, v2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->n()[F

    move-result-object v0

    aget v0, v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j:[F

    aget v1, v0, v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    aget v1, v0, v2

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    aget v0, v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->o:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->radius:F

    return-void
.end method

.method public s(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dimensions"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->radius:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->radius:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decimals"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    .line 3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    .line 4
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    .line 5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p1
.end method

.method public w()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    return v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    return v0
.end method

.method public y()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    return v0
.end method

.method public z()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method
