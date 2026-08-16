.class public Lcom/android/tools/r8/internal/g;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/Diagnostic;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/g;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/g;->b:Lcom/android/tools/r8/Diagnostic;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/g;->b:Lcom/android/tools/r8/Diagnostic;

    instance-of v1, v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-virtual {v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;->getCause()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/g;->b:Lcom/android/tools/r8/Diagnostic;

    invoke-interface {v0}, Lcom/android/tools/r8/Diagnostic;->getDiagnosticMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
