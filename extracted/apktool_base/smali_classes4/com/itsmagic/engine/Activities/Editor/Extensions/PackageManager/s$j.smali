.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public f:Landroid/widget/EditText;

.field public final synthetic g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;


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
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;)V

    .line 2
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;

    invoke-direct {v1, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;)V

    invoke-virtual {p0, v1}, Ls7/c;->a(Ls7/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;->f:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->M1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->F1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;->f:Landroid/widget/EditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_INVALID_REPOSITORY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    iput-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->e:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_REPOSITORY_NAME:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Landroid/view/View;
    .locals 4

    const v0, 0x7f0c01ad

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$c;->z(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0903f1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;->f:Landroid/widget/EditText;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_REPOSITORY_NAME:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;->f:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;->f:Landroid/widget/EditText;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v0
.end method

.method public r()V
    .locals 3

    invoke-super {p0}, Ls7/c;->r()V

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$j;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->E1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method
