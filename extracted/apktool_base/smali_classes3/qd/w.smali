.class public final Lqd/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/J;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqd/w$d;,
        Lqd/w$c;,
        Lqd/w$b;
    }
.end annotation


# static fields
.field public static final d:I = 0x2710


# instance fields
.field public final a:J

.field public final b:J

.field public c:Lqd/w$b;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lqd/w$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lqd/w;->a:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lqd/w;->b:J

    iput-object p6, p0, Lqd/w;->c:Lqd/w$b;

    return-void
.end method

.method public static c(JJLjava/util/concurrent/TimeUnit;)Lqd/w;
    .locals 8

    new-instance v7, Lqd/w;

    new-instance v6, Lqd/w$c;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lqd/w$c;-><init>(Lqd/w$a;)V

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lqd/w;-><init>(JJLjava/util/concurrent/TimeUnit;Lqd/w$b;)V

    return-object v7
.end method

.method public static d(JJLjava/util/concurrent/TimeUnit;)Lqd/w;
    .locals 8

    new-instance v7, Lqd/w;

    new-instance v6, Lqd/w$d;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lqd/w$d;-><init>(Lqd/w$a;)V

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lqd/w;-><init>(JJLjava/util/concurrent/TimeUnit;Lqd/w$b;)V

    return-object v7
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lqd/w;->c:Lqd/w$b;

    invoke-interface {v0}, Lqd/w$b;->a()V

    return-void
.end method

.method public b(JLqd/z;Lqd/z;Lqd/A;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v0, p0

    const-wide/16 v1, 0x0

    const/16 v3, 0x2710

    move-wide v5, v1

    :cond_0
    :goto_0
    move v4, v3

    :cond_1
    invoke-virtual/range {p4 .. p4}, Lqd/z;->c()J

    move-result-wide v7

    cmp-long v9, v7, p1

    if-ltz v9, :cond_2

    return-wide v7

    :cond_2
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_1

    cmp-long v4, v1, v5

    if-nez v4, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v5, v4

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    iget-wide v9, v0, Lqd/w;->b:J

    cmp-long v4, v7, v9

    if-lez v4, :cond_4

    iget-object v9, v0, Lqd/w;->c:Lqd/w$b;

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-interface/range {v9 .. v14}, Lqd/w$b;->b(JLqd/z;Lqd/z;Lqd/A;)J

    move-result-wide v1

    return-wide v1

    :cond_4
    iget-wide v9, v0, Lqd/w;->a:J

    cmp-long v4, v7, v9

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method
