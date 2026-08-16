.class LJAVARuntime/Component$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Component;->waitSeconds(FLJAVARuntime/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Component;

.field final synthetic val$runnable:LJAVARuntime/Runnable;


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
            "val$runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Component$9;->this$0:LJAVARuntime/Component;

    iput-object p2, p0, LJAVARuntime/Component$9;->val$runnable:LJAVARuntime/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, LJAVARuntime/Component$9$1;

    invoke-direct {v0, p0}, LJAVARuntime/Component$9$1;-><init>(LJAVARuntime/Component$9;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
