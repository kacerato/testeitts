.class public final Lcom/android/tools/r8/internal/fJ;
.super Lcom/android/tools/r8/internal/iJ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DexFilePerClassFileConsumer;


# instance fields
.field public final a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

.field public final b:Lcom/android/tools/r8/internal/dJ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/GlobalSyntheticsConsumer;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/iJ;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/dJ;

    sget-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dJ;-><init>(Lcom/android/tools/r8/ProgramResource$Kind;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/fJ;->b:Lcom/android/tools/r8/internal/dJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/fJ;->a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/fJ;->b:Lcom/android/tools/r8/internal/dJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dJ;->a()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/fJ;->a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    invoke-static {v1}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-interface {v2, v1, v0, v3}, Lcom/android/tools/r8/GlobalSyntheticsConsumer;->accept(Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fJ;->a:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/GlobalSyntheticsConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final declared-synchronized accept(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/fJ;->b:Lcom/android/tools/r8/internal/dJ;

    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/tools/r8/internal/dJ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p3, Lcom/android/tools/r8/internal/dJ;->b:Ljava/util/ArrayList;

    new-instance p4, Lcom/android/tools/r8/internal/o50;

    invoke-direct {p4, p1, p2}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final combineSyntheticClassesWithPrimaryClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Unexpected call to non-internal finished."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
