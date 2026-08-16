.class public Lcom/google/android/material/timepicker/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$g;
.implements Lcom/google/android/material/timepicker/i;


# instance fields
.field public final b:Landroid/widget/LinearLayout;

.field public final c:Lcom/google/android/material/timepicker/f;

.field public final d:Landroid/text/TextWatcher;

.field public final e:Landroid/text/TextWatcher;

.field public final f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field public final g:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field public final h:Lcom/google/android/material/timepicker/j;

.field public final i:Landroid/widget/EditText;

.field public final j:Landroid/widget/EditText;

.field public k:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/f;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/material/timepicker/k$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/k$a;-><init>(Lcom/google/android/material/timepicker/k;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/k;->d:Landroid/text/TextWatcher;

    new-instance v0, Lcom/google/android/material/timepicker/k$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/k$b;-><init>(Lcom/google/android/material/timepicker/k;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/k;->e:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/google/android/material/timepicker/k;->b:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/google/android/material/timepicker/k;->c:Lcom/google/android/material/timepicker/f;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lw1/a$h;->y2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v1, p0, Lcom/google/android/material/timepicker/k;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    sget v2, Lw1/a$h;->v2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v2, p0, Lcom/google/android/material/timepicker/k;->g:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    sget v3, Lw1/a$h;->x2:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v5, Lw1/a$m;->g0:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lw1/a$m;->f0:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lw1/a$h;->z4:I

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    iget v0, p2, Lcom/google/android/material/timepicker/f;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/k;->k()V

    :cond_0
    new-instance v0, Lcom/google/android/material/timepicker/k$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/k$c;-><init>(Lcom/google/android/material/timepicker/k;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/google/android/material/timepicker/f;->e()Lcom/google/android/material/timepicker/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->c(Landroid/text/InputFilter;)V

    invoke-virtual {p2}, Lcom/google/android/material/timepicker/f;->f()Lcom/google/android/material/timepicker/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->c(Landroid/text/InputFilter;)V

    invoke-virtual {v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->e()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/k;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->e()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/k;->j:Landroid/widget/EditText;

    new-instance v0, Lcom/google/android/material/timepicker/j;

    invoke-direct {v0, v2, v1, p2}, Lcom/google/android/material/timepicker/j;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/f;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/k;->h:Lcom/google/android/material/timepicker/j;

    new-instance p2, Lcom/google/android/material/timepicker/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lw1/a$m;->S:I

    invoke-direct {p2, v0, v3}, Lcom/google/android/material/timepicker/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, p2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f(Landroidx/core/view/AccessibilityDelegateCompat;)V

    new-instance p2, Lcom/google/android/material/timepicker/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lw1/a$m;->U:I

    invoke-direct {p2, p1, v0}, Lcom/google/android/material/timepicker/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f(Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/k;->initialize()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/material/timepicker/k;)Lcom/google/android/material/timepicker/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/k;->c:Lcom/google/android/material/timepicker/f;

    return-object p0
.end method

.method public static i(Landroid/widget/EditText;I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const-class v0, Landroid/widget/TextView;

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mCursorDrawableRes"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v4, "mEditor"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mCursorDrawable"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    filled-new-array {v1, v1}, [Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->c:Lcom/google/android/material/timepicker/f;

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/k;->j(Lcom/google/android/material/timepicker/f;)V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/timepicker/k;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/k;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/k;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public e(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->c:Lcom/google/android/material/timepicker/f;

    iput p1, v0, Lcom/google/android/material/timepicker/f;->g:I

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->g:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/k;->l()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->g:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/k;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/k;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public h()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/k;->c:Lcom/google/android/material/timepicker/f;

    iget v1, v1, Lcom/google/android/material/timepicker/f;->g:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->g:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/k;->c:Lcom/google/android/material/timepicker/f;

    iget v1, v1, Lcom/google/android/material/timepicker/f;->g:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    return-void
.end method

.method public initialize()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/k;->d()V

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->c:Lcom/google/android/material/timepicker/f;

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/k;->j(Lcom/google/android/material/timepicker/f;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->h:Lcom/google/android/material/timepicker/j;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/j;->a()V

    return-void
.end method

.method public final j(Lcom/google/android/material/timepicker/f;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/k;->g()V

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget v1, p1, Lcom/google/android/material/timepicker/f;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/material/timepicker/f;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->i(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->g:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->i(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/k;->d()V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/k;->l()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->b:Landroid/widget/LinearLayout;

    sget v1, Lw1/a$h;->u2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object v0, p0, Lcom/google/android/material/timepicker/k;->k:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    new-instance v1, Lcom/google/android/material/timepicker/k$d;

    invoke-direct {v1, p0}, Lcom/google/android/material/timepicker/k$d;-><init>(Lcom/google/android/material/timepicker/k;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g(Lcom/google/android/material/button/MaterialButtonToggleGroup$e;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->k:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/k;->l()V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->k:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/k;->c:Lcom/google/android/material/timepicker/f;

    iget v1, v1, Lcom/google/android/material/timepicker/f;->h:I

    if-nez v1, :cond_1

    sget v1, Lw1/a$h;->s2:I

    goto :goto_0

    :cond_1
    sget v1, Lw1/a$h;->t2:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j(I)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/k;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
