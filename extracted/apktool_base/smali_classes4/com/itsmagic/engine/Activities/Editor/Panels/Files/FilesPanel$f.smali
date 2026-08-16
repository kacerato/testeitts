.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;
.super Lh7/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic y:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;Landroid/app/Activity;Ln7/e;Ln7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "activity",
            "explorerDataProvider",
            "filter"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;->y:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-direct {p0, p2, p3, p4}, Lh7/d;-><init>(Landroid/app/Activity;Ln7/e;Ln7/d;)V

    return-void
.end method


# virtual methods
.method public s(Ljava/lang/String;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation

    new-instance v3, Ljd/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;->y:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Ljd/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljd/b$a;->Directory:Ljd/b$a;

    iput-object v0, v3, Ljd/b;->c:Ljd/b$a;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;->y:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;->y:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lw5/j;->b(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljd/b;Ljava/lang/String;ZLw5/b;)V

    return-void
.end method

.method public t(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->i0(Ljava/lang/String;)V

    return-void
.end method

.method public u(Ljava/io/File;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;->y:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lw5/j;->l(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public v(Ljava/io/File;Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;->y:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljd/b;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Ljd/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljd/b$a;->Directory:Ljd/b$a;

    iput-object p1, v6, Ljd/b;->c:Ljd/b$a;

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;->y:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v3

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;->y:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v4

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f$a;

    invoke-direct {v9, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;)V

    const/4 v8, 0x1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lw5/j;->b(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljd/b;Ljava/lang/String;ZLw5/b;)V

    return-void
.end method
