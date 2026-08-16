.class public final Lcom/android/tools/r8/internal/zM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/CM;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/zM;->c:Z

    iget-object v0, p1, Lcom/android/tools/r8/internal/CM;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/tools/r8/graph/E0;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/zM;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/android/tools/r8/internal/CM;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/tools/r8/graph/G0;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/zM;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/graph/o0;
    .locals 2

    if-ltz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zM;->a:Ljava/util/List;

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/internal/CM;->j:Z

    if-nez v1, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o0;

    return-object p1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zM;->b:Ljava/util/List;

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/CM;->j:Z

    if-nez v1, :cond_4

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v1, :cond_6

    if-gez p1, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/CM;)Lcom/android/tools/r8/internal/BM;
    .locals 10

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/BM;

    iget-object v1, p1, Lcom/android/tools/r8/internal/CM;->a:Lcom/android/tools/r8/internal/BN;

    .line 9
    iget-object v2, p1, Lcom/android/tools/r8/internal/CM;->f:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/CM;->f:Lcom/android/tools/r8/internal/CH;

    new-instance v4, Lcom/android/tools/r8/internal/QE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/QE1;-><init>()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/tools/r8/internal/zM;->a(Lcom/android/tools/r8/internal/CH;ZLjava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    iget-object v4, p1, Lcom/android/tools/r8/internal/CM;->g:Lcom/android/tools/r8/internal/CH;

    new-instance v5, Lcom/android/tools/r8/internal/QE1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/QE1;-><init>()V

    const/4 v6, 0x1

    .line 12
    invoke-virtual {p0, v4, v6, v5}, Lcom/android/tools/r8/internal/zM;->a(Lcom/android/tools/r8/internal/CH;ZLjava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v4

    .line 13
    iget-boolean v5, p0, Lcom/android/tools/r8/internal/zM;->c:Z

    if-nez v5, :cond_1

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/CM;->h:Ljava/util/ArrayList;

    goto :goto_2

    .line 15
    :cond_1
    sget v5, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v5, 0x4

    .line 16
    new-array v5, v5, [Ljava/lang/Object;

    move-object v6, v5

    move v5, v3

    .line 17
    :goto_1
    iget-object v7, p1, Lcom/android/tools/r8/internal/CM;->g:Lcom/android/tools/r8/internal/CH;

    .line 18
    iget v8, v7, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge v3, v8, :cond_4

    .line 19
    invoke-virtual {v7, v3}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/zM;->a(I)Lcom/android/tools/r8/graph/o0;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 20
    iget-object v7, p1, Lcom/android/tools/r8/internal/CM;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zN;

    .line 21
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v8, v5, 0x1

    .line 22
    array-length v9, v6

    if-ge v9, v8, :cond_2

    .line 23
    array-length v9, v6

    invoke-static {v9, v8}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v9

    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 24
    :cond_2
    aput-object v7, v6, v5

    move v5, v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 25
    :cond_4
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 26
    :goto_2
    invoke-direct {v0, v1, v2, v4, p1}, Lcom/android/tools/r8/internal/BM;-><init>(Lcom/android/tools/r8/internal/BN;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/CH;ZLjava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 4

    .line 27
    sget-boolean v0, Lcom/android/tools/r8/internal/zM;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    iget v1, p1, Lcom/android/tools/r8/internal/CH;->c:I

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 31
    :goto_1
    iget v2, p1, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge v1, v2, :cond_5

    .line 32
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/zM;->a(I)Lcom/android/tools/r8/graph/o0;

    move-result-object v2

    .line 33
    sget-boolean v3, Lcom/android/tools/r8/internal/zM;->d:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/zM;->c:Z

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 34
    invoke-interface {p3, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method
