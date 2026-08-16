.class public Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;->access$100(Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
