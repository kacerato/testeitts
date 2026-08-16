.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->j(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$doneSignal",
            "val$isError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partialMessage"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;->c(Ljava/lang/String;)V

    return-void
.end method
