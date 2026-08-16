.class public abstract Lcom/google/common/util/concurrent/e$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/e$f;-><init>()V

    return-void
.end method

.method public static a(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/e$f;
    .locals 8

    invoke-static {p4}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "delay must be > 0, found %s"

    invoke-static {v0, v1, p2, p3}, Lw2/H;->p(ZLjava/lang/String;J)V

    new-instance v0, Lcom/google/common/util/concurrent/e$f$a;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/common/util/concurrent/e$f$a;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static b(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/e$f;
    .locals 8

    invoke-static {p4}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "period must be > 0, found %s"

    invoke-static {v0, v1, p2, p3}, Lw2/H;->p(ZLjava/lang/String;J)V

    new-instance v0, Lcom/google/common/util/concurrent/e$f$b;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/common/util/concurrent/e$f$b;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method


# virtual methods
.method public abstract c(Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/e$c;
.end method
