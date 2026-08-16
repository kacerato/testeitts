.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$j;
    }
.end annotation


# static fields
.field public static final x:Z = false

.field public static final y:Ljava/lang/Object;

.field public static z:Lcom/tonyodev/fetch2/Fetch;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

.field public g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

.field public h:Ljava/lang/Thread;

.field public i:Ljava/lang/String;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public final l:Ljava/util/concurrent/atomic/AtomicLong;

.field public final m:Ljava/util/concurrent/atomic/AtomicLong;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile p:Ljava/lang/String;

.field public q:Lcom/tonyodev/fetch2/Fetch;

.field public r:Lcom/tonyodev/fetch2/AbstractFetchListener;

.field public s:Lcom/tonyodev/fetch2/Request;

.field public t:I

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/lang/Object;

.field public w:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->y:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serverID",
            "downloadToken"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Waiting:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    .line 4
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;->Undefined:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->q:Lcom/tonyodev/fetch2/Fetch;

    .line 12
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->r:Lcom/tonyodev/fetch2/AbstractFetchListener;

    .line 13
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->u:Ljava/util/List;

    .line 14
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->v:Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->b:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->e:Z

    .line 20
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->H()V

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "downloadToken can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "serverID can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serverID",
            "directDownloadUrl",
            "useDirectUrl"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->a:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Waiting:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    .line 26
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;->Undefined:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->q:Lcom/tonyodev/fetch2/Fetch;

    .line 34
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->r:Lcom/tonyodev/fetch2/AbstractFetchListener;

    .line 35
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->u:Ljava/util/List;

    .line 36
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->v:Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->b:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->c:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->d:Ljava/lang/String;

    .line 41
    iput-boolean p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->e:Z

    .line 42
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->H()V

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "download url can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "serverID can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic A(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->p:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic B(Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->D(Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static D(Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "throwable"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "Fetch error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    const-string p0, " - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Fetch error"

    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F(Lug/a;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zip"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0}, Lug/a;->R()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LBg/j;

    invoke-virtual {v2}, LBg/b;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gtz v3, :cond_2

    return-object v0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_4
    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static G(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "out"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Q(Landroid/content/Context;)Lcom/tonyodev/fetch2/Fetch;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->z:Lcom/tonyodev/fetch2/Fetch;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    new-instance v1, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    invoke-direct {v1, p0}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x63

    invoke-virtual {v1, p0}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setDownloadConcurrentLimit(I)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object p0

    sget-object v1, Lcom/tonyodev/fetch2/Fetch;->Impl:Lcom/tonyodev/fetch2/Fetch$Impl;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->build()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tonyodev/fetch2/Fetch$Impl;->getInstance(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p0

    sput-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->z:Lcom/tonyodev/fetch2/Fetch;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->z:Lcom/tonyodev/fetch2/Fetch;

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static R(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zipFile",
            "fileName"
        }
    .end annotation

    const-string v0, "/"

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    new-instance v2, Lug/a;

    invoke-direct {v2, p0}, Lug/a;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lug/a;->R()Ljava/util/List;

    move-result-object p0

    move v3, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LBg/j;

    invoke-virtual {v4}, LBg/b;->j()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    const/16 v5, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v2}, Lug/a;->close()V

    return v6

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lug/a;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Lug/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_6
    :goto_6
    return v1
.end method

.method public static S(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    const-string v0, "README.md"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->R(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static U(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v5, ".store"

    if-ltz v2, :cond_4

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v4

    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    :cond_6
    const-string v0, "manifest.json"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    return v0
.end method

.method public static W(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r;->h(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static X(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    const-string v0, "/"

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    :try_start_0
    new-instance v1, Lug/a;

    invoke-direct {v1, p0}, Lug/a;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->F(Lug/a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v3, "Files/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lug/a;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    :goto_0
    new-instance v4, Lug/a;

    invoke-direct {v4, v3}, Lug/a;-><init>(Ljava/io/File;)V

    new-instance v5, LBg/s;

    invoke-direct {v5}, LBg/s;-><init>()V

    sget-object v6, LCg/d;->DEFLATE:LCg/d;

    invoke-virtual {v5, v6}, LBg/s;->y(LCg/d;)V

    sget-object v6, LCg/c;->NORMAL:LCg/c;

    invoke-virtual {v5, v6}, LBg/s;->x(LCg/c;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, LBg/s;->J(Z)V

    invoke-virtual {v1}, Lug/a;->R()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LBg/j;

    invoke-virtual {v7}, LBg/b;->j()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, LBg/b;->s()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_6
    invoke-virtual {v5, v8}, LBg/s;->G(Ljava/lang/String;)V

    new-instance v7, Ljava/io/ByteArrayInputStream;

    const/4 v8, 0x0

    new-array v8, v8, [B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4, v7, v5}, Lug/a;->k(Ljava/io/InputStream;LBg/s;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    :cond_7
    invoke-virtual {v5, v8}, LBg/s;->G(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lug/a;->S(LBg/j;)Lzg/k;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v4, v7, v5}, Lug/a;->k(Ljava/io/InputStream;LBg/s;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v7, :cond_4

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catchall_3
    move-exception v0

    if-eqz v7, :cond_8

    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v2

    :try_start_b
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw v0

    :cond_9
    invoke-virtual {v1}, Lug/a;->close()V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_4
    :try_start_c
    invoke-virtual {v1}, Lug/a;->close()V

    goto :goto_9

    :cond_b
    :goto_5
    invoke-virtual {v1}, Lug/a;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    return-void

    :goto_6
    :try_start_d
    invoke-virtual {v1}, Lug/a;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v1

    :try_start_e
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->d0(Ljava/io/File;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->e0(Ljava/io/File;)V

    :cond_c
    :goto_a
    return-void
.end method

.method public static synthetic a(Ljava/io/File;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->n0(Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static a0(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->G(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V

    return-void
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->Y()V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static d0(Ljava/io/File;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    const-string v0, "/"

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    :try_start_0
    new-instance v1, Lug/a;

    invoke-direct {v1, p0}, Lug/a;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lug/a;->R()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LBg/j;

    invoke-virtual {v5}, LBg/b;->j()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_8

    :cond_1
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_2
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_3

    invoke-virtual {v5, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/q;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4
    new-instance v5, Lug/a;

    invoke-direct {v5, v4}, Lug/a;-><init>(Ljava/io/File;)V

    new-instance v8, LBg/s;

    invoke-direct {v8}, LBg/s;-><init>()V

    sget-object v9, LCg/d;->DEFLATE:LCg/d;

    invoke-virtual {v8, v9}, LBg/s;->y(LCg/d;)V

    sget-object v9, LCg/c;->NORMAL:LCg/c;

    invoke-virtual {v8, v9}, LBg/s;->x(LCg/c;)V

    invoke-virtual {v8, v7}, LBg/s;->J(Z)V

    move v9, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LBg/j;

    invoke-virtual {v10}, LBg/b;->j()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    goto/16 :goto_6

    :cond_5
    move-object v12, v11

    :goto_3
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_6
    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_7

    invoke-virtual {v12, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_7
    invoke-static {v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/q;->c(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v10}, LBg/b;->s()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_9
    invoke-virtual {v8, v11}, LBg/s;->G(Ljava/lang/String;)V

    new-instance v10, Ljava/io/ByteArrayInputStream;

    new-array v11, v3, [B

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5, v10, v8}, Lug/a;->k(Ljava/io/InputStream;LBg/s;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_a
    invoke-virtual {v8, v11}, LBg/s;->G(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lug/a;->S(LBg/j;)Lzg/k;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v5, v10, v8}, Lug/a;->k(Ljava/io/InputStream;LBg/s;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v10, :cond_c

    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catchall_3
    move-exception p0

    if-eqz v10, :cond_b

    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    throw p0

    :cond_c
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v1}, Lug/a;->close()V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v4, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_7

    :cond_e
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_7
    :try_start_a
    invoke-virtual {v1}, Lug/a;->close()V

    goto :goto_c

    :catch_0
    move-exception p0

    goto :goto_b

    :cond_f
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v1}, Lug/a;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-void

    :goto_9
    :try_start_b
    invoke-virtual {v1}, Lug/a;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_c
    return-void
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->Z()V

    return-void
.end method

.method public static e0(Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    const-string v0, "/"

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    :try_start_0
    new-instance v1, Lug/a;

    invoke-direct {v1, p0}, Lug/a;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lug/a;->R()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LBg/j;

    invoke-virtual {v5}, LBg/b;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->U(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    :goto_1
    new-instance v5, Lug/a;

    invoke-direct {v5, v4}, Lug/a;-><init>(Ljava/io/File;)V

    new-instance v6, LBg/s;

    invoke-direct {v6}, LBg/s;-><init>()V

    sget-object v7, LCg/d;->DEFLATE:LCg/d;

    invoke-virtual {v6, v7}, LBg/s;->y(LCg/d;)V

    sget-object v7, LCg/c;->NORMAL:LCg/c;

    invoke-virtual {v6, v7}, LBg/s;->x(LCg/c;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, LBg/s;->J(Z)V

    move v7, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LBg/j;

    invoke-virtual {v8}, LBg/b;->j()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->U(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v8}, LBg/b;->s()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_3
    invoke-virtual {v6, v9}, LBg/s;->G(Ljava/lang/String;)V

    new-instance v8, Ljava/io/ByteArrayInputStream;

    new-array v9, v3, [B

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5, v8, v6}, Lug/a;->k(Ljava/io/InputStream;LBg/s;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_4
    invoke-virtual {v6, v9}, LBg/s;->G(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lug/a;->S(LBg/j;)Lzg/k;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v5, v8, v6}, Lug/a;->k(Ljava/io/InputStream;LBg/s;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v8, :cond_5

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_3
    move-exception p0

    if-eqz v8, :cond_6

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw p0

    :cond_7
    invoke-virtual {v1}, Lug/a;->close()V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_6

    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_6
    :try_start_a
    invoke-virtual {v1}, Lug/a;->close()V

    goto :goto_a

    :catch_0
    move-exception p0

    goto :goto_9

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lug/a;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-void

    :goto_7
    :try_start_b
    invoke-virtual {v1}, Lug/a;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_a
    return-void
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/tonyodev/fetch2/Download;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->k0(Lcom/tonyodev/fetch2/Download;)I

    move-result p0

    return p0
.end method

.method public static f0(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageServerID",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->g0(Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V

    return-void
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static g0(Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageServerID",
            "keepRootReadmeOnImport",
            "listener"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;-><init>()V

    iput-object p0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->c:Ljava/lang/String;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->f:Z

    invoke-static {p0}, LT5/b;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "Package not found"

    invoke-interface {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v2, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->version:I

    iput v2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->b:I

    invoke-static {v1}, LT5/b;->P(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->e:Ljava/lang/String;

    iget v2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->b:I

    invoke-static {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f;->c(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$c;

    invoke-direct {v2, v0, p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V

    invoke-static {p0, p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->o0(Ljava/io/File;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;)V

    return-void

    :cond_1
    invoke-static {v1}, LT5/b;->N(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid repository url"

    invoke-static {v0, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->l0(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V

    return-void
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static h0(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageServerID",
            "version",
            "packageName",
            "downloadUrl",
            "listener"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->i0(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V

    return-void
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->l:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static i0(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageServerID",
            "version",
            "packageName",
            "downloadUrl",
            "keepRootReadmeOnImport",
            "listener"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;-><init>()V

    iput-object p0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->c:Ljava/lang/String;

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->b:I

    iput-object p2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->e:Ljava/lang/String;

    iput-boolean p4, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->f:Z

    const-string p2, "Invalid download url"

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f;->c(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;

    invoke-direct {p1, v0, p5, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Ljava/lang/String;)V

    invoke-static {p0, p4, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->o0(Ljava/io/File;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;)V

    return-void

    :cond_1
    invoke-static {v0, p3, p2, p5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->l0(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {p5, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->u:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->e:Z

    return p0
.end method

.method public static l0(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "downloadUrl",
            "invalidUrlMessage",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p2, v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$e;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->C(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;)V

    invoke-static {p3, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->G(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p3, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->l0(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V

    return-void
.end method

.method public static m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "rootPrefix"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static synthetic n(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static n0(Ljava/io/File;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cached",
            "keepRootReadmeOnImport"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r;->h(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return v0

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->X(Ljava/io/File;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r;->h(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->S(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static synthetic o(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Ljava/lang/String;)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j0(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static o0(Ljava/io/File;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cached",
            "keepRootReadmeOnImport",
            "listener"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;-><init>(Ljava/io/File;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->o:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static synthetic q(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->w:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic r(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->w:Ljava/io/File;

    return-object p1
.end method

.method public static synthetic s(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->t:I

    return p1
.end method

.method public static synthetic t(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->X(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic u(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Lcom/tonyodev/fetch2/Fetch;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->q:Lcom/tonyodev/fetch2/Fetch;

    return-object p0
.end method

.method public static synthetic v(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/tonyodev/fetch2/Fetch;)Lcom/tonyodev/fetch2/Fetch;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->q:Lcom/tonyodev/fetch2/Fetch;

    return-object p1
.end method

.method public static synthetic w(Landroid/content/Context;)Lcom/tonyodev/fetch2/Fetch;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->Q(Landroid/content/Context;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Lcom/tonyodev/fetch2/AbstractFetchListener;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->r:Lcom/tonyodev/fetch2/AbstractFetchListener;

    return-object p0
.end method

.method public static synthetic y(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/tonyodev/fetch2/AbstractFetchListener;)Lcom/tonyodev/fetch2/AbstractFetchListener;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->r:Lcom/tonyodev/fetch2/AbstractFetchListener;

    return-object p1
.end method

.method public static synthetic z(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    return-object p1
.end method


# virtual methods
.method public C(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->u:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->u:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public E()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->h:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->q:Lcom/tonyodev/fetch2/Fetch;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2/Fetch;->cancel(I)Lcom/tonyodev/fetch2/Fetch;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->b0()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->h:Ljava/lang/Thread;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Canceled:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Download is not running"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final H()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    if-eq v1, v2, :cond_0

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;->Waiting:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->h:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public I()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public J()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public K()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->w:Ljava/io/File;

    return-object v0
.end method

.method public L()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public M()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;->Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    if-ne v1, v3, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;->Launched:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Waiting:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    monitor-exit v0

    return-object v1

    :cond_1
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;->WaitingNetwork:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->WaitingNetwork:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    monitor-exit v0

    return-object v1

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Waiting:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    monitor-exit v0

    return-object v1

    :cond_3
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public N()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public O()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public T()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->h:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public V()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final Y()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->b0()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->h:Ljava/lang/Thread;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Error:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "Unknown download error"

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->p:Ljava/lang/String;

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final Z()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->b0()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->h:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->w:Ljava/io/File;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->W(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->w:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->w:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "Downloaded file is not a valid zip"

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->p:Ljava/lang/String;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Error:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloaded:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$h;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V

    invoke-static {v1}, LO9/b;->d(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b0()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->q:Lcom/tonyodev/fetch2/Fetch;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->r:Lcom/tonyodev/fetch2/AbstractFetchListener;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->q:Lcom/tonyodev/fetch2/Fetch;

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->r:Lcom/tonyodev/fetch2/AbstractFetchListener;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2/Fetch;->removeListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;

    :cond_0
    return-void
.end method

.method public c0(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->u:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->u:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j0(Ljava/lang/String;)J
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    const-string v0, "Content-Length"

    const-wide/16 v1, -0x1

    :try_start_0
    new-instance v3, Lokhttp3/z$b;

    invoke-direct {v3}, Lokhttp3/z$b;-><init>()V

    invoke-virtual {v3}, Lokhttp3/z$b;->d()Lokhttp3/z;

    move-result-object v3

    new-instance v4, Lokhttp3/C$a;

    invoke-direct {v4}, Lokhttp3/C$a;-><init>()V

    invoke-virtual {v4, p1}, Lokhttp3/C$a;->q(Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object p1

    const-string v4, "Range"

    const-string v5, "bytes=0-0"

    invoke-virtual {p1, v4, v5}, Lokhttp3/C$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object p1

    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {p1, v4, v5}, Lokhttp3/C$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object p1

    invoke-virtual {v3, p1}, Lokhttp3/z;->a(Lokhttp3/C;)Lokhttp3/e;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/e;->execute()Lokhttp3/E;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "Content-Range"

    invoke-virtual {p1, v3}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v6, 0x2f

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :try_start_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    :try_start_3
    invoke-virtual {p1}, Lokhttp3/E;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-wide v6

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_4
    invoke-virtual {p1, v0}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->a0(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    move-wide v6, v1

    :goto_0
    cmp-long v0, v6, v4

    if-lez v0, :cond_2

    :try_start_5
    invoke-virtual {p1}, Lokhttp3/E;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-wide v6

    :cond_2
    :try_start_6
    invoke-virtual {p1}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/F;->g()J

    move-result-wide v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    cmp-long v0, v6, v4

    if-lez v0, :cond_3

    :try_start_7
    invoke-virtual {p1}, Lokhttp3/E;->close()V

    return-wide v6

    :cond_3
    invoke-virtual {p1}, Lokhttp3/E;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :goto_1
    if-eqz p1, :cond_4

    :try_start_8
    invoke-virtual {p1}, Lokhttp3/E;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_9
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    :goto_3
    return-wide v1
.end method

.method public final k0(Lcom/tonyodev/fetch2/Download;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchDownload"
        }
    .end annotation

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    :cond_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getProgress()I

    move-result p1

    return p1
.end method
