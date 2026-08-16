.class LJAVARuntime/TextScriptingExtension$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension$1;->init()V
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

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$4;->this$1:LJAVARuntime/TextScriptingExtension$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeForLine(IZ)Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "isLatest"
        }
    .end annotation

    const/4 p2, 0x0

    filled-new-array {p2}, [LJAVARuntime/TextScriptingExtension$LineTip;

    move-result-object p2

    new-instance v0, LJAVARuntime/TextScriptingExtension$1$4$1;

    invoke-direct {v0, p0, p2, p1}, LJAVARuntime/TextScriptingExtension$1$4$1;-><init>(LJAVARuntime/TextScriptingExtension$1$4;[LJAVARuntime/TextScriptingExtension$LineTip;I)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    iget-object p1, p0, LJAVARuntime/TextScriptingExtension$1$4;->this$1:LJAVARuntime/TextScriptingExtension$1;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, LJAVARuntime/TextScriptingExtension$1;->convertFromJavaRuntime(LJAVARuntime/TextScriptingExtension$LineTip;)Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;

    move-result-object p1

    return-object p1
.end method

.method public showLineTips(IIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "x",
            "y",
            "isLatest"
        }
    .end annotation

    const/4 p4, 0x0

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    new-instance v0, LJAVARuntime/TextScriptingExtension$1$4$2;

    invoke-direct {v0, p0, p4, p1}, LJAVARuntime/TextScriptingExtension$1$4$2;-><init>(LJAVARuntime/TextScriptingExtension$1$4;[Ljava/lang/String;I)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    iget-object p1, p0, LJAVARuntime/TextScriptingExtension$1$4;->this$1:LJAVARuntime/TextScriptingExtension$1;

    const/4 v0, 0x0

    aget-object p4, p4, v0

    invoke-static {p1, p2, p3, p4}, LJAVARuntime/TextScriptingExtension$1;->access$100(LJAVARuntime/TextScriptingExtension$1;IILjava/lang/String;)V

    return-void
.end method
