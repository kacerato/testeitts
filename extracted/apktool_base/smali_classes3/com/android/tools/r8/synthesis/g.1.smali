.class public final Lcom/android/tools/r8/synthesis/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/GlobalSyntheticsConsumer;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/android/tools/r8/internal/g50;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/g50;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/g;->b:Lcom/android/tools/r8/internal/g50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/synthesis/g;->a:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized accept(Lcom/android/tools/r8/ByteDataView;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/tools/r8/synthesis/g;->c:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/android/tools/r8/synthesis/g;->a:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/synthesis/g;->b:Lcom/android/tools/r8/internal/g50;

    const-string v0, "classes.globals"

    invoke-interface {p2, p1, v0, p3}, Lcom/android/tools/r8/internal/g50;->a(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object p1, p0, Lcom/android/tools/r8/synthesis/g;->b:Lcom/android/tools/r8/internal/g50;

    invoke-interface {p1, p3}, Lcom/android/tools/r8/internal/g50;->a(Lcom/android/tools/r8/DiagnosticsHandler;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/tools/r8/synthesis/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string p2, "Attempt to write multiple global-synthetics files in dex-indexed mode."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Attempt to write multiple global-synthetics files in dex-indexed mode."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/synthesis/g;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/g;->b:Lcom/android/tools/r8/internal/g50;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/g50;->a(Lcom/android/tools/r8/DiagnosticsHandler;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/tools/r8/synthesis/g;->a:Z

    :cond_0
    return-void
.end method
