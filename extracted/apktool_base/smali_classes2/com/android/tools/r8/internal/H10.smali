.class public final Lcom/android/tools/r8/internal/H10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/H10;->b:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/H10;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/DW;)V
    .locals 3

    .line 58
    sget-boolean v0, Lcom/android/tools/r8/internal/H10;->c:Z

    const-string v1, " registered for "

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    sget-object v0, Lcom/android/tools/r8/internal/DW;->d:Lcom/android/tools/r8/internal/DW;

    if-eq p1, v0, :cond_2

    return-void

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/G10;)V
    .locals 3

    .line 63
    sget-boolean p0, Lcom/android/tools/r8/internal/H10;->c:Z

    if-nez p0, :cond_1

    .line 64
    iget-object p0, p1, Lcom/android/tools/r8/internal/G10;->a:Lcom/android/tools/r8/internal/F10;

    .line 65
    sget-object v0, Lcom/android/tools/r8/internal/F10;->b:Lcom/android/tools/r8/internal/F10;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 66
    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/tools/r8/internal/G10;->b:[Lcom/android/tools/r8/internal/F10;

    .line 67
    array-length p1, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    aget-object v1, p0, v0

    .line 68
    sget-boolean v2, Lcom/android/tools/r8/internal/H10;->c:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/tools/r8/internal/F10;->b:Lcom/android/tools/r8/internal/F10;

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/android/tools/r8/internal/iG0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/iG0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/G10;
    .locals 2

    .line 55
    sget-boolean v0, Lcom/android/tools/r8/internal/H10;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/H10;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/H10;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/dG0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dG0;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/G10;

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/internal/H10;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/fG0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fG0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ts0;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ts0;

    .line 5
    sget-boolean v2, Lcom/android/tools/r8/internal/H10;->c:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v3, v1, Lcom/android/tools/r8/internal/Ts0;->a:Lcom/android/tools/r8/graph/A2;

    .line 8
    iget-object v4, p0, Lcom/android/tools/r8/internal/H10;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    sget-object v3, Lcom/android/tools/r8/internal/F10;->d:Lcom/android/tools/r8/internal/F10;

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/H10;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/G10;

    move-result-object v3

    .line 11
    instance-of v4, v1, Lcom/android/tools/r8/internal/Us0;

    if-eqz v4, :cond_2

    .line 12
    iget-object v3, v3, Lcom/android/tools/r8/internal/G10;->a:Lcom/android/tools/r8/internal/F10;

    goto :goto_2

    :cond_2
    if-nez v2, :cond_4

    .line 13
    instance-of v4, v1, Lcom/android/tools/r8/internal/Ss0;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ts0;->a()Lcom/android/tools/r8/internal/Ss0;

    move-result-object v4

    .line 15
    iget v4, v4, Lcom/android/tools/r8/internal/Ss0;->b:I

    .line 16
    iget-object v3, v3, Lcom/android/tools/r8/internal/G10;->b:[Lcom/android/tools/r8/internal/F10;

    aget-object v3, v3, v4

    .line 17
    :goto_2
    sget-object v4, Lcom/android/tools/r8/internal/F10;->c:Lcom/android/tools/r8/internal/F10;

    if-ne v3, v4, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 18
    :cond_5
    iget-object v4, p0, Lcom/android/tools/r8/internal/H10;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    iget-object v5, v1, Lcom/android/tools/r8/internal/Ts0;->a:Lcom/android/tools/r8/graph/A2;

    .line 20
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/DW;

    if-nez v4, :cond_6

    .line 21
    sget-object v1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    goto :goto_7

    .line 22
    :cond_6
    instance-of v5, v1, Lcom/android/tools/r8/internal/Us0;

    if-eqz v5, :cond_9

    .line 23
    sget-boolean v1, Lcom/android/tools/r8/internal/DW;->e:Z

    if-nez v1, :cond_8

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_8
    :goto_3
    iget-object v1, v4, Lcom/android/tools/r8/internal/DW;->a:Lcom/android/tools/r8/internal/yw0;

    goto :goto_7

    :cond_9
    if-nez v2, :cond_b

    .line 25
    instance-of v5, v1, Lcom/android/tools/r8/internal/Ss0;

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_b
    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ts0;->a()Lcom/android/tools/r8/internal/Ss0;

    move-result-object v1

    .line 27
    iget v1, v1, Lcom/android/tools/r8/internal/Ss0;->b:I

    .line 28
    sget-boolean v5, Lcom/android/tools/r8/internal/DW;->e:Z

    if-nez v5, :cond_d

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_5

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_5
    if-nez v5, :cond_f

    .line 29
    iget-object v5, v4, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    aget-object v5, v5, v1

    if-eqz v5, :cond_e

    goto :goto_6

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_f
    :goto_6
    iget-object v4, v4, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    aget-object v1, v4, v1

    .line 31
    :goto_7
    sget-object v4, Lcom/android/tools/r8/internal/F10;->d:Lcom/android/tools/r8/internal/F10;

    if-eq v3, v4, :cond_15

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_a

    :cond_10
    if-nez v2, :cond_12

    .line 32
    sget-object v2, Lcom/android/tools/r8/internal/F10;->b:Lcom/android/tools/r8/internal/F10;

    if-ne v3, v2, :cond_11

    goto :goto_8

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_12
    :goto_8
    iget-object v2, v1, Lcom/android/tools/r8/internal/yw0;->b:Lcom/android/tools/r8/internal/EC;

    .line 34
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 35
    iget-object v2, v1, Lcom/android/tools/r8/internal/yw0;->b:Lcom/android/tools/r8/internal/EC;

    .line 36
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/2addr v2, p1

    .line 37
    sget-boolean p1, Lcom/android/tools/r8/internal/yw0;->d:Z

    if-nez p1, :cond_14

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_9

    .line 39
    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_14
    :goto_9
    iget p1, v1, Lcom/android/tools/r8/internal/yw0;->a:I

    add-int/2addr p1, v2

    goto/16 :goto_0

    :cond_15
    :goto_a
    const/4 p1, -0x1

    :cond_16
    if-lez p1, :cond_17

    .line 41
    sget-object p1, Lcom/android/tools/r8/internal/F10;->c:Lcom/android/tools/r8/internal/F10;

    goto :goto_b

    :cond_17
    sget-object p1, Lcom/android/tools/r8/internal/F10;->d:Lcom/android/tools/r8/internal/F10;

    .line 42
    :goto_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ts0;

    .line 43
    sget-boolean v2, Lcom/android/tools/r8/internal/H10;->c:Z

    if-nez v2, :cond_18

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    :cond_18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iget-object v3, v1, Lcom/android/tools/r8/internal/Ts0;->a:Lcom/android/tools/r8/graph/A2;

    .line 46
    sget-object v4, Lcom/android/tools/r8/internal/F10;->d:Lcom/android/tools/r8/internal/F10;

    if-ne p1, v4, :cond_19

    .line 47
    iget-object v4, p0, Lcom/android/tools/r8/internal/H10;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_c

    .line 48
    :cond_19
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/H10;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/G10;

    move-result-object v3

    .line 49
    instance-of v4, v1, Lcom/android/tools/r8/internal/Us0;

    if-eqz v4, :cond_1a

    .line 50
    iput-object p1, v3, Lcom/android/tools/r8/internal/G10;->a:Lcom/android/tools/r8/internal/F10;

    goto :goto_c

    :cond_1a
    if-nez v2, :cond_1c

    .line 51
    instance-of v2, v1, Lcom/android/tools/r8/internal/Ss0;

    if-eqz v2, :cond_1b

    goto :goto_d

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_1c
    :goto_d
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ts0;->a()Lcom/android/tools/r8/internal/Ss0;

    move-result-object v1

    .line 53
    iget v1, v1, Lcom/android/tools/r8/internal/Ss0;->b:I

    .line 54
    iget-object v2, v3, Lcom/android/tools/r8/internal/G10;->b:[Lcom/android/tools/r8/internal/F10;

    aput-object p1, v2, v1

    goto :goto_c

    :cond_1d
    return-void
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/H10;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/hG0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/hG0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/G10;)V
    .locals 0

    .line 1
    sget-boolean p2, Lcom/android/tools/r8/internal/H10;->c:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/H10;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/H10;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/gG0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/gG0;-><init>(Lcom/android/tools/r8/internal/H10;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final d()Ljava/util/IdentityHashMap;
    .locals 10

    sget-boolean v0, Lcom/android/tools/r8/internal/H10;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/H10;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/android/tools/r8/internal/H10;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/H10;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/eG0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eG0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    if-ge v3, v1, :cond_10

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    iget-object v5, p0, Lcom/android/tools/r8/internal/H10;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/DW;

    sget-boolean v6, Lcom/android/tools/r8/internal/H10;->c:Z

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/H10;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/G10;

    move-result-object v6

    sget-boolean v7, Lcom/android/tools/r8/internal/DW;->e:Z

    if-nez v7, :cond_5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    iget-object v7, v5, Lcom/android/tools/r8/internal/DW;->a:Lcom/android/tools/r8/internal/yw0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/tools/r8/internal/F10;->d:Lcom/android/tools/r8/internal/F10;

    iput-object v7, v6, Lcom/android/tools/r8/internal/G10;->a:Lcom/android/tools/r8/internal/F10;

    goto :goto_2

    :cond_6
    iget-object v7, v6, Lcom/android/tools/r8/internal/G10;->a:Lcom/android/tools/r8/internal/F10;

    sget-object v8, Lcom/android/tools/r8/internal/F10;->b:Lcom/android/tools/r8/internal/F10;

    if-ne v7, v8, :cond_7

    new-instance v7, Lcom/android/tools/r8/internal/Us0;

    invoke-direct {v7, v4}, Lcom/android/tools/r8/internal/Us0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/H10;->a(Lcom/android/tools/r8/internal/Ts0;)V

    :cond_7
    :goto_2
    move v7, v2

    :goto_3
    sget-boolean v8, Lcom/android/tools/r8/internal/DW;->e:Z

    if-nez v8, :cond_9

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    iget-object v9, v5, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    array-length v9, v9

    if-ge v7, v9, :cond_1

    if-nez v8, :cond_b

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_5
    if-nez v8, :cond_d

    iget-object v8, v5, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    aget-object v8, v8, v7

    if-eqz v8, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_6
    iget-object v8, v5, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v8, Lcom/android/tools/r8/internal/F10;->d:Lcom/android/tools/r8/internal/F10;

    iget-object v9, v6, Lcom/android/tools/r8/internal/G10;->b:[Lcom/android/tools/r8/internal/F10;

    aput-object v8, v9, v7

    goto :goto_7

    :cond_e
    iget-object v8, v6, Lcom/android/tools/r8/internal/G10;->b:[Lcom/android/tools/r8/internal/F10;

    aget-object v8, v8, v7

    sget-object v9, Lcom/android/tools/r8/internal/F10;->b:Lcom/android/tools/r8/internal/F10;

    if-ne v8, v9, :cond_f

    new-instance v8, Lcom/android/tools/r8/internal/Ss0;

    invoke-direct {v8, v7, v4}, Lcom/android/tools/r8/internal/Ss0;-><init>(ILcom/android/tools/r8/graph/A2;)V

    invoke-virtual {p0, v8}, Lcom/android/tools/r8/internal/H10;->a(Lcom/android/tools/r8/internal/Ts0;)V

    :cond_f
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_10
    sget-boolean v0, Lcom/android/tools/r8/internal/H10;->c:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H10;->c()V

    :cond_11
    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H10;->a()V

    :cond_12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H10;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/H10;->b:Ljava/util/IdentityHashMap;

    return-object v0
.end method
