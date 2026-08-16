.class LJAVARuntime/AsyncTask$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AsyncTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/AsyncTask$1;


# direct methods
.method public constructor <init>(LJAVARuntime/AsyncTask$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AsyncTask$1$1;->this$1:LJAVARuntime/AsyncTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/AsyncTask$1$1;->this$1:LJAVARuntime/AsyncTask$1;

    iget-object v1, v0, LJAVARuntime/AsyncTask$1;->val$asyncRunnable:LJAVARuntime/AsyncRunnable;

    iget-object v0, v0, LJAVARuntime/AsyncTask$1;->val$userData:Ljava/lang/Object;

    invoke-interface {v1, v0}, LJAVARuntime/AsyncRunnable;->onBackground(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, LJAVARuntime/AsyncTask$1$1$1;

    invoke-direct {v1, p0, v0}, LJAVARuntime/AsyncTask$1$1$1;-><init>(LJAVARuntime/AsyncTask$1$1;Ljava/lang/Object;)V

    invoke-static {v1}, LJAVARuntime/Thread;->runOnEngine(LJAVARuntime/Runnable;)V

    return-void
.end method
