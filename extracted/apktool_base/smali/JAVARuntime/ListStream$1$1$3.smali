.class LJAVARuntime/ListStream$1$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/ListStream$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:LJAVARuntime/ListStream$1$1;

.field final synthetic val$e:Ljava/lang/Error;

.field final synthetic val$idx:I


# direct methods
.method public constructor <init>(LJAVARuntime/ListStream$1$1;Ljava/lang/Error;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$e",
            "val$idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/ListStream$1$1$3;->this$2:LJAVARuntime/ListStream$1$1;

    iput-object p2, p0, LJAVARuntime/ListStream$1$1$3;->val$e:Ljava/lang/Error;

    iput p3, p0, LJAVARuntime/ListStream$1$1$3;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LJAVARuntime/ListStream$1$1$3;->this$2:LJAVARuntime/ListStream$1$1;

    iget-object v0, v0, LJAVARuntime/ListStream$1$1;->this$1:LJAVARuntime/ListStream$1;

    iget-object v0, v0, LJAVARuntime/ListStream$1;->this$0:LJAVARuntime/ListStream;

    invoke-static {v0}, LJAVARuntime/ListStream;->access$400(LJAVARuntime/ListStream;)LJAVARuntime/ListStreamListener;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/ListStream$1$1$3;->val$e:Ljava/lang/Error;

    iget v2, p0, LJAVARuntime/ListStream$1$1$3;->val$idx:I

    iget-object v3, p0, LJAVARuntime/ListStream$1$1$3;->this$2:LJAVARuntime/ListStream$1$1;

    iget-object v3, v3, LJAVARuntime/ListStream$1$1;->this$1:LJAVARuntime/ListStream$1;

    iget-object v3, v3, LJAVARuntime/ListStream$1;->this$0:LJAVARuntime/ListStream;

    invoke-static {v3}, LJAVARuntime/ListStream;->access$300(LJAVARuntime/ListStream;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v4, v1, v2, v3}, LJAVARuntime/ListStreamListener;->onError(Ljava/lang/Exception;Ljava/lang/Error;ILjava/lang/Object;)V

    return-void
.end method
