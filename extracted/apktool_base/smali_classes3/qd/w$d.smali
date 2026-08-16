.class public Lqd/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqd/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lqd/w$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lqd/w$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JLqd/z;Lqd/z;Lqd/A;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p4}, Lqd/z;->c()J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-gez p3, :cond_0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    :cond_0
    return-wide v0
.end method
