.class public final LSe/s;
.super LBe/J;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSe/s$a;,
        LSe/s$b;,
        LSe/s$c;
    }
.end annotation


# static fields
.field public static final c:LSe/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LSe/s;

    invoke-direct {v0}, LSe/s;-><init>()V

    sput-object v0, LSe/s;->c:LSe/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/J;-><init>()V

    return-void
.end method

.method public static l()LSe/s;
    .locals 1

    sget-object v0, LSe/s;->c:LSe/s;

    return-object v0
.end method


# virtual methods
.method public c()LBe/J$c;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    new-instance v0, LSe/s$c;

    invoke-direct {v0}, LSe/s$c;-><init>()V

    return-object v0
.end method

.method public f(Ljava/lang/Runnable;)LDe/c;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    invoke-static {p1}, LYe/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1
.end method

.method public g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    invoke-static {p1}, LYe/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1
.end method
