.class LJAVARuntime/Vertex$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Vertex$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/Vertex$6;


# direct methods
.method public constructor <init>(LJAVARuntime/Vertex$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Vertex$6$1;->this$1:LJAVARuntime/Vertex$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/Vertex$6$1;->this$1:LJAVARuntime/Vertex$6;

    iget-object v1, v0, LJAVARuntime/Vertex$6;->val$array:[I

    iget-object v0, v0, LJAVARuntime/Vertex$6;->this$0:LJAVARuntime/Vertex;

    iget-object v0, v0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v1, v0}, LIb/h;->A([ILcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v0, p0, LJAVARuntime/Vertex$6$1;->this$1:LJAVARuntime/Vertex$6;

    iget-object v0, v0, LJAVARuntime/Vertex$6;->this$0:LJAVARuntime/Vertex;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LJAVARuntime/Vertex;->access$102(LJAVARuntime/Vertex;LJAVARuntime/Runnable;)LJAVARuntime/Runnable;

    return-void
.end method
