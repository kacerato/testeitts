.class public final Lcom/android/tools/r8/internal/QA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/vX;

.field public final b:Lcom/android/tools/r8/graph/j;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    iput-object v0, p0, Lcom/android/tools/r8/internal/QA;->a:Lcom/android/tools/r8/internal/vX;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/QA;->c:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/QA;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/QA;->b:Lcom/android/tools/r8/graph/j;

    return-void
.end method

.method public static a(Ljava/util/IdentityHashMap;)Ljava/util/LinkedHashMap;
    .locals 6

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    new-instance v2, Lu/K0;

    invoke-direct {v2}, Lu/K0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 11
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 12
    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 14
    invoke-virtual {p0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/PA;

    .line 15
    iget-object v4, v3, Lcom/android/tools/r8/internal/PA;->b:Ljava/util/ArrayList;

    .line 16
    new-instance v5, Lcom/android/tools/r8/internal/FS0;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/FS0;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/BU;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/ES0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/ES0;-><init>(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/BU;)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/PA;)V
    .locals 3

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    .line 21
    iget-object v1, p3, Lcom/android/tools/r8/internal/PA;->b:Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 25
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/PA;

    .line 26
    iget-object v1, v1, Lcom/android/tools/r8/internal/PA;->b:Ljava/util/ArrayList;

    .line 27
    iget-object v2, p3, Lcom/android/tools/r8/internal/PA;->b:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/PA;->a()Lcom/android/tools/r8/internal/ay0;

    move-result-object p0

    .line 31
    iget-object p1, p1, Lcom/android/tools/r8/internal/BU;->l:Ljava/util/LinkedHashMap;

    .line 32
    invoke-virtual {p1, p2, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/internal/PA;Ljava/util/Map;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 33
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 35
    iget-object v7, v0, Lcom/android/tools/r8/internal/QA;->a:Lcom/android/tools/r8/internal/vX;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance v8, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v8, v7, v6}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 39
    iget-object v6, v2, Lcom/android/tools/r8/internal/PA;->a:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    .line 42
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/E0;

    if-eq v7, v1, :cond_2

    .line 43
    iget-object v8, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 44
    iget-object v8, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/PA;

    iget-object v9, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 45
    iget-object v8, v8, Lcom/android/tools/r8/internal/PA;->b:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v8

    if-nez v8, :cond_b

    .line 48
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/j1;

    .line 49
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 50
    iget-object v11, v10, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v11

    if-nez v11, :cond_3

    .line 51
    iget-object v11, v0, Lcom/android/tools/r8/internal/QA;->b:Lcom/android/tools/r8/graph/j;

    .line 52
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v11

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1$c;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v0, Lcom/android/tools/r8/internal/QA;->b:Lcom/android/tools/r8/graph/j;

    .line 53
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v11

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1$c;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 54
    sget-boolean v11, Lcom/android/tools/r8/internal/QA;->e:Z

    if-nez v11, :cond_5

    .line 55
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 56
    iget-object v11, v10, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v11

    if-nez v11, :cond_5

    .line 57
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/j1;->p1()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 58
    :cond_5
    :goto_3
    iget-object v11, v0, Lcom/android/tools/r8/internal/QA;->a:Lcom/android/tools/r8/internal/vX;

    .line 59
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v13, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v13, v11, v12}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_7

    .line 62
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :cond_6
    if-ge v14, v13, :cond_7

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lcom/android/tools/r8/graph/A2;

    .line 63
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v15, v9}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v11, v12

    :cond_7
    if-nez v11, :cond_3

    .line 64
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/j1;->h1()Z

    move-result v9

    if-nez v9, :cond_a

    .line 65
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 66
    iget-object v9, v10, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_4

    .line 67
    :cond_8
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v9

    if-nez v9, :cond_9

    .line 68
    iput-boolean v12, v2, Lcom/android/tools/r8/internal/PA;->c:Z

    .line 69
    :cond_9
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 70
    :cond_a
    :goto_4
    iget-object v9, v0, Lcom/android/tools/r8/internal/QA;->d:Ljava/util/Set;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 71
    :cond_b
    iget-object v8, v7, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v8, v8, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_d

    aget-object v11, v8, v10

    .line 72
    iget-object v12, v0, Lcom/android/tools/r8/internal/QA;->b:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v12, v11}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 73
    invoke-virtual {v5, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 74
    :cond_d
    iget-object v8, v7, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v0, Lcom/android/tools/r8/internal/QA;->b:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v8, v9, :cond_1

    .line 75
    iget-object v8, v0, Lcom/android/tools/r8/internal/QA;->b:Lcom/android/tools/r8/graph/j;

    iget-object v9, v7, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v8

    .line 76
    sget-boolean v9, Lcom/android/tools/r8/internal/QA;->e:Z

    if-nez v9, :cond_f

    if-eqz v8, :cond_e

    goto :goto_6

    :cond_e
    new-instance v2, Ljava/lang/AssertionError;

    iget-object v3, v7, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing supertype "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " while wrapping "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 77
    :cond_f
    :goto_6
    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/IA;Ljava/util/IdentityHashMap;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->j()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/GS0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/GS0;-><init>(Lcom/android/tools/r8/internal/QA;Ljava/util/Map;)V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/QA;->b:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object p3, p0, Lcom/android/tools/r8/internal/QA;->c:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/PA;

    .line 7
    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/android/tools/r8/internal/QA;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/internal/PA;Ljava/util/Map;)V

    return-void
.end method
