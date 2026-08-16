.class LJAVARuntime/TextScriptingExtension$1$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension$1;->saveScript(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/TextScriptingExtension$1;

.field final synthetic val$result:[Z


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension$1;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$8;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iput-object p2, p0, LJAVARuntime/TextScriptingExtension$1$8;->val$result:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1$8;->val$result:[Z

    iget-object v1, p0, LJAVARuntime/TextScriptingExtension$1$8;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iget-object v1, v1, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-virtual {v1}, LJAVARuntime/TextScriptingExtension;->saveScript()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return-void
.end method
