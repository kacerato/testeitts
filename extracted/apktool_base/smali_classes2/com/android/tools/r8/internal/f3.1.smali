.class public final Lcom/android/tools/r8/internal/f3;
.super Lcom/android/tools/r8/internal/e3;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/s2;

.field public b:I

.field public c:Ljava/util/List;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/function/BiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/G91;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/G91;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/f3;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/internal/e3;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/f3;->b:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/f3;->d:Ljava/util/ArrayList;

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/f3;->f:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/f3;->a:Lcom/android/tools/r8/shaking/s2;

    .line 10
    iput-object p2, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    .line 11
    iput-object p3, p0, Lcom/android/tools/r8/internal/f3;->e:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/X50;Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/AV;
    .locals 3

    .line 56
    new-instance v0, Lcom/android/tools/r8/internal/AV;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f3;->a:Lcom/android/tools/r8/shaking/s2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/f3;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/AV;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_13

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/X50;

    if-eqz v2, :cond_12

    .line 5
    sget-boolean v4, Lcom/android/tools/r8/internal/X50;->d:Z

    if-nez v4, :cond_2

    .line 6
    iget-object v4, v2, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_2
    :goto_1
    iget-object v4, v2, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 9
    invoke-virtual {v2, v6, p1}, Lcom/android/tools/r8/internal/X50;->a(Ljava/lang/Object;Lcom/android/tools/r8/shaking/N;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 10
    iget-object v7, v2, Lcom/android/tools/r8/internal/X50;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    goto/16 :goto_8

    .line 11
    :cond_5
    iget-object v4, v2, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v5, v4, :cond_8

    .line 12
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v4, v2, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    .line 13
    iget v4, p0, Lcom/android/tools/r8/internal/f3;->b:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/f3;->b:I

    .line 14
    iget-object v3, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v3, v2, Lcom/android/tools/r8/internal/X50;->c:Lcom/android/tools/r8/shaking/s2;

    .line 16
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/s2;)V

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/f3;->d:Ljava/util/ArrayList;

    .line 18
    sget-boolean v4, Lcom/android/tools/r8/internal/X50;->d:Z

    if-nez v4, :cond_7

    .line 19
    iget-object v4, v2, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_7
    :goto_3
    new-instance v4, Lcom/android/tools/r8/internal/zV;

    iget-object v5, v2, Lcom/android/tools/r8/internal/X50;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/X50;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v2, Lcom/android/tools/r8/internal/X50;->c:Lcom/android/tools/r8/shaking/s2;

    invoke-direct {v4, v6, v5}, Lcom/android/tools/r8/internal/zV;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V

    .line 22
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v3, p0, Lcom/android/tools/r8/internal/f3;->e:Ljava/util/function/BiConsumer;

    invoke-interface {v3, v2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 24
    :cond_8
    iget-object v3, v2, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    .line 25
    sget-boolean v4, Lcom/android/tools/r8/internal/X50;->d:Z

    if-nez v4, :cond_a

    if-lez v3, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_a
    :goto_4
    iget-object v4, v2, Lcom/android/tools/r8/internal/X50;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/X50;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 27
    iget-object v5, v2, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/X50;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 28
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v7, v2, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 30
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/J2;

    .line 31
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 32
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 33
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 34
    :cond_c
    sget-boolean v4, Lcom/android/tools/r8/internal/X50;->d:Z

    if-nez v4, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_6

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_6
    if-nez v4, :cond_10

    .line 35
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v3, :cond_f

    goto :goto_7

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_10
    :goto_7
    iput-object v6, v2, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    if-nez v4, :cond_12

    .line 37
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_8

    .line 38
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 39
    :cond_13
    iget p1, p0, Lcom/android/tools/r8/internal/f3;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_16

    .line 40
    sget-boolean p1, Lcom/android/tools/r8/internal/f3;->f:Z

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/internal/H91;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/H91;-><init>()V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_9

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_15
    :goto_9
    iput v0, p0, Lcom/android/tools/r8/internal/f3;->b:I

    .line 42
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    return-void

    .line 43
    :cond_16
    iget-object p1, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 45
    iget v1, p0, Lcom/android/tools/r8/internal/f3;->b:I

    if-lt v1, p1, :cond_1d

    .line 46
    iget-object p1, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lcom/android/tools/r8/internal/f3;->b:I

    sub-int/2addr p1, v1

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    iget-object v2, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/X50;

    if-eqz v3, :cond_17

    .line 49
    sget-boolean v4, Lcom/android/tools/r8/internal/f3;->f:Z

    if-nez v4, :cond_19

    .line 50
    iget-object v4, v3, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_b

    .line 51
    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_19
    :goto_b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 53
    :cond_1a
    sget-boolean v2, Lcom/android/tools/r8/internal/f3;->f:Z

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, p1, :cond_1b

    goto :goto_c

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_1c
    :goto_c
    iput v0, p0, Lcom/android/tools/r8/internal/f3;->b:I

    .line 55
    iput-object v1, p0, Lcom/android/tools/r8/internal/f3;->c:Ljava/util/List;

    :cond_1d
    :goto_d
    return-void
.end method

.method public final b(Lcom/android/tools/r8/shaking/N;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/f3;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/f3;->a:Lcom/android/tools/r8/shaking/s2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/f3;->a:Lcom/android/tools/r8/shaking/s2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/s2;)V

    :cond_2
    return-void
.end method
