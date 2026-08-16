.class LJAVARuntime/ListStream$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


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


# direct methods
.method public constructor <init>(LJAVARuntime/ListStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/ListStream$1$2;->this$1:LJAVARuntime/ListStream$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/ListStream$1$2;->this$1:LJAVARuntime/ListStream$1;

    iget-object v0, v0, LJAVARuntime/ListStream$1;->this$0:LJAVARuntime/ListStream;

    invoke-static {v0}, LJAVARuntime/ListStream;->access$400(LJAVARuntime/ListStream;)LJAVARuntime/ListStreamListener;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/ListStream$1$2;->this$1:LJAVARuntime/ListStream$1;

    iget-object v1, v1, LJAVARuntime/ListStream$1;->this$0:LJAVARuntime/ListStream;

    invoke-static {v1}, LJAVARuntime/ListStream;->access$300(LJAVARuntime/ListStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, LJAVARuntime/ListStreamListener;->onFinish(Ljava/lang/Object;)V

    return-void
.end method
