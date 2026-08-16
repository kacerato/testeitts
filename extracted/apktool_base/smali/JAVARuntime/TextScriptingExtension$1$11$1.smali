.class LJAVARuntime/TextScriptingExtension$1$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension$1$11;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:LJAVARuntime/TextScriptingExtension$1$11;


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension$1$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$11$1;->this$2:LJAVARuntime/TextScriptingExtension$1$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1$11$1;->this$2:LJAVARuntime/TextScriptingExtension$1$11;

    iget-object v0, v0, LJAVARuntime/TextScriptingExtension$1$11;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iget-object v0, v0, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-virtual {v0}, LJAVARuntime/TextScriptingExtension;->saveScript()Z

    return-void
.end method
