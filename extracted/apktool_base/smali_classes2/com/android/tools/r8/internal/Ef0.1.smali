.class public Lcom/android/tools/r8/internal/Ef0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DiagnosticsHandler;


# instance fields
.field public final a:Lcom/android/tools/r8/DiagnosticsHandler;

.field public final b:Ljava/util/ArrayList;

.field public c:Lcom/android/tools/r8/internal/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Bf0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bf0;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Ef0;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ef0;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ef0;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ef0;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->modifyDiagnosticsLevel(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)Lcom/android/tools/r8/DiagnosticsLevel;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ef0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/Df0;

    .line 3
    invoke-virtual {v3, p1, p2}, Lcom/android/tools/r8/internal/Df0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)Lcom/android/tools/r8/DiagnosticsLevel;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/android/tools/r8/DiagnosticsLevel;->ERROR:Lcom/android/tools/r8/DiagnosticsLevel;

    .line 5
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/Cf0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    return-void

    .line 6
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 7
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/g;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/g;-><init>(Lcom/android/tools/r8/Diagnostic;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ef0;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {p1, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ef0;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {p1, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ef0;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {p1, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->info(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public declared-synchronized error(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/tools/r8/DiagnosticsLevel;->ERROR:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V
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

.method public final declared-synchronized info(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V
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

.method public final modifyDiagnosticsLevel(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)Lcom/android/tools/r8/DiagnosticsLevel;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ef0;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->modifyDiagnosticsLevel(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)Lcom/android/tools/r8/DiagnosticsLevel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized warning(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/tools/r8/DiagnosticsLevel;->WARNING:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V
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
