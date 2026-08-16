.class public abstract Lnn/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnn/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lnn/m;Lnn/e;Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "acfg",
            "es",
            "heightFunc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnn/m;",
            "Lnn/e;",
            "Ljava/util/function/BiFunction<",
            "[F",
            "Ljava/lang/Float;",
            "Ljn/U<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    iget p1, p1, Lnn/m;->a:F

    iget-object v0, p2, Lnn/e;->a:Lnn/i;

    iget-object v1, v0, Lnn/i;->a:[F

    iget-object v0, v0, Lnn/i;->b:[F

    invoke-static {v1, v0}, Ljn/g;->C([F[F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p2, Lnn/e;->a:Lnn/i;

    invoke-virtual {p0, p3, v0, p1}, Lnn/a;->c(Ljava/util/function/BiFunction;Lnn/i;I)V

    iget-object p2, p2, Lnn/e;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnn/i;

    invoke-virtual {p0, p3, v0, p1}, Lnn/a;->c(Ljava/util/function/BiFunction;Lnn/i;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/util/function/BiFunction;Lnn/i;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "heightFunc",
            "seg",
            "nsamples"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "[F",
            "Ljava/lang/Float;",
            "Ljn/U<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            ">;>;",
            "Lnn/i;",
            "I)V"
        }
    .end annotation

    new-array v0, p3, [Lnn/g;

    iput-object v0, p2, Lnn/i;->c:[Lnn/g;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    int-to-float v2, v1

    add-int/lit8 v3, p3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    new-instance v3, Lnn/g;

    invoke-direct {v3}, Lnn/g;-><init>()V

    iget-object v4, p2, Lnn/i;->c:[Lnn/g;

    aput-object v3, v4, v1

    iget-object v4, p2, Lnn/i;->a:[F

    iget-object v5, p2, Lnn/i;->b:[F

    invoke-static {v4, v5, v2}, Ljn/g;->N([F[FF)[F

    move-result-object v2

    iget v4, p2, Lnn/i;->d:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljn/U;

    iget-object v5, v3, Lnn/g;->a:[F

    aget v6, v2, v0

    aput v6, v5, v0

    iget-object v6, v4, Ljn/U;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    iget-object v5, v3, Lnn/g;->a:[F

    const/4 v6, 0x2

    aget v2, v2, v6

    aput v2, v5, v6

    iget-object v2, v4, Ljn/U;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v7, v3, Lnn/g;->c:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
