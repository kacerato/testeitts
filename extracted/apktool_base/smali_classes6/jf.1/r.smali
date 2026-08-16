.class public Ljf/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljf/k;
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljf/k;",
        ">;",
        "Ljf/k;",
        "Lcom/jme3/export/Savable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/logging/Logger;

.field public static final e:Lcom/jme3/math/Vector3f;

.field public static final f:Ljf/r;

.field public static final g:Ljf/r;

.field public static final h:Ljf/r;

.field public static final i:Ljf/r;

.field public static final j:Ljf/r;

.field public static final k:Ljf/r;

.field public static final l:Ljf/r;

.field public static final m:Ljf/r;

.field public static final n:Ljf/r;


# instance fields
.field public b:F

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Ljf/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/r;->d:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Ljf/r;->e:Lcom/jme3/math/Vector3f;

    new-instance v0, Ljf/r;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v0, v3, v1}, Ljf/r;-><init>(FF)V

    sput-object v0, Ljf/r;->f:Ljf/r;

    new-instance v4, Ljf/r;

    invoke-direct {v4, v1, v2}, Ljf/r;-><init>(FF)V

    sput-object v4, Ljf/r;->g:Ljf/r;

    new-instance v5, Ljf/r;

    invoke-direct {v5, v2, v1}, Ljf/r;-><init>(FF)V

    sput-object v5, Ljf/r;->h:Ljf/r;

    new-instance v2, Ljf/r;

    invoke-direct {v2, v1, v3}, Ljf/r;-><init>(FF)V

    sput-object v2, Ljf/r;->i:Ljf/r;

    sput-object v5, Ljf/r;->j:Ljf/r;

    sput-object v4, Ljf/r;->k:Ljf/r;

    sput-object v0, Ljf/r;->l:Ljf/r;

    sput-object v2, Ljf/r;->m:Ljf/r;

    new-instance v0, Ljf/r;

    invoke-direct {v0, v1, v1}, Ljf/r;-><init>(FF)V

    sput-object v0, Ljf/r;->n:Ljf/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljf/r;->b:F

    .line 3
    iput v0, p0, Ljf/r;->c:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    iput v0, p0, Ljf/r;->b:F

    .line 6
    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    iput p1, p0, Ljf/r;->c:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Ljf/r;->b:F

    .line 12
    iput p2, p0, Ljf/r;->c:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p0, Ljf/r;->b:F

    .line 9
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Ljf/r;->c:F

    return-void
.end method

.method public static I(Ljf/k;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-interface {p0}, Ljf/k;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const-string p1, "VectorXZ argument"

    :cond_0
    const-string p0, "%s must not be zero."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public A(Ljf/k;)D
    .locals 8

    iget v0, p0, Ljf/r;->b:F

    float-to-double v0, v0

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result v2

    float-to-double v2, v2

    iget v4, p0, Ljf/r;->c:F

    float-to-double v4, v4

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result p1

    float-to-double v6, p1

    mul-double/2addr v0, v2

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public B()F
    .locals 4

    iget v0, p0, Ljf/r;->c:F

    float-to-double v0, v0

    iget v2, p0, Ljf/r;->b:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public C(F)Ljf/k;
    .locals 2

    const-string v0, "scalar"

    invoke-static {p1, v0}, Lif/E;->v(FLjava/lang/String;)Z

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Ljf/r;->b:F

    div-float/2addr v0, p1

    iget v1, p0, Ljf/r;->c:F

    div-float/2addr v1, p1

    new-instance p1, Ljf/r;

    invoke-direct {p1, v0, v1}, Ljf/r;-><init>(FF)V

    return-object p1
.end method

.method public D(F)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljf/r;->H(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljf/k;)I
    .locals 2

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result v0

    iget v1, p0, Ljf/r;->b:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result p1

    iget v0, p0, Ljf/r;->c:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    :cond_0
    return v0
.end method

.method public F()Ljf/k;
    .locals 4

    invoke-virtual {p0}, Ljf/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljf/r;->n:Ljf/r;

    return-object v0

    :cond_0
    iget v0, p0, Ljf/r;->b:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget v1, p0, Ljf/r;->c:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Ljf/r;->b:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sign(F)F

    move-result v0

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    iget v0, p0, Ljf/r;->c:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sign(F)F

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Ljf/r;->s(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p0

    goto :goto_1

    :cond_2
    new-instance v2, Ljf/r;

    invoke-direct {v2, v1, v0}, Ljf/r;-><init>(FF)V

    :goto_1
    return-object v2
.end method

.method public G(Ljf/k;F)Z
    .locals 3

    const-string v0, "other vector"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "absolute tolerance"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0, p1}, Ljf/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result v1

    iget v2, p0, Ljf/r;->b:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_0

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result p1

    iget v1, p0, Ljf/r;->c:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public H(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    iget v0, p0, Ljf/r;->b:F

    iget v1, p0, Ljf/r;->c:F

    invoke-direct {p2, v0, p1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    goto :goto_0

    :cond_0
    iget v0, p0, Ljf/r;->b:F

    iget v1, p0, Ljf/r;->c:F

    invoke-virtual {p2, v0, p1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Ljf/r;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Ljf/r;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Ljf/k;)Ljf/k;
    .locals 2

    iget v0, p0, Ljf/r;->b:F

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Ljf/r;->c:F

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljf/r;->s(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljf/r;

    invoke-direct {p1, v0, v1}, Ljf/r;-><init>(FF)V

    :goto_0
    return-object p1
.end method

.method public c()Ljf/k;
    .locals 3

    invoke-virtual {p0}, Ljf/r;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Ljf/r;->b:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget v1, p0, Ljf/r;->c:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    new-instance v2, Ljf/r;

    invoke-direct {v2, v0, v1}, Ljf/r;-><init>(FF)V

    return-object v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Ljf/k;

    invoke-virtual {p0, p1}, Ljf/r;->E(Ljf/k;)I

    move-result p1

    return p1
.end method

.method public d(Ljf/k;)F
    .locals 5

    const-string v0, "this direction"

    invoke-static {p0, v0}, Ljf/r;->I(Ljf/k;Ljava/lang/String;)V

    const-string v0, "goal direction"

    invoke-static {p1, v0}, Ljf/r;->I(Ljf/k;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljf/r;->u(Ljf/k;)F

    move-result v0

    invoke-virtual {p0, p1}, Ljf/r;->A(Ljf/k;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljf/r;->lengthSquared()D

    move-result-wide v1

    invoke-interface {p1}, Ljf/k;->lengthSquared()D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    div-float/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public e(F)Ljf/k;
    .locals 4

    const v0, 0x40490fdb    # (float)Math.PI

    const-string v1, "angle"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->h(FLjava/lang/String;FF)Z

    iget v0, p0, Ljf/r;->b:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    const v0, 0x3fc90fdb

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Ljf/r;->c:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljf/r;->length()F

    move-result v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v0

    iget v3, p0, Ljf/r;->b:F

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_2

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    mul-float/2addr v0, p1

    iget p1, p0, Ljf/r;->c:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    neg-float v0, v0

    :cond_3
    new-instance p1, Ljf/r;

    invoke-direct {p1, v1, v0}, Ljf/r;-><init>(FF)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    check-cast p1, Ljf/k;

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result v0

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljf/r;->s(FF)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Lcom/jme3/math/Quaternion;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljf/r;->k(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Ljf/r;->b:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Ljf/r;->c:F

    return v0
.end method

.method public h(Ljf/k;)Ljf/k;
    .locals 2

    iget v0, p0, Ljf/r;->b:F

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Ljf/r;->c:F

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljf/r;->s(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljf/r;

    invoke-direct {p1, v0, v1}, Ljf/r;-><init>(FF)V

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljf/r;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x47

    iget v1, p0, Ljf/r;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(Ljf/k;F)Ljf/k;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Ljf/r;->b:F

    mul-float/2addr v1, v0

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Ljf/r;->c:F

    mul-float/2addr v2, v0

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result p1

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    invoke-virtual {p0, v1, v2}, Ljf/r;->s(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljf/r;

    invoke-direct {p1, v1, v2}, Ljf/r;-><init>(FF)V

    :goto_0
    return-object p1
.end method

.method public j(FF)I
    .locals 1

    iget v0, p0, Ljf/r;->b:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Ljf/r;->c:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public k(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p0, Ljf/r;->c:F

    neg-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Ljf/r;->b:F

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sget-object v1, Ljf/r;->e:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    return-object p1
.end method

.method public length()F
    .locals 4

    iget v0, p0, Ljf/r;->b:F

    iget v1, p0, Ljf/r;->c:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Ljf/f;->r([F)F

    move-result v0

    return v0
.end method

.method public lengthSquared()D
    .locals 4

    iget v0, p0, Ljf/r;->b:F

    iget v1, p0, Ljf/r;->c:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Ljf/f;->P([F)D

    move-result-wide v0

    return-wide v0
.end method

.method public m(FF)Ljf/k;
    .locals 4

    const-string v0, "maximum X"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const-string v0, "maximum Z"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0}, Ljf/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljf/r;->n:Ljf/r;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljf/r;->length()F

    move-result v0

    iget v1, p0, Ljf/r;->c:F

    div-float/2addr v1, v0

    iget v2, p0, Ljf/r;->b:F

    div-float/2addr v2, v0

    mul-float/2addr v1, p1

    mul-float/2addr v2, p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Ljf/f;->P([F)D

    move-result-wide v0

    mul-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr p1, p1

    div-double/2addr p1, v0

    invoke-virtual {p0}, Ljf/r;->lengthSquared()D

    move-result-wide v0

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_1

    return-object p0

    :cond_1
    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Ljf/r;->b:F

    mul-float/2addr p2, p1

    iget v0, p0, Ljf/r;->c:F

    mul-float/2addr v0, p1

    new-instance p1, Ljf/r;

    invoke-direct {p1, p2, v0}, Ljf/r;-><init>(FF)V

    return-object p1
.end method

.method public negate()Ljf/k;
    .locals 3

    invoke-virtual {p0}, Ljf/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljf/r;->n:Ljf/r;

    return-object v0

    :cond_0
    new-instance v0, Ljf/r;

    iget v1, p0, Ljf/r;->b:F

    neg-float v1, v1

    iget v2, p0, Ljf/r;->c:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Ljf/r;-><init>(FF)V

    return-object v0
.end method

.method public normalize()Ljf/k;
    .locals 4

    invoke-virtual {p0}, Ljf/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljf/r;->d:Ljava/util/logging/Logger;

    const-string v1, "Normalizing a zero vector."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Ljf/r;->n:Ljf/r;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljf/r;->lengthSquared()D

    move-result-wide v0

    double-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Ljf/r;->b:F

    div-float/2addr v1, v0

    iget v2, p0, Ljf/r;->c:F

    div-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Ljf/r;->s(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljf/r;

    invoke-direct {v0, v1, v2}, Ljf/r;-><init>(FF)V

    :goto_0
    return-object v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Ljf/r;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Ljf/r;->c:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(Ljf/k;)D
    .locals 14

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result p1

    float-to-double v2, p1

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    iget p1, p0, Ljf/r;->b:F

    float-to-double v6, p1

    iget p1, p0, Ljf/r;->c:F

    float-to-double v8, p1

    mul-double v10, v6, v6

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    mul-double/2addr v10, v4

    const-wide/16 v4, 0x0

    cmpl-double p1, v10, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_0

    return-wide v4

    :cond_0
    mul-double/2addr v6, v0

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v6, v0

    invoke-static {v6, v7, v4, v5}, Ljf/f;->e(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public r(F)Ljf/k;
    .locals 4

    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0}, Ljf/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljf/r;->n:Ljf/r;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljf/r;->lengthSquared()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v2, v2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_1

    return-object p0

    :cond_1
    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Ljf/r;->b:F

    mul-float/2addr v0, p1

    iget v1, p0, Ljf/r;->c:F

    mul-float/2addr v1, p1

    new-instance p1, Ljf/r;

    invoke-direct {p1, v0, v1}, Ljf/r;-><init>(FF)V

    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "x"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Ljf/r;->b:F

    const-string v0, "z"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Ljf/r;->c:F

    return-void
.end method

.method public s(FF)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljf/r;->j(FF)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public t(Ljf/k;)Ljf/k;
    .locals 5

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result v0

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result p1

    iget v1, p0, Ljf/r;->b:F

    mul-float v2, v0, v1

    iget v3, p0, Ljf/r;->c:F

    mul-float v4, p1, v3

    sub-float/2addr v2, v4

    mul-float/2addr v0, v3

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v2, v0}, Ljf/r;->s(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljf/r;

    invoke-direct {p1, v2, v0}, Ljf/r;-><init>(FF)V

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Ljf/r;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Ljf/r;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(x=%.3f, z=%.3f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljf/k;)F
    .locals 2

    iget v0, p0, Ljf/r;->b:F

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Ljf/r;->c:F

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result p1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public v()Ljf/k;
    .locals 3

    iget v0, p0, Ljf/r;->c:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljf/r;

    iget v2, p0, Ljf/r;->b:F

    neg-float v0, v0

    invoke-direct {v1, v2, v0}, Ljf/r;-><init>(FF)V

    return-object v1
.end method

.method public w(Ljf/k;)Ljf/k;
    .locals 2

    iget v0, p0, Ljf/r;->b:F

    invoke-interface {p1}, Ljf/k;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Ljf/r;->c:F

    invoke-interface {p1}, Ljf/k;->getZ()F

    move-result p1

    add-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljf/r;->s(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljf/r;

    invoke-direct {p1, v0, v1}, Ljf/r;-><init>(FF)V

    :goto_0
    return-object p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Ljf/r;->b:F

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Ljf/r;->c:F

    const-string v1, "z"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method

.method public x(F)Ljf/k;
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    iget v1, p0, Ljf/r;->b:F

    mul-float v2, v0, v1

    iget v3, p0, Ljf/r;->c:F

    mul-float v4, p1, v3

    sub-float/2addr v2, v4

    mul-float/2addr v0, v3

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v2, v0}, Ljf/r;->s(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance p1, Ljf/r;

    invoke-direct {p1, v2, v0}, Ljf/r;-><init>(FF)V

    :goto_0
    return-object p1
.end method

.method public y()Lcom/jme3/math/Vector3f;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljf/r;->H(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public z(F)Ljf/k;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Ljf/r;->b:F

    mul-float/2addr v0, p1

    iget v1, p0, Ljf/r;->c:F

    mul-float/2addr v1, p1

    new-instance p1, Ljf/r;

    invoke-direct {p1, v0, v1}, Ljf/r;-><init>(FF)V

    return-object p1
.end method
