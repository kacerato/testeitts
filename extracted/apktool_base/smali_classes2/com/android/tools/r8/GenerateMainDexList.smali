.class public Lcom/android/tools/r8/GenerateMainDexList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic c:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/internal/ns0;

.field private final b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/ns0;

    const-string v1, "maindex"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ns0;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/GenerateMainDexList;->a:Lcom/android/tools/r8/internal/ns0;

    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexList;->b:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method private a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/o2;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/graph/l;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l$a;->a()Lcom/android/tools/r8/graph/l;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/l;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->o2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;

    move-result-object v5

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/M70;->b()Lcom/android/tools/r8/internal/b10;

    move-result-object v1

    .line 16
    iget-object v2, v0, Lcom/android/tools/r8/GenerateMainDexList;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    .line 17
    new-instance v3, Lcom/android/tools/r8/shaking/C4;

    invoke-direct {v3, v10, v1, v5, v2}, Lcom/android/tools/r8/shaking/C4;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)V

    .line 18
    invoke-virtual {v3, v11}, Lcom/android/tools/r8/shaking/C4;->c(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/B4;

    move-result-object v12

    .line 19
    iput-object v12, v10, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    .line 20
    iget-object v1, v0, Lcom/android/tools/r8/GenerateMainDexList;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->X1:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 21
    iget-object v2, v12, Lcom/android/tools/r8/shaking/D4;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    new-instance v2, Lcom/android/tools/r8/shaking/b5;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/b5;-><init>(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)V

    move-object v6, v2

    move-object v13, v6

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v6, v1

    move-object v13, v2

    .line 23
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v3

    .line 24
    new-instance v14, Lcom/android/tools/r8/shaking/N;

    sget-object v7, Lcom/android/tools/r8/shaking/N$a;->f:Lcom/android/tools/r8/shaking/N$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 25
    invoke-direct/range {v1 .. v9}, Lcom/android/tools/r8/shaking/N;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;Lcom/android/tools/r8/shaking/K4;)V

    .line 26
    iget-object v1, v0, Lcom/android/tools/r8/GenerateMainDexList;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v14, v11, v1}, Lcom/android/tools/r8/shaking/N;->c(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/o2;

    move-result-object v15

    .line 27
    new-instance v2, Lcom/android/tools/r8/a2;

    invoke-direct {v2, v15, v10}, Lcom/android/tools/r8/a2;-><init>(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/graph/y;)V

    iget-object v7, v0, Lcom/android/tools/r8/GenerateMainDexList;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v8, v0, Lcom/android/tools/r8/GenerateMainDexList;->a:Lcom/android/tools/r8/internal/ns0;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v3, v13

    move-object/from16 v4, p1

    move-object v5, v14

    move-object/from16 v9, p2

    invoke-static/range {v1 .. v9}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/shaking/D4;Ljava/util/function/Supplier;Lcom/android/tools/r8/shaking/b5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;ZLcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    return-object v15

    .line 28
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/If;

    const-string v2, "Tracing for legacy multi dex is not possible without all classpath libraries (java.lang.annotation.Annotation is missing)"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/If;

    const-string v2, "Tracing for legacy multi dex is not possible without all classpath libraries (java.lang.Enum is missing)"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static synthetic a(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;
    .locals 2

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v1, Lcom/android/tools/r8/W1;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/W1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/o2;->a(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/utils/i;",
            "Lcom/android/tools/r8/internal/nJ;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v2, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/X1;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/android/tools/r8/X1;-><init>(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V

    .line 38
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-object v1
.end method

.method private static synthetic a(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    .line 33
    sget-boolean p2, Lcom/android/tools/r8/GenerateMainDexList;->c:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/android/tools/r8/internal/nn0;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".class"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/GenerateMainDexList;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/nn0;->b:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V
    .locals 3

    .line 39
    new-instance v0, Lcom/android/tools/r8/GenerateMainDexList;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/GenerateMainDexList;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    new-instance v1, Lcom/android/tools/r8/internal/nn0;

    new-instance v2, Lcom/android/tools/r8/I;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->P1:Lcom/android/tools/r8/StringConsumer;

    invoke-direct {v2, p2, p3}, Lcom/android/tools/r8/I;-><init>(Lcom/android/tools/r8/StringConsumer;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/nn0;-><init>(Lcom/android/tools/r8/I;)V

    .line 40
    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/GenerateMainDexList;->a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nn0;)V

    return-void
.end method

.method private a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nn0;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/tools/r8/dex/c;

    iget-object v1, p0, Lcom/android/tools/r8/GenerateMainDexList;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, p0, Lcom/android/tools/r8/GenerateMainDexList;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/GenerateMainDexList;->traceMainDexForGenerateMainDexList(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/V1;

    invoke-direct {p2, p0, p3}, Lcom/android/tools/r8/V1;-><init>(Lcom/android/tools/r8/GenerateMainDexList;Lcom/android/tools/r8/internal/nn0;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/o2;->a(Ljava/util/function/Consumer;)V

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/GenerateMainDexList;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/nn0;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 6
    throw p2
.end method

.method public static synthetic b(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/tools/r8/GenerateMainDexList;->a(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Lcom/android/tools/r8/GenerateMainDexList;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/GenerateMainDexList;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    new-instance v1, Lcom/android/tools/r8/internal/nn0;

    new-instance v2, Lcom/android/tools/r8/I;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->P1:Lcom/android/tools/r8/StringConsumer;

    invoke-direct {v2, p2, p3}, Lcom/android/tools/r8/I;-><init>(Lcom/android/tools/r8/StringConsumer;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/nn0;-><init>(Lcom/android/tools/r8/I;)V

    .line 3
    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/GenerateMainDexList;->a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nn0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 5
    throw p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/GenerateMainDexList;->a(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/GenerateMainDexList;->a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/GenerateMainDexList;->b(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/tools/r8/GenerateMainDexList;Lcom/android/tools/r8/internal/nn0;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/GenerateMainDexList;->a(Lcom/android/tools/r8/internal/nn0;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/tools/r8/GenerateMainDexListCommand;->parse([Ljava/lang/String;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/GenerateMainDexListCommand;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lcom/android/tools/r8/GenerateMainDexListCommand;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "MainDexListGenerator 8.10.21"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/tools/r8/GenerateMainDexList;->run(Lcom/android/tools/r8/GenerateMainDexListCommand;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/GenerateMainDexListCommand;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/Z1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/Z1;-><init>(Ljava/io/PrintStream;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public static run(Lcom/android/tools/r8/GenerateMainDexListCommand;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/GenerateMainDexListCommand;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/GenerateMainDexListCommand;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lcom/android/tools/r8/GenerateMainDexList;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static run(Lcom/android/tools/r8/GenerateMainDexListCommand;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/GenerateMainDexListCommand;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/GenerateMainDexListCommand;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/GenerateMainDexListCommand;->c()Lcom/android/tools/r8/internal/Ef0;

    move-result-object p0

    new-instance v3, Lcom/android/tools/r8/Y1;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/android/tools/r8/Y1;-><init>(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/nJ;Ljava/util/List;)V

    .line 8
    invoke-static {p0, v3}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-object v2
.end method


# virtual methods
.method public traceMainDexForD8(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/o2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/graph/h;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/android/tools/r8/shaking/o2;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->i()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/internal/Zd;->a()Lcom/android/tools/r8/internal/Zd;

    move-result-object v1

    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->e()Lcom/android/tools/r8/synthesis/E;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/j;

    move-result-object v4

    new-instance p1, Lcom/android/tools/r8/graph/y;

    sget-object v5, Lcom/android/tools/r8/internal/It;->c:Lcom/android/tools/r8/internal/It;

    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/graph/y;-><init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/qo0;ILcom/android/tools/r8/internal/ns0;)V

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/GenerateMainDexList;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    return-object p1
.end method

.method public traceMainDexForGenerateMainDexList(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/shaking/o2;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/x0;->i()Lcom/android/tools/r8/graph/g3;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/y;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/tools/r8/GenerateMainDexList;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    return-object p1
.end method
