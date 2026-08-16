.class public abstract Lcom/android/tools/r8/internal/I4;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 5
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/I4;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/AA;

    .line 7
    invoke-direct {v3}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 8
    iget-object v4, v3, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 11
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 13
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/xK;->a:Z

    if-nez v1, :cond_4

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 17
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 18
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 19
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/I4;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 22
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/tools/r8/internal/AA;

    .line 24
    iget-object v3, v3, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_7
    invoke-static {v0}, Lcom/android/tools/r8/internal/s60;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;)Z
.end method
