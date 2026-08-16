.class LJAVARuntime/Thread$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Thread$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Thread$3;


# direct methods
.method public constructor <init>(LJAVARuntime/Thread$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Thread$3$1;->this$0:LJAVARuntime/Thread$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread$3$1;->this$0:LJAVARuntime/Thread$3;

    iget-object v0, v0, LJAVARuntime/Thread$3;->val$runnable:LJAVARuntime/Runnable;

    invoke-interface {v0}, LJAVARuntime/Runnable;->run()V

    return-void
.end method
