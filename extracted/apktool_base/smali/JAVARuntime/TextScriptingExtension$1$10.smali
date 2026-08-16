.class LJAVARuntime/TextScriptingExtension$1$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension$1;->supportFile(Ljd/b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/TextScriptingExtension$1;

.field final synthetic val$file:Ljd/b;

.field final synthetic val$result:[Z


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension$1;[ZLjd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$result",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$10;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iput-object p2, p0, LJAVARuntime/TextScriptingExtension$1$10;->val$result:[Z

    iput-object p3, p0, LJAVARuntime/TextScriptingExtension$1$10;->val$file:Ljd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1$10;->val$result:[Z

    iget-object v1, p0, LJAVARuntime/TextScriptingExtension$1$10;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iget-object v1, v1, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    new-instance v2, LJAVARuntime/File;

    iget-object v3, p0, LJAVARuntime/TextScriptingExtension$1$10;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iget-object v4, p0, LJAVARuntime/TextScriptingExtension$1$10;->val$file:Ljd/b;

    invoke-static {v3, v4}, LJAVARuntime/TextScriptingExtension$1;->access$000(LJAVARuntime/TextScriptingExtension$1;Ljd/b;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, LJAVARuntime/File;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v1, v2}, LJAVARuntime/TextScriptingExtension;->supportFile(LJAVARuntime/File;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return-void
.end method
