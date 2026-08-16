.class public Lcom/android/tools/r8/internal/YK;
.super Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/android/tools/r8/StringConsumer;

.field public final d:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/StringConsumer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/YK;->d:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/android/tools/r8/internal/YK;->c:Lcom/android/tools/r8/StringConsumer;

    const-string p1, "\n"

    iput-object p1, p0, Lcom/android/tools/r8/internal/YK;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YK;->c:Lcom/android/tools/r8/StringConsumer;

    return-object v0
.end method

.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/internal/YK;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/YK;->d:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/tools/r8/internal/YK;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/YK;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YK;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-super {p0, p1}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
