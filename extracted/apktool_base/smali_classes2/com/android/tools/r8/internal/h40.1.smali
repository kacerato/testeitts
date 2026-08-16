.class public final Lcom/android/tools/r8/internal/h40;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/c4;

.field public final d:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/h40;->d:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/h40;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/h40;->c:Lcom/android/tools/r8/graph/c4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/h40;->b(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;

    move-result-object v3

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/h40;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;

    move-result-object v4

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/g40;

    .line 10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    .line 12
    iget-object v9, v6, Lcom/android/tools/r8/internal/g40;->a:Lcom/android/tools/r8/internal/AA;

    .line 13
    iget-object v9, v9, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 14
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 15
    iget-object v9, v6, Lcom/android/tools/r8/internal/g40;->c:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 16
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    .line 17
    iget-object v9, v6, Lcom/android/tools/r8/internal/g40;->a:Lcom/android/tools/r8/internal/AA;

    .line 18
    iget-object v9, v9, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 19
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 20
    iget-object v9, v6, Lcom/android/tools/r8/internal/g40;->d:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 21
    :cond_4
    iget-object v7, v6, Lcom/android/tools/r8/internal/g40;->d:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    if-eq v8, v1, :cond_5

    .line 22
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    .line 23
    :cond_6
    iget-object v7, v6, Lcom/android/tools/r8/internal/g40;->c:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    if-eq v8, v1, :cond_7

    .line 24
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x0

    :cond_9
    if-eqz v6, :cond_a

    .line 25
    invoke-virtual {v6, v3, v1, v4}, Lcom/android/tools/r8/internal/g40;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V

    goto :goto_2

    .line 26
    :cond_a
    new-instance v6, Lcom/android/tools/r8/internal/g40;

    invoke-direct {v6, v3, v1, v4}, Lcom/android/tools/r8/internal/g40;-><init>(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V

    .line 27
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/h40;->d:Ljava/util/IdentityHashMap;

    .line 29
    iget-object v3, v6, Lcom/android/tools/r8/internal/g40;->a:Lcom/android/tools/r8/internal/AA;

    .line 30
    invoke-virtual {v2, v1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 31
    :cond_b
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/g40;

    .line 33
    iget-object v3, v3, Lcom/android/tools/r8/internal/g40;->a:Lcom/android/tools/r8/internal/AA;

    .line 34
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/AA;->k()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 35
    sget-boolean v4, Lcom/android/tools/r8/internal/h40;->e:Z

    if-nez v4, :cond_d

    .line 36
    iget-object v4, v3, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    .line 37
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_d
    :goto_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/h40;->d:Ljava/util/IdentityHashMap;

    .line 39
    iget-object v3, v3, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 40
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 41
    :cond_e
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_f
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/h40;->c:Lcom/android/tools/r8/graph/c4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/qc1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/qc1;-><init>(Lcom/android/tools/r8/graph/c4;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/h40;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Function;)Ljava/util/Set;
    .locals 2

    .line 43
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 44
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(Ljava/util/Set;)V

    .line 45
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->c(Ljava/lang/Object;)V

    .line 46
    new-instance v0, Lcom/android/tools/r8/internal/pc1;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/tools/r8/internal/pc1;-><init>(Lcom/android/tools/r8/internal/h40;Lcom/android/tools/r8/internal/Yx0;Ljava/util/function/Function;)V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/Consumer;)V

    .line 47
    sget-boolean p2, Lcom/android/tools/r8/internal/h40;->e:Z

    if-nez p2, :cond_1

    .line 48
    iget-object p2, v1, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_1
    :goto_0
    iget-object p1, v1, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Yx0;Ljava/util/function/Function;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/h40;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/AA;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 53
    :cond_0
    invoke-interface {p2, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/rc1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/rc1;-><init>(Lcom/android/tools/r8/internal/h40;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/h40;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Iterable;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/h40;->c:Lcom/android/tools/r8/graph/c4;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h40;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/rK;

    move-result-object p1

    return-object p1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/h40;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "OnlyDirectlyConnectedOrUnrelatedInterfaces"

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/h40;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$g;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
