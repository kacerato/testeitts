.class public final Ljf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljf/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/c;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Lcom/jme3/math/Vector3f;Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;
    .locals 8

    const-string v0, "array"

    invoke-static {p0, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Ljf/c;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Invalid vector {0} in array"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-static {v1, v4}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v0, v4}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p1, v1, v0}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1, v0}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :goto_1
    return-object p1
.end method

.method public static b([Lcom/jme3/math/Vector3f;)I
    .locals 5

    array-length v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljf/h;->U(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public static varargs c([F)I
    .locals 5

    const-string v0, "array"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget v4, p0, v2

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static d([FLcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "input"

    invoke-static {p0, v4}, Lif/E;->l([FLjava/lang/String;)Z

    array-length v4, p0

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    const/4 v5, 0x0

    invoke-static {p0, v5}, Ljf/c;->l([FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jme3/math/Matrix3f;->zero()Lcom/jme3/math/Matrix3f;

    div-int/2addr v4, v2

    move v6, v1

    :goto_0
    if-ge v6, v4, :cond_3

    mul-int/lit8 v7, v6, 0x3

    aget v8, p0, v7

    iget v9, v5, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v8, v9

    add-int/lit8 v9, v7, 0x1

    aget v9, p0, v9

    iget v10, v5, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v9, v10

    add-int/2addr v7, v0

    aget v7, p0, v7

    iget v10, v5, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v7, v10

    new-array v10, v2, [F

    aput v8, v10, v1

    aput v9, v10, v3

    aput v7, v10, v0

    move v7, v1

    :goto_1
    if-ge v7, v2, :cond_2

    move v8, v7

    :goto_2
    if-ge v8, v2, :cond_1

    invoke-virtual {p1, v7, v8}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v9

    aget v11, v10, v7

    aget v12, v10, v8

    mul-float/2addr v11, v12

    add-float/2addr v9, v11

    invoke-virtual {p1, v7, v8, v9}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    add-int/2addr v8, v3

    goto :goto_2

    :cond_1
    add-int/2addr v7, v3

    goto :goto_1

    :cond_2
    add-int/2addr v6, v3

    goto :goto_0

    :cond_3
    sub-int/2addr v4, v3

    int-to-float p0, v4

    :goto_3
    if-ge v1, v2, :cond_5

    move v0, v1

    :goto_4
    if-ge v0, v2, :cond_4

    invoke-virtual {p1, v1, v0}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v4

    div-float/2addr v4, p0

    invoke-virtual {p1, v1, v0, v4}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v0, v1, v4}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    add-int/2addr v0, v3

    goto :goto_4

    :cond_4
    add-int/2addr v1, v3

    goto :goto_3

    :cond_5
    return-object p1
.end method

.method public static e([FI)Z
    .locals 5

    const-string v0, "vector"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    array-length v0, p0

    const-string v1, "length"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    aget v1, p0, v2

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_1

    aget v4, p0, v3

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public static f(F[F)I
    .locals 5

    const-string v0, "array"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    aget v3, p1, v2

    cmpl-float v4, p0, v3

    if-lez v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    cmpg-float v3, p0, v3

    if-gez v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_3
    if-nez v4, :cond_0

    move v1, v2

    :goto_1
    return v1
.end method

.method public static g([Z)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static h([F)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget v3, p0, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    return v0

    :cond_1
    return v3
.end method

.method public static i([I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget v3, p0, v1

    if-lt v2, v3, :cond_0

    return v0

    :cond_1
    return v3
.end method

.method public static j([Ljava/lang/Comparable;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    return v0

    :cond_1
    return v3
.end method

.method public static k([Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    const-string v0, "array"

    invoke-static {p0, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public static l([FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5

    const-string v0, "input"

    invoke-static {p0, v0}, Lif/E;->l([FLjava/lang/String;)Z

    array-length v0, p0

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-int/lit8 v3, v1, 0x3

    aget v4, p0, v3

    add-float/2addr v2, v4

    iput v2, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 v4, v3, 0x1

    aget v4, p0, v4

    add-float/2addr v2, v4

    iput v2, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 v3, v3, 0x2

    aget v3, p0, v3

    add-float/2addr v2, v3

    iput v2, p1, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-float p0, v0

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public static m([FFF)V
    .locals 3

    const-string v0, "dataset"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    cmpl-float v1, p1, p2

    if-nez v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, p0, v0

    goto :goto_1

    :cond_0
    aget v1, p0, v0

    sub-float/2addr v1, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    aput v1, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
