.class public final Lqd/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/J;


# static fields
.field public static final a:I = 0xc8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JLqd/z;Lqd/z;Lqd/A;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 p3, 0xc8

    :goto_0
    invoke-virtual {p4}, Lqd/z;->c()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    invoke-virtual {p0, p5, p3}, Lqd/G;->c(Lqd/A;I)I

    move-result p3

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final c(Lqd/A;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;
        }
    .end annotation

    invoke-interface {p1}, Lqd/A;->b()V

    const/16 p1, 0x64

    if-le p2, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    :goto_0
    return p2
.end method
