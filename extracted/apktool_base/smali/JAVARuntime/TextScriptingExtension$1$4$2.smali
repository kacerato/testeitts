.class LJAVARuntime/TextScriptingExtension$1$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension$1$4;->showLineTips(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:LJAVARuntime/TextScriptingExtension$1$4;

.field final synthetic val$line:I

.field final synthetic val$text:[Ljava/lang/String;


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension$1$4;[Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$text",
            "val$line"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$4$2;->this$2:LJAVARuntime/TextScriptingExtension$1$4;

    iput-object p2, p0, LJAVARuntime/TextScriptingExtension$1$4$2;->val$text:[Ljava/lang/String;

    iput p3, p0, LJAVARuntime/TextScriptingExtension$1$4$2;->val$line:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1$4$2;->val$text:[Ljava/lang/String;

    iget-object v1, p0, LJAVARuntime/TextScriptingExtension$1$4$2;->this$2:LJAVARuntime/TextScriptingExtension$1$4;

    iget-object v1, v1, LJAVARuntime/TextScriptingExtension$1$4;->this$1:LJAVARuntime/TextScriptingExtension$1;

    iget-object v1, v1, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    iget v2, p0, LJAVARuntime/TextScriptingExtension$1$4$2;->val$line:I

    invoke-virtual {v1, v2}, LJAVARuntime/TextScriptingExtension;->getTipTextForLine(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
