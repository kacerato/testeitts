.class public Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;->access$000(Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;->access$100(Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method
