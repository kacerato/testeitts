.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;Lcom/tonyodev/fetch2/Request;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->c(Lcom/tonyodev/fetch2/Request;)V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->d(Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(Lcom/tonyodev/fetch2/Request;)V
    .locals 1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;->Launched:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->z(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$n;

    return-void
.end method

.method public final synthetic d(Lcom/tonyodev/fetch2/Error;)V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch enqueue error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->A(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V

    return-void
.end method

.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->w(Landroid/content/Context;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->v(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/tonyodev/fetch2/Fetch;)Lcom/tonyodev/fetch2/Fetch;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->y(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Lcom/tonyodev/fetch2/AbstractFetchListener;)Lcom/tonyodev/fetch2/AbstractFetchListener;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->u(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->x(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Lcom/tonyodev/fetch2/AbstractFetchListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2/Fetch;->addListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->k(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->l(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->n(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LT5/b;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LT5/b;->N(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->o(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->p(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".impack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    invoke-virtual {v3}, LD8/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/store_il/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->r(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Ljava/io/File;)Ljava/io/File;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    new-instance v4, Lcom/tonyodev/fetch2/Request;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/tonyodev/fetch2/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    sget-object v1, Lcom/tonyodev/fetch2/Priority;->HIGH:Lcom/tonyodev/fetch2/Priority;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/RequestInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    sget-object v1, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/RequestInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/RequestInfo;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;I)I

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->u(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->s:Lcom/tonyodev/fetch2/Request;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;)V

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/Fetch;->enqueue(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    goto :goto_5

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->A(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V

    :goto_5
    return-void
.end method
