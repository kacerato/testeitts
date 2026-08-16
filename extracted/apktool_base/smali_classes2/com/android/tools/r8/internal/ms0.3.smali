.class public final Lcom/android/tools/r8/internal/ms0;
.super Lcom/android/tools/r8/internal/ns0;
.source "SourceFile"


# instance fields
.field public final h:Lcom/android/tools/r8/internal/ns0;

.field public final i:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    const-string v0, "<cancel>"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ns0;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/ms0;->h:Lcom/android/tools/r8/internal/ns0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ms0;->i:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ms0;->h:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ns0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/ms0;->h:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ms0;->h:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ms0;->i:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->c:Lcom/android/tools/r8/CancelCompilationChecker;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/tools/r8/internal/nJ;->h2:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->c:Lcom/android/tools/r8/CancelCompilationChecker;

    invoke-interface {v1}, Lcom/android/tools/r8/CancelCompilationChecker;->cancel()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ms0;->h:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    return-object p0

    :cond_3
    iget-object p1, v0, Lcom/android/tools/r8/internal/nJ;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/I8;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/I8;-><init>()V

    throw p1
.end method

.method public final d()Lcom/android/tools/r8/internal/ns0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ms0;->h:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ms0;->h:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->e()V

    return-void
.end method
