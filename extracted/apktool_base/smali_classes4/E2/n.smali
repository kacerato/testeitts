.class public final LE2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LE2/e;
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final g:I = 0x28

.field public static final h:J


# instance fields
.field public final b:J

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D


# direct methods
.method public constructor <init>(JDDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LE2/n;->b:J

    iput-wide p3, p0, LE2/n;->c:D

    iput-wide p5, p0, LE2/n;->d:D

    iput-wide p7, p0, LE2/n;->e:D

    iput-wide p9, p0, LE2/n;->f:D

    return-void
.end method

.method public static b([B)LE2/n;
    .locals 4

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Expected Stats.BYTES = %s remaining , got %s"

    array-length v3, p0

    invoke-static {v0, v2, v1, v3}, Lw2/H;->m(ZLjava/lang/String;II)V

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, LE2/n;->r(Ljava/nio/ByteBuffer;)LE2/n;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Iterable;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, LE2/n;->f(Ljava/util/Iterator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Ljava/util/Iterator;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x1

    move-wide v4, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    add-long/2addr v4, v2

    invoke-static {v6, v7}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v0, v1}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v8

    if-eqz v8, :cond_0

    sub-double/2addr v6, v0

    long-to-double v8, v4

    div-double/2addr v6, v8

    add-double/2addr v0, v6

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, v6, v7}, LE2/o;->i(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static varargs g([D)D
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    aget-wide v0, p0, v1

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v1}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v5

    if-eqz v5, :cond_1

    sub-double/2addr v3, v0

    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    goto :goto_2

    :cond_1
    invoke-static {v0, v1, v3, v4}, LE2/o;->i(DD)D

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public static varargs h([I)D
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    aget v0, p0, v1

    int-to-double v0, v0

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget v3, p0, v2

    int-to-double v3, v3

    invoke-static {v3, v4}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v1}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v5

    if-eqz v5, :cond_1

    sub-double/2addr v3, v0

    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    goto :goto_2

    :cond_1
    invoke-static {v0, v1, v3, v4}, LE2/o;->i(DD)D

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public static varargs i([J)D
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    aget-wide v0, p0, v1

    long-to-double v0, v0

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-wide v3, p0, v2

    long-to-double v3, v3

    invoke-static {v3, v4}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v1}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v5

    if-eqz v5, :cond_1

    sub-double/2addr v3, v0

    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    goto :goto_2

    :cond_1
    invoke-static {v0, v1, v3, v4}, LE2/o;->i(DD)D

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public static k(Ljava/lang/Iterable;)LE2/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "LE2/n;"
        }
    .end annotation

    new-instance v0, LE2/o;

    invoke-direct {v0}, LE2/o;-><init>()V

    invoke-virtual {v0, p0}, LE2/o;->d(Ljava/lang/Iterable;)V

    invoke-virtual {v0}, LE2/o;->s()LE2/n;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/Iterator;)LE2/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "LE2/n;"
        }
    .end annotation

    new-instance v0, LE2/o;

    invoke-direct {v0}, LE2/o;-><init>()V

    invoke-virtual {v0, p0}, LE2/o;->e(Ljava/util/Iterator;)V

    invoke-virtual {v0}, LE2/o;->s()LE2/n;

    move-result-object p0

    return-object p0
.end method

.method public static varargs m([D)LE2/n;
    .locals 1

    new-instance v0, LE2/o;

    invoke-direct {v0}, LE2/o;-><init>()V

    invoke-virtual {v0, p0}, LE2/o;->f([D)V

    invoke-virtual {v0}, LE2/o;->s()LE2/n;

    move-result-object p0

    return-object p0
.end method

.method public static varargs n([I)LE2/n;
    .locals 1

    new-instance v0, LE2/o;

    invoke-direct {v0}, LE2/o;-><init>()V

    invoke-virtual {v0, p0}, LE2/o;->g([I)V

    invoke-virtual {v0}, LE2/o;->s()LE2/n;

    move-result-object p0

    return-object p0
.end method

.method public static varargs o([J)LE2/n;
    .locals 1

    new-instance v0, LE2/o;

    invoke-direct {v0}, LE2/o;-><init>()V

    invoke-virtual {v0, p0}, LE2/o;->h([J)V

    invoke-virtual {v0}, LE2/o;->s()LE2/n;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/nio/ByteBuffer;)LE2/n;
    .locals 15

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Expected at least Stats.BYTES = %s remaining , got %s"

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lw2/H;->m(ZLjava/lang/String;II)V

    new-instance v0, LE2/n;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v9

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v11

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v13

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, LE2/n;-><init>(JDDDD)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, LE2/n;->b:J

    return-wide v0
.end method

.method public c()D
    .locals 4

    iget-wide v0, p0, LE2/n;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-wide v0, p0, LE2/n;->f:D

    return-wide v0
.end method

.method public d()D
    .locals 4

    iget-wide v0, p0, LE2/n;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-wide v0, p0, LE2/n;->c:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, LE2/n;

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    check-cast p1, LE2/n;

    iget-wide v1, p0, LE2/n;->b:J

    iget-wide v3, p1, LE2/n;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, p0, LE2/n;->c:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p1, LE2/n;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, p0, LE2/n;->d:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p1, LE2/n;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, p0, LE2/n;->e:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p1, LE2/n;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, p0, LE2/n;->f:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p1, LE2/n;->f:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, LE2/n;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, LE2/n;->c:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, LE2/n;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, LE2/n;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, LE2/n;->f:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lw2/B;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public j()D
    .locals 4

    iget-wide v0, p0, LE2/n;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-wide v0, p0, LE2/n;->e:D

    return-wide v0
.end method

.method public p()D
    .locals 2

    invoke-virtual {p0}, LE2/n;->q()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public q()D
    .locals 4

    iget-wide v0, p0, LE2/n;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-wide v0, p0, LE2/n;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_1
    iget-wide v0, p0, LE2/n;->b:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    iget-wide v0, p0, LE2/n;->d:D

    invoke-static {v0, v1}, LE2/d;->b(D)D

    move-result-wide v0

    invoke-virtual {p0}, LE2/n;->a()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public s()D
    .locals 2

    invoke-virtual {p0}, LE2/n;->u()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, LE2/n;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "count"

    if-lez v0, :cond_0

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget-wide v2, p0, LE2/n;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lw2/z$b;->e(Ljava/lang/String;J)Lw2/z$b;

    move-result-object v0

    const-string v1, "mean"

    iget-wide v2, p0, LE2/n;->c:D

    invoke-virtual {v0, v1, v2, v3}, Lw2/z$b;->b(Ljava/lang/String;D)Lw2/z$b;

    move-result-object v0

    const-string v1, "populationStandardDeviation"

    invoke-virtual {p0}, LE2/n;->p()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lw2/z$b;->b(Ljava/lang/String;D)Lw2/z$b;

    move-result-object v0

    const-string v1, "min"

    iget-wide v2, p0, LE2/n;->e:D

    invoke-virtual {v0, v1, v2, v3}, Lw2/z$b;->b(Ljava/lang/String;D)Lw2/z$b;

    move-result-object v0

    const-string v1, "max"

    iget-wide v2, p0, LE2/n;->f:D

    invoke-virtual {v0, v1, v2, v3}, Lw2/z$b;->b(Ljava/lang/String;D)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget-wide v2, p0, LE2/n;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lw2/z$b;->e(Ljava/lang/String;J)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()D
    .locals 6

    iget-wide v0, p0, LE2/n;->b:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-wide v0, p0, LE2/n;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_1
    iget-wide v0, p0, LE2/n;->d:D

    invoke-static {v0, v1}, LE2/d;->b(D)D

    move-result-wide v0

    iget-wide v4, p0, LE2/n;->b:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public v()D
    .locals 4

    iget-wide v0, p0, LE2/n;->c:D

    iget-wide v2, p0, LE2/n;->b:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public w()D
    .locals 2

    iget-wide v0, p0, LE2/n;->d:D

    return-wide v0
.end method

.method public x()[B
    .locals 2

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, LE2/n;->y(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Expected at least Stats.BYTES = %s remaining , got %s"

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lw2/H;->m(ZLjava/lang/String;II)V

    iget-wide v0, p0, LE2/n;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-wide v0, p0, LE2/n;->c:D

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-wide v0, p0, LE2/n;->d:D

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-wide v0, p0, LE2/n;->e:D

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-wide v0, p0, LE2/n;->f:D

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method
