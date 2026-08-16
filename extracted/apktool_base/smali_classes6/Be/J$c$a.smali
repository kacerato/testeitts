.class public final LBe/J$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Laf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBe/J$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;
    .annotation build LCe/f;
    .end annotation
.end field

.field public final c:LGe/h;
    .annotation build LCe/f;
    .end annotation
.end field

.field public final d:J

.field public e:J

.field public f:J

.field public g:J

.field public final synthetic h:LBe/J$c;


# direct methods
.method public constructor <init>(LBe/J$c;JLjava/lang/Runnable;JLGe/h;J)V
    .locals 0
    .param p2    # J
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p5    # J
        .annotation build LCe/f;
        .end annotation
    .end param

    iput-object p1, p0, LBe/J$c$a;->h:LBe/J$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, LBe/J$c$a;->b:Ljava/lang/Runnable;

    iput-object p7, p0, LBe/J$c$a;->c:LGe/h;

    iput-wide p8, p0, LBe/J$c$a;->d:J

    iput-wide p5, p0, LBe/J$c$a;->f:J

    iput-wide p2, p0, LBe/J$c$a;->g:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, LBe/J$c$a;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method public run()V
    .locals 12

    iget-object v0, p0, LBe/J$c$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, LBe/J$c$a;->c:LGe/h;

    invoke-virtual {v0}, LGe/h;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LBe/J$c$a;->h:LBe/J$c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-wide v4, LBe/J;->b:J

    add-long v6, v2, v4

    iget-wide v8, p0, LBe/J$c$a;->f:J

    cmp-long v0, v6, v8

    const-wide/16 v6, 0x1

    if-ltz v0, :cond_1

    iget-wide v10, p0, LBe/J$c$a;->d:J

    add-long/2addr v8, v10

    add-long/2addr v8, v4

    cmp-long v0, v2, v8

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, LBe/J$c$a;->g:J

    iget-wide v8, p0, LBe/J$c$a;->e:J

    add-long/2addr v8, v6

    iput-wide v8, p0, LBe/J$c$a;->e:J

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v4, p0, LBe/J$c$a;->d:J

    add-long v8, v2, v4

    iget-wide v10, p0, LBe/J$c$a;->e:J

    add-long/2addr v10, v6

    iput-wide v10, p0, LBe/J$c$a;->e:J

    mul-long/2addr v4, v10

    sub-long v4, v8, v4

    iput-wide v4, p0, LBe/J$c$a;->g:J

    move-wide v4, v8

    :goto_1
    iput-wide v2, p0, LBe/J$c$a;->f:J

    sub-long/2addr v4, v2

    iget-object v0, p0, LBe/J$c$a;->c:LGe/h;

    iget-object v2, p0, LBe/J$c$a;->h:LBe/J$c;

    invoke-virtual {v2, p0, v4, v5, v1}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object v1

    invoke-virtual {v0, v1}, LGe/h;->a(LDe/c;)Z

    :cond_2
    return-void
.end method
