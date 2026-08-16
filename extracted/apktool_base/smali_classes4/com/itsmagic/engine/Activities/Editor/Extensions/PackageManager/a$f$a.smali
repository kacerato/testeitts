.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;
.super Lcom/tonyodev/fetch2/AbstractFetchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    invoke-direct {p0}, Lcom/tonyodev/fetch2/AbstractFetchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/tonyodev/fetch2/Download;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchDownload"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;)V

    invoke-static {p1}, LO9/b;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V
    .locals 8
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/DownloadBlock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fetchDownload",
            "downloadBlock",
            "totalBlocks"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result p2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p3

    if-ne p2, p3, :cond_1

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide p2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/tonyodev/fetch2/Download;)I

    move-result v3

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->g(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v3, :cond_0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->h(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->i(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;IJJ)V

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/Error;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fetchDownload",
            "error",
            "throwable"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->B(Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->A(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V

    :cond_0
    return-void
.end method

.method public onProgress(Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 10
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fetchDownload",
            "etaInMilliSeconds",
            "downloadedBytesPerSecond"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/tonyodev/fetch2/Download;)I

    move-result v5

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->g(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v5, :cond_0

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->h(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->i(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$c;

    move-object v3, p1

    move-object v4, p0

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;IJJ)V

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fetchDownload",
            "list",
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Download;",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2core/DownloadBlock;",
            ">;I)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result p2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p3

    if-ne p2, p3, :cond_0

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "On Started "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;->Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->z(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    :cond_0
    return-void
.end method

.method public onWaitingNetwork(Lcom/tonyodev/fetch2/Download;)V
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchDownload"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On onWaitingNetwork "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;->WaitingNetwork:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->z(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    :cond_0
    return-void
.end method
