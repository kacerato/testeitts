.class public final Lcom/android/tools/r8/u0;
.super Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/origin/PathOrigin;

.field public final c:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/PathOrigin;Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    iput-object p1, p0, Lcom/android/tools/r8/u0;->b:Lcom/android/tools/r8/origin/PathOrigin;

    iput-object p2, p0, Lcom/android/tools/r8/u0;->c:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/u0;->c:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    iget-object v1, p0, Lcom/android/tools/r8/u0;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p2, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/u0;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    iget-object v2, p0, Lcom/android/tools/r8/u0;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method
