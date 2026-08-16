.class public LW6/a;
.super LV6/d;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public final d:Ljava/lang/Object;

.field public e:F

.field public f:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LV6/d;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LW6/a;->d:Ljava/lang/Object;

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, LW6/a;->e:F

    return-void
.end method

.method public static synthetic m(LW6/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LW6/a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic n(LW6/a;)F
    .locals 0

    iget p0, p0, LW6/a;->e:F

    return p0
.end method

.method public static synthetic o(LW6/a;F)F
    .locals 0

    iput p1, p0, LW6/a;->e:F

    return p1
.end method

.method public static synthetic p(LW6/a;)V
    .locals 0

    invoke-virtual {p0}, LW6/a;->t()V

    return-void
.end method

.method public static synthetic q(LW6/a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LW6/a;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic r(LW6/a;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, LW6/a;->f:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, LW6/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LW6/a;->e:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    invoke-static {}, LK8/d;->e()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, LW6/a;->e:F

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, LV6/d;->e()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0905ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09013e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CODE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f09013b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, LW6/a;->f:Landroid/widget/EditText;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONFIRM_CODE_WARNING:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LW6/a;->c:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0903f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LW6/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LW6/a;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, LW6/a;->b:Landroid/widget/TextView;

    new-instance v2, LW6/a$a;

    invoke-direct {v2, p0}, LW6/a$a;-><init>(LW6/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, LW6/a$b;

    invoke-direct {v1, p0}, LW6/a$b;-><init>(LW6/a;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$k;)V

    return-object v0
.end method

.method public h(LV6/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextListener"
        }
    .end annotation

    iget-object v0, p0, LW6/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LW6/a;->f:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW6/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LW6/a$d;

    invoke-direct {v1, p0, p1}, LW6/a$d;-><init>(LW6/a;LV6/b;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;->b(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LW6/a;->f:Landroid/widget/EditText;

    const-string v1, "Please fill with a valid code"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, LV6/b;->a()V

    :goto_0
    return-void
.end method

.method public l()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-super {p0}, LV6/d;->l()V

    iget-object v0, p0, LW6/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LW6/a;->e:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, LW6/a;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EMAIL_RESEND_CODE_AFTER:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "X"

    iget v4, p0, LW6/a;->e:F

    invoke-virtual {p0, v4}, LW6/a;->s(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EMAIL_RESEND_CODE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, LW6/a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s(F)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p1, v0

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final t()V
    .locals 1

    new-instance v0, LW6/a$c;

    invoke-direct {v0, p0}, LW6/a$c;-><init>(LW6/a;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V

    return-void
.end method
