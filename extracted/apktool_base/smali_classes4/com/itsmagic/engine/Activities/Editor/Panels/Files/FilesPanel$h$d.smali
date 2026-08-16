.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$d;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)Lh7/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)Lh7/d;

    move-result-object p1

    invoke-virtual {p1}, Lh7/d;->n()V

    :cond_0
    return-void
.end method
