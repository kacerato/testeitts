.class public LR5/b;
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
.field public static final f:Ljava/lang/String; = "STAGE_USER_NAME"


# instance fields
.field public e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "STAGE_USER_NAME"

    invoke-direct {p0, v0}, Ls7/c;-><init>(Ljava/lang/String;)V

    new-instance v0, LR5/c;

    invoke-direct {v0}, LR5/c;-><init>()V

    invoke-super {p0, v0}, Ls7/c;->a(Ls7/c;)V

    return-void
.end method

.method public static synthetic z(LR5/b;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, LR5/b;->e:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "^[a-zA-Z0-9_-]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x40

    if-lt p1, v2, :cond_1

    iget-object p1, p0, LR5/b;->e:Landroid/widget/EditText;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USERNAME_TOO_BIG:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LR5/b;->e:Landroid/widget/EditText;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->UNWANTED_CHARACTERS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    iget-object p1, p0, LR5/b;->e:Landroid/widget/EditText;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USERNAME_CANT_BE_EMPTY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v1
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, LR5/b;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v0

    check-cast v0, LO5/b;

    const-string v2, "STAGE_USER_NAME"

    invoke-virtual {v0, v2}, LO5/b;->f(Ljava/lang/String;)LO5/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LO5/a;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, LO5/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LR5/b;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, LO5/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LR5/b;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v1

    check-cast v1, LO5/b;

    invoke-virtual {v1, v0}, LO5/b;->i(LO5/a;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LR5/b;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, LO5/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, LR5/b;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LR5/b;->A(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->REGISTER_NEW_ACCOUNT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Ls7/c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090599

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090597

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, LR5/b;->e:Landroid/widget/EditText;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USERNAME:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v1

    check-cast v1, LO5/b;

    const-string v2, "STAGE_USER_NAME"

    invoke-virtual {v1, v2}, LO5/b;->f(Ljava/lang/String;)LO5/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LO5/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, LR5/b;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, LO5/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, LR5/b;->e:Landroid/widget/EditText;

    new-instance v3, LR5/b$a;

    invoke-direct {v3, p0, v1}, LR5/b$a;-><init>(LR5/b;LO5/b;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, LR5/b;->e:Landroid/widget/EditText;

    new-instance v3, LR5/b$b;

    invoke-direct {v3, p0, v1}, LR5/b$b;-><init>(LR5/b;LO5/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1}, LO5/b;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LR5/b;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
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
