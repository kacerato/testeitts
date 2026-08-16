.class LJAVARuntime/TextScriptingExtension$1$5$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension$1$5;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:LJAVARuntime/TextScriptingExtension$1$5;

.field final synthetic val$editable:Landroid/text/Editable;


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension$1$5;Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$editable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$5$3;->this$2:LJAVARuntime/TextScriptingExtension$1$5;

    iput-object p2, p0, LJAVARuntime/TextScriptingExtension$1$5$3;->val$editable:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1$5$3;->this$2:LJAVARuntime/TextScriptingExtension$1$5;

    iget-object v0, v0, LJAVARuntime/TextScriptingExtension$1$5;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iget-object v0, v0, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    iget-object v1, p0, LJAVARuntime/TextScriptingExtension$1$5$3;->val$editable:Landroid/text/Editable;

    invoke-virtual {v0, v1}, LJAVARuntime/TextScriptingExtension;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method
