.class public LIc/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIc/O$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:Ljava/lang/String;

.field public d:LIc/O$b;

.field public e:Ljava/lang/Thread;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(FILIc/O$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeOutSeconds",
            "priority",
            "listener"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 15
    iput v0, p0, LIc/O;->a:F

    const/4 v0, 0x5

    .line 16
    iput v0, p0, LIc/O;->b:I

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, LIc/O;->c:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LIc/O;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    iput p1, p0, LIc/O;->a:F

    .line 20
    iput p2, p0, LIc/O;->b:I

    .line 21
    iput-object p3, p0, LIc/O;->d:LIc/O$b;

    return-void
.end method

.method public constructor <init>(FILjava/lang/String;LIc/O$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeOutSeconds",
            "priority",
            "name",
            "listener"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 23
    iput v0, p0, LIc/O;->a:F

    const/4 v0, 0x5

    .line 24
    iput v0, p0, LIc/O;->b:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, LIc/O;->c:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LIc/O;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    iput p1, p0, LIc/O;->a:F

    .line 28
    iput p2, p0, LIc/O;->b:I

    .line 29
    iput-object p3, p0, LIc/O;->c:Ljava/lang/String;

    .line 30
    iput-object p4, p0, LIc/O;->d:LIc/O$b;

    return-void
.end method

.method public constructor <init>(FLIc/O$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeOutSeconds",
            "listener"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 8
    iput v0, p0, LIc/O;->a:F

    const/4 v0, 0x5

    .line 9
    iput v0, p0, LIc/O;->b:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, LIc/O;->c:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LIc/O;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    iput p1, p0, LIc/O;->a:F

    .line 13
    iput-object p2, p0, LIc/O;->d:LIc/O$b;

    return-void
.end method

.method public constructor <init>(ILIc/O$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "priority",
            "listener"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 40
    iput v0, p0, LIc/O;->a:F

    const/4 v0, 0x5

    .line 41
    iput v0, p0, LIc/O;->b:I

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, LIc/O;->c:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LIc/O;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    iput p1, p0, LIc/O;->b:I

    .line 45
    iput-object p2, p0, LIc/O;->d:LIc/O$b;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;LIc/O$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "priority",
            "name",
            "listener"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 32
    iput v0, p0, LIc/O;->a:F

    const/4 v0, 0x5

    .line 33
    iput v0, p0, LIc/O;->b:I

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, LIc/O;->c:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LIc/O;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    iput p1, p0, LIc/O;->b:I

    .line 37
    iput-object p2, p0, LIc/O;->c:Ljava/lang/String;

    .line 38
    iput-object p3, p0, LIc/O;->d:LIc/O$b;

    return-void
.end method

.method public constructor <init>(LIc/O$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 2
    iput v0, p0, LIc/O;->a:F

    const/4 v0, 0x5

    .line 3
    iput v0, p0, LIc/O;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LIc/O;->c:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LIc/O;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-object p1, p0, LIc/O;->d:LIc/O$b;

    return-void
.end method

.method public static synthetic a(LIc/O;)LIc/O$b;
    .locals 0

    iget-object p0, p0, LIc/O;->d:LIc/O$b;

    return-object p0
.end method

.method public static synthetic b(LIc/O;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LIc/O;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public c()LIc/O$b;
    .locals 1

    iget-object v0, p0, LIc/O;->d:LIc/O$b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIc/O;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LIc/O;->b:I

    return v0
.end method

.method public f()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, LIc/O;->e:Ljava/lang/Thread;

    return-object v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, LIc/O;->a:F

    return v0
.end method

.method public h(LIc/O$b;)LIc/O;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, LIc/O;->d:LIc/O$b;

    return-object p0
.end method

.method public i(Ljava/lang/String;)LIc/O;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, LIc/O;->c:Ljava/lang/String;

    return-object p0
.end method

.method public j(I)LIc/O;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    iput p1, p0, LIc/O;->b:I

    return-object p0
.end method

.method public k(F)LIc/O;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeOutSeconds"
        }
    .end annotation

    iput p1, p0, LIc/O;->a:F

    return-object p0
.end method

.method public l()V
    .locals 6

    iget-object v0, p0, LIc/O;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LIc/O$a;

    invoke-direct {v1, p0}, LIc/O$a;-><init>(LIc/O;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, LIc/O;->e:Ljava/lang/Thread;

    iget-object v1, p0, LIc/O;->d:LIc/O$b;

    invoke-interface {v1, v0}, LIc/O$b;->a(Ljava/lang/Thread;)V

    iget-object v0, p0, LIc/O;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, LIc/O;->e:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, LIc/O;->e:Ljava/lang/Thread;

    iget v1, p0, LIc/O;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, LIc/O;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, LIc/O;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v0, v3, v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, LIc/O;->a:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    :try_start_0
    iget-object v0, p0, LIc/O;->d:LIc/O$b;

    iget-object v1, p0, LIc/O;->e:Ljava/lang/Thread;

    invoke-interface {v0, v1}, LIc/O$b;->c(Ljava/lang/Thread;)V

    iget-object v0, p0, LIc/O;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    iget-object v0, p0, LIc/O;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, LIc/O;->d:LIc/O$b;

    invoke-interface {v0}, LIc/O$b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v0, p0, LIc/O;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :cond_1
    const-wide/16 v0, 0x0

    const/16 v5, 0x32

    :try_start_1
    invoke-static {v0, v1, v5}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    move-wide v0, v3

    goto :goto_0

    :cond_2
    :goto_3
    return-void
.end method
