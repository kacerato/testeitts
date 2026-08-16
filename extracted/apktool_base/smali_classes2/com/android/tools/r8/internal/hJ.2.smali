.class public abstract Lcom/android/tools/r8/internal/hJ;
.super Lcom/android/tools/r8/internal/iJ;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/iJ;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hJ;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hJ;->a:Lcom/android/tools/r8/graph/y;

    iput-object p1, p0, Lcom/android/tools/r8/internal/hJ;->b:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Lcom/android/tools/r8/graph/M2;

    invoke-static {p0}, Lcom/android/tools/r8/internal/Al0;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/dJ;Lcom/android/tools/r8/graph/M2;[B)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/internal/dJ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/internal/dJ;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/ProgramResource$Kind;
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 7

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/graph/y;)Ljava/util/IdentityHashMap;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->x0:Lcom/android/tools/r8/dex/W$b;

    sget-object v2, Lcom/android/tools/r8/dex/W$b;->c:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    sget-boolean v1, Lcom/android/tools/r8/internal/hJ;->d:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/dJ;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hJ;->a()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dJ;-><init>(Lcom/android/tools/r8/ProgramResource$Kind;)V

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/internal/hJ;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/Gc1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Gc1;-><init>(Lcom/android/tools/r8/internal/dJ;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/hJ;->b:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dJ;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const/4 v3, 0x0

    .line 30
    invoke-interface {v1, v0, v3, v2}, Lcom/android/tools/r8/GlobalSyntheticsConsumer;->accept(Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/DiagnosticsHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 32
    new-instance v2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 33
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/hJ;->b:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 35
    invoke-interface {v0, p1}, Lcom/android/tools/r8/GlobalSyntheticsConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void

    .line 36
    :cond_2
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 37
    iget-object v2, p0, Lcom/android/tools/r8/internal/hJ;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 38
    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 39
    sget-boolean v5, Lcom/android/tools/r8/internal/hJ;->d:Z

    if-nez v5, :cond_5

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v5, :cond_7

    .line 40
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 42
    new-instance v6, Lcom/android/tools/r8/internal/Hc1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/Hc1;-><init>()V

    .line 43
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 44
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 45
    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/Ic1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Ic1;-><init>(Lcom/android/tools/r8/internal/hJ;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/hJ;->b:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 48
    invoke-interface {v0, p1}, Lcom/android/tools/r8/GlobalSyntheticsConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/dJ;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hJ;->a()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dJ;-><init>(Lcom/android/tools/r8/ProgramResource$Kind;)V

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/Fc1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Fc1;-><init>(Lcom/android/tools/r8/internal/hJ;Lcom/android/tools/r8/internal/dJ;)V

    invoke-interface {p3, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dJ;->a()[B

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 10
    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/hJ;->b:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    .line 12
    invoke-static {p3}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object p3

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 16
    invoke-interface {v0, p3, p2, p1}, Lcom/android/tools/r8/GlobalSyntheticsConsumer;->accept(Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/dJ;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hJ;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {v0}, Lcom/android/tools/r8/internal/dJ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/internal/dJ;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Unexpected call to non-internal finished."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
