.class public final Lcom/google/common/util/concurrent/e$g;
.super Lcom/google/common/util/concurrent/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/e$g$d;
    }
.end annotation


# instance fields
.field public volatile p:Lcom/google/common/util/concurrent/e$c;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public volatile q:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final r:Ljava/util/concurrent/locks/ReentrantLock;

.field public final s:Ljava/lang/Runnable;

.field public final synthetic t:Lcom/google/common/util/concurrent/e;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/e$g;->t:Lcom/google/common/util/concurrent/e;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/f;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/e$g;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance p1, Lcom/google/common/util/concurrent/e$g$d;

    invoke-direct {p1, p0}, Lcom/google/common/util/concurrent/e$g$d;-><init>(Lcom/google/common/util/concurrent/e$g;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/e$g;->s:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/e$g;-><init>(Lcom/google/common/util/concurrent/e;)V

    return-void
.end method

.method public static synthetic A(Lcom/google/common/util/concurrent/e$g;Lcom/google/common/util/concurrent/e$c;)Lcom/google/common/util/concurrent/e$c;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/e$g;->p:Lcom/google/common/util/concurrent/e$c;

    return-object p1
.end method

.method public static synthetic B(Lcom/google/common/util/concurrent/e$g;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/e$g;->q:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic C(Lcom/google/common/util/concurrent/e$g;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/e$g;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic y(Lcom/google/common/util/concurrent/e$g;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/e$g;->r:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static synthetic z(Lcom/google/common/util/concurrent/e$g;)Lcom/google/common/util/concurrent/e$c;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/e$g;->p:Lcom/google/common/util/concurrent/e$c;

    return-object p0
.end method


# virtual methods
.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g;->t:Lcom/google/common/util/concurrent/e;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/e;->k()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/e$g$a;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/e$g$a;-><init>(Lcom/google/common/util/concurrent/e$g;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/g0;->s(Ljava/util/concurrent/ScheduledExecutorService;Lw2/Q;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/e$g;->q:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g;->q:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/e$g$b;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/e$g$b;-><init>(Lcom/google/common/util/concurrent/e$g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g;->p:Lcom/google/common/util/concurrent/e$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g;->q:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g;->p:Lcom/google/common/util/concurrent/e$c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/e$c;->cancel(Z)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g;->q:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/e$g$c;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/e$g$c;-><init>(Lcom/google/common/util/concurrent/e$g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g;->t:Lcom/google/common/util/concurrent/e;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
