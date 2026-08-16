.class LJAVARuntime/TextScriptingExtension$1$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension$1;->unload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/TextScriptingExtension$1;


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$7;->this$1:LJAVARuntime/TextScriptingExtension$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1$7;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iget-object v0, v0, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-virtual {v0}, LJAVARuntime/TextScriptingExtension;->unload()V

    return-void
.end method
