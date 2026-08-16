.class Lcom/android/tools/r8/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nJ;

.field public final b:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    const-string v0, "R8 partial 8.10.21"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/s0;->b:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 4
    :try_start_0
    new-instance v0, Lcom/android/tools/r8/s0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/s0;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/s0;->a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 6
    throw p0
.end method

.method public static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/d4;

    invoke-direct {v2, p1, p0, v0}, Lcom/android/tools/r8/d4;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    .line 3
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/ProgramResourceProvider;
    .locals 1

    .line 160
    new-instance v0, Lcom/android/tools/r8/r0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/r0;-><init>(Lcom/android/tools/r8/ProgramResourceProvider;)V

    return-object v0
.end method

.method public final a()V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 153
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    if-nez v0, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/FeatureSplit;

    .line 156
    invoke-virtual {v3}, Lcom/android/tools/r8/FeatureSplit;->getProgramResourceProviders()Ljava/util/List;

    move-result-object v4

    .line 157
    new-instance v5, Lcom/android/tools/r8/c4;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/c4;-><init>(Lcom/android/tools/r8/s0;)V

    .line 158
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v4

    .line 159
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/FeatureSplit;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 7
    iget-object v2, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v2

    .line 8
    iget-boolean v2, v2, Lcom/android/tools/r8/shaking/o3;->J:Z

    if-nez v2, :cond_13

    .line 9
    iget-object v2, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 10
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 11
    :cond_0
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 12
    iget-object v2, v2, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/FeatureSplit;

    .line 14
    invoke-virtual {v7}, Lcom/android/tools/r8/FeatureSplit;->a()Lcom/android/tools/r8/internal/Rv;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 15
    :goto_1
    iget-object v4, v0, Lcom/android/tools/r8/s0;->b:Lcom/android/tools/r8/internal/ns0;

    const-string v5, "Process input"

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 16
    new-instance v4, Lcom/android/tools/r8/dex/c;

    iget-object v5, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v6, v0, Lcom/android/tools/r8/s0;->b:Lcom/android/tools/r8/internal/ns0;

    move-object/from16 v7, p1

    invoke-direct {v4, v7, v5, v6}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 17
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object v4

    .line 18
    iget-object v13, v4, Lcom/android/tools/r8/graph/w4;->k:Ljava/util/List;

    .line 19
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/w4;->i()Lcom/android/tools/r8/graph/g3;

    move-result-object v4

    .line 20
    invoke-static {v4}, Lcom/android/tools/r8/internal/mb0;->a(Lcom/android/tools/r8/graph/g3;)Lcom/android/tools/r8/internal/mb0;

    move-result-object v5

    .line 21
    new-instance v6, Lcom/android/tools/r8/internal/ib0;

    .line 22
    iget-object v14, v5, Lcom/android/tools/r8/internal/mb0;->a:Ljava/util/LinkedHashSet;

    .line 23
    iget-object v5, v5, Lcom/android/tools/r8/internal/mb0;->b:Ljava/util/LinkedHashSet;

    .line 24
    iget-object v11, v4, Lcom/android/tools/r8/graph/g3;->l:Lcom/android/tools/r8/internal/XB;

    .line 25
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g3;->k()Ljava/util/Collection;

    move-result-object v12

    move-object v8, v6

    move-object v9, v14

    move-object v10, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/tools/r8/internal/ib0;-><init>(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/XB;Ljava/util/Collection;Ljava/util/List;)V

    .line 26
    iget-object v4, v0, Lcom/android/tools/r8/s0;->b:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    move-result-object v4

    const-string v8, "Run D8"

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 27
    iget-object v4, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 28
    invoke-static {v4}, Lcom/android/tools/r8/D8Command;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/D8Command$Builder;

    move-result-object v4

    iget-object v8, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 29
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMinApiLevel(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/D8Command$Builder;

    iget-object v8, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 30
    iget-boolean v8, v8, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v8, :cond_2

    .line 31
    sget-object v8, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    goto :goto_2

    :cond_2
    sget-object v8, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    .line 32
    :goto_2
    invoke-virtual {v4, v8}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/D8Command$Builder;

    .line 33
    invoke-static {}, Lcom/android/tools/r8/DexIndexedConsumer;->emptyConsumer()Lcom/android/tools/r8/DexIndexedConsumer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setProgramConsumer(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/D8Command$Builder;

    .line 34
    new-instance v8, Lcom/android/tools/r8/internal/aJ;

    iget-object v9, v6, Lcom/android/tools/r8/internal/ib0;->c:Ljava/util/Map;

    invoke-direct {v8, v9}, Lcom/android/tools/r8/internal/aJ;-><init>(Ljava/util/Map;)V

    .line 35
    invoke-virtual {v4, v8}, Lcom/android/tools/r8/D8Command$Builder;->addClasspathResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    new-instance v9, Lcom/android/tools/r8/internal/aJ;

    iget-object v10, v6, Lcom/android/tools/r8/internal/ib0;->d:Ljava/util/Map;

    invoke-direct {v9, v10}, Lcom/android/tools/r8/internal/aJ;-><init>(Ljava/util/Map;)V

    .line 36
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/BaseCommand$Builder;->addLibraryResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    .line 37
    new-instance v8, Lcom/android/tools/r8/internal/vJ;

    invoke-direct {v8, v14}, Lcom/android/tools/r8/internal/vJ;-><init>(Ljava/util/Collection;)V

    .line 38
    invoke-virtual {v4, v8}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/D8Command$Builder;

    new-instance v9, Lcom/android/tools/r8/internal/vJ;

    invoke-direct {v9, v5}, Lcom/android/tools/r8/internal/vJ;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    .line 40
    invoke-virtual {v4}, Lcom/android/tools/r8/D8Command$Builder;->d()V

    .line 41
    iget-object v5, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/D8Command$Builder;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/D8Command;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v5

    .line 43
    invoke-virtual {v4}, Lcom/android/tools/r8/D8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    .line 44
    iget-object v8, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->D1:Lcom/android/tools/r8/internal/hb0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/hb0;->d:Ljava/util/function/Consumer;

    invoke-interface {v8, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 45
    new-instance v8, Lcom/android/tools/r8/internal/ob0;

    .line 46
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ib0;->a()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ib0;->b()Ljava/util/Set;

    move-result-object v10

    iget-object v11, v0, Lcom/android/tools/r8/s0;->b:Lcom/android/tools/r8/internal/ns0;

    invoke-direct {v8, v9, v10, v11}, Lcom/android/tools/r8/internal/ob0;-><init>(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/ns0;)V

    .line 47
    new-instance v9, Lcom/android/tools/r8/internal/s4;

    iget-object v10, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 48
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Lcom/android/tools/r8/internal/s4;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/s4;)V

    .line 49
    iput-object v9, v4, Lcom/android/tools/r8/internal/nJ;->A1:Lcom/android/tools/r8/internal/s4;

    .line 50
    iget-object v9, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 51
    iget-object v9, v9, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 52
    iput-object v9, v4, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 53
    new-instance v9, Lcom/android/tools/r8/internal/po0;

    iget-object v10, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Lcom/android/tools/r8/internal/po0;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/po0;)V

    .line 54
    iput-object v9, v4, Lcom/android/tools/r8/internal/nJ;->B1:Lcom/android/tools/r8/internal/po0;

    .line 55
    iput-object v8, v4, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    .line 56
    invoke-static {v5, v4, v1}, Lcom/android/tools/r8/D8;->d(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    .line 57
    sget-boolean v4, Lcom/android/tools/r8/internal/ob0;->i:Z

    if-nez v4, :cond_4

    iget-object v5, v8, Lcom/android/tools/r8/internal/ob0;->d:Lcom/android/tools/r8/internal/l4;

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 58
    :cond_4
    :goto_3
    iget-object v5, v8, Lcom/android/tools/r8/internal/ob0;->d:Lcom/android/tools/r8/internal/l4;

    .line 59
    iget-object v9, v8, Lcom/android/tools/r8/internal/ob0;->e:Lcom/android/tools/r8/internal/Zd;

    if-nez v4, :cond_6

    .line 60
    iget-object v10, v8, Lcom/android/tools/r8/internal/ob0;->f:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 61
    :cond_6
    :goto_4
    iget-object v10, v8, Lcom/android/tools/r8/internal/ob0;->f:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 62
    iget-object v11, v8, Lcom/android/tools/r8/internal/ob0;->g:Ljava/util/ArrayList;

    if-eqz v11, :cond_7

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 63
    :cond_8
    :goto_5
    iget-object v11, v8, Lcom/android/tools/r8/internal/ob0;->g:Ljava/util/ArrayList;

    if-nez v4, :cond_a

    .line 64
    iget-object v4, v8, Lcom/android/tools/r8/internal/ob0;->h:Lcom/android/tools/r8/internal/qo0;

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 65
    :cond_a
    :goto_6
    iget-object v8, v8, Lcom/android/tools/r8/internal/ob0;->h:Lcom/android/tools/r8/internal/qo0;

    .line 66
    iget-object v4, v0, Lcom/android/tools/r8/s0;->b:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    if-nez v2, :cond_b

    goto :goto_8

    .line 67
    :cond_b
    iget-object v4, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 68
    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 69
    iget-object v4, v4, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    :goto_7
    if-ge v3, v12, :cond_c

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v3, v3, 0x1

    check-cast v13, Lcom/android/tools/r8/FeatureSplit;

    .line 71
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/Rv;

    invoke-virtual {v13, v14}, Lcom/android/tools/r8/FeatureSplit;->a(Lcom/android/tools/r8/internal/Rv;)V

    goto :goto_7

    .line 72
    :cond_c
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 73
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/s0;->a()V

    .line 74
    iget-object v2, v0, Lcom/android/tools/r8/s0;->b:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "Run R8"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 75
    new-instance v2, Lcom/android/tools/r8/p0;

    iget-object v3, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/p0;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 76
    invoke-static {v2}, Lcom/android/tools/r8/R8Command;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/vJ;

    .line 77
    invoke-direct {v3, v11}, Lcom/android/tools/r8/internal/vJ;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/R8Command$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 79
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/R8Command$Builder;->enableLegacyFullModeForKeepRules(Z)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 80
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMinApiLevel(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/R8Command$Builder;

    iget-object v3, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 81
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v3, :cond_d

    .line 82
    sget-object v3, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    goto :goto_9

    :cond_d
    sget-object v3, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    .line 83
    :goto_9
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/R8Command$Builder;

    iget-object v3, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 84
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setProgramConsumer(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/R8Command$Builder;

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/utils/i;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 86
    invoke-interface {v4}, Lcom/android/tools/r8/ProgramResourceProvider;->getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;

    move-result-object v7

    if-nez v7, :cond_e

    .line 87
    iget-object v7, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v7, v7, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-interface {v4, v7}, Lcom/android/tools/r8/ProgramResourceProvider;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_a

    .line 88
    :cond_e
    new-instance v7, Lcom/android/tools/r8/q0;

    invoke-direct {v7, v4}, Lcom/android/tools/r8/q0;-><init>(Lcom/android/tools/r8/ProgramResourceProvider;)V

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/R8Command$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/R8Command$Builder;

    goto :goto_a

    .line 89
    :cond_f
    new-instance v3, Lcom/android/tools/r8/internal/aJ;

    iget-object v4, v6, Lcom/android/tools/r8/internal/ib0;->c:Ljava/util/Map;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/aJ;-><init>(Ljava/util/Map;)V

    .line 90
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->addClasspathResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    new-instance v4, Lcom/android/tools/r8/internal/aJ;

    iget-object v7, v6, Lcom/android/tools/r8/internal/ib0;->d:Ljava/util/Map;

    invoke-direct {v4, v7}, Lcom/android/tools/r8/internal/aJ;-><init>(Ljava/util/Map;)V

    .line 91
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/BaseCommand$Builder;->addLibraryResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    .line 92
    new-instance v3, Lcom/android/tools/r8/internal/aJ;

    iget-object v4, v6, Lcom/android/tools/r8/internal/ib0;->a:Ljava/util/Set;

    .line 93
    sget-boolean v7, Lcom/android/tools/r8/graph/I0;->u:Z

    .line 94
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 95
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/H2;

    .line 96
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 97
    new-instance v15, Lcom/android/tools/r8/graph/I0;

    move-object v13, v15

    .line 98
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    move-object/from16 p1, v4

    .line 99
    iget-object v4, v11, Lcom/android/tools/r8/graph/H2;->u:Lcom/android/tools/r8/ProgramResource$Kind;

    move-object v1, v15

    move-object v15, v4

    .line 100
    iget-object v4, v11, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    move-object/from16 v16, v4

    .line 101
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v17

    .line 102
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v18

    .line 103
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v19

    .line 104
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->Z0()Lcom/android/tools/r8/graph/L2;

    move-result-object v20

    .line 105
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->U0()Lcom/android/tools/r8/graph/o5;

    move-result-object v21

    .line 106
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v22

    .line 107
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->W0()Ljava/util/List;

    move-result-object v23

    .line 108
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->X0()Ljava/util/List;

    move-result-object v24

    .line 109
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v25

    .line 110
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v26

    .line 111
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v27

    .line 112
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v28

    .line 113
    iget-object v4, v11, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 114
    invoke-static {v4}, Lcom/android/tools/r8/graph/q3;->a(Lcom/android/tools/r8/graph/r3;)Lcom/android/tools/r8/graph/q3;

    move-result-object v29

    .line 115
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/graph/N4$a;->a(Lcom/android/tools/r8/graph/N4;)Lcom/android/tools/r8/graph/N4$a;

    move-result-object v30

    const/16 v31, 0x0

    invoke-direct/range {v13 .. v31}, Lcom/android/tools/r8/graph/I0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;Z)V

    .line 116
    invoke-virtual {v7, v12, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p1

    move-object/from16 v1, p2

    goto :goto_b

    .line 117
    :cond_10
    invoke-direct {v3, v7}, Lcom/android/tools/r8/internal/aJ;-><init>(Ljava/util/Map;)V

    .line 118
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->addClasspathResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    .line 119
    invoke-virtual {v2}, Lcom/android/tools/r8/R8Command$Builder;->d()V

    .line 120
    iget-object v1, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 121
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/R8Command$Builder;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/shaking/o3;)Lcom/android/tools/r8/R8Command;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v11

    .line 123
    invoke-virtual {v1}, Lcom/android/tools/r8/R8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 124
    iget-object v2, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->D1:Lcom/android/tools/r8/internal/hb0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/hb0;->e:Ljava/util/function/Consumer;

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 125
    new-instance v12, Lcom/android/tools/r8/internal/pb0;

    .line 126
    iget-object v6, v6, Lcom/android/tools/r8/internal/ib0;->e:Ljava/util/List;

    .line 127
    iget-object v13, v0, Lcom/android/tools/r8/s0;->b:Lcom/android/tools/r8/internal/ns0;

    move-object v2, v12

    move-object v3, v5

    move-object v4, v9

    move-object v5, v10

    move-object v7, v8

    move-object v8, v13

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/pb0;-><init>(Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/Zd;Ljava/util/ArrayList;Ljava/util/List;Lcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/internal/ns0;)V

    iput-object v12, v1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    .line 128
    new-instance v2, Lcom/android/tools/r8/internal/s4;

    iget-object v3, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 129
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/s4;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/s4;)V

    .line 130
    iput-object v2, v1, Lcom/android/tools/r8/internal/nJ;->A1:Lcom/android/tools/r8/internal/s4;

    .line 131
    iget-object v2, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 132
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 133
    iput-object v2, v1, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 134
    new-instance v2, Lcom/android/tools/r8/internal/po0;

    iget-object v3, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/po0;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/po0;)V

    .line 135
    iput-object v2, v1, Lcom/android/tools/r8/internal/nJ;->B1:Lcom/android/tools/r8/internal/po0;

    .line 136
    iget-object v2, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 137
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->k:Ljava/util/List;

    .line 138
    iput-object v2, v1, Lcom/android/tools/r8/internal/nJ;->k:Ljava/util/List;

    .line 139
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 140
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$p;->a:Z

    iput-boolean v3, v2, Lcom/android/tools/r8/internal/nJ$p;->a:Z

    .line 141
    iget-object v2, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    iput-object v3, v1, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    .line 142
    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->b2:Lcom/android/tools/r8/SourceFileProvider;

    iput-object v3, v1, Lcom/android/tools/r8/internal/nJ;->b2:Lcom/android/tools/r8/SourceFileProvider;

    .line 143
    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    if-eqz v3, :cond_11

    .line 144
    iput-object v3, v1, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    .line 145
    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->e:Lcom/android/tools/r8/AndroidResourceConsumer;

    iput-object v3, v1, Lcom/android/tools/r8/internal/nJ;->e:Lcom/android/tools/r8/AndroidResourceConsumer;

    .line 146
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->g:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    iput-object v2, v1, Lcom/android/tools/r8/internal/nJ;->g:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    :cond_11
    move-object/from16 v2, p2

    .line 147
    invoke-static {v11, v1, v2}, Lcom/android/tools/r8/R8;->c(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    .line 148
    iget-object v1, v0, Lcom/android/tools/r8/s0;->b:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 149
    iget-object v1, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 150
    iget-object v1, v0, Lcom/android/tools/r8/s0;->b:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->e()V

    :cond_12
    return-void

    .line 151
    :cond_13
    iget-object v1, v0, Lcom/android/tools/r8/s0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const-string v2, "Partial shrinking does not support proto shrinking"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
