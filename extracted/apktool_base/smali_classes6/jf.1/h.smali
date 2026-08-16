.class public final Ljf/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x3

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x2

.field public static final g:Ljava/util/logging/Logger;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Lcom/jme3/math/Vector3f;

.field public static final j:[Lcom/jme3/math/Vector3f;

.field public static final synthetic k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Ljf/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/h;->g:Ljava/util/logging/Logger;

    const-string v0, "\\(\\s*([^,]+),\\s+([^,]+),\\s+(\\S+)\\s*\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljf/h;->h:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Ljf/h;->i:Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v1, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4, v2, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5, v2, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v6, Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {v6, v0, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7, v2, v0, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v8, Lcom/jme3/math/Vector3f;

    invoke-direct {v8, v2, v2, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    filled-new-array/range {v3 .. v8}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    sput-object v0, Ljf/h;->j:[Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static B(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 3

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0, v1, v2}, Ljf/f;->u(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v0, v1, v2}, Ljf/f;->u(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0, p1, p2}, Ljf/f;->u(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static C(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static D(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p0, v1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static E(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static F(Lcom/jme3/math/Vector3f;)D
    .locals 4

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    const/4 v0, 0x2

    aput p0, v2, v0

    invoke-static {v2}, Ljf/f;->P([F)D

    move-result-wide v0

    return-wide v0
.end method

.method public static G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {p0, v0, v1}, Ljf/f;->y(FFF)F

    move-result v0

    iput v0, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {p0, v0, v1}, Ljf/f;->y(FFF)F

    move-result v0

    iput v0, p3, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0, p1, p2}, Ljf/f;->y(FFF)F

    move-result p0

    iput p0, p3, Lcom/jme3/math/Vector3f;->z:F

    return-object p3
.end method

.method public static H(Lcom/jme3/math/Line;Lcom/jme3/math/Line;)Lcom/jme3/math/Vector3f;
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/math/Line;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/math/Line;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/math/Line;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p1}, Lcom/jme3/math/Line;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    invoke-virtual {p0, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    sub-float/2addr p1, v1

    div-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static I(Lcom/jme3/math/Line;Lcom/jme3/math/Vector3f;FZ)Lcom/jme3/math/Vector3f;
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/math/Line;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/math/Line;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v3

    mul-float v4, v2, v2

    sub-float/2addr v4, v3

    mul-float v3, p2, p2

    add-float/2addr v4, v3

    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_1

    neg-float p1, v2

    if-eqz p3, :cond_0

    invoke-static {v4}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p2

    add-float/2addr p1, p2

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p2

    sub-float/2addr p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->length()F

    move-result p3

    div-float/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public static J(Lcom/jme3/math/Vector3f;Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-static {p1}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, p2}, Lcom/jme3/scene/Spatial;->worldToLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    invoke-static {p2}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-float p0, v0

    invoke-virtual {p2, p0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    return-object p2
.end method

.method public static K(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Lcom/jme3/math/Vector3f;->z:F

    return-object p2
.end method

.method public static L(Ljava/util/Collection;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Lcom/jme3/math/Vector3f;",
            ")",
            "Lcom/jme3/math/Vector3f;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public static M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr p0, p1

    div-float/2addr p0, v1

    if-nez p2, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, v0, v2, p0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object p1

    :cond_0
    invoke-virtual {p2, v0, v2, p0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static N(Ljava/util/List;)[Lcom/jme3/math/Vector3f;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;)[",
            "Lcom/jme3/math/Vector3f;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    move v4, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/math/Vector3f;

    invoke-static {v5, v7}, Ljf/h;->o(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v8

    cmpl-double v10, v8, v1

    if-lez v10, :cond_2

    if-nez v3, :cond_1

    const/4 v1, 0x2

    new-array v3, v1, [Lcom/jme3/math/Vector3f;

    :cond_1
    aput-object v5, v3, v0

    const/4 v1, 0x1

    aput-object v7, v3, v1

    move-wide v1, v8

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public static O(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static P(Lcom/jme3/math/Vector3f;)V
    .locals 4

    invoke-static {p0}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    const-wide v2, 0x3fefffff94a03595L    # 0.9999998

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x3ff0000035afe535L    # 1.0000002

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    :cond_1
    return-void
.end method

.method public static Q(Ljava/lang/String;)Lcom/jme3/math/Vector3f;
    .locals 3

    sget-object v0, Ljf/h;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v0, v1, p0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static R(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    invoke-static {p0, p1}, Ljf/h;->r(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    invoke-static {p1}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float p0, v0

    invoke-virtual {p1, p0, p2}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 7

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0, p1}, Ljf/h;->r(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v3

    invoke-static {p1}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v5

    neg-double v3, v3

    div-double/2addr v3, v5

    double-to-float p0, v3

    invoke-virtual {p1, p0, p2}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public static T(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F
    .locals 2

    invoke-static {p0, p1}, Ljf/h;->r(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    invoke-static {p1}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static U(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0}, Ljf/f;->N(F)F

    move-result v0

    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v0}, Ljf/f;->N(F)F

    move-result v0

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0}, Ljf/f;->N(F)F

    move-result p0

    iput p0, p1, Lcom/jme3/math/Vector3f;->z:F

    return-object p1
.end method

.method public static V(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const-string v0, "time interval"

    invoke-static {p0, v0}, Lif/E;->E(FLjava/lang/String;)Z

    invoke-virtual {p2, p1, p3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public static W(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;
    .locals 5

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float v4, p1, v3

    sub-float/2addr v2, v4

    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v3

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, v2, p0, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object p1
.end method

.method public static a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    :cond_1
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iput p1, p0, Lcom/jme3/math/Vector3f;->z:F

    :cond_2
    return-void
.end method

.method public static b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    :cond_1
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iput p1, p0, Lcom/jme3/math/Vector3f;->z:F

    :cond_2
    return-void
.end method

.method public static c(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)V
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method public static d(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Ljava/lang/Iterable;F)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/math/Vector3f;",
            "Lcom/jme3/math/Vector3f;",
            "Ljava/lang/Iterable<",
            "Lcom/jme3/math/Vector3f;",
            ">;F)Z"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-static {p1}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    float-to-double v2, p3

    cmpg-double p3, v0, v2

    const/4 v4, 0x1

    if-gtz p3, :cond_0

    return v4

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-static {p3, p1}, Ljf/h;->r(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v5

    div-double/2addr v5, v0

    double-to-float v5, v5

    invoke-virtual {p1, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-static {v5, p3, v2, v3}, Ljf/h;->q(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;D)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v4
.end method

.method public static e(Lcom/jme3/math/Vector3f;)F
    .locals 5

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Ljf/f;->r([F)F

    move-result v0

    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v1, p0

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Z
    .locals 6

    invoke-virtual {p2, p0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-static {p2}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    float-to-double v2, p3

    cmpg-double p3, v0, v2

    if-gtz p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-static {p0, p2}, Ljf/h;->r(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v4

    div-double/2addr v4, v0

    double-to-float p1, v4

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-static {p1, p0, v2, v3}, Ljf/h;->q(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;D)Z

    move-result p0

    return p0
.end method

.method public static g(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Z
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0, v1, p2}, Ljf/f;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v0, v1, p2}, Ljf/f;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0, p1, p2}, Ljf/f;->a(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(IFLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 0

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p0, p1}, Lcom/jme3/math/Vector3f;->set(IF)V

    return-object p2
.end method

.method public static i(Lcom/jme3/math/Vector3f;)F
    .locals 4

    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v0, v0

    iget p0, p0, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static j(Lcom/jme3/math/Vector3f;)V
    .locals 10

    invoke-static {p0}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sget-object v1, Ljf/h;->j:[Lcom/jme3/math/Vector3f;

    array-length v2, v1

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    invoke-static {v6, p0}, Ljf/h;->r(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v7

    cmpl-double v9, v7, v3

    if-lez v9, :cond_0

    invoke-virtual {v0, v6}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-wide v3, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public static k(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)I
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static l(Ljava/util/Collection;Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Lcom/jme3/math/Matrix3f;",
            ")",
            "Lcom/jme3/math/Matrix3f;"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, v4}, Ljf/h;->L(Ljava/util/Collection;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jme3/math/Matrix3f;->zero()Lcom/jme3/math/Matrix3f;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    iget v6, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v7, v4, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v6, v7

    iget v7, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v4, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v7, v8

    iget v5, v5, Lcom/jme3/math/Vector3f;->z:F

    iget v8, v4, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v5, v8

    new-array v8, v0, [F

    aput v6, v8, v1

    aput v7, v8, v2

    const/4 v6, 0x2

    aput v5, v8, v6

    move v5, v1

    :goto_0
    if-ge v5, v0, :cond_1

    move v6, v5

    :goto_1
    if-ge v6, v0, :cond_2

    invoke-virtual {p1, v5, v6}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v7

    aget v9, v8, v5

    aget v10, v8, v6

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    invoke-virtual {p1, v5, v6, v7}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    add-int/2addr v6, v2

    goto :goto_1

    :cond_2
    add-int/2addr v5, v2

    goto :goto_0

    :cond_3
    sub-int/2addr v3, v2

    int-to-float p0, v3

    :goto_2
    if-ge v1, v0, :cond_5

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_4

    invoke-virtual {p1, v1, v3}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v4

    div-float/2addr v4, p0

    invoke-virtual {p1, v1, v3, v4}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v3, v1, v4}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    add-int/2addr v3, v2

    goto :goto_3

    :cond_4
    add-int/2addr v1, v2

    goto :goto_2

    :cond_5
    return-object p1
.end method

.method public static m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Ljf/h;->D(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xyz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {p0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    const-string v1, "x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    const/16 v3, 0x20

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static n(Lcom/jme3/math/Vector3f;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "dx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static o(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D
    .locals 4

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static p(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D
    .locals 4

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-static {p2}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    invoke-static {p1, p0}, Ljf/h;->o(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-static {p0, p2}, Ljf/h;->r(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->saturate(F)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p2

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_2
    invoke-static {p2, p0}, Ljf/h;->o(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static q(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;D)Z
    .locals 0

    invoke-static {p0, p1}, Ljf/h;->o(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide p0

    cmpl-double p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static r(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D
    .locals 10

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v0, v0

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v2, v2

    iget v4, p0, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v4, v4

    iget v6, p1, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v6, v6

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v8, p0

    iget p0, p1, Lcom/jme3/math/Vector3f;->z:F

    float-to-double p0, p0

    mul-double/2addr v0, v2

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    mul-double/2addr v8, p0

    add-double/2addr v0, v8

    return-wide v0
.end method

.method public static s(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static t(FF)Lcom/jme3/math/Vector3f;
    .locals 2

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p0}, Lcom/jme3/math/Quaternion;->fromAngles(FFF)Lcom/jme3/math/Quaternion;

    move-result-object p0

    sget-object v0, Ljf/h;->i:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-static {p0, p1}, Ljf/h;->W(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 6

    invoke-static {p0}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-gtz v3, :cond_0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p2, v4, v5, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    cmpg-float v0, v1, v2

    if-gtz v0, :cond_1

    invoke-virtual {p2, v5, v4, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v5, v5, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {p1}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, p1, p2}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {p2}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public static v(Lcom/jme3/math/Vector3f;)Ljf/k;
    .locals 1

    new-instance v0, Ljf/r;

    invoke-direct {v0, p0}, Ljf/r;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Ljf/r;->normalize()Ljf/k;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-eq p0, p1, :cond_1

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    move-object v1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p3

    move-object v1, p4

    :goto_1
    if-ne p0, p1, :cond_2

    move-object p1, p2

    goto :goto_2

    :cond_2
    if-ne p0, p2, :cond_3

    goto :goto_2

    :cond_3
    if-ne p0, p3, :cond_4

    move-object p1, p4

    goto :goto_2

    :cond_4
    move-object p1, p3

    :goto_2
    invoke-static {p0, p1}, Ljf/h;->o(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide p1

    invoke-static {p0, v0}, Ljf/h;->o(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide p3

    cmpl-double p3, p1, p3

    if-ltz p3, :cond_5

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p0, v1}, Ljf/h;->o(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide p3

    cmpl-double p0, p1, p3

    if-ltz p0, :cond_6

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljf/h;->N(Ljava/util/List;)[Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    float-to-double v3, p4

    invoke-static {v2, v1, v3, v4}, Ljf/h;->q(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;D)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v2, v1, v0, p4}, Ljf/h;->d(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Ljava/lang/Iterable;F)Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v2, p2, p3, p0, p1}, Ljf/h;->w(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-static {v5}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    const/4 v11, 0x0

    if-nez v10, :cond_1

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v0, v2, v3, v1}, Ljf/h;->p(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v2

    float-to-double v4, v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    return-object v11

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-static {v5}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v12

    cmpl-double v8, v12, v8

    if-nez v8, :cond_3

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v2, v0, v1, v3}, Ljf/h;->p(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    float-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    return-object v11

    :cond_2
    return-object v3

    :cond_3
    invoke-virtual {v10, v5}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-static {v8}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v14

    move-wide/from16 v16, v12

    float-to-double v11, v4

    cmpg-double v13, v14, v11

    if-gtz v13, :cond_4

    invoke-static/range {p0 .. p4}, Ljf/h;->x(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v10, v8}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v5, v8}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    invoke-virtual {v10, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    div-float/2addr v4, v3

    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    invoke-virtual {v5, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    div-float/2addr v3, v1

    invoke-virtual {v10, v4}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v5, v3}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-static {v1, v0, v11, v12}, Ljf/h;->q(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;D)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    div-double v8, v11, v16

    const/4 v2, 0x0

    cmpg-float v5, v4, v2

    if-gez v5, :cond_6

    mul-float v5, v4, v4

    float-to-double v13, v5

    cmpl-double v5, v13, v8

    if-lez v5, :cond_6

    return-object v0

    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    cmpg-float v10, v4, v2

    if-gez v10, :cond_7

    mul-float/2addr v4, v4

    float-to-double v13, v4

    cmpl-double v4, v13, v8

    if-lez v4, :cond_7

    return-object v0

    :cond_7
    div-double/2addr v11, v6

    cmpg-float v4, v3, v2

    if-gez v4, :cond_8

    mul-float v4, v3, v3

    float-to-double v6, v4

    cmpl-double v4, v6, v11

    if-lez v4, :cond_8

    return-object v0

    :cond_8
    sub-float/2addr v5, v3

    cmpg-float v2, v5, v2

    if-gez v2, :cond_9

    mul-float/2addr v5, v5

    float-to-double v2, v5

    cmpl-double v2, v2, v11

    if-lez v2, :cond_9

    return-object v0

    :cond_9
    return-object v1
.end method

.method public static z(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
