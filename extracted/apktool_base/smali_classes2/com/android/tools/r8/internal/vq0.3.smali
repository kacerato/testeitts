.class public final Lcom/android/tools/r8/internal/vq0;
.super Lcom/android/tools/r8/internal/wq0;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/internal/W5;

.field public final g:Lcom/android/tools/r8/internal/W5;

.field public final h:Lcom/android/tools/r8/internal/W5;

.field public final i:Lcom/android/tools/r8/internal/W5;

.field public final j:Lcom/android/tools/r8/internal/vH;

.field public k:I

.field public final synthetic l:Lcom/android/tools/r8/internal/xq0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xq0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/lq0;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/vq0;->l:Lcom/android/tools/r8/internal/xq0;

    invoke-direct {p0, p2, p3, p5, p6}, Lcom/android/tools/r8/internal/wq0;-><init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/lq0;Ljava/util/Set;)V

    iput-object p4, p0, Lcom/android/tools/r8/internal/vq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/vq0;->g:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/vq0;->i:Lcom/android/tools/r8/internal/W5;

    invoke-static {p5}, Lcom/android/tools/r8/internal/vq0;->a(Lcom/android/tools/r8/internal/lq0;)Lcom/android/tools/r8/internal/vH;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/vq0;->j:Lcom/android/tools/r8/internal/vH;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/lq0;)Lcom/android/tools/r8/internal/vH;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/vH;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vH;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/ix1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/ix1;-><init>(Lcom/android/tools/r8/internal/SG;)V

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

.method public static synthetic a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/W5;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->l0()I

    move-result v0

    .line 7
    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/HG;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {p0, v0, v1}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 20

    move-object/from16 v0, p0

    .line 12
    iget-object v1, v0, Lcom/android/tools/r8/internal/vq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 13
    iget-object v4, v0, Lcom/android/tools/r8/internal/vq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/vq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->O()V

    .line 16
    iget-object v1, v0, Lcom/android/tools/r8/internal/vq0;->f:Lcom/android/tools/r8/internal/W5;

    .line 17
    iget-object v2, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 21
    iget-object v2, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    iget-object v6, v0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v10, Lcom/android/tools/r8/internal/f60;

    iget-object v2, v2, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v5

    sget-object v9, Lcom/android/tools/r8/internal/f60$a;->b:Lcom/android/tools/r8/internal/f60$a;

    const/4 v8, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/internal/f60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    .line 23
    iget-object v5, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    iget-object v2, v0, Lcom/android/tools/r8/internal/vq0;->l:Lcom/android/tools/r8/internal/xq0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    const/4 v2, -0x1

    int-to-long v7, v2

    .line 25
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v9

    move-object v4, v1

    invoke-interface/range {v4 .. v9}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 26
    invoke-virtual {v10, v4}, Lcom/android/tools/r8/internal/f60;->g(Lcom/android/tools/r8/internal/xw0;)V

    .line 27
    new-instance v5, Lcom/android/tools/r8/internal/mK;

    iget-object v6, v0, Lcom/android/tools/r8/internal/vq0;->l:Lcom/android/tools/r8/internal/xq0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 28
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$d;->x:Lcom/android/tools/r8/graph/A2;

    iget-object v7, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 29
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v8

    .line 30
    invoke-interface {v7, v8, v3}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 31
    iget-object v8, v0, Lcom/android/tools/r8/internal/wq0;->e:Lcom/android/tools/r8/internal/xw0;

    .line 32
    new-instance v9, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 33
    invoke-direct {v5, v6, v7, v9}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 34
    iget-object v6, v0, Lcom/android/tools/r8/internal/wq0;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 35
    invoke-interface {v1, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 36
    iget-object v6, v0, Lcom/android/tools/r8/internal/vq0;->j:Lcom/android/tools/r8/internal/vH;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/vH;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/gH;

    .line 37
    new-instance v7, Lcom/android/tools/r8/internal/uH;

    .line 38
    iget-object v6, v6, Lcom/android/tools/r8/internal/gH;->b:Lcom/android/tools/r8/internal/vH;

    .line 39
    invoke-direct {v7, v6}, Lcom/android/tools/r8/internal/uH;-><init>(Lcom/android/tools/r8/internal/vH;)V

    .line 40
    :goto_1
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/tH;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 41
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/tH;->a()Lcom/android/tools/r8/internal/hH;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    .line 42
    check-cast v6, Ljava/util/Map;

    .line 43
    iget-object v8, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 44
    iget-object v8, v8, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    .line 45
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v8

    .line 46
    iget-object v9, v0, Lcom/android/tools/r8/internal/wq0;->d:Lcom/android/tools/r8/internal/B60;

    iget-object v11, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 47
    iget-object v11, v11, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 48
    invoke-static {v8, v9, v11}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;)Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    .line 49
    iget-object v9, v0, Lcom/android/tools/r8/internal/wq0;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v9, v8}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 50
    iget-object v9, v0, Lcom/android/tools/r8/internal/vq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 51
    iget-object v9, v0, Lcom/android/tools/r8/internal/wq0;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v9}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/W5;

    .line 52
    sget-boolean v11, Lcom/android/tools/r8/internal/vq0;->m:Z

    if-nez v11, :cond_2

    if-ne v9, v8, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 53
    :cond_2
    :goto_2
    iget-object v9, v0, Lcom/android/tools/r8/internal/wq0;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 54
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 55
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 56
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v11

    .line 57
    iget-object v12, v0, Lcom/android/tools/r8/internal/vq0;->l:Lcom/android/tools/r8/internal/xq0;

    iget-object v12, v12, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v13, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 58
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/L2;

    invoke-interface {v11, v12, v13, v9}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 59
    iget-object v12, v0, Lcom/android/tools/r8/internal/wq0;->c:Ljava/util/Set;

    invoke-interface {v12, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v12, Lcom/android/tools/r8/internal/mK;

    iget-object v13, v0, Lcom/android/tools/r8/internal/vq0;->l:Lcom/android/tools/r8/internal/xq0;

    iget-object v13, v13, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 61
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v13

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1$d;->k:Lcom/android/tools/r8/graph/A2;

    iget-object v14, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 62
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v15

    .line 63
    invoke-interface {v14, v15, v3}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    .line 64
    iget-object v15, v0, Lcom/android/tools/r8/internal/wq0;->e:Lcom/android/tools/r8/internal/xw0;

    .line 65
    invoke-static {v15, v9}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v9

    invoke-direct {v12, v13, v14, v9}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 66
    iget-object v9, v0, Lcom/android/tools/r8/internal/wq0;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v12, v9}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 67
    invoke-interface {v11, v12}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 68
    iget-object v9, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 69
    iget-object v9, v9, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    .line 70
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v9

    .line 71
    iget-object v13, v0, Lcom/android/tools/r8/internal/wq0;->d:Lcom/android/tools/r8/internal/B60;

    iget-object v14, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 72
    iget-object v14, v14, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 73
    iget-object v15, v0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    .line 74
    invoke-static {v9, v13, v14, v15}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    .line 75
    iget-object v13, v0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v13, v0, Lcom/android/tools/r8/internal/wq0;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v13, v9}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 78
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v14

    iget-object v15, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    iget-object v9, v0, Lcom/android/tools/r8/internal/vq0;->l:Lcom/android/tools/r8/internal/xq0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 79
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v16

    iget v9, v0, Lcom/android/tools/r8/internal/vq0;->k:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lcom/android/tools/r8/internal/vq0;->k:I

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v2, v9

    .line 80
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v19

    move-wide/from16 v17, v2

    invoke-interface/range {v14 .. v19}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 81
    invoke-virtual {v10, v2}, Lcom/android/tools/r8/internal/f60;->g(Lcom/android/tools/r8/internal/xw0;)V

    .line 82
    iget-object v2, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 83
    iget-object v2, v2, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    .line 84
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v2

    .line 85
    iget-object v3, v0, Lcom/android/tools/r8/internal/wq0;->d:Lcom/android/tools/r8/internal/B60;

    iget-object v9, v0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    .line 86
    iget-object v9, v9, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 87
    iget-object v14, v0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    .line 88
    invoke-static {v2, v3, v9, v14}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    .line 89
    iget-object v3, v0, Lcom/android/tools/r8/internal/wq0;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v3, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 91
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 92
    new-instance v3, Lcom/android/tools/r8/internal/EB;

    sget-object v8, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    const/4 v8, 0x0

    .line 93
    invoke-interface {v11, v3, v8}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    move-object v3, v8

    move-object v8, v2

    const/4 v2, -0x1

    goto/16 :goto_3

    .line 94
    :cond_3
    invoke-virtual {v10, v4}, Lcom/android/tools/r8/internal/f60;->g(Lcom/android/tools/r8/internal/xw0;)V

    .line 95
    iget-object v2, v0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 96
    :cond_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/vq0;->f:Lcom/android/tools/r8/internal/W5;

    iget-object v3, v0, Lcom/android/tools/r8/internal/vq0;->g:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 97
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 98
    iget-object v3, v0, Lcom/android/tools/r8/internal/vq0;->j:Lcom/android/tools/r8/internal/vH;

    .line 99
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/vH;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v3

    const/4 v4, 0x0

    .line 100
    new-array v5, v4, [I

    check-cast v3, Lcom/android/tools/r8/internal/W;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/W;->a([I)[I

    move-result-object v3

    .line 101
    array-length v5, v3

    new-array v6, v5, [I

    .line 102
    iget-object v7, v0, Lcom/android/tools/r8/internal/vq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->L()I

    move-result v7

    move v8, v4

    :goto_4
    if-ge v8, v5, :cond_5

    add-int v9, v8, v7

    .line 103
    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 104
    :cond_5
    iget-object v5, v0, Lcom/android/tools/r8/internal/vq0;->f:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 105
    new-instance v7, Lcom/android/tools/r8/internal/tI;

    invoke-direct {v7, v2, v3, v6, v5}, Lcom/android/tools/r8/internal/tI;-><init>(Lcom/android/tools/r8/internal/xw0;[I[II)V

    .line 106
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    const/4 v2, 0x0

    .line 107
    invoke-interface {v1, v7, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 108
    new-instance v1, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    const/4 v2, -0x1

    .line 109
    iput v2, v1, Lcom/android/tools/r8/internal/x1;->b:I

    .line 110
    iget-object v2, v0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 111
    iget-object v2, v0, Lcom/android/tools/r8/internal/vq0;->j:Lcom/android/tools/r8/internal/vH;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vH;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/gH;

    .line 112
    new-instance v3, Lcom/android/tools/r8/internal/uH;

    .line 113
    iget-object v2, v2, Lcom/android/tools/r8/internal/gH;->b:Lcom/android/tools/r8/internal/vH;

    .line 114
    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/uH;-><init>(Lcom/android/tools/r8/internal/vH;)V

    .line 115
    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/tH;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 116
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/tH;->a()Lcom/android/tools/r8/internal/hH;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    .line 117
    check-cast v2, Ljava/util/Map;

    .line 118
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 119
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    .line 120
    iget-object v6, v0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6, v5}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 121
    iget-object v6, v0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    goto :goto_5

    .line 122
    :cond_8
    iget-object v2, v0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/vq0;->i:Lcom/android/tools/r8/internal/W5;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget v2, v0, Lcom/android/tools/r8/internal/vq0;->k:I

    .line 124
    sget-boolean v3, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 125
    new-array v3, v2, [I

    move v5, v4

    :goto_6
    if-ge v5, v2, :cond_9

    .line 126
    aput v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 127
    :cond_9
    new-array v2, v2, [I

    .line 128
    iget-object v5, v0, Lcom/android/tools/r8/internal/vq0;->j:Lcom/android/tools/r8/internal/vH;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/vH;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/gH;

    .line 129
    new-instance v6, Lcom/android/tools/r8/internal/uH;

    .line 130
    iget-object v5, v5, Lcom/android/tools/r8/internal/gH;->b:Lcom/android/tools/r8/internal/vH;

    .line 131
    invoke-direct {v6, v5}, Lcom/android/tools/r8/internal/uH;-><init>(Lcom/android/tools/r8/internal/vH;)V

    .line 132
    :cond_a
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tH;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 133
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tH;->a()Lcom/android/tools/r8/internal/hH;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    .line 134
    check-cast v5, Ljava/util/Map;

    .line 135
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    add-int/lit8 v8, v4, 0x1

    .line 136
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v7

    aput v7, v2, v4

    move v4, v8

    goto :goto_7

    .line 137
    :cond_b
    iget v1, v1, Lcom/android/tools/r8/internal/qd0;->i:I

    .line 138
    new-instance v4, Lcom/android/tools/r8/internal/tI;

    invoke-direct {v4, v10, v3, v2, v1}, Lcom/android/tools/r8/internal/tI;-><init>(Lcom/android/tools/r8/internal/xw0;[I[II)V

    .line 139
    iget-object v1, v0, Lcom/android/tools/r8/internal/vq0;->h:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    const/4 v2, 0x0

    .line 141
    invoke-interface {v1, v4, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method
