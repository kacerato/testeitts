.class public final LSe/b;
.super LBe/J;
.source "SourceFile"

# interfaces
.implements LSe/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSe/b$c;,
        LSe/b$a;,
        LSe/b$b;
    }
.end annotation


# static fields
.field public static final e:LSe/b$b;

.field public static final f:Ljava/lang/String; = "RxComputationThreadPool"

.field public static final g:LSe/k;

.field public static final h:Ljava/lang/String; = "rx2.computation-threads"

.field public static final i:I

.field public static final j:LSe/b$c;

.field public static final k:Ljava/lang/String; = "rx2.computation-priority"


# instance fields
.field public final c:Ljava/util/concurrent/ThreadFactory;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LSe/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "rx2.computation-threads"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, LSe/b;->l(II)I

    move-result v0

    sput v0, LSe/b;->i:I

    new-instance v0, LSe/b$c;

    new-instance v1, LSe/k;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v1, v3}, LSe/k;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LSe/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, LSe/b;->j:LSe/b$c;

    invoke-virtual {v0}, LSe/i;->dispose()V

    const-string v0, "rx2.computation-priority"

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

    new-instance v3, LSe/k;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v1}, LSe/k;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, LSe/b;->g:LSe/k;

    new-instance v0, LSe/b$b;

    invoke-direct {v0, v2, v3}, LSe/b$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, LSe/b;->e:LSe/b$b;

    invoke-virtual {v0}, LSe/b$b;->c()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LSe/b;->g:LSe/k;

    invoke-direct {p0, v0}, LSe/b;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, LBe/J;-><init>()V

    .line 3
    iput-object p1, p0, LSe/b;->c:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, LSe/b;->e:LSe/b$b;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LSe/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, LSe/b;->j()V

    return-void
.end method

.method public static l(II)I
    .locals 0

    if-lez p1, :cond_1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public a(ILSe/o$a;)V
    .locals 1

    const-string v0, "number > 0 required"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    iget-object v0, p0, LSe/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSe/b$b;

    invoke-virtual {v0, p1, p2}, LSe/b$b;->a(ILSe/o$a;)V

    return-void
.end method

.method public c()LBe/J$c;
    .locals 2
    .annotation build LCe/f;
    .end annotation

    new-instance v0, LSe/b$a;

    iget-object v1, p0, LSe/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSe/b$b;

    invoke-virtual {v1}, LSe/b$b;->b()LSe/b$c;

    move-result-object v1

    invoke-direct {v0, v1}, LSe/b$a;-><init>(LSe/b$c;)V

    return-object v0
.end method

.method public g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    iget-object v0, p0, LSe/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSe/b$b;

    invoke-virtual {v0}, LSe/b$b;->b()LSe/b$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, LSe/i;->h(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    iget-object v0, p0, LSe/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSe/b$b;

    invoke-virtual {v0}, LSe/b$b;->b()LSe/b$c;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, LSe/i;->i(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 3

    :cond_0
    iget-object v0, p0, LSe/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSe/b$b;

    sget-object v1, LSe/b;->e:LSe/b$b;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, LSe/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LSe/b$b;->c()V

    return-void
.end method

.method public j()V
    .locals 3

    new-instance v0, LSe/b$b;

    sget v1, LSe/b;->i:I

    iget-object v2, p0, LSe/b;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, LSe/b$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, LSe/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, LSe/b;->e:LSe/b$b;

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, LSe/b$b;->c()V

    :cond_0
    return-void
.end method
