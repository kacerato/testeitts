.class public LXc/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXc/b;->u(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LXc/b;


# direct methods
.method public constructor <init>(LXc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LXc/b$e;->a:LXc/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LXc/b$e;->a:LXc/b;

    invoke-static {v0}, LXc/b;->m(LXc/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Lj7/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, LXc/b$e;->a:LXc/b;

    invoke-static {v0}, LXc/b;->c(LXc/b;)Lh7/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh7/e;->A(Lj7/b;)V

    const-string v0, "Folder"

    if-eqz p1, :cond_1

    iget-object v1, p0, LXc/b$e;->a:LXc/b;

    iget-object p1, p1, LF7/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v3, p0, LXc/b$e;->a:LXc/b;

    invoke-static {v3}, LXc/b;->k(LXc/b;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, LXc/b;->h(LXc/b;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LXc/b$e;->a:LXc/b;

    invoke-static {v1}, LXc/b;->g(LXc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LXc/b$e;->a:LXc/b;

    invoke-static {v1}, LXc/b;->b(LXc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LXc/b$e;->a:LXc/b;

    invoke-static {v1}, LXc/b;->i(LXc/b;)LXc/a;

    move-result-object v1

    invoke-interface {v1}, LXc/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "//"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, LXc/b$e;->a:LXc/b;

    invoke-static {v1}, LXc/b;->j(LXc/b;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LXc/b$e;->a:LXc/b;

    invoke-static {p1}, LXc/b;->e(LXc/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LXc/b$e;->a:LXc/b;

    invoke-static {p1}, LXc/b;->e(LXc/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LXc/b$e;->a:LXc/b;

    invoke-static {p1}, LXc/b;->e(LXc/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public d(Lj7/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/b;",
            ")",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, LXc/b$e;->a:LXc/b;

    invoke-static {p1}, LXc/b;->n(LXc/b;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, LXc/b$e;->a:LXc/b;

    invoke-static {v0, p1}, LXc/b;->o(LXc/b;Lj7/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e(Lj7/b;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eElement",
            "pixelX",
            "pixelY"
        }
    .end annotation

    return-void
.end method

.method public f(Lj7/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/b;",
            ")",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LXc/b$e;->a:LXc/b;

    invoke-static {v0, p1}, LXc/b;->l(LXc/b;Lj7/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(Lj7/b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eElement",
            "v"
        }
    .end annotation

    return-void
.end method

.method public h(Lj7/b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eElement",
            "v"
        }
    .end annotation

    return-void
.end method

.method public i(Landroid/view/View;Lj7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "element"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p2, LF7/i;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LXc/b$e;->a:LXc/b;

    invoke-static {v0}, LXc/b;->k(LXc/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public j(Lj7/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eElement",
            "open"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p0, LXc/b$e;->a:LXc/b;

    invoke-static {p2}, LXc/b;->c(LXc/b;)Lh7/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lh7/e;->M(Lj7/b;)V

    :cond_0
    return-void
.end method
