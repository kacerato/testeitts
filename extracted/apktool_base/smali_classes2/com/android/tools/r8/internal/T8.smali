.class public final Lcom/android/tools/r8/internal/T8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/x0;

.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/nJ;

.field public final d:Ljava/util/Optional;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/T8;->a:Lcom/android/tools/r8/graph/x0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/T8;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/T8;->d:Ljava/util/Optional;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/internal/Q8;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 41
    iget-object v0, p1, Lcom/android/tools/r8/internal/Q8;->b:[B

    .line 42
    invoke-static {v0}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object v0

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/internal/Q8;->a:Ljava/lang/String;

    .line 44
    invoke-interface {p0, v0, p1, p2}, Lcom/android/tools/r8/ClassFileConsumer;->accept(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/RR;Ljava/util/Optional;Lcom/android/tools/r8/SourceFileEnvironment;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Q8;
    .locals 4

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/S8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/T8;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p4, v1}, Lcom/android/tools/r8/internal/S8;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)V

    .line 18
    sget-boolean v1, Lcom/android/tools/r8/internal/S8;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    sget-boolean v1, Lcom/android/tools/r8/synthesis/S;->a0:Z

    .line 19
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p4, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/S8;->a(Lcom/android/tools/r8/internal/RR;Ljava/util/Optional;Lcom/android/tools/r8/SourceFileEnvironment;)Lcom/android/tools/r8/internal/Q8;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/tools/r8/internal/ae; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/internal/BX; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 21
    iget-object p2, v0, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p3, Lcom/android/tools/r8/errors/CodeSizeOverflowDiagnostic;

    iget-object v0, v0, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    .line 22
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 23
    iget-object v1, p1, Lcom/android/tools/r8/internal/BX;->b:Ljava/lang/String;

    .line 24
    invoke-static {v1}, Lcom/android/tools/r8/references/Reference;->classFromBinaryName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 25
    iget-object v2, p1, Lcom/android/tools/r8/internal/BX;->c:Ljava/lang/String;

    .line 26
    iget-object v3, p1, Lcom/android/tools/r8/internal/BX;->d:Ljava/lang/String;

    .line 27
    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/references/Reference;->methodFromDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object v1

    .line 28
    iget p1, p1, Lcom/android/tools/r8/internal/BX;->e:I

    .line 29
    invoke-direct {p3, v0, v1, p1}, Lcom/android/tools/r8/errors/CodeSizeOverflowDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/references/MethodReference;I)V

    .line 30
    invoke-virtual {p2, p4, p3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 31
    iget-object p1, p2, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    :catch_1
    move-exception p1

    .line 32
    iget-object p2, v0, Lcom/android/tools/r8/internal/S8;->e:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p3, Lcom/android/tools/r8/errors/ConstantPoolOverflowDiagnostic;

    iget-object v0, v0, Lcom/android/tools/r8/internal/S8;->b:Lcom/android/tools/r8/graph/H2;

    .line 33
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 34
    iget-object v1, p1, Lcom/android/tools/r8/internal/ae;->b:Ljava/lang/String;

    .line 35
    invoke-static {v1}, Lcom/android/tools/r8/references/Reference;->classFromBinaryName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    .line 36
    iget p1, p1, Lcom/android/tools/r8/internal/ae;->c:I

    .line 37
    invoke-direct {p3, v0, v1, p1}, Lcom/android/tools/r8/errors/ConstantPoolOverflowDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/references/ClassReference;I)V

    .line 38
    invoke-virtual {p2, p4, p3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 39
    iget-object p1, p2, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/internal/Q8;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/T8;->b(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/internal/Q8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/T8;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/x0;->c:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "CfApplicationWriter.write"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/T8;->b(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/T8;->a:Lcom/android/tools/r8/graph/x0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->c:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/T8;->a:Lcom/android/tools/r8/graph/x0;

    iget-object p2, p2, Lcom/android/tools/r8/graph/x0;->c:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 4
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/ClassFileConsumer;Ljava/util/Collection;Ljava/util/Optional;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/SourceFileEnvironment;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/xr0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v0, v1, p6, v2}, Lcom/android/tools/r8/internal/xr0;-><init>(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;I)V

    .line 16
    new-instance p6, Lcom/android/tools/r8/internal/bX0;

    invoke-direct {p6, p0, p4, p3, p5}, Lcom/android/tools/r8/internal/bX0;-><init>(Lcom/android/tools/r8/internal/T8;Lcom/android/tools/r8/internal/RR;Ljava/util/Optional;Lcom/android/tools/r8/SourceFileEnvironment;)V

    new-instance p3, Lcom/android/tools/r8/internal/cX0;

    invoke-direct {p3, p0, p1}, Lcom/android/tools/r8/internal/cX0;-><init>(Lcom/android/tools/r8/internal/T8;Lcom/android/tools/r8/ClassFileConsumer;)V

    invoke-virtual {v0, p2, p6, p3}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/dex/W;)Z
    .locals 4

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    .line 6
    sget-object v1, Lcom/android/tools/r8/dex/W$b;->g:Lcom/android/tools/r8/dex/W$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 7
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/T8;->e:Z

    const-string v1, "CF"

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/W;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/W;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/tools/r8/dex/W$a;->c:Lcom/android/tools/r8/dex/W$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->l()Lcom/android/tools/r8/internal/nJ$e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$e;->c:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/W;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/W;->m()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v3
.end method

.method public final b(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/internal/Q8;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/internal/aX0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/aX0;-><init>(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/internal/Q8;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/T8;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/T8;->d:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/T8;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/T8;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v2, v2, Lcom/android/tools/r8/graph/x0;->c:Lcom/android/tools/r8/internal/ns0;

    .line 4
    sget-object v3, Lcom/android/tools/r8/internal/K40;->b:Lcom/android/tools/r8/internal/I40;

    iget-object v4, p0, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    .line 5
    invoke-static {v4}, Lcom/android/tools/r8/internal/oj;->a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/lj;

    move-result-object v4

    .line 6
    invoke-static {p2, v0, v2, v3, v4}, Lcom/android/tools/r8/internal/iS;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/K40;Lcom/android/tools/r8/internal/lj;)Lcom/android/tools/r8/naming/I0;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/T8;->d:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/W;

    .line 8
    iget-object v2, p2, Lcom/android/tools/r8/naming/I0;->a:Ljava/lang/String;

    .line 9
    sget-boolean v3, Lcom/android/tools/r8/dex/W;->i:Z

    const-string v4, "pg-map-id"

    if-nez v3, :cond_3

    .line 10
    iget-object v3, v0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    .line 11
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 12
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    .line 15
    invoke-virtual {v0, v4, v2}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object p2, v1

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/T8;->d:Ljava/util/Optional;

    new-instance v2, Lcom/android/tools/r8/internal/dX0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/dX0;-><init>(Lcom/android/tools/r8/internal/T8;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/F1;

    invoke-direct {v2}, Lcom/android/tools/r8/F1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->b2:Lcom/android/tools/r8/SourceFileProvider;

    if-eqz v2, :cond_6

    .line 18
    sget-boolean v1, Lcom/android/tools/r8/dex/k;->k:Z

    if-nez p2, :cond_5

    .line 19
    new-instance v1, Lcom/android/tools/r8/dex/f;

    invoke-direct {v1}, Lcom/android/tools/r8/dex/f;-><init>()V

    goto :goto_3

    .line 20
    :cond_5
    new-instance v1, Lcom/android/tools/r8/dex/g;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/dex/g;-><init>(Lcom/android/tools/r8/naming/I0;)V

    .line 21
    :cond_6
    :goto_3
    new-instance p2, Lcom/android/tools/r8/internal/RR;

    iget-object v2, p0, Lcom/android/tools/r8/internal/T8;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {p2, v2}, Lcom/android/tools/r8/internal/RR;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 22
    iget-object v2, p0, Lcom/android/tools/r8/internal/T8;->a:Lcom/android/tools/r8/graph/x0;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v2

    .line 23
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v3, p0, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v4, v3, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-eqz v4, :cond_a

    .line 25
    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->n:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    if-eqz v3, :cond_a

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 28
    iget-object v5, p0, Lcom/android/tools/r8/internal/T8;->b:Lcom/android/tools/r8/graph/y;

    .line 29
    iget-object v5, v5, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 30
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v5

    .line 31
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 32
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v5, p0, Lcom/android/tools/r8/internal/T8;->b:Lcom/android/tools/r8/graph/y;

    .line 34
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ$p;->H:Ljava/util/function/Consumer;

    if-eqz v5, :cond_7

    .line 35
    invoke-interface {v5, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_4

    .line 36
    :cond_8
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move-object v5, v3

    goto :goto_5

    :cond_a
    move-object v5, v2

    :goto_5
    move-object v3, p0

    move-object v4, p1

    move-object v6, v0

    move-object v7, p2

    move-object v8, v1

    move-object v9, p3

    .line 37
    invoke-virtual/range {v3 .. v9}, Lcom/android/tools/r8/internal/T8;->a(Lcom/android/tools/r8/ClassFileConsumer;Ljava/util/Collection;Ljava/util/Optional;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/SourceFileEnvironment;Ljava/util/concurrent/ExecutorService;)V

    .line 38
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 39
    new-instance p1, Lcom/android/tools/r8/internal/eJ;

    iget-object v2, p0, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    .line 40
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->n:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 41
    iget-object v3, p0, Lcom/android/tools/r8/internal/T8;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {p1, v2, v3}, Lcom/android/tools/r8/internal/eJ;-><init>(Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/graph/y;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, v10

    move-object v6, v0

    move-object v7, p2

    move-object v8, v1

    move-object v9, p3

    .line 42
    invoke-virtual/range {v3 .. v9}, Lcom/android/tools/r8/internal/T8;->a(Lcom/android/tools/r8/ClassFileConsumer;Ljava/util/Collection;Ljava/util/Optional;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/SourceFileEnvironment;Ljava/util/concurrent/ExecutorService;)V

    .line 43
    iget-object p2, p0, Lcom/android/tools/r8/internal/T8;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/hJ;->a(Lcom/android/tools/r8/graph/y;)V

    .line 44
    :cond_b
    iget-object p1, p0, Lcom/android/tools/r8/internal/T8;->b:Lcom/android/tools/r8/graph/y;

    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
