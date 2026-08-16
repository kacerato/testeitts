.class public LW6/b;
.super LV6/d;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LV6/d;-><init>()V

    return-void
.end method

.method public static synthetic m(LW6/b;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, LW6/b;->b:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public f()Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, LV6/d;->e()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, LW6/b;->b:Landroid/widget/EditText;

    const v1, 0x7f0905bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONFIRM_EMAIL_WARNING:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LW6/b$a;

    invoke-direct {v1, p0}, LW6/b$a;-><init>(LW6/b;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$k;)V

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

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, LW6/b$b;

    invoke-direct {v2, p0}, LW6/b$b;-><init>(LW6/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, LW6/b;->c:Landroid/widget/CheckBox;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ACCEPT_THE_TERMS_OF_SERVICE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public h(LV6/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iget-object v0, p0, LW6/b;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LW6/b;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LW6/b;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    new-instance v0, LW6/b$c;

    invoke-direct {v0, p0, p1}, LW6/b$c;-><init>(LW6/b;LV6/b;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$k;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LW6/b;->b:Landroid/widget/EditText;

    const-string v0, "This is not a valid email"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "Accept the privacy terms to proceed"

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-interface {p1}, LV6/b;->a()V

    :goto_0
    return-void
.end method
