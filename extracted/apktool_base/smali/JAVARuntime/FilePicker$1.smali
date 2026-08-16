.class LJAVARuntime/FilePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/FilePicker;->open(LJAVARuntime/FilePicker$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:LJAVARuntime/FilePicker$Listener;


# direct methods
.method public constructor <init>(LJAVARuntime/FilePicker$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/FilePicker$1;->val$listener:LJAVARuntime/FilePicker$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/FilePicker$1;->val$listener:LJAVARuntime/FilePicker$Listener;

    invoke-interface {v0}, LJAVARuntime/FilePicker$Listener;->onCancel()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/FilePicker$1;->val$listener:LJAVARuntime/FilePicker$Listener;

    invoke-interface {v0, p1}, LJAVARuntime/FilePicker$Listener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;Lw3/e$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "files",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Lw3/e$c;",
            ")V"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/documentfile/provider/DocumentFile;

    new-instance v1, LJAVARuntime/FilePicker$DFile;

    invoke-direct {v1, v0}, LJAVARuntime/FilePicker$DFile;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/FilePicker$1;->val$listener:LJAVARuntime/FilePicker$Listener;

    invoke-interface {p1, p2}, LJAVARuntime/FilePicker$Listener;->onSuccess(Ljava/util/List;)V

    return-void
.end method
