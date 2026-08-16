.class public abstract Lcom/android/tools/r8/internal/F0;
.super Lcom/android/tools/r8/internal/V0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient d:Ljava/util/HashMap;

.field public transient e:J


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/V0;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static a(Ljava/util/function/ObjIntConsumer;Ljava/lang/Object;Lcom/android/tools/r8/internal/ki;)V
    .locals 0

    .line 1
    iget p2, p2, Lcom/android/tools/r8/internal/ki;->b:I

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 6

    .line 11
    const-string v0, "count"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ki;

    if-nez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/ki;->b:I

    .line 14
    iput v1, p1, Lcom/android/tools/r8/internal/ki;->b:I

    move v1, v0

    .line 15
    :goto_0
    iget-wide v2, p0, Lcom/android/tools/r8/internal/F0;->e:J

    rsub-int/lit8 p1, v1, 0x0

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/tools/r8/internal/F0;->e:J

    return v1
.end method

.method public final a(Ljava/lang/Object;I)I
    .locals 7

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/F0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ki;

    if-nez v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    new-instance v2, Lcom/android/tools/r8/internal/ki;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/ki;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 6
    :cond_2
    iget p1, v2, Lcom/android/tools/r8/internal/ki;->b:I

    int-to-long v3, p1

    int-to-long v5, p2

    add-long/2addr v3, v5

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    add-int v0, p1, p2

    .line 7
    iput v0, v2, Lcom/android/tools/r8/internal/ki;->b:I

    move v1, p1

    .line 8
    :goto_2
    iget-wide v2, p0, Lcom/android/tools/r8/internal/F0;->e:J

    int-to-long p1, p2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/tools/r8/internal/F0;->e:J

    return v1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "too many occurrences: %s"

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "occurrences cannot be negative: %s"

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/function/ObjIntConsumer;)V
    .locals 2

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/bE0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/bE0;-><init>(Ljava/util/function/ObjIntConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(ILjava/lang/Object;)I
    .locals 3

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/F0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-lez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ki;

    if-nez v1, :cond_2

    return v0

    .line 5
    :cond_2
    iget v0, v1, Lcom/android/tools/r8/internal/ki;->b:I

    if-le v0, p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    :goto_1
    neg-int p2, p1

    .line 7
    iget v2, v1, Lcom/android/tools/r8/internal/ki;->b:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/android/tools/r8/internal/ki;->b:I

    .line 8
    iget-wide v1, p0, Lcom/android/tools/r8/internal/F0;->e:J

    int-to-long p1, p1

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/tools/r8/internal/F0;->e:J

    return v0

    .line 9
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "occurrences cannot be negative: %s"

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/tV;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ki;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget p1, p1, Lcom/android/tools/r8/internal/ki;->b:I

    return p1
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ki;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/tools/r8/internal/ki;->b:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/tools/r8/internal/F0;->e:J

    return-void
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/B0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/B0;-><init>(Lcom/android/tools/r8/internal/F0;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final g()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/D0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/D0;-><init>(Lcom/android/tools/r8/internal/F0;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/E0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/E0;-><init>(Lcom/android/tools/r8/internal/F0;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/F0;->e:J

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/HJ;->a(J)I

    move-result v0

    return v0
.end method
