.class public final Lcom/google/android/material/timepicker/b;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/b$e;
    }
.end annotation


# static fields
.field public static final t:I = 0x0

.field public static final u:I = 0x1

.field public static final v:Ljava/lang/String; = "TIME_PICKER_TIME_MODEL"

.field public static final w:Ljava/lang/String; = "TIME_PICKER_INPUT_MODE"

.field public static final x:Ljava/lang/String; = "TIME_PICKER_TITLE_RES"

.field public static final y:Ljava/lang/String; = "TIME_PICKER_TITLE_TEXT"

.field public static final z:Ljava/lang/String; = "TIME_PICKER_OVERRIDE_THEME_RES_ID"


# instance fields
.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/google/android/material/timepicker/TimePickerView;

.field public g:Landroid/view/ViewStub;

.field public h:Lcom/google/android/material/timepicker/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Lcom/google/android/material/timepicker/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Lcom/google/android/material/timepicker/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public l:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Lcom/google/android/material/button/MaterialButton;

.field public p:Landroid/widget/Button;

.field public q:I

.field public r:Lcom/google/android/material/timepicker/f;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->e:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/timepicker/b;->m:I

    iput v0, p0, Lcom/google/android/material/timepicker/b;->q:I

    iput v0, p0, Lcom/google/android/material/timepicker/b;->s:I

    return-void
.end method

.method public static B(Lcom/google/android/material/timepicker/b$e;)Lcom/google/android/material/timepicker/b;
    .locals 4
    .param p0    # Lcom/google/android/material/timepicker/b$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/timepicker/b;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/b;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TIME_PICKER_TIME_MODEL"

    invoke-static {p0}, Lcom/google/android/material/timepicker/b$e;->a(Lcom/google/android/material/timepicker/b$e;)Lcom/google/android/material/timepicker/f;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "TIME_PICKER_INPUT_MODE"

    invoke-static {p0}, Lcom/google/android/material/timepicker/b$e;->b(Lcom/google/android/material/timepicker/b$e;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "TIME_PICKER_TITLE_RES"

    invoke-static {p0}, Lcom/google/android/material/timepicker/b$e;->c(Lcom/google/android/material/timepicker/b$e;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    invoke-static {p0}, Lcom/google/android/material/timepicker/b$e;->d(Lcom/google/android/material/timepicker/b$e;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/google/android/material/timepicker/b$e;->e(Lcom/google/android/material/timepicker/b$e;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/google/android/material/timepicker/b$e;->e(Lcom/google/android/material/timepicker/b$e;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic e(Lcom/google/android/material/timepicker/b;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/b;->c:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic f(Lcom/google/android/material/timepicker/b$e;)Lcom/google/android/material/timepicker/b;
    .locals 0

    invoke-static {p0}, Lcom/google/android/material/timepicker/b;->B(Lcom/google/android/material/timepicker/b$e;)Lcom/google/android/material/timepicker/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/google/android/material/timepicker/b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/timepicker/b;->q:I

    return p0
.end method

.method public static synthetic h(Lcom/google/android/material/timepicker/b;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/timepicker/b;->q:I

    return p1
.end method

.method public static synthetic i(Lcom/google/android/material/timepicker/b;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/b;->o:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method public static synthetic j(Lcom/google/android/material/timepicker/b;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/b;->I(Lcom/google/android/material/button/MaterialButton;)V

    return-void
.end method

.method public static synthetic k(Lcom/google/android/material/timepicker/b;)Lcom/google/android/material/timepicker/k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/b;->i:Lcom/google/android/material/timepicker/k;

    return-object p0
.end method

.method public static synthetic l(Lcom/google/android/material/timepicker/b;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/b;->b:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final A(I)Lcom/google/android/material/timepicker/i;
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/timepicker/b;->h:Lcom/google/android/material/timepicker/g;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/material/timepicker/g;

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->f:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/b;->r:Lcom/google/android/material/timepicker/f;

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/timepicker/g;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/f;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/timepicker/b;->h:Lcom/google/android/material/timepicker/g;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/b;->i:Lcom/google/android/material/timepicker/k;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/timepicker/b;->g:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/google/android/material/timepicker/k;

    iget-object v1, p0, Lcom/google/android/material/timepicker/b;->r:Lcom/google/android/material/timepicker/f;

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/timepicker/k;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/f;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->i:Lcom/google/android/material/timepicker/k;

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/timepicker/b;->i:Lcom/google/android/material/timepicker/k;

    invoke-virtual {p1}, Lcom/google/android/material/timepicker/k;->f()V

    iget-object p1, p0, Lcom/google/android/material/timepicker/b;->i:Lcom/google/android/material/timepicker/k;

    return-object p1
.end method

.method public C(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public D(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public E(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public F(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final G(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/f;

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->r:Lcom/google/android/material/timepicker/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/material/timepicker/f;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->r:Lcom/google/android/material/timepicker/f;

    :cond_1
    const-string v0, "TIME_PICKER_INPUT_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/b;->q:I

    const-string v0, "TIME_PICKER_TITLE_RES"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/b;->m:I

    const-string v0, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->n:Ljava/lang/String;

    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/b;->s:I

    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->p:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->isCancelable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final I(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->j:Lcom/google/android/material/timepicker/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/material/timepicker/i;->c()V

    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/b;->q:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/b;->A(I)Lcom/google/android/material/timepicker/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->j:Lcom/google/android/material/timepicker/i;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/i;->show()V

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->j:Lcom/google/android/material/timepicker/i;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/i;->a()V

    iget v0, p0, Lcom/google/android/material/timepicker/b;->q:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/b;->u(I)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public n(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public o(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/b;->G(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/b;->y()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lw1/a$c;->T2:I

    const-class v2, Lcom/google/android/material/timepicker/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LX1/b;->g(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    new-instance v2, La2/j;

    sget v3, Lw1/a$c;->ja:I

    sget v4, Lw1/a$n;->Jc:I

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v3, v4}, La2/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v6, Lw1/a$o;->km:[I

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v4, Lw1/a$o;->lm:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/timepicker/b;->l:I

    sget v4, Lw1/a$o;->mm:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/timepicker/b;->k:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2, v0}, La2/j;->Y(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v2, v0}, La2/j;->m0(F)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget p3, Lw1/a$k;->e0:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget p2, Lw1/a$h;->G2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/timepicker/TimePickerView;

    iput-object p2, p0, Lcom/google/android/material/timepicker/b;->f:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance p3, Lcom/google/android/material/timepicker/b$a;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/b$a;-><init>(Lcom/google/android/material/timepicker/b;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/timepicker/TimePickerView;->o(Lcom/google/android/material/timepicker/TimePickerView$e;)V

    sget p2, Lw1/a$h;->A2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/google/android/material/timepicker/b;->g:Landroid/view/ViewStub;

    sget p2, Lw1/a$h;->E2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/timepicker/b;->o:Lcom/google/android/material/button/MaterialButton;

    sget p2, Lw1/a$h;->Q1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/google/android/material/timepicker/b;->n:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/material/timepicker/b;->n:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget p3, p0, Lcom/google/android/material/timepicker/b;->m:I

    if-eqz p3, :cond_1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/timepicker/b;->o:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, p2}, Lcom/google/android/material/timepicker/b;->I(Lcom/google/android/material/button/MaterialButton;)V

    sget p2, Lw1/a$h;->F2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/google/android/material/timepicker/b$b;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/b$b;-><init>(Lcom/google/android/material/timepicker/b;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lw1/a$h;->B2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/google/android/material/timepicker/b;->p:Landroid/widget/Button;

    new-instance p3, Lcom/google/android/material/timepicker/b$c;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/b$c;-><init>(Lcom/google/android/material/timepicker/b;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/b;->H()V

    iget-object p2, p0, Lcom/google/android/material/timepicker/b;->o:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lcom/google/android/material/timepicker/b$d;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/b$d;-><init>(Lcom/google/android/material/timepicker/b;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "TIME_PICKER_TIME_MODEL"

    iget-object v1, p0, Lcom/google/android/material/timepicker/b;->r:Lcom/google/android/material/timepicker/f;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "TIME_PICKER_INPUT_MODE"

    iget v1, p0, Lcom/google/android/material/timepicker/b;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TIME_PICKER_TITLE_RES"

    iget v1, p0, Lcom/google/android/material/timepicker/b;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TIME_PICKER_TITLE_TEXT"

    iget-object v1, p0, Lcom/google/android/material/timepicker/b;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    iget v1, p0, Lcom/google/android/material/timepicker/b;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->j:Lcom/google/android/material/timepicker/i;

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->h:Lcom/google/android/material/timepicker/g;

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->i:Lcom/google/android/material/timepicker/k;

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->f:Lcom/google/android/material/timepicker/TimePickerView;

    return-void
.end method

.method public p(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/b;->H()V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final u(I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/util/Pair;

    iget v0, p0, Lcom/google/android/material/timepicker/b;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lw1/a$m;->e0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no icon for mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Landroid/util/Pair;

    iget v0, p0, Lcom/google/android/material/timepicker/b;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lw1/a$m;->j0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public v()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x17L
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->r:Lcom/google/android/material/timepicker/f;

    iget v0, v0, Lcom/google/android/material/timepicker/f;->e:I

    rem-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/timepicker/b;->q:I

    return v0
.end method

.method public x()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x3cL
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->r:Lcom/google/android/material/timepicker/f;

    iget v0, v0, Lcom/google/android/material/timepicker/f;->f:I

    return v0
.end method

.method public final y()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/timepicker/b;->s:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lw1/a$c;->ka:I

    invoke-static {v0, v1}, LX1/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    :goto_0
    return v0
.end method

.method public z()Lcom/google/android/material/timepicker/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->h:Lcom/google/android/material/timepicker/g;

    return-object v0
.end method
