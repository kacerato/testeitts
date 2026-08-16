.class public LQ5/b;
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
.field public static final h:Ljava/lang/String; = "PassRecovery"


# instance fields
.field public e:Landroid/widget/EditText;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PassRecovery"

    invoke-direct {p0, v0}, Ls7/c;-><init>(Ljava/lang/String;)V

    new-instance v0, LQ5/c;

    invoke-direct {v0}, LQ5/c;-><init>()V

    invoke-super {p0, v0}, Ls7/c;->a(Ls7/c;)V

    return-void
.end method

.method public static synthetic A(LQ5/b;Z)Z
    .locals 0

    iput-boolean p1, p0, LQ5/b;->f:Z

    return p1
.end method

.method public static synthetic B(LQ5/b;Z)Z
    .locals 0

    iput-boolean p1, p0, LQ5/b;->g:Z

    return p1
.end method

.method public static synthetic z(LQ5/b;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, LQ5/b;->e:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 4

    iget-boolean v0, p0, LQ5/b;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, LQ5/b;->g:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iput-boolean v1, p0, LQ5/b;->g:Z

    iget-object v0, p0, LQ5/b;->e:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LQ5/b;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LQ5/b;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LQ5/b$c;

    invoke-direct {v1, p0}, LQ5/b$c;-><init>(LQ5/b;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->o(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V

    return v2

    :cond_1
    iput-boolean v1, p0, LQ5/b;->g:Z

    iget-object v0, p0, LQ5/b;->e:Landroid/widget/EditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INVALID_EMAIL_WARNING:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    return v2
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Password recovery"

    return-object v0
.end method

.method public p()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Ls7/c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c018a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, LQ5/b;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Ls7/c;->i()Ls7/a;

    move-result-object v1

    check-cast v1, LO5/b;

    const-string v2, "PassRecovery"

    invoke-virtual {v1, v2}, LO5/b;->f(Ljava/lang/String;)LO5/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LO5/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, LQ5/b;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, LO5/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, LQ5/b;->e:Landroid/widget/EditText;

    new-instance v3, LQ5/b$a;

    invoke-direct {v3, p0, v1}, LQ5/b$a;-><init>(LQ5/b;LO5/b;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, LQ5/b;->e:Landroid/widget/EditText;

    new-instance v3, LQ5/b$b;

    invoke-direct {v3, p0, v1}, LQ5/b$b;-><init>(LQ5/b;LO5/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1}, LO5/b;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LQ5/b;->e:Landroid/widget/EditText;

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
