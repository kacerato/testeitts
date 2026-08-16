.class public Lkf/a;
.super Ljava/util/Random;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:J = 0x85f4c4ca77bdd3L

.field public static final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkf/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lkf/a;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/util/Random;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(D)I
    .locals 5

    neg-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    mul-double/2addr v0, v3

    cmpl-double v3, v0, p1

    if-gtz v3, :cond_0

    return v2
.end method

.method public b()Lcom/jme3/math/Quaternion;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkf/a;->c(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    double-to-float v0, v2

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->multLocal(F)Lcom/jme3/math/Quaternion;

    return-object p1

    :cond_2
    :goto_1
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lkf/a;->nextFloat(FF)F

    move-result v2

    invoke-virtual {p0, v0, v1}, Lkf/a;->nextFloat(FF)F

    move-result v3

    invoke-virtual {p0, v0, v1}, Lkf/a;->nextFloat(FF)F

    move-result v4

    invoke-virtual {p0, v0, v1}, Lkf/a;->nextFloat(FF)F

    move-result v0

    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    invoke-static {p1}, Ljf/g;->l(Lcom/jme3/math/Quaternion;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public d()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkf/a;->e(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    double-to-float v0, v2

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    return-object p1

    :cond_2
    :goto_1
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lkf/a;->nextFloat(FF)F

    move-result v2

    invoke-virtual {p0, v0, v1}, Lkf/a;->nextFloat(FF)F

    move-result v3

    invoke-virtual {p0, v0, v1}, Lkf/a;->nextFloat(FF)F

    move-result v0

    invoke-virtual {p1, v2, v3, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    invoke-static {p1}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public f()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkf/a;->g(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lkf/a;->nextFloat(FF)F

    move-result v2

    invoke-virtual {p0, v0, v1}, Lkf/a;->nextFloat(FF)F

    move-result v3

    invoke-virtual {p0, v0, v1}, Lkf/a;->nextFloat(FF)F

    move-result v0

    invoke-virtual {p1, v2, v3, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    invoke-static {p1}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public h(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5

    const-string v0, "input"

    invoke-static {p1, v0}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-wide/16 v1, 0x0

    :goto_0
    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v1, v3

    if-gez v3, :cond_0

    invoke-virtual {p0}, Lkf/a;->d()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v3, v1

    double-to-float p1, v3

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public i(Ljava/util/BitSet;IZ)I
    .locals 3

    const-string v0, "bit set"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "max index"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-eqz p3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->previousSetBit(I)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->previousClearBit(I)I

    move-result p2

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    if-ne v0, p2, :cond_2

    return v0

    :cond_2
    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    :goto_1
    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eq v2, p3, :cond_3

    invoke-virtual {p0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public j(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)TE;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object p1, p1, v0

    return-object p1
.end method

.method public nextFloat(FF)F
    .locals 1

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr p2, p1

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    return p1
.end method

.method public nextInt(II)I
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method
