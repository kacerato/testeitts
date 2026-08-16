.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)Lh7/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)Lh7/d;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)Lh7/d;

    move-result-object v1

    invoke-virtual {v1}, Lh7/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lh7/d;->s(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
