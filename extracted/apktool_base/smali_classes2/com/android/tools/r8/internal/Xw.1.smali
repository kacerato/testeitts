.class public final Lcom/android/tools/r8/internal/Xw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nJ$o;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ$o;Lcom/android/tools/r8/internal/qZ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xw;->b:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xw;->a:Lcom/android/tools/r8/internal/nJ$o;

    iget-object p1, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p2, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Xw;->a(Lcom/android/tools/r8/graph/d4;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Xw;->a(Lcom/android/tools/r8/graph/d4;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/J21;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/J21;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Xw;->a(Lcom/android/tools/r8/graph/d4;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;
    .locals 2

    .line 14
    instance-of v0, p0, Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_4

    .line 15
    instance-of v0, p1, Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_1

    .line 16
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    return-object p1

    .line 17
    :cond_1
    sget-boolean p0, Lcom/android/tools/r8/internal/Xw;->d:Z

    if-nez p0, :cond_9

    instance-of p0, p1, Lcom/android/tools/r8/graph/l1;

    if-nez p0, :cond_3

    instance-of p0, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    return-object p1

    .line 18
    :cond_4
    instance-of v0, p0, Lcom/android/tools/r8/graph/l1;

    if-eqz v0, :cond_a

    .line 19
    instance-of v0, p1, Lcom/android/tools/r8/graph/l1;

    if-eqz v0, :cond_6

    .line 20
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result v0

    if-gez v0, :cond_5

    return-object p0

    :cond_5
    return-object p1

    .line 21
    :cond_6
    instance-of v0, p1, Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_7

    return-object p0

    .line 22
    :cond_7
    sget-boolean p0, Lcom/android/tools/r8/internal/Xw;->d:Z

    if-nez p0, :cond_9

    instance-of p0, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz p0, :cond_8

    return-object p1

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    return-object p1

    .line 23
    :cond_a
    sget-boolean v0, Lcom/android/tools/r8/internal/Xw;->d:Z

    if-nez v0, :cond_c

    instance-of v1, p0, Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_b

    goto :goto_0

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 24
    :cond_c
    :goto_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_e

    .line 25
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result v0

    if-gez v0, :cond_d

    goto :goto_1

    :cond_d
    return-object p1

    :cond_e
    if-nez v0, :cond_10

    .line 26
    instance-of v0, p1, Lcom/android/tools/r8/graph/L2;

    if-nez v0, :cond_10

    instance-of p1, p1, Lcom/android/tools/r8/graph/l1;

    if-eqz p1, :cond_f

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_10
    :goto_1
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/n1;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/n1;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    if-nez p1, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Xw;->b(Lcom/android/tools/r8/graph/d4;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Xw;->b(Lcom/android/tools/r8/graph/d4;)V

    return-object v0

    .line 10
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/J21;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J21;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Xw;->b(Lcom/android/tools/r8/graph/d4;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/d4;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xw;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/K21;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/K21;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/d4;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xw;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/I21;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/I21;-><init>()V

    .line 27
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xw;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/Xw;->d:Z

    if-nez v1, :cond_3

    .line 7
    instance-of v1, v0, Lcom/android/tools/r8/internal/jh;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 11
    :goto_1
    sget-boolean v1, Lcom/android/tools/r8/internal/Xw;->d:Z

    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/Xw;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v1, :cond_7

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Xw;->a:Lcom/android/tools/r8/internal/nJ$o;

    iget v3, v3, Lcom/android/tools/r8/internal/nJ$o;->a:I

    if-ge v2, v3, :cond_8

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_8
    if-nez v1, :cond_a

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Xw;->a:Lcom/android/tools/r8/internal/nJ$o;

    iget v2, v2, Lcom/android/tools/r8/internal/nJ$o;->a:I

    if-ne v1, v2, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/n1;

    .line 17
    iget-object v5, p0, Lcom/android/tools/r8/internal/Xw;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v2, :cond_c

    move-object v3, v4

    move v2, v5

    goto :goto_5

    :cond_c
    if-ne v5, v2, :cond_b

    .line 18
    sget-boolean v5, Lcom/android/tools/r8/internal/Xw;->d:Z

    if-nez v5, :cond_e

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_e
    :goto_6
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Xw;->a(Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;

    move-result-object v3

    goto :goto_5

    .line 20
    :cond_f
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xw;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v2, :cond_10

    if-ne v1, v2, :cond_11

    .line 21
    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/Xw;->a(Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;

    move-result-object v1

    if-ne v1, v3, :cond_11

    .line 22
    :cond_10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_11
    sget-boolean p1, Lcom/android/tools/r8/internal/Xw;->d:Z

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xw;->a:Lcom/android/tools/r8/internal/nJ$o;

    iget v1, v1, Lcom/android/tools/r8/internal/nJ$o;->a:I

    if-ne p1, v1, :cond_12

    goto :goto_7

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_13
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Xw;->b(Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method
