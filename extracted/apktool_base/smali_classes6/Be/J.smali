.class public abstract LBe/J;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LBe/J$a;,
        LBe/J$b;,
        LBe/J$c;
    }
.end annotation


# static fields
.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, LBe/J;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()J
    .locals 2

    sget-wide v0, LBe/J;->b:J

    return-wide v0
.end method


# virtual methods
.method public abstract c()LBe/J$c;
    .annotation build LCe/f;
    .end annotation
.end method

.method public e(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build LCe/f;
        .end annotation
    .end param

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Ljava/lang/Runnable;)LDe/c;
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    invoke-virtual {p0}, LBe/J;->c()LBe/J$c;

    move-result-object v0

    invoke-static {p1}, LYe/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v1, LBe/J$a;

    invoke-direct {v1, p1, v0}, LBe/J$a;-><init>(Ljava/lang/Runnable;LBe/J$c;)V

    invoke-virtual {v0, v1, p2, p3, p4}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    return-object v1
.end method

.method public h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/TimeUnit;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    invoke-virtual {p0}, LBe/J;->c()LBe/J$c;

    move-result-object v0

    invoke-static {p1}, LYe/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v7, LBe/J$b;

    invoke-direct {v7, p1, v0}, LBe/J$b;-><init>(Ljava/lang/Runnable;LBe/J$c;)V

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    sget-object p2, LGe/e;->INSTANCE:LGe/e;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    return-object v7
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k(LFe/o;)LBe/J;
    .locals 1
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "LBe/J;",
            ":",
            "LDe/c;",
            ">(",
            "LFe/o<",
            "LBe/l<",
            "LBe/l<",
            "LBe/c;",
            ">;>;",
            "LBe/c;",
            ">;)TS;"
        }
    .end annotation

    new-instance v0, LSe/q;

    invoke-direct {v0, p1, p0}, LSe/q;-><init>(LFe/o;LBe/J;)V

    return-object v0
.end method
