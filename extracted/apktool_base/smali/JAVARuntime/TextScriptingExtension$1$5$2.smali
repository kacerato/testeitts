.class LJAVARuntime/TextScriptingExtension$1$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension$1$5;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:LJAVARuntime/TextScriptingExtension$1$5;

.field final synthetic val$before:I

.field final synthetic val$charSequence:Ljava/lang/CharSequence;

.field final synthetic val$count:I

.field final synthetic val$start:I


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension$1$5;Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$charSequence",
            "val$start",
            "val$before",
            "val$count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$5$2;->this$2:LJAVARuntime/TextScriptingExtension$1$5;

    iput-object p2, p0, LJAVARuntime/TextScriptingExtension$1$5$2;->val$charSequence:Ljava/lang/CharSequence;

    iput p3, p0, LJAVARuntime/TextScriptingExtension$1$5$2;->val$start:I

    iput p4, p0, LJAVARuntime/TextScriptingExtension$1$5$2;->val$before:I

    iput p5, p0, LJAVARuntime/TextScriptingExtension$1$5$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1$5$2;->this$2:LJAVARuntime/TextScriptingExtension$1$5;

    iget-object v0, v0, LJAVARuntime/TextScriptingExtension$1$5;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iget-object v0, v0, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    iget-object v1, p0, LJAVARuntime/TextScriptingExtension$1$5$2;->val$charSequence:Ljava/lang/CharSequence;

    iget v2, p0, LJAVARuntime/TextScriptingExtension$1$5$2;->val$start:I

    iget v3, p0, LJAVARuntime/TextScriptingExtension$1$5$2;->val$before:I

    iget v4, p0, LJAVARuntime/TextScriptingExtension$1$5$2;->val$count:I

    invoke-virtual {v0, v1, v2, v3, v4}, LJAVARuntime/TextScriptingExtension;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method
