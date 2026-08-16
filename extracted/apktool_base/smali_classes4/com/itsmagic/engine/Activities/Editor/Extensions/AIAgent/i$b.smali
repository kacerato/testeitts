.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->d(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

.field public final synthetic c:[Z

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic e:[Z

.field public final synthetic f:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;[Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;[ZLjava/util/concurrent/CountDownLatch;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$fullMsg",
            "val$callback",
            "val$successAnswer",
            "val$doneSignal",
            "val$errorAnswer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->c:[Z

    iput-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->d:Ljava/util/concurrent/CountDownLatch;

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->e:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->c:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public b(Lcom/google/ai/edge/litertlm/d;)V
    .locals 4
    .param p1    # Lcom/google/ai/edge/litertlm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/ai/edge/litertlm/d;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Streaming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->h(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->e:[Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
