.class public LCc/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCc/c;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LCc/c;


# direct methods
.method public constructor <init>(LCc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LCc/c$b;->b:LCc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, LK8/a;->L:LIc/N;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, LIc/N;->e(Ljava/lang/Object;)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;->LITTLE:Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;->MEDIUM:Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->e(Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;)Z

    iget-object v0, p0, LCc/c$b;->b:LCc/c;

    invoke-static {v0}, LCc/c;->f(LCc/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
