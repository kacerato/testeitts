.class public Lcom/itsmagic/engine/Engines/Engine/World/World$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/World$b;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/World/World$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/World/World$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/World/World$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/World/World$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->b:LLb/a;

    invoke-interface {v0}, LLb/a;->e()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/World/World$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
