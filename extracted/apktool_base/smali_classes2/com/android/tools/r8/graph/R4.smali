.class public final Lcom/android/tools/r8/graph/R4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/function/Function;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/R4;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/R4;->b:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/R4;->d:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/graph/R4;->c:Ljava/util/function/Function;

    iput-object p1, p0, Lcom/android/tools/r8/graph/R4;->e:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/E0;Ljava/util/Map$Entry;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    .line 55
    :goto_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 56
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 57
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/E0;Ljava/util/Map$Entry;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    .line 9
    :goto_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 10
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 11
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4;
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/R4;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/R4;->b:Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lcom/android/tools/r8/graph/Z4$b;->c:Lcom/android/tools/r8/graph/Z4$b;

    return-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/R4;->a:Ljava/util/LinkedHashMap;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    if-nez v3, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    .line 15
    new-instance p1, Lcom/android/tools/r8/graph/Ia;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/Ia;-><init>()V

    .line 16
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    .line 17
    sget-object v0, Lcom/android/tools/r8/graph/c5;->d:Lcom/android/tools/r8/graph/c5;

    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 19
    :cond_4
    new-instance v0, Lcom/android/tools/r8/graph/c5;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/c5;-><init>(Ljava/util/List;)V

    return-object v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/graph/R4;->b:Ljava/util/LinkedHashMap;

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    if-nez v5, :cond_7

    goto :goto_1

    .line 24
    :cond_7
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 25
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v5, v5, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v5

    if-nez v5, :cond_6

    .line 26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/graph/R4;->a:Ljava/util/LinkedHashMap;

    .line 30
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_a
    move-object v1, v2

    :goto_2
    if-nez v1, :cond_c

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/graph/R4;->b:Ljava/util/LinkedHashMap;

    .line 33
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    if-eqz v3, :cond_b

    :cond_c
    move-object v2, v1

    .line 35
    :cond_d
    sget-boolean v0, Lcom/android/tools/r8/graph/R4;->f:Z

    if-nez v0, :cond_f

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_3
    if-eqz p1, :cond_10

    goto :goto_4

    .line 36
    :cond_10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    .line 37
    :goto_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 39
    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 v0, 0x0

    .line 40
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz p1, :cond_12

    goto :goto_5

    .line 41
    :cond_12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    .line 42
    :goto_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/E0;

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 44
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    return-object p1

    .line 45
    :cond_13
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4;->a:Z

    .line 46
    new-instance v0, Lcom/android/tools/r8/graph/W4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/W4;-><init>()V

    .line 47
    iput-boolean v2, v0, Lcom/android/tools/r8/graph/W4;->c:Z

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 49
    sget-boolean v1, Lcom/android/tools/r8/graph/R4;->f:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/tools/r8/graph/R4;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_6

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_15
    :goto_6
    sget-object v1, Lcom/android/tools/r8/graph/Z4$b;->c:Lcom/android/tools/r8/graph/Z4$b;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4;)V

    goto :goto_7

    .line 51
    :cond_16
    new-instance v2, Lcom/android/tools/r8/graph/Ja;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/graph/Ja;-><init>(Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/E0;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 52
    :goto_7
    new-instance v1, Lcom/android/tools/r8/graph/Ka;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/graph/Ka;-><init>(Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/E0;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 53
    sget-object p1, Lcom/android/tools/r8/graph/Z4$b;->c:Lcom/android/tools/r8/graph/Z4$b;

    iget-object v1, p0, Lcom/android/tools/r8/graph/R4;->d:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/W4;->a(Lcom/android/tools/r8/graph/Z4$a;Ljava/util/Collection;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/R4;->c:Ljava/util/function/Function;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/b0;

    new-instance v0, Lcom/android/tools/r8/graph/Ha;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Ha;-><init>(Lcom/android/tools/r8/graph/R4;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/E0;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/R4;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/R4;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/R4;->a:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 4
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/graph/R4;->a:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/R4;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 7
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/R4;->a(Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
