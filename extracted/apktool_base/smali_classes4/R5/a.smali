.class public LR5/a;
.super Ls7/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls7/c<",
        "LO5/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "STAGE_EMAIL"


# instance fields
.field public e:Landroid/widget/CheckBox;

.field public f:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "STAGE_EMAIL"

    invoke-direct {p0, v0}, Ls7/c;-><init>(Ljava/lang/String;)V

    new-instance v0, LR5/b;

    invoke-direct {v0}, LR5/b;-><init>()V

    invoke-super {p0, v0}, Ls7/c;->a(Ls7/c;)V

    return-void
.end method

.method public static synthetic z(LR5/a;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, LR5/a;->f:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 5

    iget-object v0, p0, LR5/a;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v0

    check-cast v0, LO5/b;

    const-string v2, "STAGE_EMAIL"

    invoke-virtual {v0, v2}, LO5/b;->f(Ljava/lang/String;)LO5/a;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LO5/a;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, LO5/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, LR5/a;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, LO5/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, LR5/a;->f:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v1

    check-cast v1, LO5/b;

    invoke-virtual {v1, v0}, LO5/b;->i(LO5/a;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LR5/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, LO5/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_1
    :goto_0
    iget-object v0, p0, LR5/a;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, LR5/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, LR5/a;->f:Landroid/widget/EditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INVALID_EMAIL_WARNING:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->REGISTER_TERMS_AND_CONDITIONS_REJECTED:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LN7/c;->w0(Ljava/lang/String;Z)V

    :goto_1
    return v2
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->REGISTER_NEW_ACCOUNT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Ls7/c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c018c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090090

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, LR5/a;->e:Landroid/widget/CheckBox;

    const v2, 0x7f0901e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, LR5/a;->f:Landroid/widget/EditText;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VALID_EMAIL_FOR_CONFIRMATION:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LR5/a;->e:Landroid/widget/CheckBox;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ACCEPT_THE_TERMS_OF_SERVICE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v1

    check-cast v1, LO5/b;

    const-string v2, "STAGE_EMAIL"

    invoke-virtual {v1, v2}, LO5/b;->f(Ljava/lang/String;)LO5/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LO5/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, LR5/a;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, LO5/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, LR5/a;->f:Landroid/widget/EditText;

    new-instance v3, LR5/a$a;

    invoke-direct {v3, p0, v1}, LR5/a$a;-><init>(LR5/a;LO5/b;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, LR5/a;->f:Landroid/widget/EditText;

    new-instance v3, LR5/a$b;

    invoke-direct {v3, p0, v1}, LR5/a$b;-><init>(LR5/a;LO5/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1}, LO5/b;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LR5/a;->f:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v1, 0x7f0903dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Landroid/text/SpannableString;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TAP_HERE_TO_READ:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, LR5/a$c;

    invoke-direct {v2, p0}, LR5/a$c;-><init>(LR5/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public q()V
    .locals 0

    invoke-super {p0}, Ls7/c;->q()V

    return-void
.end method

.method public y()V
    .locals 0

    invoke-super {p0}, Ls7/c;->y()V

    return-void
.end method
