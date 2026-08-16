.class public Lcom/android/tools/r8/graph/w5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z = true


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/Hz;

.field public final d:Lcom/android/tools/r8/internal/RR;

.field public final e:[Lcom/android/tools/r8/graph/H2;

.field public final f:Lcom/android/tools/r8/internal/gd0;

.field public final g:Lcom/android/tools/r8/internal/gd0;

.field public final h:Lcom/android/tools/r8/internal/gd0;

.field public final i:Lcom/android/tools/r8/internal/gd0;

.field public j:Lcom/android/tools/r8/internal/gd0;

.field public final k:Lcom/android/tools/r8/internal/gd0;

.field public final l:Lcom/android/tools/r8/internal/gd0;

.field public final m:Ljava/util/Map;

.field public n:Lcom/android/tools/r8/graph/L2;

.field public final o:Lcom/android/tools/r8/graph/u5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/internal/RR;Ljava/util/Set;Ljava/util/Map;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ILcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/ns0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/graph/w5;",
            "Lcom/android/tools/r8/internal/RR;",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/H2;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/I2;",
            "Lcom/android/tools/r8/graph/L2;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/A2;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/l1;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/L2;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/D0;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/C2;",
            ">;I",
            "Lcom/android/tools/r8/internal/qo0;",
            "Lcom/android/tools/r8/dex/t0;",
            "Lcom/android/tools/r8/internal/ns0;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p15

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v13, Lcom/android/tools/r8/graph/w5;->p:Z

    if-nez v13, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-nez v13, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    :goto_1
    if-nez v13, :cond_5

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    :goto_2
    if-nez v13, :cond_7

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    :goto_3
    if-nez v13, :cond_9

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    :goto_4
    if-nez v13, :cond_b

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_b
    :goto_5
    if-nez v13, :cond_d

    if-eqz v8, :cond_c

    goto :goto_6

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_d
    :goto_6
    if-nez v13, :cond_f

    if-eqz v9, :cond_e

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_f
    :goto_7
    if-nez v13, :cond_11

    if-eqz v10, :cond_10

    goto :goto_8

    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_11
    :goto_8
    iput v11, v0, Lcom/android/tools/r8/graph/w5;->a:I

    iput-object v1, v0, Lcom/android/tools/r8/graph/w5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v14

    iput-object v14, v0, Lcom/android/tools/r8/graph/w5;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v14

    move-object/from16 v15, p3

    iput-object v15, v0, Lcom/android/tools/r8/graph/w5;->d:Lcom/android/tools/r8/internal/RR;

    iput-object v4, v0, Lcom/android/tools/r8/graph/w5;->m:Ljava/util/Map;

    const-string v15, "Sort strings"

    invoke-virtual {v12, v15}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    if-nez v2, :cond_12

    new-instance v2, Lcom/android/tools/r8/graph/lh;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/lh;-><init>()V

    new-instance v15, Lcom/android/tools/r8/graph/xh;

    invoke-direct {v15, v0}, Lcom/android/tools/r8/graph/xh;-><init>(Lcom/android/tools/r8/graph/w5;)V

    invoke-static {v8, v2, v15, v11}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Collection;Ljava/util/Comparator;Ljava/util/function/Consumer;I)Lcom/android/tools/r8/internal/gd0;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    goto :goto_9

    :cond_12
    iget-object v8, v2, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    iput-object v8, v0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    iget-object v2, v2, Lcom/android/tools/r8/graph/w5;->n:Lcom/android/tools/r8/graph/L2;

    iput-object v2, v0, Lcom/android/tools/r8/graph/w5;->n:Lcom/android/tools/r8/graph/L2;

    :goto_9
    new-instance v2, Lcom/android/tools/r8/internal/tf;

    iget-object v8, v0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/tools/r8/graph/vh;

    invoke-direct {v11, v8}, Lcom/android/tools/r8/graph/vh;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    invoke-direct {v2, v14, v11}, Lcom/android/tools/r8/internal/tf;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/ToIntFunction;)V

    invoke-virtual/range {p15 .. p15}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v8, "Sort types"

    invoke-virtual {v12, v8}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-static {v2}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/internal/tf;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v8, Lcom/android/tools/r8/graph/yh;

    invoke-direct {v8, v0}, Lcom/android/tools/r8/graph/yh;-><init>(Lcom/android/tools/r8/graph/w5;)V

    const/4 v11, 0x0

    invoke-static {v5, v2, v8, v11}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Collection;Ljava/util/Comparator;Ljava/util/function/Consumer;I)Lcom/android/tools/r8/internal/gd0;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    new-instance v5, Lcom/android/tools/r8/internal/vf;

    iget-object v8, v0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/tools/r8/graph/vh;

    invoke-direct {v15, v8}, Lcom/android/tools/r8/graph/vh;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    new-instance v8, Lcom/android/tools/r8/graph/wh;

    invoke-direct {v8, v2}, Lcom/android/tools/r8/graph/wh;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    invoke-direct {v5, v14, v15, v8}, Lcom/android/tools/r8/internal/vf;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/ToIntFunction;Ljava/util/function/ToIntFunction;)V

    invoke-virtual/range {p15 .. p15}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v8, "Sort classes"

    invoke-virtual {v12, v8}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->c0:Z

    if-eqz v1, :cond_13

    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/vf;)[Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    goto :goto_c

    :cond_13
    if-nez v13, :cond_15

    invoke-virtual/range {p13 .. p13}, Lcom/android/tools/r8/internal/qo0;->c()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual/range {p14 .. p14}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_15
    :goto_a
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/LinkedHashSet;-><init>(I)V

    move-object/from16 v8, p13

    invoke-virtual {v0, v3, v1, v8}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/internal/qo0;)V

    invoke-virtual {v0, v3, v1, v5}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/internal/vf;)V

    if-nez v13, :cond_17

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ne v3, v8, :cond_16

    goto :goto_b

    :cond_16
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_17
    :goto_b
    sget-object v3, Lcom/android/tools/r8/graph/H2;->B:[Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/graph/H2;

    :goto_c
    iput-object v1, v0, Lcom/android/tools/r8/graph/w5;->e:[Lcom/android/tools/r8/graph/H2;

    invoke-virtual/range {p15 .. p15}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Sort protos"

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v5}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/internal/tf;)Ljava/util/Comparator;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/graph/zh;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/graph/zh;-><init>(Lcom/android/tools/r8/graph/w5;)V

    invoke-static {v1, v3, v4, v11}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Collection;Ljava/util/Comparator;Ljava/util/function/Consumer;I)Lcom/android/tools/r8/internal/gd0;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/w5;->f:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual/range {p15 .. p15}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Sort methods"

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-static {v5}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/internal/tf;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/graph/Ah;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/graph/Ah;-><init>(Lcom/android/tools/r8/graph/w5;)V

    invoke-static {v6, v1, v3, v11}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Collection;Ljava/util/Comparator;Ljava/util/function/Consumer;I)Lcom/android/tools/r8/internal/gd0;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/w5;->h:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual/range {p15 .. p15}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Sort fields"

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-static {v5}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/internal/tf;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/graph/Bh;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/graph/Bh;-><init>(Lcom/android/tools/r8/graph/w5;)V

    invoke-static {v7, v1, v3, v11}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Collection;Ljava/util/Comparator;Ljava/util/function/Consumer;I)Lcom/android/tools/r8/internal/gd0;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/w5;->i:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual/range {p15 .. p15}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Sort call-sites"

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-static {v5}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/internal/tf;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/graph/Ch;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/graph/Ch;-><init>(Lcom/android/tools/r8/graph/w5;)V

    invoke-static {v9, v1, v3, v11}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Collection;Ljava/util/Comparator;Ljava/util/function/Consumer;I)Lcom/android/tools/r8/internal/gd0;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/w5;->k:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual/range {p15 .. p15}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Sort method handles"

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-static {v5}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/internal/tf;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/graph/uh;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/graph/uh;-><init>(Lcom/android/tools/r8/graph/w5;)V

    invoke-static {v10, v1, v3, v11}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Collection;Ljava/util/Comparator;Ljava/util/function/Consumer;I)Lcom/android/tools/r8/internal/gd0;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/w5;->l:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual/range {p15 .. p15}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    new-instance v1, Lcom/android/tools/r8/graph/u5;

    iget-object v3, v0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/graph/vh;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/graph/vh;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    new-instance v3, Lcom/android/tools/r8/graph/wh;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/graph/wh;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    invoke-direct {v1, v14, v4, v3, v0}, Lcom/android/tools/r8/graph/u5;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/ToIntFunction;Ljava/util/function/ToIntFunction;Lcom/android/tools/r8/graph/w5;)V

    iput-object v1, v0, Lcom/android/tools/r8/graph/w5;->o:Lcom/android/tools/r8/graph/u5;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I
    .locals 2

    .line 59
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/x1;->b(Ljava/lang/Object;)I

    move-result p1

    .line 60
    sget-boolean v0, Lcom/android/tools/r8/graph/w5;->p:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing dependency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/v5;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)I
    .locals 1

    .line 33
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/v5;->a(Lcom/android/tools/r8/graph/H2;)I

    move-result v0

    .line 34
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/v5;->a(Lcom/android/tools/r8/graph/H2;)I

    move-result p0

    if-eq v0, p0, :cond_0

    sub-int/2addr v0, p0

    return v0

    .line 35
    :cond_0
    iget-object p0, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p0, p2}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)I
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/Mq0;)I
    .locals 0

    .line 15
    invoke-interface {p1, p2, p0}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Comparator;Ljava/util/function/Consumer;I)Lcom/android/tools/r8/internal/gd0;
    .locals 6

    .line 19
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance p0, Lcom/android/tools/r8/internal/gd0;

    const/16 p1, 0x10

    .line 21
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/gd0;-><init>(I)V

    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/gd0;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    .line 25
    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/gd0;-><init>(I)V

    const/4 p0, -0x1

    .line 26
    iput p0, p1, Lcom/android/tools/r8/internal/x1;->b:I

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    add-int v4, v2, p3

    const/high16 v5, 0x10000

    if-ne v4, v5, :cond_1

    .line 28
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 29
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/gd0;->b(ILjava/lang/Object;)I

    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/tf;)Ljava/util/Comparator;
    .locals 1

    .line 14
    new-instance v0, Lcom/android/tools/r8/graph/mh;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/mh;-><init>(Lcom/android/tools/r8/internal/pf;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/L2;)V
    .locals 1

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/graph/w5;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/w5;->n:Lcom/android/tools/r8/graph/L2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/w5;->n:Lcom/android/tools/r8/graph/L2;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/n1;)V
    .locals 3

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/If;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index overflow for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/w5;->p:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/graph/w5;->a:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/gd0;->b(ILjava/lang/Object;)I

    goto :goto_1

    .line 5
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/C7;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/lh;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/lh;-><init>()V

    new-instance v2, Lcom/android/tools/r8/graph/nh;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/graph/nh;-><init>(Lcom/android/tools/r8/internal/C7;)V

    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Collection;Ljava/util/Comparator;Ljava/util/function/Consumer;I)Lcom/android/tools/r8/internal/gd0;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/graph/w5;->p:Z

    if-nez v0, :cond_6

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/graph/w5;->n:Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/w5;->n:Lcom/android/tools/r8/graph/L2;

    .line 13
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 53
    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w5;->b:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/graph/sh;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/sh;-><init>(Ljava/util/Set;)V

    new-instance v2, Lcom/android/tools/r8/graph/th;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/tools/r8/graph/th;-><init>(Lcom/android/tools/r8/graph/w5;Ljava/util/Set;Ljava/util/LinkedHashSet;)V

    invoke-virtual {p3, v0, v1, v2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    .line 55
    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 58
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/internal/qo0;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/tools/r8/graph/rh;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/rh;-><init>(Lcom/android/tools/r8/graph/w5;Ljava/util/Set;Ljava/util/LinkedHashSet;)V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/internal/vf;)V
    .locals 4

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 48
    invoke-virtual {p2, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    new-instance v1, Lcom/android/tools/r8/graph/ph;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/graph/ph;-><init>(Lcom/android/tools/r8/internal/pf;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 51
    new-instance p3, Lcom/android/tools/r8/graph/qh;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/tools/r8/graph/qh;-><init>(Lcom/android/tools/r8/graph/w5;Ljava/util/Set;Ljava/util/LinkedHashSet;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/internal/yo0;)V
    .locals 1

    .line 37
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/yo0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/graph/w5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 39
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 40
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    sget-boolean p1, Lcom/android/tools/r8/graph/w5;->p:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/w5;->p:Z

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 43
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 44
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/graph/H2;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/internal/vf;)[Lcom/android/tools/r8/graph/H2;
    .locals 2

    .line 30
    new-instance v0, Lcom/android/tools/r8/graph/v5;

    iget-object v1, p0, Lcom/android/tools/r8/graph/w5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/v5;-><init>(Lcom/android/tools/r8/graph/h;)V

    .line 31
    sget-object v1, Lcom/android/tools/r8/graph/H2;->B:[Lcom/android/tools/r8/graph/H2;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/H2;

    .line 32
    new-instance v1, Lcom/android/tools/r8/graph/oh;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/graph/oh;-><init>(Lcom/android/tools/r8/graph/v5;Lcom/android/tools/r8/internal/pf;)V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public final synthetic b(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
