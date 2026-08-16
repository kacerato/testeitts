.class LJAVARuntime/TextScriptingExtension$1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1$5;->this$1:LJAVARuntime/TextScriptingExtension$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    new-instance v0, LJAVARuntime/TextScriptingExtension$1$5$3;

    invoke-direct {v0, p0, p1}, LJAVARuntime/TextScriptingExtension$1$5$3;-><init>(LJAVARuntime/TextScriptingExtension$1$5;Landroid/text/Editable;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "start",
            "before",
            "count"
        }
    .end annotation

    new-instance v6, LJAVARuntime/TextScriptingExtension$1$5$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LJAVARuntime/TextScriptingExtension$1$5$1;-><init>(LJAVARuntime/TextScriptingExtension$1$5;Ljava/lang/CharSequence;III)V

    invoke-static {v6}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "start",
            "before",
            "count"
        }
    .end annotation

    new-instance v6, LJAVARuntime/TextScriptingExtension$1$5$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LJAVARuntime/TextScriptingExtension$1$5$2;-><init>(LJAVARuntime/TextScriptingExtension$1$5;Ljava/lang/CharSequence;III)V

    invoke-static {v6}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
