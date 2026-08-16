.class LJAVARuntime/TextScriptingExtension$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension$1;->replaceScript(Ljd/b;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/TextScriptingExtension$1;

.field final synthetic val$script:Ljd/b;


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension$1;Ljd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$script"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$1;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iput-object p2, p0, LJAVARuntime/TextScriptingExtension$1$1;->val$script:Ljd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1$1;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iget-object v0, v0, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    new-instance v1, LJAVARuntime/File;

    iget-object v2, p0, LJAVARuntime/TextScriptingExtension$1$1;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iget-object v3, p0, LJAVARuntime/TextScriptingExtension$1$1;->val$script:Ljd/b;

    invoke-static {v2, v3}, LJAVARuntime/TextScriptingExtension$1;->access$000(LJAVARuntime/TextScriptingExtension$1;Ljd/b;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LJAVARuntime/File;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0, v1}, LJAVARuntime/TextScriptingExtension;->replaceScript(LJAVARuntime/File;)V

    return-void
.end method
