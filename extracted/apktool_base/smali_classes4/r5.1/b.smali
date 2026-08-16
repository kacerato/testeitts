.class public Lr5/b;
.super Lq5/a;
.source "SourceFile"


# instance fields
.field public g:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq5/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lq5/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0904f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09038c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09038b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lr5/b;->g:Landroid/widget/EditText;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_TITTLE:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_TEXT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_LABEL:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lr5/b;->g:Landroid/widget/EditText;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_HINT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->offlinePackageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.itsmagic.app"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls5/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iput-object v1, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->offlinePackageId:Ljava/lang/String;

    iget-object v3, p0, Lq5/a;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->d(Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;Landroid/content/Context;)V

    :cond_1
    iget-object v2, p0, Lr5/b;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public d()Z
    .locals 3

    iget-object v0, p0, Lr5/b;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls5/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_VALIDATION_PACKAGE_ID:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lr5/b;->g:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Ls5/a;->h(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iput-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->offlinePackageId:Ljava/lang/String;

    iget-object v1, p0, Lr5/b;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v1, p0, Lq5/a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->d(Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
