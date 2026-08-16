.class public Lcom/google/common/util/concurrent/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/e;->k()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/e;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/e$b;->b:Lcom/google/common/util/concurrent/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$b;->b:Lcom/google/common/util/concurrent/e;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/g0;->n(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
