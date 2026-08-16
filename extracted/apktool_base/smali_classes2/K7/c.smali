.class public LK7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK7/c$a;,
        LK7/c$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/EditText;

.field public f:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "enableFreePackageFilter"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-virtual {p0}, LK7/c;->g()V

    invoke-virtual {p0}, LK7/c;->d()V

    invoke-virtual {p0}, LK7/c;->b()V

    invoke-virtual {p0}, LK7/c;->e()V

    return-void
.end method


# virtual methods
.method public a(LK7/c$a;LK7/c$b;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "button",
            "padding"
        }
    .end annotation

    iget-object v0, p1, LK7/c$a;->c:LK7/c$a$a;

    sget-object v1, LK7/c$a$a;->LEFT:LK7/c$a$a;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    sget-object v0, LK7/c$b;->LEFT:LK7/c$b;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, LK7/c;->c:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {p2, v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object p2, p0, LK7/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, LK7/c;->f(LK7/c$a;Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, LK7/c;->c:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {p2, v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, LK7/c;->c:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {p2, v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object p2, p0, LK7/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, LK7/c;->f(LK7/c$a;Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, LK7/c;->c:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {p2, v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    sget-object v0, LK7/c$b;->LEFT:LK7/c$b;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, LK7/c;->d:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {p2, v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object p2, p0, LK7/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, LK7/c;->f(LK7/c$a;Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, LK7/c;->d:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {p2, v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, LK7/c;->d:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {p2, v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object p2, p0, LK7/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, LK7/c;->f(LK7/c$a;Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, LK7/c;->d:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {p2, v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_0
    return-object p1
.end method

.method public final b()V
    .locals 2

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_SEARCH:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, LK7/c;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, LK7/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, LK7/c;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c()V
    .locals 4

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK7/c;->f:Landroid/widget/CheckBox;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_FILTER_ONLY_FREE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iget-object v1, p0, LK7/c;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, LK7/c;->f:Landroid/widget/CheckBox;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, LK7/c;->f:Landroid/widget/CheckBox;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, LK7/c;->a:Landroid/content/Context;

    const/high16 v1, 0x7f080000

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, LK7/c;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, LK7/c;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, LK7/c;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, LK7/c;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/Space;

    iget-object v2, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public final d()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK7/c;->c:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, LK7/c;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, LK7/c;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, LK7/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final e()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK7/c;->d:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, LK7/c;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, LK7/c;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, LK7/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final f(LK7/c$a;Landroid/widget/LinearLayout;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "layoutButtons"
        }
    .end annotation

    iget-object p1, p1, LK7/c$a;->e:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v2

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, LK7/c;->a:Landroid/content/Context;

    const v1, 0x7f050188

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public final g()V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, LK7/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK7/c;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, LK7/c;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, LK7/c;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public h()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, LK7/c;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edit"
        }
    .end annotation

    iput-object p1, p0, LK7/c;->e:Landroid/widget/EditText;

    return-void
.end method

.method public l(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public m(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, LK7/c;->f:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iget-object v0, p0, LK7/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
