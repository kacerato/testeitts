.class LJAVARuntime/ListStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/ListStream;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/ListStream;


# direct methods
.method public constructor <init>(LJAVARuntime/ListStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/ListStream$1;->this$0:LJAVARuntime/ListStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, LJAVARuntime/ListStream$1;->this$0:LJAVARuntime/ListStream;

    invoke-static {v0}, LJAVARuntime/ListStream;->access$000(LJAVARuntime/ListStream;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid threadsSequence, use ListStream.HALF_THREADS, ListStream.MAX_THREADS or ListStream.FIXED_THREADS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, LJAVARuntime/ListStream$1;->this$0:LJAVARuntime/ListStream;

    invoke-static {v0}, LJAVARuntime/ListStream;->access$100(LJAVARuntime/ListStream;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, LJAVARuntime/Device;->availableProcessors()I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, LJAVARuntime/Device;->availableProcessors()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, LJAVARuntime/ListStream$1;->this$0:LJAVARuntime/ListStream;

    invoke-static {v1}, LJAVARuntime/ListStream;->access$200(LJAVARuntime/ListStream;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-static {v1}, LJAVARuntime/Math;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    mul-int v4, v1, v3

    new-instance v5, LJAVARuntime/Thread;

    new-instance v6, LJAVARuntime/ListStream$1$1;

    invoke-direct {v6, p0, v1, v4, v2}, LJAVARuntime/ListStream$1$1;-><init>(LJAVARuntime/ListStream$1;IILjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-direct {v5, v6}, LJAVARuntime/Thread;-><init>(LJAVARuntime/Runnable;)V

    invoke-virtual {v5}, LJAVARuntime/Thread;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v1, v0, :cond_0

    new-instance v0, LJAVARuntime/ListStream$1$2;

    invoke-direct {v0, p0}, LJAVARuntime/ListStream$1$2;-><init>(LJAVARuntime/ListStream$1;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
