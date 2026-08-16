.class final Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/fetch/FetchImpl;->replaceExtras(ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/a<",
        "Lnf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $extras:Lcom/tonyodev/fetch2core/Extras;

.field final synthetic $func:Lcom/tonyodev/fetch2core/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $func2:Lcom/tonyodev/fetch2core/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $id:I

.field final synthetic this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/fetch/FetchImpl;",
            "I",
            "Lcom/tonyodev/fetch2core/Extras;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    iput p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$id:I

    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$extras:Lcom/tonyodev/fetch2core/Extras;

    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$func:Lcom/tonyodev/fetch2core/Func;

    iput-object p5, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$func2:Lcom/tonyodev/fetch2core/Func;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method

.method public static synthetic b(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->invoke$lambda$0(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic d(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->invoke$lambda$1(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 1

    const-string v0, "$error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->invoke()V

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getFetchHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-result-object v0

    iget v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$id:I

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$extras:Lcom/tonyodev/fetch2core/Extras;

    invoke-interface {v0, v1, v2}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->replaceExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/Download;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$func:Lcom/tonyodev/fetch2core/Func;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$func:Lcom/tonyodev/fetch2core/Func;

    new-instance v3, Lcom/tonyodev/fetch2/fetch/b0;

    invoke-direct {v3, v2, v0}, Lcom/tonyodev/fetch2/fetch/b0;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getLogger$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2core/Logger;

    move-result-object v1

    iget v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$id:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to replace extras on download with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$func2:Lcom/tonyodev/fetch2core/Func;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;->$func2:Lcom/tonyodev/fetch2core/Func;

    new-instance v3, Lcom/tonyodev/fetch2/fetch/c0;

    invoke-direct {v3, v2, v1}, Lcom/tonyodev/fetch2/fetch/c0;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method
