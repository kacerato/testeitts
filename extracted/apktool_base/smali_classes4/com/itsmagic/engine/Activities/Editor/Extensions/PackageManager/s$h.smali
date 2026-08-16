.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public f:Landroid/widget/EditText;

.field public g:Landroid/widget/EditText;

.field public final synthetic h:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;)V

    .line 2
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;

    invoke-direct {v1, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;)V

    invoke-virtual {p0, v1}, Ls7/c;->a(Ls7/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 3

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->f:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->M1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->g:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->M1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->f:Landroid/widget/EditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_REQUIRED_FIELD:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_0
    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->g:Landroid/widget/EditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_REQUIRED_FIELD:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_FORM_TITLE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Landroid/view/View;
    .locals 6

    const v0, 0x7f0c01ac

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$c;->z(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    const v2, 0x7f09053f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901a5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09053e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->f:Landroid/widget/EditText;

    const v4, 0x7f0901a4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->g:Landroid/widget/EditText;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TITLE:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_DESCRIPTION:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->f:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->g:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->f:Landroid/widget/EditText;

    iget-object v3, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->g:Landroid/widget/EditText;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public q()V
    .locals 3

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->f:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->M1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$h;->g:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->M1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->b:Ljava/lang/String;

    :cond_0
    invoke-super {p0}, Ls7/c;->q()V

    return-void
.end method
