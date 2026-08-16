.class public final LSe/g;
.super LBe/J;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSe/g$c;,
        LSe/g$b;,
        LSe/g$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "RxCachedThreadScheduler"

.field public static final f:LSe/k;

.field public static final g:Ljava/lang/String; = "RxCachedWorkerPoolEvictor"

.field public static final h:LSe/k;

.field public static final i:Ljava/lang/String; = "rx2.io-keep-alive-time"

.field public static final j:J = 0x3cL

.field public static final k:J

.field public static final l:Ljava/util/concurrent/TimeUnit;

.field public static final m:LSe/g$c;

.field public static final n:Ljava/lang/String; = "rx2.io-priority"

.field public static final o:LSe/g$a;


# instance fields
.field public final c:Ljava/util/concurrent/ThreadFactory;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LSe/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, LSe/g;->l:Ljava/util/concurrent/TimeUnit;

    const-string v0, "rx2.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, LSe/g;->k:J

    new-instance v0, LSe/g$c;

    new-instance v1, LSe/k;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, LSe/k;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LSe/g$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, LSe/g;->m:LSe/g$c;

    invoke-virtual {v0}, LSe/i;->dispose()V

    const-string v0, "rx2.io-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, LSe/k;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, LSe/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, LSe/g;->f:LSe/k;

    new-instance v2, LSe/k;

    const-string v3, "RxCachedWorkerPoolEvictor"

    invoke-direct {v2, v3, v0}, LSe/k;-><init>(Ljava/lang/String;I)V

    sput-object v2, LSe/g;->h:LSe/k;

    new-instance v0, LSe/g$a;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, LSe/g$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, LSe/g;->o:LSe/g$a;

    invoke-virtual {v0}, LSe/g$a;->e()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LSe/g;->f:LSe/k;

    invoke-direct {p0, v0}, LSe/g;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, LBe/J;-><init>()V

    .line 3
    iput-object p1, p0, LSe/g;->c:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, LSe/g;->o:LSe/g$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LSe/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, LSe/g;->j()V

    return-void
.end method


# virtual methods
.method public c()LBe/J$c;
    .locals 2
    .annotation build LCe/f;
    .end annotation

    new-instance v0, LSe/g$b;

    iget-object v1, p0, LSe/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSe/g$a;

    invoke-direct {v0, v1}, LSe/g$b;-><init>(LSe/g$a;)V

    return-object v0
.end method

.method public i()V
    .locals 3

    :cond_0
    iget-object v0, p0, LSe/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSe/g$a;

    sget-object v1, LSe/g;->o:LSe/g$a;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, LSe/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LSe/g$a;->e()V

    return-void
.end method

.method public j()V
    .locals 5

    new-instance v0, LSe/g$a;

    sget-wide v1, LSe/g;->k:J

    sget-object v3, LSe/g;->l:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, LSe/g;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2, v3, v4}, LSe/g$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, LSe/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, LSe/g;->o:LSe/g$a;

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, LSe/g$a;->e()V

    :cond_0
    return-void
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LSe/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSe/g$a;

    iget-object v0, v0, LSe/g$a;->d:LDe/b;

    invoke-virtual {v0}, LDe/b;->h()I

    move-result v0

    return v0
.end method
