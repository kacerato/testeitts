.class LJAVARuntime/TextScriptingExtension$1$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension$1;->inflateTopBarElements(Landroid/content/Context;Ljava/util/List;)V
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

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$11;->this$1:LJAVARuntime/TextScriptingExtension$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    new-instance p1, LJAVARuntime/TextScriptingExtension$1$11$1;

    invoke-direct {p1, p0}, LJAVARuntime/TextScriptingExtension$1$11$1;-><init>(LJAVARuntime/TextScriptingExtension$1$11;)V

    invoke-static {p1}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
