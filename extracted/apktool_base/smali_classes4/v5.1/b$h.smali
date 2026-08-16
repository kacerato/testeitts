.class public Lv5/b$h;
.super Lh7/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/b;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic y:Landroid/widget/Button;

.field public final synthetic z:Lv5/b;


# direct methods
.method public constructor <init>(Lv5/b;Landroid/app/Activity;Ln7/e;Ln7/d;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "activity",
            "explorerDataProvider",
            "filter",
            "val$doneButton"
        }
    .end annotation

    iput-object p1, p0, Lv5/b$h;->z:Lv5/b;

    iput-object p5, p0, Lv5/b$h;->y:Landroid/widget/Button;

    invoke-direct {p0, p2, p3, p4}, Lh7/d;-><init>(Landroid/app/Activity;Ln7/e;Ln7/d;)V

    return-void
.end method


# virtual methods
.method public r()V
    .locals 5

    invoke-super {p0}, Lh7/d;->r()V

    iget-object v0, p0, Lv5/b$h;->z:Lv5/b;

    invoke-static {v0}, Lv5/b;->r1(Lv5/b;)Lh7/d;

    move-result-object v0

    invoke-virtual {v0}, Lh7/d;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lv5/b$h;->z:Lv5/b;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lv5/b$h;->z:Lv5/b;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lv5/b;->u1(Lv5/b;Ljava/io/File;)Ljava/io/File;

    iget-object v1, p0, Lv5/b$h;->z:Lv5/b;

    invoke-static {v1}, Lv5/b;->w1(Lv5/b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lv5/b$h;->y:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public s(Ljava/lang/String;Landroid/view/View;)V
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

    return-void
.end method

.method public u(Ljava/io/File;Landroid/view/View;)V
    .locals 1
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

    iget-object p2, p0, Lv5/b$h;->z:Lv5/b;

    iget-object v0, p0, Lv5/b$h;->y:Landroid/widget/Button;

    invoke-static {p2, p1, v0}, Lv5/b;->v1(Lv5/b;Ljava/io/File;Landroid/widget/Button;)V

    return-void
.end method

.method public v(Ljava/io/File;Landroid/view/View;)V
    .locals 0
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

    return-void
.end method
