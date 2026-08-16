.class public final Lcom/android/tools/r8/naming/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/internal/Hz;

.field public final c:Lcom/android/tools/r8/naming/r0;

.field public final d:Lcom/android/tools/r8/graph/u1;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/LinkedHashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Lcom/android/tools/r8/internal/C7;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/M;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/M;->f:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/M;->g:Ljava/util/HashMap;

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/M;->h:Lcom/android/tools/r8/internal/C7;

    iput-object p1, p0, Lcom/android/tools/r8/naming/M;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/M;->b:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/M;->c:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/M;->d:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 248
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Optional;
    .locals 21

    move-object/from16 v0, p0

    .line 23
    iget-object v1, v0, Lcom/android/tools/r8/naming/M;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/naming/M;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 25
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/naming/M;->i:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/tools/r8/naming/M;->h:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 26
    :cond_2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/tools/r8/naming/M;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    iget-object v2, v0, Lcom/android/tools/r8/naming/M;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    iget-object v4, v0, Lcom/android/tools/r8/naming/M;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 29
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 31
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    .line 34
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    iget-object v8, v0, Lcom/android/tools/r8/naming/M;->f:Ljava/util/LinkedHashMap;

    .line 36
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v8, v6, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    new-instance v10, Lcom/android/tools/r8/naming/i2;

    invoke-direct {v10, v0, v7}, Lcom/android/tools/r8/naming/i2;-><init>(Lcom/android/tools/r8/naming/M;Ljava/util/Map;)V

    .line 37
    invoke-interface {v8, v10}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 38
    new-instance v8, Lcom/android/tools/r8/internal/uQ;

    iget-object v10, v0, Lcom/android/tools/r8/naming/M;->e:Ljava/util/HashMap;

    .line 39
    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {v8, v9, v7}, Lcom/android/tools/r8/internal/uQ;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;)V

    .line 40
    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 41
    :cond_5
    iget-object v1, v0, Lcom/android/tools/r8/naming/M;->h:Lcom/android/tools/r8/internal/C7;

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ML;

    .line 43
    const-string v3, "version"

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v3, Lcom/android/tools/r8/internal/RL;->m:Lcom/android/tools/r8/internal/RL;

    .line 45
    new-instance v3, Lcom/android/tools/r8/internal/QL;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/QL;-><init>()V

    .line 46
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/uQ;

    .line 48
    const-string v9, "packageFqName"

    invoke-static {v8, v9}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 51
    iget-object v11, v5, Lcom/android/tools/r8/internal/uQ;->a:Ljava/util/List;

    .line 52
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "partInternalName"

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 53
    invoke-static {v12, v13}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 54
    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 55
    :cond_6
    iget-object v5, v5, Lcom/android/tools/r8/internal/uQ;->b:Ljava/util/LinkedHashMap;

    .line 56
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 57
    invoke-static {v12, v13}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {v9, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 59
    :cond_7
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    const-string v11, "<get-keys>(...)"

    invoke-static {v5, v11}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_29

    .line 61
    sget-object v5, Lcom/android/tools/r8/internal/UL;->p:Lcom/android/tools/r8/internal/UL;

    .line 62
    new-instance v5, Lcom/android/tools/r8/internal/TL;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/TL;-><init>()V

    .line 63
    iget v14, v5, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v14, v7

    iput v14, v5, Lcom/android/tools/r8/internal/TL;->c:I

    .line 64
    iput-object v8, v5, Lcom/android/tools/r8/internal/TL;->d:Ljava/lang/Object;

    const/16 v14, 0x2e

    const/16 v15, 0x2f

    .line 65
    invoke-static {v8, v14, v15}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string v7, ""

    if-eqz v16, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v17, v2

    .line 70
    move-object v2, v12

    check-cast v2, Ljava/lang/String;

    .line 71
    invoke-static {v2, v15, v7}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 73
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    move-object/from16 v2, v17

    const/4 v7, 0x1

    goto :goto_6

    .line 74
    :cond_8
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    move-object/from16 v17, v2

    .line 75
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 76
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 77
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v12, :cond_b

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v18, v11

    .line 78
    move-object v11, v15

    check-cast v11, Ljava/lang/String;

    .line 79
    invoke-static {v11, v13}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 81
    invoke-virtual {v4, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v12

    if-nez v19, :cond_a

    .line 82
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v12

    .line 84
    :cond_a
    move-object/from16 v11, v19

    check-cast v11, Ljava/util/List;

    .line 85
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v18

    move/from16 v12, v20

    const/16 v15, 0x2f

    goto :goto_8

    .line 86
    :cond_b
    invoke-static {}, Lcom/android/tools/r8/internal/zf;->a()Ljava/util/Comparator;

    move-result-object v11

    const-string v12, "comparator"

    invoke-static {v11, v12}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v14, Ljava/util/TreeMap;

    invoke-direct {v14, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v14, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 88
    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 89
    invoke-static {v11}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v11}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v18, v4

    const/16 v4, 0x2f

    .line 90
    invoke-static {v15, v4}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v15

    .line 91
    iget v4, v5, Lcom/android/tools/r8/internal/TL;->c:I

    move-object/from16 v19, v11

    const/4 v11, 0x2

    and-int/2addr v4, v11

    if-eq v4, v11, :cond_d

    .line 92
    new-instance v4, Lcom/android/tools/r8/internal/wR;

    iget-object v11, v5, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-direct {v4, v11}, Lcom/android/tools/r8/internal/wR;-><init>(Lcom/android/tools/r8/internal/yR;)V

    iput-object v4, v5, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    .line 93
    iget v4, v5, Lcom/android/tools/r8/internal/TL;->c:I

    const/4 v11, 0x2

    or-int/2addr v4, v11

    iput v4, v5, Lcom/android/tools/r8/internal/TL;->c:I

    .line 94
    :cond_d
    iget-object v4, v5, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v14, :cond_10

    const/16 v4, 0x2f

    .line 95
    invoke-static {v14, v4}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v11

    .line 96
    invoke-virtual {v2, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    .line 97
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 98
    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_e
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v11, 0x1

    add-int/2addr v4, v11

    .line 100
    iget v11, v5, Lcom/android/tools/r8/internal/TL;->c:I

    const/4 v15, 0x4

    and-int/2addr v11, v15

    if-eq v11, v15, :cond_f

    .line 101
    new-instance v11, Ljava/util/ArrayList;

    iget-object v15, v5, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v5, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    .line 102
    iget v11, v5, Lcom/android/tools/r8/internal/TL;->c:I

    const/4 v15, 0x4

    or-int/2addr v11, v15

    iput v11, v5, Lcom/android/tools/r8/internal/TL;->c:I

    .line 103
    :cond_f
    iget-object v11, v5, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v4, v18

    move-object/from16 v11, v19

    goto :goto_9

    .line 104
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 106
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v14, :cond_13

    move/from16 v18, v14

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v6

    .line 107
    move-object v6, v14

    check-cast v6, Ljava/lang/String;

    move/from16 v20, v15

    const/16 v15, 0x2f

    .line 108
    invoke-static {v6, v15, v7}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-virtual {v11, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_12

    .line 110
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {v11, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_12
    check-cast v15, Ljava/util/List;

    .line 113
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v14, v18

    move-object/from16 v6, v19

    move/from16 v15, v20

    goto :goto_a

    .line 114
    :cond_13
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 115
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 116
    invoke-static {v11}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    const/16 v14, 0x2e

    const/16 v15, 0x2f

    invoke-static {v11, v15, v14}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v11

    .line 117
    iget-object v15, v3, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    .line 118
    invoke-interface {v15}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v15

    .line 119
    invoke-virtual {v15, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    .line 120
    iget v15, v3, Lcom/android/tools/r8/internal/QL;->c:I

    const/4 v14, 0x4

    and-int/2addr v15, v14

    if-eq v15, v14, :cond_14

    .line 121
    new-instance v15, Lcom/android/tools/r8/internal/wR;

    iget-object v14, v3, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-direct {v15, v14}, Lcom/android/tools/r8/internal/wR;-><init>(Lcom/android/tools/r8/internal/yR;)V

    iput-object v15, v3, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    .line 122
    iget v14, v3, Lcom/android/tools/r8/internal/QL;->c:I

    const/4 v15, 0x4

    or-int/2addr v14, v15

    iput v14, v3, Lcom/android/tools/r8/internal/QL;->c:I

    .line 123
    :cond_14
    iget-object v14, v3, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_15
    iget-object v14, v3, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v14}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v14

    .line 125
    invoke-virtual {v14, v11}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 126
    invoke-static {v7}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    .line 127
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 128
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v18, v6

    .line 129
    move-object v6, v15

    check-cast v6, Ljava/lang/String;

    .line 130
    invoke-static {v6, v13}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 132
    invoke-virtual {v14, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v7

    if-nez v19, :cond_16

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {v14, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v7

    .line 135
    :cond_16
    move-object/from16 v6, v19

    check-cast v6, Ljava/util/List;

    .line 136
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v18

    move-object/from16 v7, v20

    goto :goto_c

    :cond_17
    move-object/from16 v18, v6

    .line 137
    invoke-static {}, Lcom/android/tools/r8/internal/zf;->a()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v7, v14}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 139
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 140
    invoke-static {v7}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v19, v6

    const/16 v6, 0x2f

    .line 141
    invoke-static {v15, v6}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v15

    .line 142
    iget v6, v5, Lcom/android/tools/r8/internal/TL;->c:I

    move-object/from16 v20, v7

    const/16 v7, 0x10

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_19

    .line 143
    new-instance v6, Lcom/android/tools/r8/internal/wR;

    iget-object v7, v5, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/wR;-><init>(Lcom/android/tools/r8/internal/yR;)V

    iput-object v6, v5, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    .line 144
    iget v6, v5, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v7, 0x10

    or-int/2addr v6, v7

    iput v6, v5, Lcom/android/tools/r8/internal/TL;->c:I

    .line 145
    :cond_19
    iget-object v6, v5, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v14, :cond_1c

    const/16 v6, 0x2f

    .line 146
    invoke-static {v14, v6}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v7

    .line 147
    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_1a

    .line 148
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 149
    invoke-interface {v2, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1a
    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v15, 0x1

    add-int/2addr v7, v15

    .line 151
    iget v15, v5, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v6, 0x20

    and-int/2addr v15, v6

    if-eq v15, v6, :cond_1b

    .line 152
    new-instance v15, Ljava/util/ArrayList;

    iget-object v6, v5, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    invoke-direct {v15, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v15, v5, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    .line 153
    iget v6, v5, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v15, 0x20

    or-int/2addr v6, v15

    iput v6, v5, Lcom/android/tools/r8/internal/TL;->c:I

    .line 154
    :cond_1b
    iget-object v6, v5, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_d

    :cond_1d
    move-object/from16 v6, v18

    goto/16 :goto_b

    .line 156
    :cond_1e
    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1f

    .line 157
    invoke-static {v4, v7}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v6

    .line 158
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v9, 0x2

    .line 159
    invoke-static {v4, v9}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v11

    .line 160
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-ne v6, v9, :cond_1f

    .line 161
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_e

    .line 162
    :cond_1f
    iget v6, v5, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v7, 0x40

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_20

    .line 163
    new-instance v6, Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v5, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    .line 164
    iget v6, v5, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v6, v7

    iput v6, v5, Lcom/android/tools/r8/internal/TL;->c:I

    .line 165
    :cond_20
    iget-object v6, v5, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 166
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    const-string v7, "<this>"

    invoke-static {v4, v7}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "other"

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 168
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 169
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v4

    invoke-static {v6}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 171
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 172
    new-instance v12, Lcom/android/tools/r8/internal/p50;

    invoke-direct {v12, v4, v6}, Lcom/android/tools/r8/internal/p50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 174
    :cond_21
    new-instance v4, Lcom/android/tools/r8/internal/k50;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/k50;-><init>()V

    invoke-static {v11, v4}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    .line 175
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/p50;

    .line 176
    iget-object v7, v6, Lcom/android/tools/r8/internal/p50;->b:Ljava/lang/Object;

    .line 177
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 178
    iget-object v6, v6, Lcom/android/tools/r8/internal/p50;->c:Ljava/lang/Object;

    .line 179
    check-cast v6, Ljava/lang/String;

    .line 180
    iget-object v9, v5, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    .line 181
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v7, v9, :cond_22

    const/4 v7, 0x1

    goto :goto_11

    :cond_22
    const/4 v7, 0x0

    .line 182
    :goto_11
    sget-boolean v9, Lcom/android/tools/r8/internal/gy0;->a:Z

    if-eqz v9, :cond_24

    if-eqz v7, :cond_23

    goto :goto_12

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Multifile facades are loaded incorrectly: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 183
    :cond_24
    :goto_12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    iget v7, v5, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v9, 0x8

    and-int/2addr v7, v9

    if-eq v7, v9, :cond_25

    .line 185
    new-instance v7, Lcom/android/tools/r8/internal/wR;

    iget-object v11, v5, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    invoke-direct {v7, v11}, Lcom/android/tools/r8/internal/wR;-><init>(Lcom/android/tools/r8/internal/yR;)V

    iput-object v7, v5, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    .line 186
    iget v7, v5, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v7, v9

    iput v7, v5, Lcom/android/tools/r8/internal/TL;->c:I

    .line 187
    :cond_25
    iget-object v7, v5, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 188
    :cond_26
    iget v2, v3, Lcom/android/tools/r8/internal/QL;->c:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_27

    .line 189
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v3, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    .line 190
    iget v2, v3, Lcom/android/tools/r8/internal/QL;->c:I

    or-int/2addr v2, v4

    iput v2, v3, Lcom/android/tools/r8/internal/QL;->c:I

    .line 191
    :cond_27
    iget-object v2, v3, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    .line 192
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/TL;->c()Lcom/android/tools/r8/internal/UL;

    move-result-object v4

    .line 193
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/UL;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 194
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 195
    :cond_28
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 196
    throw v1

    :cond_29
    move-object/from16 v17, v2

    .line 197
    :goto_13
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 198
    sget-object v2, Lcom/android/tools/r8/internal/UL;->p:Lcom/android/tools/r8/internal/UL;

    .line 199
    new-instance v2, Lcom/android/tools/r8/internal/TL;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/TL;-><init>()V

    .line 200
    iget v4, v2, Lcom/android/tools/r8/internal/TL;->c:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v2, Lcom/android/tools/r8/internal/TL;->c:I

    .line 201
    iput-object v8, v2, Lcom/android/tools/r8/internal/TL;->d:Ljava/lang/Object;

    .line 202
    invoke-static {v10}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 203
    iget v5, v2, Lcom/android/tools/r8/internal/TL;->c:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_2a

    .line 204
    new-instance v5, Lcom/android/tools/r8/internal/wR;

    iget-object v7, v2, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-direct {v5, v7}, Lcom/android/tools/r8/internal/wR;-><init>(Lcom/android/tools/r8/internal/yR;)V

    iput-object v5, v2, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    .line 205
    iget v5, v2, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v5, v6

    iput v5, v2, Lcom/android/tools/r8/internal/TL;->c:I

    .line 206
    :cond_2a
    iget-object v5, v2, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 207
    iget v4, v3, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/2addr v4, v6

    if-eq v4, v6, :cond_2b

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    .line 209
    iget v4, v3, Lcom/android/tools/r8/internal/QL;->c:I

    or-int/2addr v4, v6

    iput v4, v3, Lcom/android/tools/r8/internal/QL;->c:I

    .line 210
    :cond_2b
    iget-object v4, v3, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    .line 211
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TL;->c()Lcom/android/tools/r8/internal/UL;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/UL;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 213
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    move-object/from16 v2, v17

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 214
    :cond_2d
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 215
    throw v1

    .line 216
    :cond_2e
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/QL;->c()Lcom/android/tools/r8/internal/RL;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/RL;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 218
    new-instance v3, Lcom/android/tools/r8/internal/NL;

    .line 219
    iget v4, v1, Lcom/android/tools/r8/internal/ML;->b:I

    .line 220
    iget v5, v1, Lcom/android/tools/r8/internal/ML;->c:I

    iget v1, v1, Lcom/android/tools/r8/internal/ML;->d:I

    filled-new-array {v4, v5, v1}, [I

    move-result-object v1

    const/4 v4, 0x0

    .line 221
    invoke-direct {v3, v1, v4}, Lcom/android/tools/r8/internal/NL;-><init>([IZ)V

    .line 222
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 223
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    iget-object v6, v3, Lcom/android/tools/r8/internal/t6;->a:[I

    .line 225
    array-length v7, v6

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 226
    array-length v7, v6

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v7, :cond_2f

    aget v9, v6, v8

    .line 227
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 228
    :cond_2f
    iget v6, v3, Lcom/android/tools/r8/internal/t6;->b:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_31

    .line 229
    iget v3, v3, Lcom/android/tools/r8/internal/t6;->c:I

    const/4 v8, 0x4

    if-ge v3, v8, :cond_30

    goto :goto_16

    :cond_30
    :goto_15
    const/4 v3, 0x0

    goto :goto_17

    :cond_31
    :goto_16
    if-le v6, v7, :cond_32

    goto :goto_15

    .line 230
    :goto_17
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 231
    :cond_32
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/RL;->a()I

    move-result v3

    if-le v3, v4, :cond_33

    goto :goto_18

    :cond_33
    move v4, v3

    .line 232
    :goto_18
    new-instance v3, Lcom/android/tools/r8/internal/He;

    new-array v4, v4, [B

    invoke-direct {v3, v5, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    .line 233
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/RL;->a(Lcom/android/tools/r8/internal/He;)V

    .line 234
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/He;->a()V

    .line 235
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 236
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "toByteArray(...)"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v2, v0, Lcom/android/tools/r8/naming/M;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "META-INF/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".kotlin_module"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v3

    .line 239
    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/DataEntryResource;->fromBytes([BLjava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DataEntryResource;

    move-result-object v1

    .line 240
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 241
    :cond_34
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 242
    throw v1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/naming/M;->c:Lcom/android/tools/r8/naming/r0;

    iget-object v2, p0, Lcom/android/tools/r8/naming/M;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/kotlin/p;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/naming/M;->h:Lcom/android/tools/r8/internal/C7;

    new-instance v2, Lcom/android/tools/r8/naming/g2;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/naming/g2;-><init>(Lcom/android/tools/r8/kotlin/p;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/naming/M;->e:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/kotlin/p;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/naming/M;->h:Lcom/android/tools/r8/internal/C7;

    new-instance v3, Lcom/android/tools/r8/naming/g2;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/naming/g2;-><init>(Lcom/android/tools/r8/kotlin/p;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/naming/M;->b:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/naming/M;->f:Ljava/util/LinkedHashMap;

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 15
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/naming/M;->i:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/android/tools/r8/kotlin/p;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/M;->h:Lcom/android/tools/r8/internal/C7;

    new-instance v2, Lcom/android/tools/r8/naming/g2;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/naming/g2;-><init>(Lcom/android/tools/r8/kotlin/p;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 17
    invoke-interface {p1}, Lcom/android/tools/r8/kotlin/p;->m()Lcom/android/tools/r8/kotlin/f0;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/naming/M;->g:Ljava/util/HashMap;

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/kotlin/f0;->a:Lcom/android/tools/r8/internal/NQ$d;

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/internal/NQ$d;->c:Ljava/lang/String;

    .line 21
    new-instance v2, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/internal/o50;)V
    .locals 3

    .line 243
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/android/tools/r8/naming/M;->g:Ljava/util/HashMap;

    .line 246
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/naming/h2;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/naming/h2;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 247
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
