.class public final Lcom/google/common/primitives/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LI2/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:[J

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/primitives/k$c;->b:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/common/primitives/k$c;->a:[J

    return-void
.end method

.method public static h(II)I
    .locals 1

    if-ltz p1, :cond_2

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    if-ge p0, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    :cond_0
    if-gez p0, :cond_1

    const p0, 0x7fffffff

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "cannot store more than MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public a(J)Lcom/google/common/primitives/k$c;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/k$c;->g(I)V

    iget-object v1, p0, Lcom/google/common/primitives/k$c;->a:[J

    iget v2, p0, Lcom/google/common/primitives/k$c;->b:I

    aput-wide p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/common/primitives/k$c;->b:I

    return-object p0
.end method

.method public b(Lcom/google/common/primitives/k;)Lcom/google/common/primitives/k$c;
    .locals 5

    invoke-virtual {p1}, Lcom/google/common/primitives/k;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/k$c;->g(I)V

    invoke-static {p1}, Lcom/google/common/primitives/k;->a(Lcom/google/common/primitives/k;)[J

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/primitives/k;->b(Lcom/google/common/primitives/k;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/primitives/k$c;->a:[J

    iget v3, p0, Lcom/google/common/primitives/k$c;->b:I

    invoke-virtual {p1}, Lcom/google/common/primitives/k;->p()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/common/primitives/k$c;->b:I

    invoke-virtual {p1}, Lcom/google/common/primitives/k;->p()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/primitives/k$c;->b:I

    return-object p0
.end method

.method public c(Ljava/lang/Iterable;)Lcom/google/common/primitives/k$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/k$c;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/k$c;->d(Ljava/util/Collection;)Lcom/google/common/primitives/k$c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/primitives/k$c;->a(J)Lcom/google/common/primitives/k$c;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lcom/google/common/primitives/k$c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/k$c;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/k$c;->g(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/common/primitives/k$c;->a:[J

    iget v2, p0, Lcom/google/common/primitives/k$c;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/primitives/k$c;->b:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public e([J)Lcom/google/common/primitives/k$c;
    .locals 4

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/k$c;->g(I)V

    iget-object v0, p0, Lcom/google/common/primitives/k$c;->a:[J

    iget v1, p0, Lcom/google/common/primitives/k$c;->b:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/common/primitives/k$c;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/primitives/k$c;->b:I

    return-object p0
.end method

.method public f()Lcom/google/common/primitives/k;
    .locals 5
    .annotation runtime LI2/b;
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/k$c;->b:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/primitives/k;->c()Lcom/google/common/primitives/k;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/k;

    iget-object v1, p0, Lcom/google/common/primitives/k$c;->a:[J

    iget v2, p0, Lcom/google/common/primitives/k$c;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/primitives/k;-><init>([JIILcom/google/common/primitives/k$a;)V

    :goto_0
    return-object v0
.end method

.method public final g(I)V
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/k$c;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/common/primitives/k$c;->a:[J

    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length v1, p1

    invoke-static {v1, v0}, Lcom/google/common/primitives/k$c;->h(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/primitives/k$c;->a:[J

    :cond_0
    return-void
.end method
