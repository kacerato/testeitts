.class public Lcom/google/common/util/concurrent/e$a;
.super Lcom/google/common/util/concurrent/p0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/e;->k()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/e;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/util/concurrent/e$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/p0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/p0$b;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/google/common/util/concurrent/e$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public e(Lcom/google/common/util/concurrent/p0$b;)V
    .locals 0

    iget-object p1, p0, Lcom/google/common/util/concurrent/e$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
