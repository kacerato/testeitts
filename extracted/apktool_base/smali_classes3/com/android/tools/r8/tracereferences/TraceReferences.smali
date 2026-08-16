.class public Lcom/android/tools/r8/tracereferences/TraceReferences;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferences;->c(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/ClassFileResourceProvider;)V
    .locals 0

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/ClassFileResourceProvider;->getClassDescriptors()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static synthetic a([Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/android/tools/r8/tracereferences/TraceReferences;->run([Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;Lcom/android/tools/r8/internal/nJ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->d()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/tracereferences/r;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/tracereferences/r;-><init>(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;Lcom/android/tools/r8/internal/nJ;)V

    .line 3
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferences;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;Lcom/android/tools/r8/internal/nJ;)V
    .locals 12

    .line 2
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->c()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/tracereferences/l;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/tracereferences/l;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->f()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/tracereferences/m;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/tracereferences/m;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->e()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/tracereferences/n;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/tracereferences/n;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->f()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/tracereferences/o;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/tracereferences/o;-><init>(Ljava/util/Set;)V

    .line 8
    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->e()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 10
    new-instance v4, Lcom/android/tools/r8/tracereferences/p;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/tracereferences/p;-><init>(Ljava/util/Set;)V

    .line 11
    invoke-interface {v3}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/ProgramResource;

    .line 12
    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v6, v7, :cond_5

    .line 13
    sget-boolean v6, Lcom/android/tools/r8/tracereferences/TraceReferences;->a:Z

    if-nez v6, :cond_3

    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResource;->getClassDescriptors()Ljava/util/Set;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 14
    :cond_3
    :goto_1
    new-instance v6, Lcom/android/tools/r8/dex/c;

    .line 15
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v7

    .line 16
    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResource;->getBytes()[B

    move-result-object v5

    sget v8, Lcom/android/tools/r8/internal/hC;->c:I

    .line 17
    new-instance v8, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v8, v5}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Sm0;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    move-object v8, v5

    check-cast v8, Lcom/android/tools/r8/internal/EK;

    .line 20
    iget-boolean v9, v8, Lcom/android/tools/r8/internal/EK;->b:Z

    if-nez v9, :cond_4

    .line 21
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/EK;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 22
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v9

    sget-object v10, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    const/4 v11, 0x0

    invoke-static {v9, v10, v8, v11}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/tools/r8/ProgramResource;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 23
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 24
    iget-object v9, v7, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {v7}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v5

    new-instance v7, Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/nJ;-><init>()V

    .line 26
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 27
    invoke-virtual {v6}, Lcom/android/tools/r8/dex/c;->a()Lcom/android/tools/r8/graph/w4;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v5

    .line 29
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H2;

    .line 30
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    .line 31
    :cond_5
    sget-boolean v6, Lcom/android/tools/r8/tracereferences/TraceReferences;->a:Z

    if-nez v6, :cond_7

    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResource;->getClassDescriptors()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 32
    :cond_7
    :goto_4
    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResource;->getClassDescriptors()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_0

    .line 33
    :cond_8
    new-instance v2, Lcom/android/tools/r8/dex/c;

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v3

    invoke-direct {v2, v0, p1, v3}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/c;->a()Lcom/android/tools/r8/graph/w4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/w4;->i()Lcom/android/tools/r8/graph/g3;

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/android/tools/r8/internal/Zd;->a()Lcom/android/tools/r8/internal/Zd;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/android/tools/r8/shaking/o2;->b()Lcom/android/tools/r8/shaking/o2;

    move-result-object v2

    .line 37
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->e()Lcom/android/tools/r8/synthesis/E;

    move-result-object v3

    .line 38
    invoke-static {p1, v0, v2, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/j;

    move-result-object v5

    .line 39
    new-instance p1, Lcom/android/tools/r8/graph/y;

    .line 40
    sget-object v6, Lcom/android/tools/r8/internal/It;->c:Lcom/android/tools/r8/internal/It;

    .line 41
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v7

    const/4 v8, 0x1

    .line 42
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v9

    move-object v4, p1

    .line 43
    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/graph/y;-><init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/qo0;ILcom/android/tools/r8/internal/ns0;)V

    .line 44
    invoke-static {p1}, Lcom/android/tools/r8/internal/si;->a(Lcom/android/tools/r8/graph/y;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->d()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/tracereferences/q;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/tracereferences/q;-><init>(Ljava/util/Set;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->a()Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    move-result-object p0

    .line 47
    new-instance v1, Lcom/android/tools/r8/tracereferences/j;

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/android/tools/r8/tracereferences/j;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;Lcom/android/tools/r8/DiagnosticsHandler;Ljava/util/function/Predicate;)V

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 50
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_5

    .line 51
    :cond_9
    invoke-interface {p0, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/Set;Lcom/android/tools/r8/ClassFileResourceProvider;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferences;->a(Ljava/util/Set;Lcom/android/tools/r8/ClassFileResourceProvider;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferences;->a(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static synthetic e([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/tracereferences/TraceReferences;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/tracereferences/k;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/tracereferences/k;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/mv;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/android/tools/r8/tracereferences/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid invocation."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static run(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/tracereferences/TraceReferences;->b(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static varargs run([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/tools/r8/origin/a;->f:Lcom/android/tools/r8/origin/a;

    .line 3
    invoke-static {p0, v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->build()Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/tracereferences/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tracereferences "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-static {p0}, Lcom/android/tools/r8/tracereferences/TraceReferences;->run(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;)V

    return-void
.end method
