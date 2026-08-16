.class public final Lcom/android/tools/r8/internal/h9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic t:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Lcom/android/tools/r8/internal/fB;

.field public d:Ljava/util/HashMap;

.field public e:Ljava/util/HashSet;

.field public f:Ljava/util/ArrayList;

.field public g:Lcom/android/tools/r8/internal/Ya;

.field public h:Lcom/android/tools/r8/internal/B60;

.field public i:Lcom/android/tools/r8/internal/B60;

.field public final j:Lcom/android/tools/r8/internal/dH;

.field public k:Lcom/android/tools/r8/internal/dH;

.field public l:Z

.field public m:Lcom/android/tools/r8/internal/W5;

.field public final n:Ljava/util/ArrayList;

.field public final o:Lcom/android/tools/r8/internal/dH;

.field public p:Ljava/util/HashMap;

.field public q:Ljava/util/ArrayList;

.field public r:Ljava/util/HashMap;

.field public final s:Lcom/android/tools/r8/internal/t8;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/h9;->h:Lcom/android/tools/r8/internal/B60;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/h9;->i:Lcom/android/tools/r8/internal/B60;

    new-instance v1, Lcom/android/tools/r8/internal/dH;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/h9;->j:Lcom/android/tools/r8/internal/dH;

    iput-object v0, p0, Lcom/android/tools/r8/internal/h9;->k:Lcom/android/tools/r8/internal/dH;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/h9;->l:Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/h9;->m:Lcom/android/tools/r8/internal/W5;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/h9;->n:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/tools/r8/internal/dH;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/h9;->o:Lcom/android/tools/r8/internal/dH;

    iput-object p1, p0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/h9;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    sget-object p1, Lcom/android/tools/r8/internal/u8;->b:Lcom/android/tools/r8/internal/u8;

    new-instance p1, Lcom/android/tools/r8/internal/t8;

    invoke-direct {p1, p4}, Lcom/android/tools/r8/internal/t8;-><init>(Lcom/android/tools/r8/internal/v8;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/h9;->s:Lcom/android/tools/r8/internal/t8;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;
    .locals 0

    .line 35
    new-instance p0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/ir/optimize/F;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)Lcom/android/tools/r8/graph/G;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/wc1;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/wc1;-><init>(Lcom/android/tools/r8/internal/fB;)V

    const-string v2, "Trace blocks"

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 2
    new-instance v2, Lcom/android/tools/r8/internal/xc1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/xc1;-><init>(Lcom/android/tools/r8/internal/h9;)V

    const-string v3, "Compute Initializers"

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 3
    const-string v2, "Compute verification types"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 4
    new-instance v2, Lcom/android/tools/r8/internal/Ku0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/Ku0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ku0;->a()V

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 7
    sget-boolean v3, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/ir/optimize/F;->b(Lcom/android/tools/r8/internal/fB;)V

    .line 8
    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/yc1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/yc1;-><init>(Lcom/android/tools/r8/internal/h9;)V

    const-string v4, "Rewrite nots"

    invoke-virtual {v1, v4, v3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 9
    const-string v3, "Insert loads and stores"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 10
    new-instance v3, Lcom/android/tools/r8/internal/NT;

    iget-object v4, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-direct {v3, v4, v5, v2}, Lcom/android/tools/r8/internal/NT;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Ku0;)V

    .line 11
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v4, v3, Lcom/android/tools/r8/internal/NT;->d:Ljava/util/IdentityHashMap;

    .line 12
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v4

    iput-object v4, v3, Lcom/android/tools/r8/internal/NT;->e:Lcom/android/tools/r8/internal/Z5;

    .line 13
    :goto_0
    iget-object v4, v3, Lcom/android/tools/r8/internal/NT;->e:Lcom/android/tools/r8/internal/Z5;

    .line 14
    iget-object v4, v4, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 15
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    iget-object v4, v3, Lcom/android/tools/r8/internal/NT;->e:Lcom/android/tools/r8/internal/Z5;

    .line 17
    iget-object v5, v4, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 18
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    iput-object v5, v4, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 19
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v4

    iput-object v4, v3, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    .line 20
    :goto_1
    iget-object v4, v3, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    iget-object v4, v3, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 22
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/NT;)V

    goto :goto_1

    .line 23
    :cond_1
    iget-object v4, v3, Lcom/android/tools/r8/internal/NT;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->clear()V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 24
    iput-object v4, v3, Lcom/android/tools/r8/internal/NT;->d:Ljava/util/IdentityHashMap;

    .line 25
    iput-object v4, v3, Lcom/android/tools/r8/internal/NT;->e:Lcom/android/tools/r8/internal/Z5;

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 27
    iget-object v5, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    .line 28
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    .line 29
    const-string v7, "After load/store insertion"

    move-object/from16 v8, p3

    invoke-static {v5, v7, v8, v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v5

    .line 30
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/tools/r8/internal/nJ;->K0:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 31
    const-string v6, "Load store optimizations (BasicBlockMunching)"

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 32
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-static {v6}, Lcom/android/tools/r8/ir/optimize/i0;->a(Lcom/android/tools/r8/internal/fB;)Z

    move v6, v7

    :goto_2
    if-nez v6, :cond_3

    .line 33
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v9, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    .line 34
    new-instance v10, Lcom/android/tools/r8/internal/jf0;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/jf0;-><init>()V

    new-instance v11, Lcom/android/tools/r8/internal/cY;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/cY;-><init>()V

    new-instance v12, Lcom/android/tools/r8/internal/Po0;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/Po0;-><init>()V

    invoke-static {v10, v11, v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v10

    .line 35
    invoke-static {v6, v10, v9}, Lcom/android/tools/r8/internal/a6;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nJ;)V

    .line 36
    new-instance v10, Lcom/android/tools/r8/internal/Ro0;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/Ro0;-><init>()V

    new-instance v11, Lcom/android/tools/r8/internal/Po0;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/Po0;-><init>()V

    new-instance v12, Lcom/android/tools/r8/internal/KT;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/KT;-><init>()V

    new-instance v13, Lcom/android/tools/r8/internal/ut;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/ut;-><init>()V

    new-instance v14, Lcom/android/tools/r8/internal/Qo0;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/Qo0;-><init>()V

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v10

    .line 37
    invoke-static {v6, v10, v9}, Lcom/android/tools/r8/internal/a6;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nJ;)V

    .line 38
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-static {v6}, Lcom/android/tools/r8/ir/optimize/i0;->a(Lcom/android/tools/r8/internal/fB;)Z

    move-result v6

    xor-int/2addr v6, v8

    goto :goto_2

    .line 39
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 40
    :cond_4
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 41
    sget-boolean v6, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/fB;->b(Z)V

    .line 42
    :cond_5
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v9, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    .line 43
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    .line 44
    const-string v10, "After load/store optimization"

    invoke-static {v6, v10, v5, v9}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v5

    .line 45
    const-string v6, "Insert uninitialized local reads"

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 46
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    iget-object v9, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 47
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_5

    .line 48
    :cond_6
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v6

    .line 49
    iget-object v9, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v9, v9, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 50
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v11

    if-nez v11, :cond_7

    .line 51
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v10

    .line 52
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v11

    .line 53
    sget-boolean v12, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v12, :cond_9

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 54
    :cond_9
    :goto_4
    new-instance v12, Lcom/android/tools/r8/internal/hv0;

    iget-object v13, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/fB;->m()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/tools/r8/internal/hv0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 55
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 56
    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v10, v12, v11}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    goto :goto_3

    .line 58
    :cond_a
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 59
    const-string v9, "Register allocation"

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 60
    new-instance v9, Lcom/android/tools/r8/internal/Ya;

    iget-object v10, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    iget-object v11, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-direct {v9, v10, v11, v2}, Lcom/android/tools/r8/internal/Ya;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Ku0;)V

    iput-object v9, v0, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    .line 61
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Ya;->b()V

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 63
    const-string v2, "Remove uninitialized local reads"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 64
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 65
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/hv0;

    .line 66
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    .line 67
    iget-object v9, v9, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 68
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_6

    .line 69
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 70
    const-string v2, "Insert phi moves"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 71
    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/Ya;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 73
    new-instance v2, Lcom/android/tools/r8/internal/lt0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/lt0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 74
    const-string v3, "BasicBlock peephole optimizations"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move v3, v7

    :goto_7
    const/4 v6, 0x2

    if-ge v3, v6, :cond_c

    .line 75
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2, v6, v1}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 76
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v9, v0, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    invoke-static {v6, v9}, Lcom/android/tools/r8/ir/optimize/h0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;)V

    .line 77
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v9, v0, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    const/16 v10, 0x1e

    invoke-static {v6, v9, v10}, Lcom/android/tools/r8/ir/optimize/h0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 78
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 79
    new-instance v3, Lcom/android/tools/r8/internal/zc1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/zc1;-><init>(Lcom/android/tools/r8/internal/h9;)V

    const-string v9, "Rewrite Iinc patterns"

    invoke-virtual {v1, v9, v3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 80
    iget-object v3, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 81
    const-string v2, "Remove redundant debug positions"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 82
    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 84
    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v3, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    const-string v9, "Before CF building"

    invoke-static {v2, v9, v5, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    .line 85
    const-string v2, "Build CF Code"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 86
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v3, v3, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v0, Lcom/android/tools/r8/internal/h9;->d:Ljava/util/HashMap;

    .line 88
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v3, v3, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, v0, Lcom/android/tools/r8/internal/h9;->e:Ljava/util/HashSet;

    .line 89
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/tools/r8/internal/h9;->p:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v0, Lcom/android/tools/r8/internal/h9;->r:Ljava/util/HashMap;

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    .line 91
    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v2

    .line 92
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 93
    sget-object v5, Lcom/android/tools/r8/internal/N8;->f:Lcom/android/tools/r8/internal/N8;

    move-object v10, v4

    move v9, v7

    move v11, v9

    move v12, v8

    .line 94
    :goto_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v13

    .line 95
    invoke-virtual {v5, v13}, Lcom/android/tools/r8/internal/N8;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 96
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/N8;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_e

    .line 97
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;

    move-result-object v15

    .line 98
    sget-boolean v16, Lcom/android/tools/r8/internal/Db;->e:Z

    .line 99
    iget-object v7, v5, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 100
    new-instance v6, Ljava/util/ArrayList;

    .line 101
    iget-object v4, v5, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 102
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    iget-object v4, v5, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 104
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 105
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 106
    :cond_d
    new-instance v4, Lcom/android/tools/r8/internal/Db;

    invoke-direct {v4, v10, v15, v7, v6}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    .line 107
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v4, v0, Lcom/android/tools/r8/internal/h9;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 109
    iget-object v4, v0, Lcom/android/tools/r8/internal/h9;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v4, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_e
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/N8;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 112
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;

    move-result-object v10

    .line 113
    iget-object v4, v0, Lcom/android/tools/r8/internal/h9;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 114
    iget-object v4, v0, Lcom/android/tools/r8/internal/h9;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v4, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object v5, v13

    .line 116
    :cond_10
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    .line 117
    :goto_a
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_12

    .line 118
    iput-object v3, v0, Lcom/android/tools/r8/internal/h9;->m:Lcom/android/tools/r8/internal/W5;

    .line 119
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;

    move-result-object v6

    .line 120
    iget-object v7, v0, Lcom/android/tools/r8/internal/h9;->e:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 121
    iget-object v7, v0, Lcom/android/tools/r8/internal/h9;->e:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v7, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_12
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    .line 124
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    if-eq v7, v4, :cond_14

    .line 125
    :cond_13
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/sL;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    if-ne v6, v4, :cond_15

    :cond_14
    move v9, v8

    goto :goto_b

    :cond_15
    const/4 v9, 0x0

    .line 126
    :goto_b
    iget-object v6, v3, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    if-nez v6, :cond_17

    .line 127
    sget-boolean v6, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v6, :cond_18

    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->k:Lcom/android/tools/r8/internal/dH;

    if-nez v6, :cond_16

    goto :goto_c

    :cond_16
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 128
    :cond_17
    new-instance v7, Lcom/android/tools/r8/internal/dH;

    .line 129
    iget v13, v6, Lcom/android/tools/r8/internal/dH;->h:I

    .line 130
    invoke-direct {v7, v13}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 131
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    .line 132
    iput-object v7, v0, Lcom/android/tools/r8/internal/h9;->k:Lcom/android/tools/r8/internal/dH;

    .line 133
    iput-boolean v8, v0, Lcom/android/tools/r8/internal/h9;->l:Z

    .line 134
    :cond_18
    :goto_c
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_d
    if-ge v13, v7, :cond_1b

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v13, v13, 0x1

    check-cast v17, Lcom/android/tools/r8/internal/Ju0;

    .line 135
    invoke-interface/range {v17 .. v17}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v17

    .line 136
    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/graph/M2;->J0()Z

    move-result v18

    if-nez v18, :cond_1a

    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v17

    if-eqz v17, :cond_19

    goto :goto_e

    :cond_19
    move/from16 v17, v8

    goto :goto_f

    :cond_1a
    :goto_e
    const/16 v17, 0x2

    :goto_f
    add-int v15, v15, v17

    goto :goto_d

    .line 137
    :cond_1b
    sget-boolean v6, Lcom/android/tools/r8/internal/g9;->a:Z

    if-nez v6, :cond_1d

    if-gt v15, v11, :cond_1c

    goto :goto_10

    :cond_1c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 138
    :cond_1d
    :goto_10
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->m:Lcom/android/tools/r8/internal/W5;

    if-eqz v6, :cond_31

    .line 139
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v6

    :cond_1e
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 140
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v13

    if-nez v13, :cond_1e

    .line 141
    instance-of v13, v7, Lcom/android/tools/r8/internal/bY;

    if-nez v13, :cond_1e

    .line 142
    instance-of v8, v7, Lcom/android/tools/r8/internal/fj;

    if-nez v8, :cond_1f

    if-nez v13, :cond_1f

    .line 143
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    if-ne v7, v4, :cond_20

    :cond_1f
    const/4 v8, 0x1

    goto :goto_11

    :cond_20
    const/4 v6, 0x1

    goto :goto_12

    :cond_21
    const/4 v6, 0x0

    .line 144
    :goto_12
    sget-boolean v7, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v7, :cond_23

    if-nez v6, :cond_23

    if-eqz v4, :cond_22

    goto :goto_13

    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_23
    :goto_13
    if-eqz v6, :cond_31

    .line 145
    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->m:Lcom/android/tools/r8/internal/W5;

    .line 146
    iget-object v8, v0, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    .line 147
    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v13

    .line 148
    iget-object v1, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 149
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    instance-of v1, v1, Lcom/android/tools/r8/internal/bY;

    if-eqz v1, :cond_29

    if-nez v7, :cond_25

    .line 152
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_14

    :cond_24
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 153
    :cond_25
    :goto_14
    iget-object v1, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ko0;

    .line 155
    iget-object v1, v1, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    .line 156
    instance-of v7, v1, Lcom/android/tools/r8/internal/Gu0;

    if-eqz v7, :cond_26

    .line 157
    check-cast v1, Lcom/android/tools/r8/internal/Gu0;

    .line 158
    iget-object v1, v1, Lcom/android/tools/r8/internal/Gu0;->a:Lcom/android/tools/r8/graph/M2;

    .line 159
    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v1

    goto :goto_15

    .line 160
    :cond_26
    invoke-virtual {v0, v6, v1}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Ju0;)Lcom/android/tools/r8/internal/bv0;

    move-result-object v7

    if-eqz v7, :cond_27

    move-object v1, v7

    goto :goto_15

    .line 161
    :cond_27
    invoke-interface {v1}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v1

    .line 162
    :goto_15
    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/G9$a;

    :cond_28
    move-object/from16 v17, v2

    goto :goto_18

    .line 163
    :cond_29
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/G9$a;->a(I)V

    .line 164
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_16
    if-ge v7, v1, :cond_28

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v1

    move-object/from16 v1, v17

    check-cast v1, Lcom/android/tools/r8/internal/Ju0;

    move-object/from16 v17, v2

    .line 165
    instance-of v2, v1, Lcom/android/tools/r8/internal/Gu0;

    if-eqz v2, :cond_2a

    .line 166
    check-cast v1, Lcom/android/tools/r8/internal/Gu0;

    .line 167
    iget-object v1, v1, Lcom/android/tools/r8/internal/Gu0;->a:Lcom/android/tools/r8/graph/M2;

    .line 168
    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v1

    goto :goto_17

    .line 169
    :cond_2a
    invoke-virtual {v0, v6, v1}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Ju0;)Lcom/android/tools/r8/internal/bv0;

    move-result-object v2

    if-eqz v2, :cond_2b

    move-object v1, v2

    goto :goto_17

    .line 170
    :cond_2b
    invoke-interface {v1}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v1

    .line 171
    :goto_17
    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/G9$a;

    move-object/from16 v2, v17

    move/from16 v1, v19

    goto :goto_16

    .line 172
    :goto_18
    iget-object v1, v0, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/Xa;->a:Lcom/android/tools/r8/internal/dH;

    .line 173
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/aH;

    .line 174
    new-instance v2, Lcom/android/tools/r8/internal/WG;

    .line 175
    iget-object v1, v1, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    .line 176
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 177
    :goto_19
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/RG;

    .line 178
    invoke-interface {v1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ju0;

    .line 179
    instance-of v8, v1, Lcom/android/tools/r8/internal/Gu0;

    if-eqz v8, :cond_2c

    .line 180
    check-cast v1, Lcom/android/tools/r8/internal/Gu0;

    .line 181
    iget-object v1, v1, Lcom/android/tools/r8/internal/Gu0;->a:Lcom/android/tools/r8/graph/M2;

    .line 182
    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v1

    goto :goto_1a

    .line 183
    :cond_2c
    invoke-virtual {v0, v6, v1}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Ju0;)Lcom/android/tools/r8/internal/bv0;

    move-result-object v8

    if-eqz v8, :cond_2d

    move-object v1, v8

    goto :goto_1a

    .line 184
    :cond_2d
    invoke-interface {v1}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v1

    .line 185
    :goto_1a
    invoke-virtual {v13, v7, v1}, Lcom/android/tools/r8/internal/G9$a;->a(ILcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    goto :goto_19

    .line 186
    :cond_2e
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v1

    .line 187
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/h9;->l:Z

    if-nez v2, :cond_2f

    const/4 v2, 0x0

    goto :goto_1b

    .line 188
    :cond_2f
    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->j:Lcom/android/tools/r8/internal/dH;

    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->k:Lcom/android/tools/r8/internal/dH;

    invoke-static {v2, v6}, Lcom/android/tools/r8/graph/j0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Z

    move-result v2

    const/4 v6, 0x1

    xor-int/2addr v2, v6

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/h9;->l:Z

    :goto_1b
    if-eqz v2, :cond_30

    .line 189
    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/tools/r8/internal/ib;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/ka;

    move-result-object v2

    .line 190
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/ka;)V

    .line 191
    :cond_30
    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 192
    iput-object v1, v0, Lcom/android/tools/r8/internal/h9;->m:Lcom/android/tools/r8/internal/W5;

    goto :goto_1c

    :cond_31
    move-object/from16 v17, v2

    const/4 v1, 0x0

    .line 193
    :goto_1c
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    if-eqz v9, :cond_33

    .line 194
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 195
    sget-boolean v2, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v2, :cond_48

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    if-ne v2, v6, :cond_32

    goto/16 :goto_26

    :cond_32
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 196
    :cond_33
    iget-object v7, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_1e
    if-ltz v7, :cond_37

    .line 198
    iget-object v8, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result v8

    if-eqz v8, :cond_36

    .line 200
    iget-object v8, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 201
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    .line 202
    sget-boolean v13, Lcom/android/tools/r8/internal/g9;->a:Z

    if-nez v13, :cond_35

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result v13

    if-eqz v13, :cond_34

    goto :goto_1f

    :cond_34
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 203
    :cond_35
    :goto_1f
    iget-object v8, v8, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 204
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v8

    sub-int/2addr v15, v8

    :cond_36
    add-int/lit8 v7, v7, -0x1

    goto :goto_1e

    .line 205
    :cond_37
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-eqz v7, :cond_3c

    .line 206
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 207
    instance-of v8, v7, Lcom/android/tools/r8/internal/ko0;

    if-eqz v8, :cond_3a

    .line 208
    sget-boolean v8, Lcom/android/tools/r8/internal/g9;->a:Z

    if-nez v8, :cond_39

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    instance-of v8, v7, Lcom/android/tools/r8/internal/ko0;

    if-eqz v8, :cond_38

    goto :goto_20

    .line 210
    :cond_38
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 211
    :cond_39
    :goto_20
    iget-object v8, v7, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 212
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v8

    add-int/2addr v15, v8

    .line 213
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 214
    :cond_3a
    instance-of v8, v7, Lcom/android/tools/r8/internal/lo0;

    if-eqz v8, :cond_3c

    .line 215
    check-cast v7, Lcom/android/tools/r8/internal/lo0;

    .line 216
    iget-object v7, v7, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 217
    array-length v8, v7

    const/4 v13, 0x0

    :goto_21
    if-ge v13, v8, :cond_3c

    aget-object v1, v7, v13

    .line 218
    sget-boolean v19, Lcom/android/tools/r8/internal/g9;->a:Z

    if-nez v19, :cond_3b

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    :cond_3b
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 220
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v1

    add-int/2addr v15, v1

    .line 221
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_21

    .line 222
    :cond_3c
    instance-of v1, v6, Lcom/android/tools/r8/internal/fj;

    if-eqz v1, :cond_3d

    .line 223
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->M()Lcom/android/tools/r8/internal/fj;

    move-result-object v1

    iget-object v6, v0, Lcom/android/tools/r8/internal/h9;->k:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/fj;->a(Lcom/android/tools/r8/internal/SG;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    .line 224
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/h9;->l:Z

    goto/16 :goto_25

    .line 225
    :cond_3d
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 226
    iget-object v1, v0, Lcom/android/tools/r8/internal/h9;->r:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/android/tools/r8/internal/ib;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/ka;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_3e
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 228
    iget-object v7, v0, Lcom/android/tools/r8/internal/h9;->i:Lcom/android/tools/r8/internal/B60;

    if-nez v7, :cond_3f

    .line 229
    iput-object v1, v0, Lcom/android/tools/r8/internal/h9;->i:Lcom/android/tools/r8/internal/B60;

    .line 230
    :cond_3f
    iget-boolean v7, v0, Lcom/android/tools/r8/internal/h9;->l:Z

    if-nez v7, :cond_40

    const/4 v7, 0x0

    goto :goto_22

    .line 231
    :cond_40
    iget-object v7, v0, Lcom/android/tools/r8/internal/h9;->j:Lcom/android/tools/r8/internal/dH;

    iget-object v8, v0, Lcom/android/tools/r8/internal/h9;->k:Lcom/android/tools/r8/internal/dH;

    invoke-static {v7, v8}, Lcom/android/tools/r8/graph/j0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    iput-boolean v7, v0, Lcom/android/tools/r8/internal/h9;->l:Z

    .line 232
    :goto_22
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v8

    if-nez v8, :cond_43

    .line 233
    iget-object v8, v0, Lcom/android/tools/r8/internal/h9;->h:Lcom/android/tools/r8/internal/B60;

    if-eq v1, v8, :cond_43

    .line 234
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 235
    instance-of v8, v1, Lcom/android/tools/r8/internal/B60$c;

    if-eqz v8, :cond_41

    .line 236
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v8

    if-eqz v8, :cond_43

    :cond_41
    iget-object v8, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    .line 237
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v8, :cond_42

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v8

    if-eqz v8, :cond_43

    :cond_42
    const/4 v8, 0x1

    goto :goto_23

    :cond_43
    const/4 v8, 0x0

    :goto_23
    if-nez v7, :cond_44

    if-nez v8, :cond_44

    goto :goto_24

    .line 238
    :cond_44
    iget-object v13, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/android/tools/r8/internal/ib;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/ka;

    move-result-object v13

    if-eqz v7, :cond_45

    .line 239
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/ka;)V

    :cond_45
    if-eqz v8, :cond_46

    .line 240
    new-instance v7, Lcom/android/tools/r8/internal/Ma;

    invoke-direct {v7, v13, v1}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    .line 241
    iget-object v8, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iput-object v1, v0, Lcom/android/tools/r8/internal/h9;->h:Lcom/android/tools/r8/internal/B60;

    .line 243
    :cond_46
    :goto_24
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/h9;)V

    :cond_47
    :goto_25
    const/4 v1, 0x0

    goto/16 :goto_1d

    .line 244
    :cond_48
    :goto_26
    sget-boolean v1, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v1, :cond_4a

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v1

    if-eqz v1, :cond_4a

    if-nez v15, :cond_49

    goto :goto_27

    :cond_49
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4a
    :goto_27
    if-eqz v12, :cond_4b

    const/4 v12, 0x0

    :cond_4b
    if-nez v4, :cond_5d

    .line 245
    iget-object v1, v0, Lcom/android/tools/r8/internal/h9;->o:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 246
    iget-object v1, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/ib;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/ka;

    move-result-object v1

    .line 247
    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->o:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dH;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/VG;

    .line 248
    new-instance v3, Lcom/android/tools/r8/internal/cH;

    .line 249
    iget-object v2, v2, Lcom/android/tools/r8/internal/VG;->b:Lcom/android/tools/r8/internal/dH;

    .line 250
    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/cH;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 251
    :goto_28
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 252
    iget-object v2, v3, Lcom/android/tools/r8/internal/cH;->h:Lcom/android/tools/r8/internal/dH;

    iget-object v2, v2, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/bH;->a()I

    move-result v4

    aget-object v2, v2, v4

    .line 253
    check-cast v2, Lcom/android/tools/r8/graph/G$a;

    .line 254
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/G$a;->a(Lcom/android/tools/r8/internal/ka;)V

    .line 255
    iget-object v4, v0, Lcom/android/tools/r8/internal/h9;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 256
    :cond_4c
    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 257
    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 258
    iget-object v1, v0, Lcom/android/tools/r8/internal/h9;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v1

    .line 259
    iget-object v1, v1, Lcom/android/tools/r8/graph/G;->l:Lcom/android/tools/r8/position/Position;

    :cond_4d
    move-object/from16 v16, v1

    .line 260
    iget-object v1, v0, Lcom/android/tools/r8/internal/h9;->h:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, v0, Lcom/android/tools/r8/internal/h9;->i:Lcom/android/tools/r8/internal/B60;

    if-eqz v1, :cond_53

    .line 261
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_2c

    .line 262
    :cond_4e
    iget-object v1, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object v1

    if-eqz v1, :cond_4f

    const/4 v6, 0x1

    goto :goto_29

    :cond_4f
    const/4 v6, 0x2

    .line 263
    :goto_29
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    .line 264
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v6

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v1, :cond_50

    move-object v3, v1

    goto :goto_2a

    .line 265
    :cond_50
    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 266
    :goto_2a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v4, Lcom/android/tools/r8/internal/Ma;

    iget-object v5, v0, Lcom/android/tools/r8/internal/h9;->i:Lcom/android/tools/r8/internal/B60;

    invoke-direct {v4, v3, v5}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_51

    const/4 v6, 0x0

    goto :goto_2b

    :cond_51
    const/4 v6, 0x1

    .line 268
    :goto_2b
    iget-object v1, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_52

    .line 269
    iget-object v1, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 270
    :cond_52
    iput-object v2, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    .line 271
    :cond_53
    :goto_2c
    new-instance v1, Lcom/android/tools/r8/graph/G;

    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->b:Lcom/android/tools/r8/graph/H5;

    .line 272
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    .line 273
    iget v2, v2, Lcom/android/tools/r8/internal/Ya;->l:I

    const/4 v3, 0x1

    add-int/lit8 v12, v2, 0x1

    .line 274
    iget-object v13, v0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    iget-object v15, v0, Lcom/android/tools/r8/internal/h9;->n:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->s:Lcom/android/tools/r8/internal/t8;

    .line 275
    iget-object v4, v2, Lcom/android/tools/r8/internal/t8;->b:Ljava/util/IdentityHashMap;

    .line 276
    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 277
    sget-object v2, Lcom/android/tools/r8/internal/u8;->b:Lcom/android/tools/r8/internal/u8;

    move-object/from16 v17, v2

    goto :goto_2d

    .line 278
    :cond_54
    new-instance v4, Lcom/android/tools/r8/internal/u8;

    iget-object v2, v2, Lcom/android/tools/r8/internal/t8;->b:Ljava/util/IdentityHashMap;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/u8;-><init>(Ljava/util/Map;)V

    move-object/from16 v17, v4

    :goto_2d
    move-object v9, v1

    .line 279
    invoke-direct/range {v9 .. v17}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/internal/u8;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 281
    sget-boolean v2, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v2, :cond_58

    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    .line 282
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/nJ$p;->Q:Z

    if-eqz v4, :cond_55

    goto :goto_2f

    .line 283
    :cond_55
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_56
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W9;

    .line 284
    instance-of v6, v5, Lcom/android/tools/r8/internal/ga;

    if-eqz v6, :cond_56

    .line 285
    check-cast v5, Lcom/android/tools/r8/internal/ga;

    .line 286
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 287
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v6

    .line 288
    sget-boolean v7, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v7, :cond_56

    if-eqz v6, :cond_56

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v6

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v5

    if-ne v6, v5, :cond_57

    goto :goto_2e

    :cond_57
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 289
    :cond_58
    :goto_2f
    sget-boolean v2, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v2, :cond_5c

    iget-object v2, v0, Lcom/android/tools/r8/internal/h9;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v4, v0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v4, v2}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5a

    const/4 v6, 0x2

    if-ne v2, v6, :cond_59

    goto :goto_30

    :cond_59
    const/4 v7, 0x0

    goto :goto_31

    :cond_5a
    :goto_30
    move v7, v3

    :goto_31
    if-eqz v7, :cond_5b

    goto :goto_32

    :cond_5b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5c
    :goto_32
    return-object v1

    :cond_5d
    move-object/from16 v1, p2

    move-object v3, v4

    move-object/from16 v2, v17

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_8
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Ju0;)Lcom/android/tools/r8/internal/bv0;
    .locals 4

    .line 355
    instance-of v0, p2, Lcom/android/tools/r8/internal/Hu0;

    if-eqz v0, :cond_0

    .line 356
    check-cast p2, Lcom/android/tools/r8/internal/Hu0;

    .line 357
    iget-object v0, p2, Lcom/android/tools/r8/internal/Hu0;->a:Lcom/android/tools/r8/internal/tZ;

    .line 358
    iget-object v1, p0, Lcom/android/tools/r8/internal/h9;->r:Ljava/util/HashMap;

    .line 359
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ka;

    .line 360
    iget-object p2, p2, Lcom/android/tools/r8/internal/Hu0;->a:Lcom/android/tools/r8/internal/tZ;

    iget-object p2, p2, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    .line 361
    sget v2, Lcom/android/tools/r8/internal/jy;->a:I

    .line 362
    new-instance v2, Lcom/android/tools/r8/internal/ev0;

    invoke-direct {v2, p2, v1}, Lcom/android/tools/r8/internal/ev0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    goto :goto_0

    .line 363
    :cond_0
    instance-of v0, p2, Lcom/android/tools/r8/internal/Iu0;

    if-eqz v0, :cond_9

    .line 364
    check-cast p2, Lcom/android/tools/r8/internal/Iu0;

    iget-object v0, p2, Lcom/android/tools/r8/internal/Iu0;->b:Lcom/android/tools/r8/internal/k3;

    .line 365
    sget p2, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v2, Lcom/android/tools/r8/internal/gv0;->c:Lcom/android/tools/r8/internal/gv0;

    .line 366
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    .line 367
    sget-boolean v1, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v1, :cond_2

    if-eq p2, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 368
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 369
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/h9;->q:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/h9;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 370
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/QJ;

    .line 371
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    if-ne v3, p1, :cond_4

    goto :goto_5

    .line 372
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 373
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Yx0;->c(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Yx0;

    move-result-object p1

    .line 374
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 375
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 376
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    if-eq v0, p2, :cond_6

    .line 377
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_4

    :cond_8
    :goto_5
    return-object v2

    .line 378
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/tools/r8/internal/h9;->d:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/vc1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/vc1;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ka;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Ljava/util/ArrayList;
    .locals 5

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 306
    instance-of v3, v2, Lcom/android/tools/r8/internal/QJ;

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 308
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 309
    check-cast v2, Lcom/android/tools/r8/internal/QJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    .line 310
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    if-ne v3, v4, :cond_0

    .line 311
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a()V
    .locals 6

    .line 290
    sget-boolean v0, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/h9;->p:Ljava/util/HashMap;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/tools/r8/internal/h9;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/h9;->p:Ljava/util/HashMap;

    .line 293
    iget-object v0, p0, Lcom/android/tools/r8/internal/h9;->b:Lcom/android/tools/r8/graph/H5;

    .line 294
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v1, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 296
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 297
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 298
    iget-object v4, p0, Lcom/android/tools/r8/internal/h9;->p:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/xw0;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 299
    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 300
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 301
    iget-boolean v4, v4, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v4, :cond_5

    .line 302
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/xw0;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/h9;->q:Ljava/util/ArrayList;

    goto :goto_2

    .line 303
    :cond_7
    sget-boolean v1, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/internal/h9;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/tools/r8/internal/h9;->s:Lcom/android/tools/r8/internal/t8;

    .line 381
    iget-object v1, v0, Lcom/android/tools/r8/internal/t8;->a:Lcom/android/tools/r8/internal/v8;

    .line 382
    iget-object v1, v1, Lcom/android/tools/r8/internal/v8;->a:Ljava/util/Map;

    .line 383
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/s8;

    if-eqz p2, :cond_0

    .line 384
    iget-object v0, v0, Lcom/android/tools/r8/internal/t8;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ka;)V
    .locals 7

    .line 312
    iget-object v0, p0, Lcom/android/tools/r8/internal/h9;->j:Lcom/android/tools/r8/internal/dH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h9;->k:Lcom/android/tools/r8/internal/dH;

    .line 313
    sget v2, Lcom/android/tools/r8/graph/j0;->e:I

    .line 314
    new-instance v2, Lcom/android/tools/r8/internal/DG;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/DG;-><init>()V

    .line 315
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/aH;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/RG;

    .line 316
    invoke-interface {v3}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v4

    .line 317
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j0;

    .line 318
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_0

    .line 319
    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/h9;->j:Lcom/android/tools/r8/internal/dH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h9;->k:Lcom/android/tools/r8/internal/dH;

    .line 321
    new-instance v3, Lcom/android/tools/r8/internal/DG;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/DG;-><init>()V

    .line 322
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/aH;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/aH;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/RG;

    .line 323
    invoke-interface {v4}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v5

    .line 324
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j0;

    .line 325
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v4, :cond_2

    .line 326
    invoke-virtual {v3, v5, v4}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 327
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/DG;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/DG;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 328
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/nG;

    .line 329
    new-instance v1, Lcom/android/tools/r8/internal/qG;

    .line 330
    iget-object v0, v0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    .line 331
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/qG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    .line 332
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 333
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v2

    .line 335
    iget-object v4, p0, Lcom/android/tools/r8/internal/h9;->o:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/dH;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/G$a;

    .line 336
    invoke-virtual {v4, p1}, Lcom/android/tools/r8/graph/G$a;->a(Lcom/android/tools/r8/internal/ka;)V

    .line 337
    iget-object v5, p0, Lcom/android/tools/r8/internal/h9;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v4, p0, Lcom/android/tools/r8/internal/h9;->j:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/dH;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    .line 339
    sget-boolean v4, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v4, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 340
    :cond_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/DG;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 341
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/nG;

    .line 342
    new-instance v1, Lcom/android/tools/r8/internal/qG;

    .line 343
    iget-object v0, v0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    .line 344
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/qG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    .line 345
    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 346
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    .line 347
    invoke-interface {v0}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v2

    .line 348
    sget-boolean v3, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v3, :cond_a

    iget-object v4, p0, Lcom/android/tools/r8/internal/h9;->j:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/dH;->a(I)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_5
    if-nez v3, :cond_c

    .line 349
    iget-object v3, p0, Lcom/android/tools/r8/internal/h9;->o:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/dH;->a(I)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 350
    :cond_c
    :goto_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/h9;->o:Lcom/android/tools/r8/internal/dH;

    new-instance v4, Lcom/android/tools/r8/graph/G$a;

    .line 351
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j0;

    invoke-direct {v4, v2, v5, p1}, Lcom/android/tools/r8/graph/G$a;-><init>(ILcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/ka;)V

    .line 352
    invoke-virtual {v3, v2, v4}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v3, p0, Lcom/android/tools/r8/internal/h9;->j:Lcom/android/tools/r8/internal/dH;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j0;

    invoke-virtual {v3, v2, v0}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    .line 354
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/h9;->l:Z

    return-void
.end method

.method public final b()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    .line 4
    instance-of v3, v2, Lcom/android/tools/r8/internal/JT;

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object v3

    .line 8
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object v3

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    :goto_2
    if-eqz v3, :cond_a

    if-eqz v5, :cond_a

    .line 11
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v7

    if-eq v6, v7, :cond_3

    goto/16 :goto_3

    .line 12
    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->h1()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 15
    instance-of v7, v6, Lcom/android/tools/r8/internal/Oo0;

    if-nez v7, :cond_6

    goto/16 :goto_3

    .line 16
    :cond_6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v7

    const/16 v8, -0x80

    if-lt v7, v8, :cond_a

    const/16 v8, 0x7f

    if-ge v8, v7, :cond_7

    goto :goto_3

    .line 17
    :cond_7
    iget-object v8, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    .line 18
    iget-object v10, p0, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v8

    .line 19
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 20
    iget-object v11, p0, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v10

    if-eq v8, v10, :cond_8

    goto :goto_3

    .line 21
    :cond_8
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v8

    .line 22
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v10

    if-ne v8, v10, :cond_a

    .line 23
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v10

    if-ne v8, v10, :cond_a

    .line 24
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v10

    if-eq v8, v10, :cond_9

    goto :goto_3

    .line 25
    :cond_9
    new-instance v10, Lcom/android/tools/r8/internal/eD;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    .line 26
    iget-object v12, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v10, v11, v9, v7}, Lcom/android/tools/r8/internal/eD;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;I)V

    .line 28
    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 29
    invoke-virtual {v1, v10, v6}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    .line 30
    iget-object v7, v3, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 31
    iget-object v3, v5, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 32
    iget-object v3, v4, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 33
    iget-object v3, v6, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 34
    :cond_a
    :goto_3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method public final c()V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/android/tools/r8/internal/e10;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/tools/r8/internal/h9;->c:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/qh;

    const-wide/16 v7, -0x1

    invoke-direct {v5, v4, v7, v8}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-interface {v1, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->y0()Lcom/android/tools/r8/internal/e10;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/e10;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    new-instance v7, Lcom/android/tools/r8/internal/fy0;

    invoke-direct {v7, v5, v2, v3, v4}, Lcom/android/tools/r8/internal/fy0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/u6;->x2()V

    invoke-interface {v1, v7, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method
