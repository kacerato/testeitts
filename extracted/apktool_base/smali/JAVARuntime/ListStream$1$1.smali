.class LJAVARuntime/ListStream$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/ListStream$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/ListStream$1;

.field final synthetic val$finishCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$increment:I

.field final synthetic val$itensPerThread:I


# direct methods
.method public constructor <init>(LJAVARuntime/ListStream$1;IILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$itensPerThread",
            "val$increment",
            "val$finishCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/ListStream$1$1;->this$1:LJAVARuntime/ListStream$1;

    iput p2, p0, LJAVARuntime/ListStream$1$1;->val$itensPerThread:I

    iput p3, p0, LJAVARuntime/ListStream$1$1;->val$increment:I

    iput-object p4, p0, LJAVARuntime/ListStream$1$1;->val$finishCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, LJAVARuntime/ListStream$1$1;->val$itensPerThread:I

    if-ge v0, v1, :cond_1

    iget v1, p0, LJAVARuntime/ListStream$1$1;->val$increment:I

    add-int/2addr v1, v0

    iget-object v2, p0, LJAVARuntime/ListStream$1$1;->this$1:LJAVARuntime/ListStream$1;

    iget-object v2, v2, LJAVARuntime/ListStream$1;->this$0:LJAVARuntime/ListStream;

    invoke-static {v2}, LJAVARuntime/ListStream;->access$200(LJAVARuntime/ListStream;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    if-le v2, v1, :cond_0

    :try_start_1
    iget-object v2, p0, LJAVARuntime/ListStream$1$1;->this$1:LJAVARuntime/ListStream$1;

    iget-object v2, v2, LJAVARuntime/ListStream$1;->this$0:LJAVARuntime/ListStream;

    invoke-static {v2}, LJAVARuntime/ListStream;->access$200(LJAVARuntime/ListStream;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, LJAVARuntime/ListStream$1$1$1;

    invoke-direct {v3, p0, v2, v1}, LJAVARuntime/ListStream$1$1$1;-><init>(LJAVARuntime/ListStream$1$1;Ljava/lang/Object;I)V

    invoke-static {v3}, Ld8/m;->d(Lo8/d;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :goto_1
    :try_start_2
    new-instance v3, LJAVARuntime/ListStream$1$1$3;

    invoke-direct {v3, p0, v2, v1}, LJAVARuntime/ListStream$1$1$3;-><init>(LJAVARuntime/ListStream$1$1;Ljava/lang/Error;I)V

    invoke-static {v3}, Ld8/m;->d(Lo8/d;)Z

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :goto_2
    new-instance v3, LJAVARuntime/ListStream$1$1$2;

    invoke-direct {v3, p0, v2, v1}, LJAVARuntime/ListStream$1$1$2;-><init>(LJAVARuntime/ListStream$1$1;Ljava/lang/Exception;I)V

    invoke-static {v3}, Ld8/m;->d(Lo8/d;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LJAVARuntime/ListStream$1$1;->val$finishCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :cond_1
    iget-object v0, p0, LJAVARuntime/ListStream$1$1;->val$finishCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method
