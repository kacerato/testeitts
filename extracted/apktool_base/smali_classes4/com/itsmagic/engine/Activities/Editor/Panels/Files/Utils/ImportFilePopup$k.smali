.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG4/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->d(Landroid/view/View;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$k;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LG4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "panel"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$k;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;)V

    return-void
.end method

.method public b(LG4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p1, LG4/e;->b0:Z

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a(LG4/e;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, LG4/e;->v1(Ljava/util/List;)V

    return-void
.end method

.method public c(LG4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a(LG4/e;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, LG4/e;->v1(Ljava/util/List;)V

    return-void
.end method

.method public e(LG4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    return-void
.end method

.method public f(LG4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a(LG4/e;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, LG4/e;->v1(Ljava/util/List;)V

    return-void
.end method

.method public g(Landroid/view/View;LG4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "panel"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$k;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;

    invoke-interface {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;->onCancel()V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
