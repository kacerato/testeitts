.class public final Lcom/android/tools/r8/internal/uq0;
.super Lcom/android/tools/r8/internal/wq0;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/internal/W5;

.field public final g:Lcom/android/tools/r8/internal/W5;

.field public final h:Ljava/util/LinkedHashMap;

.field public final synthetic i:Lcom/android/tools/r8/internal/xq0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xq0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/lq0;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/uq0;->i:Lcom/android/tools/r8/internal/xq0;

    invoke-direct {p0, p2, p3, p5, p6}, Lcom/android/tools/r8/internal/wq0;-><init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/lq0;Ljava/util/Set;)V

    iput-object p4, p0, Lcom/android/tools/r8/internal/uq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/uq0;->g:Lcom/android/tools/r8/internal/W5;

    invoke-static {p5}, Lcom/android/tools/r8/internal/uq0;->a(Lcom/android/tools/r8/internal/lq0;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/uq0;->h:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/lq0;)Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/wv1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/wv1;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/lq0;->o:[Lcom/android/tools/r8/graph/L2;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 4
    aget-object v3, v3, v2

    .line 5
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/tools/r8/internal/Tr0;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Lcom/android/tools/r8/internal/uq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 7
    iget-object v6, p0, Lcom/android/tools/r8/internal/uq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v7

    sget-object v8, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v4, v6, v5, v7, v8}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/uq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->O()V

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 11
    iget-object v4, p0, Lcom/android/tools/r8/internal/uq0;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/Al0;->b(I)Ljava/util/Set;

    move-result-object v4

    .line 12
    iget-object v6, p0, Lcom/android/tools/r8/internal/uq0;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 13
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 14
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/uq0;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, v5

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 16
    new-instance v8, Lcom/android/tools/r8/internal/vh;

    iget-object v9, p0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    iget-object v10, p0, Lcom/android/tools/r8/internal/uq0;->i:Lcom/android/tools/r8/internal/xq0;

    iget-object v10, v10, Lcom/android/tools/r8/internal/xq0;->f:Lcom/android/tools/r8/internal/de;

    .line 17
    invoke-interface {v9, v10, v5}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 18
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/L2;

    invoke-direct {v8, v9, v10}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    .line 19
    iget-object v9, p0, Lcom/android/tools/r8/internal/wq0;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 20
    new-instance v9, Lcom/android/tools/r8/internal/mK;

    iget-object v10, p0, Lcom/android/tools/r8/internal/uq0;->i:Lcom/android/tools/r8/internal/xq0;

    iget-object v10, v10, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 21
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v10

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1$d;->k:Lcom/android/tools/r8/graph/A2;

    iget-object v11, p0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 22
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v12

    .line 23
    invoke-interface {v11, v12, v5}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    .line 24
    iget-object v12, p0, Lcom/android/tools/r8/internal/wq0;->e:Lcom/android/tools/r8/internal/xw0;

    .line 25
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 26
    iget-object v10, p0, Lcom/android/tools/r8/internal/wq0;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 27
    new-instance v10, Lcom/android/tools/r8/internal/EB;

    sget-object v11, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    .line 28
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 29
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 30
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 31
    iget-object v11, p0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 32
    iget-object v11, v11, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    .line 33
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v11

    .line 34
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v12

    iget-object v13, p0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 35
    iget-object v13, v13, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 36
    invoke-static {v11, v12, v13}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;)Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    .line 37
    invoke-virtual {v11, v7}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 38
    iget-object v7, p0, Lcom/android/tools/r8/internal/wq0;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v7, v11}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 39
    iget-object v7, p0, Lcom/android/tools/r8/internal/wq0;->c:Ljava/util/Set;

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v7, v11

    .line 40
    :cond_3
    iget-object v11, p0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 41
    iget-object v11, v11, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    .line 42
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v11

    .line 43
    iget-object v12, p0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 44
    iget-object v12, v12, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 45
    new-array v13, v2, [Lcom/android/tools/r8/internal/zE;

    aput-object v8, v13, v1

    aput-object v9, v13, v0

    .line 46
    new-instance v8, Lcom/android/tools/r8/internal/W5;

    invoke-direct {v8, v12}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    move v9, v1

    :goto_3
    if-ge v9, v2, :cond_4

    .line 47
    aget-object v14, v13, v9

    .line 48
    invoke-virtual {v8, v14, v12}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    add-int/2addr v9, v0

    goto :goto_3

    .line 49
    :cond_4
    invoke-virtual {v8, v10, v12}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    .line 50
    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 51
    invoke-virtual {v8, v11}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 52
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 53
    iget-object v7, p0, Lcom/android/tools/r8/internal/wq0;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v7, v8}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 54
    iget-object v7, p0, Lcom/android/tools/r8/internal/wq0;->c:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_5

    .line 55
    iget-object v6, p0, Lcom/android/tools/r8/internal/uq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    .line 56
    iget-object v6, p0, Lcom/android/tools/r8/internal/uq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    goto :goto_4

    .line 57
    :cond_5
    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    :goto_4
    move-object v6, v8

    goto/16 :goto_2

    .line 58
    :cond_6
    sget-boolean v0, Lcom/android/tools/r8/internal/uq0;->j:Z

    if-nez v0, :cond_8

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/uq0;->g:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method
