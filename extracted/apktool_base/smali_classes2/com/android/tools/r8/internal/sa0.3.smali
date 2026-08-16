.class public final Lcom/android/tools/r8/internal/sa0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public b:I

.field public c:Ljava/util/LinkedList;

.field public d:Ljava/util/LinkedList;

.field public e:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sa0;->a:Lcom/android/tools/r8/graph/H5;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Fa0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fa0;->a:Lcom/android/tools/r8/internal/oa0;

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/Fa0;->b:Lcom/android/tools/r8/internal/oa0;

    filled-new-array {v0, p0}, [Lcom/android/tools/r8/internal/oa0;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Gs1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gs1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/sa0;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/Hs1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Hs1;-><init>(Lcom/android/tools/r8/internal/sa0;)V

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/sa0;->c:Ljava/util/LinkedList;

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/na0;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/sa0;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/sa0;->c:Ljava/util/LinkedList;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sa0;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/oa0;Lcom/android/tools/r8/internal/oa0;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/sa0;->e:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/sa0;->e:Ljava/util/LinkedList;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sa0;->e:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/tools/r8/internal/Fa0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Fa0;-><init>(Lcom/android/tools/r8/internal/oa0;Lcom/android/tools/r8/internal/oa0;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 8

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/sa0;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 10
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/dI;

    const/16 v1, 0x10

    .line 11
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/dI;

    .line 13
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/sa0;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/na0;

    .line 15
    iget-object v4, v3, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    .line 16
    invoke-virtual {v4}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 17
    iget-object v4, v3, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 18
    instance-of v4, v4, Lcom/android/tools/r8/internal/Ea0;

    if-eqz v4, :cond_2

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/na0;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/na0;->a()I

    move-result v3

    div-int/lit8 v3, v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    goto :goto_0

    .line 21
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    move v1, v3

    .line 22
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 23
    iget-object v4, p0, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/oa0;

    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    instance-of v4, v4, Lcom/android/tools/r8/internal/HT;

    if-eqz v4, :cond_4

    .line 26
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/ME;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ME;-><init>()V

    .line 28
    iget-object v4, p0, Lcom/android/tools/r8/internal/sa0;->e:Ljava/util/LinkedList;

    if-eqz v4, :cond_9

    .line 29
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    move v6, v5

    .line 30
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 31
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result v7

    if-eqz v7, :cond_6

    sub-int v7, v5, v6

    .line 33
    invoke-virtual {v1, v5, v7}, Lcom/android/tools/r8/internal/ME;->b(II)I

    goto :goto_3

    .line 34
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v6, v6, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 35
    :cond_7
    sget-boolean v0, Lcom/android/tools/r8/internal/sa0;->f:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/internal/sa0;->e:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/tools/r8/internal/Fs1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Fs1;-><init>()V

    .line 36
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 37
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_9
    :goto_4
    new-instance v0, Lcom/android/tools/r8/internal/ME;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ME;-><init>()V

    .line 39
    iget-object v4, p0, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    if-eqz v4, :cond_f

    .line 40
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    .line 41
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result v6

    if-eqz v6, :cond_a

    sub-int v6, v3, v5

    .line 44
    invoke-virtual {v0, v3, v6}, Lcom/android/tools/r8/internal/ME;->b(II)I

    goto :goto_6

    .line 45
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v5, v5, 0x1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 46
    :cond_b
    iget-object v2, p0, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/oa0;

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    instance-of v3, v3, Lcom/android/tools/r8/internal/bj;

    if-nez v3, :cond_c

    goto :goto_7

    .line 49
    :cond_c
    new-instance v0, Lcom/android/tools/r8/internal/ta0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ta0;-><init>()V

    throw v0

    .line 50
    :cond_d
    sget-boolean v2, Lcom/android/tools/r8/internal/sa0;->f:Z

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/Gs1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Gs1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_8

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_f
    :goto_8
    iget-object v2, p0, Lcom/android/tools/r8/internal/sa0;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/na0;

    .line 52
    iget-object v4, v3, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    .line 53
    invoke-virtual {v4}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 54
    iget-object v4, v3, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 55
    instance-of v4, v4, Lcom/android/tools/r8/internal/Ea0;

    if-eqz v4, :cond_13

    .line 56
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/na0;->a()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/ME;->get(I)I

    move-result v4

    .line 57
    sget-boolean v5, Lcom/android/tools/r8/internal/na0;->e:Z

    if-nez v5, :cond_12

    .line 58
    iget-object v5, v3, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    invoke-virtual {v5}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_a

    .line 59
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_12
    :goto_a
    invoke-static {v4}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v4

    iput-object v4, v3, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    goto :goto_9

    .line 61
    :cond_13
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/na0;->a()I

    move-result v4

    .line 62
    div-int/lit8 v5, v4, 0x20

    .line 63
    rem-int/lit8 v4, v4, 0x20

    .line 64
    sget-boolean v6, Lcom/android/tools/r8/internal/sa0;->f:Z

    if-nez v6, :cond_15

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/ME;->a(I)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_b

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_15
    :goto_b
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/ME;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v4

    .line 66
    sget-boolean v4, Lcom/android/tools/r8/internal/na0;->e:Z

    if-nez v4, :cond_17

    .line 67
    iget-object v4, v3, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    invoke-virtual {v4}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_c

    .line 68
    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_17
    :goto_c
    invoke-static {v5}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v4

    iput-object v4, v3, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    goto :goto_9

    :cond_18
    return-void

    :cond_19
    :goto_d
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/tools/r8/internal/sa0;->e:Ljava/util/LinkedList;

    .line 71
    iput-object v0, p0, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/na0;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 2
    instance-of v0, v0, Lcom/android/tools/r8/internal/Ea0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/sa0;->e:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/na0;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Fa0;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Fa0;->a:Lcom/android/tools/r8/internal/oa0;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ba0;

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of p1, p1, Lcom/android/tools/r8/internal/bj;

    return p1
.end method
