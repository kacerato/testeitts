.class LJAVARuntime/Component$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Component$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/Component$8;


# direct methods
.method public constructor <init>(LJAVARuntime/Component$8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Component$8$1;->this$1:LJAVARuntime/Component$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Component$8$1;->this$1:LJAVARuntime/Component$8;

    iget-object v0, v0, LJAVARuntime/Component$8;->val$runnable:LJAVARuntime/Runnable;

    invoke-interface {v0}, LJAVARuntime/Runnable;->run()V

    return-void
.end method
