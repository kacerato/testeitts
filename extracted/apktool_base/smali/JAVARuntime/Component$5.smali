.class LJAVARuntime/Component$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Component;->invokeFrames(ILJAVARuntime/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Component;

.field final synthetic val$invokeListener:LJAVARuntime/Runnable;


# direct methods
.method public constructor <init>(LJAVARuntime/Component;LJAVARuntime/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$invokeListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Component$5;->this$0:LJAVARuntime/Component;

    iput-object p2, p0, LJAVARuntime/Component$5;->val$invokeListener:LJAVARuntime/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, LJAVARuntime/Component$5$1;

    invoke-direct {v0, p0}, LJAVARuntime/Component$5$1;-><init>(LJAVARuntime/Component$5;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
