.class LJAVARuntime/TextScriptingExtension$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension;->setStyler(LJAVARuntime/TextScriptingStyler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/TextScriptingExtension;


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$3;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTheme()LJAVARuntime/TextScriptingTheme;
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$3;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-static {v0}, LJAVARuntime/TextScriptingExtension;->access$600(LJAVARuntime/TextScriptingExtension;)LJAVARuntime/TextScriptingTheme;

    move-result-object v0

    return-object v0
.end method
