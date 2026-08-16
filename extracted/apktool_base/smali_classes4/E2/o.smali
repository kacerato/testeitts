.class public final LE2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LE2/e;
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public a:J

.field public b:D

.field public c:D

.field public d:D

.field public e:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LE2/o;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LE2/o;->b:D

    iput-wide v0, p0, LE2/o;->c:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, LE2/o;->d:D

    iput-wide v0, p0, LE2/o;->e:D

    return-void
.end method

.method public static i(DD)D
    .locals 1

    invoke-static {p0, p1}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    :cond_0
    invoke-static {p2, p3}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double p2, p0, p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :cond_2
    :goto_0
    return-wide p0
.end method


# virtual methods
.method public a(D)V
    .locals 7

    iget-wide v0, p0, LE2/o;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v5, 0x1

    if-nez v2, :cond_0

    iput-wide v5, p0, LE2/o;->a:J

    iput-wide p1, p0, LE2/o;->b:D

    iput-wide p1, p0, LE2/o;->d:D

    iput-wide p1, p0, LE2/o;->e:D

    invoke-static {p1, p2}, Lcom/google/common/primitives/d;->n(D)Z

    move-result p1

    if-nez p1, :cond_2

    iput-wide v3, p0, LE2/o;->c:D

    goto :goto_1

    :cond_0
    add-long/2addr v0, v5

    iput-wide v0, p0, LE2/o;->a:J

    invoke-static {p1, p2}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, LE2/o;->b:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, LE2/o;->b:D

    sub-double v2, p1, v0

    iget-wide v4, p0, LE2/o;->a:J

    long-to-double v4, v4

    div-double v4, v2, v4

    add-double/2addr v0, v4

    iput-wide v0, p0, LE2/o;->b:D

    iget-wide v4, p0, LE2/o;->c:D

    sub-double v0, p1, v0

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    iput-wide v4, p0, LE2/o;->c:D

    goto :goto_0

    :cond_1
    iget-wide v0, p0, LE2/o;->b:D

    invoke-static {v0, v1, p1, p2}, LE2/o;->i(DD)D

    move-result-wide v0

    iput-wide v0, p0, LE2/o;->b:D

    iput-wide v3, p0, LE2/o;->c:D

    :goto_0
    iget-wide v0, p0, LE2/o;->d:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, LE2/o;->d:D

    iget-wide v0, p0, LE2/o;->e:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, LE2/o;->e:D

    :cond_2
    :goto_1
    return-void
.end method

.method public b(LE2/n;)V
    .locals 12

    invoke-virtual {p1}, LE2/n;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, LE2/n;->a()J

    move-result-wide v2

    invoke-virtual {p1}, LE2/n;->d()D

    move-result-wide v4

    invoke-virtual {p1}, LE2/n;->w()D

    move-result-wide v6

    invoke-virtual {p1}, LE2/n;->j()D

    move-result-wide v8

    invoke-virtual {p1}, LE2/n;->c()D

    move-result-wide v10

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, LE2/o;->m(JDDDD)V

    return-void
.end method

.method public c(LE2/o;)V
    .locals 12

    invoke-virtual {p1}, LE2/o;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, LE2/o;->j()J

    move-result-wide v2

    invoke-virtual {p1}, LE2/o;->l()D

    move-result-wide v4

    invoke-virtual {p1}, LE2/o;->u()D

    move-result-wide v6

    invoke-virtual {p1}, LE2/o;->n()D

    move-result-wide v8

    invoke-virtual {p1}, LE2/o;->k()D

    move-result-wide v10

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, LE2/o;->m(JDDDD)V

    return-void
.end method

.method public d(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LE2/o;->a(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LE2/o;->a(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs f([D)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, LE2/o;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs g([I)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    int-to-double v2, v2

    invoke-virtual {p0, v2, v3}, LE2/o;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs h([J)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, LE2/o;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, LE2/o;->a:J

    return-wide v0
.end method

.method public k()D
    .locals 4

    iget-wide v0, p0, LE2/o;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-wide v0, p0, LE2/o;->e:D

    return-wide v0
.end method

.method public l()D
    .locals 4

    iget-wide v0, p0, LE2/o;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-wide v0, p0, LE2/o;->b:D

    return-wide v0
.end method

.method public final m(JDDDD)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    iget-wide v11, v0, LE2/o;->a:J

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-nez v13, :cond_0

    iput-wide v1, v0, LE2/o;->a:J

    iput-wide v3, v0, LE2/o;->b:D

    iput-wide v5, v0, LE2/o;->c:D

    iput-wide v7, v0, LE2/o;->d:D

    iput-wide v9, v0, LE2/o;->e:D

    goto :goto_1

    :cond_0
    add-long/2addr v11, v1

    iput-wide v11, v0, LE2/o;->a:J

    iget-wide v11, v0, LE2/o;->b:D

    invoke-static {v11, v12}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static/range {p3 .. p4}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-wide v11, v0, LE2/o;->b:D

    sub-double v13, v3, v11

    long-to-double v1, v1

    mul-double v15, v13, v1

    iget-wide v9, v0, LE2/o;->a:J

    long-to-double v9, v9

    div-double/2addr v15, v9

    add-double/2addr v11, v15

    iput-wide v11, v0, LE2/o;->b:D

    iget-wide v9, v0, LE2/o;->c:D

    sub-double/2addr v3, v11

    mul-double/2addr v13, v3

    mul-double/2addr v13, v1

    add-double v1, v5, v13

    add-double/2addr v9, v1

    iput-wide v9, v0, LE2/o;->c:D

    goto :goto_0

    :cond_1
    iget-wide v1, v0, LE2/o;->b:D

    invoke-static {v1, v2, v3, v4}, LE2/o;->i(DD)D

    move-result-wide v1

    iput-wide v1, v0, LE2/o;->b:D

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, v0, LE2/o;->c:D

    :goto_0
    iget-wide v1, v0, LE2/o;->d:D

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, LE2/o;->d:D

    iget-wide v1, v0, LE2/o;->e:D

    move-wide/from16 v3, p9

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, LE2/o;->e:D

    :goto_1
    return-void
.end method

.method public n()D
    .locals 4

    iget-wide v0, p0, LE2/o;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-wide v0, p0, LE2/o;->d:D

    return-wide v0
.end method

.method public final o()D
    .locals 2

    invoke-virtual {p0}, LE2/o;->p()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final p()D
    .locals 4

    iget-wide v0, p0, LE2/o;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-wide v0, p0, LE2/o;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_1
    iget-wide v0, p0, LE2/o;->a:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    iget-wide v0, p0, LE2/o;->c:D

    invoke-static {v0, v1}, LE2/d;->b(D)D

    move-result-wide v0

    iget-wide v2, p0, LE2/o;->a:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final q()D
    .locals 2

    invoke-virtual {p0}, LE2/o;->r()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final r()D
    .locals 6

    iget-wide v0, p0, LE2/o;->a:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-wide v0, p0, LE2/o;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_1
    iget-wide v0, p0, LE2/o;->c:D

    invoke-static {v0, v1}, LE2/d;->b(D)D

    move-result-wide v0

    iget-wide v4, p0, LE2/o;->a:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public s()LE2/n;
    .locals 12

    new-instance v11, LE2/n;

    iget-wide v1, p0, LE2/o;->a:J

    iget-wide v3, p0, LE2/o;->b:D

    iget-wide v5, p0, LE2/o;->c:D

    iget-wide v7, p0, LE2/o;->d:D

    iget-wide v9, p0, LE2/o;->e:D

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, LE2/n;-><init>(JDDDD)V

    return-object v11
.end method

.method public final t()D
    .locals 4

    iget-wide v0, p0, LE2/o;->b:D

    iget-wide v2, p0, LE2/o;->a:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public u()D
    .locals 2

    iget-wide v0, p0, LE2/o;->c:D

    return-wide v0
.end method
