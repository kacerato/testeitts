.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_PUBLISH_BUTTON:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Landroid/view/View;
    .locals 15

    const v0, 0x7f0c01a9

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$c;->z(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090453

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090454

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09053f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090540

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0901a5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901a6

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902c8

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0902c9

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0904f1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0904f2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0903f2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0903f4

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0903d0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    sget-object v14, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_SELECTED_FILES:LAc/b;

    invoke-static {v14}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->G1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TITLE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->H1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_DESCRIPTION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->H1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_LICENSE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->H1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_TAGS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->H1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_REPOSITORY_NAME:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->H1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_PUBLISH_BUTTON:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;)V

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
