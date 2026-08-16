.class public final Lorg/blacksquircle/ui/editorkit/utils/StylingTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/utils/StylingTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/utils/StylingTask$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StylingTask"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final doAsync:LMf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/a<",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainThreadHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onSuccess:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
            ">;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final singleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/utils/StylingTask$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->Companion:Lorg/blacksquircle/ui/editorkit/utils/StylingTask$Companion;

    return-void
.end method

.method public constructor <init>(LMf/a;LMf/l;)V
    .locals 1
    .param p1    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "+",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
            ">;>;",
            "LMf/l<",
            "-",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
            ">;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "doAsync"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->doAsync:LMf/a;

    iput-object p2, p0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->onSuccess:LMf/l;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->mainThreadHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;)V
    .locals 0

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->execute$lambda$0(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;)V

    return-void
.end method

.method public static synthetic b(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->execute$lambda$0$0(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;Ljava/util/List;)V

    return-void
.end method

.method private static final execute$lambda$0(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;)V
    .locals 3

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->doAsync:LMf/a;

    invoke-interface {v0}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->mainThreadHandler:Landroid/os/Handler;

    new-instance v2, Llh/b;

    invoke-direct {v2, p0, v0}, Llh/b;-><init>(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final execute$lambda$0$0(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->onSuccess:LMf/l;

    invoke-interface {p0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final execute()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Llh/a;

    invoke-direct {v1, p0}, Llh/a;-><init>(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StylingTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
