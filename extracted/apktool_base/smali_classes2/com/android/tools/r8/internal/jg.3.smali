.class public final Lcom/android/tools/r8/internal/jg;
.super Lcom/android/tools/r8/internal/F8;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/internal/SG;

.field public final c:Lcom/android/tools/r8/internal/SG;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/F8;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/jg;->d:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-interface {p3}, Lcom/android/tools/r8/internal/SG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/nK0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/nK0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-interface {p2}, Lcom/android/tools/r8/internal/SG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Rf1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Rf1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iput p1, p0, Lcom/android/tools/r8/internal/jg;->a:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/tools/r8/internal/SG;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jg;->b:Lcom/android/tools/r8/internal/SG;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/tools/r8/internal/SG;

    iput-object p3, p0, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 51
    sget-boolean v0, Lcom/android/tools/r8/internal/jg;->d:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/jg;->a:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/F1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/F8;
    .locals 9

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/jg;

    iget v1, p0, Lcom/android/tools/r8/internal/jg;->a:I

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/jg;->b:Lcom/android/tools/r8/internal/SG;

    iget-object v2, p0, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/jg;-><init>(ILcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0

    .line 9
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/jg;->d:Z

    const v2, 0x7fffffff

    if-nez v1, :cond_8

    .line 10
    iget-object v1, v0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-static {v2, v1}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v1

    if-nez v1, :cond_3

    .line 11
    sget-object v1, Lcom/android/tools/r8/internal/WH;->a:Lcom/android/tools/r8/internal/VH;

    goto :goto_2

    .line 12
    :cond_3
    iget-object v3, v0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    .line 13
    iget v4, v3, Lcom/android/tools/r8/internal/iG;->c:I

    if-ne v1, v4, :cond_4

    .line 14
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/iG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v1

    goto :goto_2

    .line 15
    :cond_4
    new-instance v3, Lcom/android/tools/r8/internal/CH;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 16
    iget-object v1, v0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/iG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/SF;

    .line 17
    new-instance v4, Lcom/android/tools/r8/internal/VF;

    .line 18
    iget-object v1, v1, Lcom/android/tools/r8/internal/SF;->c:Lcom/android/tools/r8/internal/iG;

    .line 19
    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/VF;-><init>(Lcom/android/tools/r8/internal/iG;)V

    .line 20
    :cond_5
    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/gG;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/gG;->a()Lcom/android/tools/r8/internal/UF;

    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/proto/b;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 23
    invoke-interface {v1}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto :goto_1

    :cond_6
    move-object v1, v3

    .line 24
    :goto_2
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/Sf1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/Sf1;-><init>(Lcom/android/tools/r8/internal/jg;)V

    .line 25
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 26
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_8
    :goto_3
    iget v1, p0, Lcom/android/tools/r8/internal/jg;->a:I

    .line 28
    iget-object v3, v0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-static {v2, v3}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v1, :cond_9

    .line 29
    sget-object p1, Lcom/android/tools/r8/internal/vs0;->a:Lcom/android/tools/r8/internal/vs0;

    return-object p1

    .line 30
    :cond_9
    new-instance v2, Lcom/android/tools/r8/internal/GG;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/GG;-><init>(I)V

    .line 31
    new-instance v3, Lcom/android/tools/r8/internal/GG;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/GG;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    .line 32
    :goto_4
    iget v6, p0, Lcom/android/tools/r8/internal/jg;->a:I

    if-ge v4, v6, :cond_e

    .line 33
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v6

    if-nez v6, :cond_d

    .line 34
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 35
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 36
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    .line 37
    :cond_a
    iget-object v6, p0, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v8, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/F1;

    .line 39
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v7

    if-nez v7, :cond_b

    .line 40
    invoke-virtual {v2, v5, v6}, Lcom/android/tools/r8/internal/GG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_b
    iget-object v6, p0, Lcom/android/tools/r8/internal/jg;->b:Lcom/android/tools/r8/internal/SG;

    invoke-interface {v6, v4}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xt;

    if-eqz v6, :cond_c

    .line 42
    invoke-virtual {v3, v5, v6}, Lcom/android/tools/r8/internal/GG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 43
    :cond_e
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GG;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GG;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 45
    sget-object p1, Lcom/android/tools/r8/internal/vs0;->a:Lcom/android/tools/r8/internal/vs0;

    return-object p1

    .line 46
    :cond_f
    new-instance v0, Lcom/android/tools/r8/internal/jg;

    .line 47
    sget-boolean v1, Lcom/android/tools/r8/internal/TU;->a:Z

    .line 48
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GG;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v3, Lcom/android/tools/r8/internal/UG;->a:Lcom/android/tools/r8/internal/TG;

    :cond_10
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GG;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v2, Lcom/android/tools/r8/internal/UG;->a:Lcom/android/tools/r8/internal/TG;

    .line 49
    :cond_11
    invoke-direct {v0, p1, v3, v2}, Lcom/android/tools/r8/internal/jg;-><init>(ILcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)V

    return-object v0
.end method

.method public final a()Lcom/android/tools/r8/internal/jg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Integer;)Z
    .locals 1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/tools/r8/internal/jg;->a:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)Lcom/android/tools/r8/internal/xt;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/jg;->d:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/jg;->a:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/jg;->b:Lcom/android/tools/r8/internal/SG;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xt;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/jg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/jg;

    iget-object v0, p0, Lcom/android/tools/r8/internal/jg;->b:Lcom/android/tools/r8/internal/SG;

    iget-object v2, p1, Lcom/android/tools/r8/internal/jg;->b:Lcom/android/tools/r8/internal/SG;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    iget-object p1, p1, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/jg;->b:Lcom/android/tools/r8/internal/SG;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/jg;->b:Lcom/android/tools/r8/internal/SG;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
