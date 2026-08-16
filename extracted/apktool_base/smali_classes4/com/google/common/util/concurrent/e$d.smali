.class public abstract Lcom/google/common/util/concurrent/e$d;
.super Lcom/google/common/util/concurrent/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/e$d$b;,
        Lcom/google/common/util/concurrent/e$d$c;,
        Lcom/google/common/util/concurrent/e$d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/e$f;-><init>(Lcom/google/common/util/concurrent/e$a;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/e$c;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/e$d$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/e$d$a;-><init>(Lcom/google/common/util/concurrent/e$d;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/e$d$a;->c()Lcom/google/common/util/concurrent/e$c;

    move-result-object p1

    return-object p1
.end method

.method public abstract d()Lcom/google/common/util/concurrent/e$d$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
