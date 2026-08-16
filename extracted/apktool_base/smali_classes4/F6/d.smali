.class public interface abstract LF6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract duplicate()LF6/d;
.end method

.method public abstract getOpenFile()Ljava/lang/String;
.end method

.method public abstract hasScript()Z
.end method

.method public abstract hideView()V
.end method

.method public abstract inflateView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/content/Context;Ly6/b;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modulesContent",
            "asyncLayoutInflater",
            "context",
            "inflateListener"
        }
    .end annotation
.end method

.method public abstract matchState(Ly6/c$l;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract onClose(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract onStart(Landroid/content/Context;Landroid/view/LayoutInflater;Ly6/f;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layoutInflater",
            "upperCommunication",
            "panel"
        }
    .end annotation
.end method

.method public abstract openScript(Ljd/b;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "script",
            "context"
        }
    .end annotation
.end method

.method public abstract replaceScript(Ljd/b;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newScript",
            "context"
        }
    .end annotation
.end method

.method public abstract saveScript(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract showView()V
.end method

.method public abstract supportFile(Ljd/b;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation
.end method

.method public updateVisible()V
    .locals 0

    return-void
.end method
