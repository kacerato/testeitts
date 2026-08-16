.class public final Lcom/skydoves/powerspinner/PowerSpinnerPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public final b:Lcom/skydoves/powerspinner/PowerSpinnerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 1
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-direct {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 6
    sget p1, LOd/n$j;->H:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    if-eqz p2, :cond_0

    .line 7
    sget p1, Landroidx/preference/R$attr;->preferenceStyle:I

    if-eq p3, p1, :cond_0

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->c(Landroid/util/AttributeSet;I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p0, p2}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b(Landroid/util/AttributeSet;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 3
    sget p3, Landroidx/preference/R$attr;->preferenceStyle:I

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/skydoves/powerspinner/PowerSpinnerPreference;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, LOd/n$m;->Y6:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.obtainStyledAttr\u2026yleable.PowerSpinnerView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->h(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public final c(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, LOd/n$m;->Y6:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026fStyleAttr,\n      0\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->h(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final d()Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    return-object v0
.end method

.method public final synthetic e(LMf/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/r<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerPreference$c;

    invoke-direct {v1, p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerPreference$c;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerPreference;LMf/r;)V

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerItemSelectedListener(LMf/r;)V

    return-void
.end method

.method public final g(LOd/g;)V
    .locals 2
    .param p1    # LOd/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOd/g<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "onSpinnerItemSelectedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerPreference$b;

    invoke-direct {v1, p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerPreference$b;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerPreference;LOd/g;)V

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerItemSelectedListener(LMf/r;)V

    return-void
.end method

.method public final h(Landroid/content/res/TypedArray;)V
    .locals 4

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->e7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowArrow()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowArrow(Z)V

    sget v0, LOd/n$m;->c7:I

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowGravity()LOd/p;

    move-result-object v1

    invoke-virtual {v1}, LOd/p;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    sget-object v1, LOd/p;->START:LOd/p;

    invoke-virtual {v1}, LOd/p;->a()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(LOd/p;)V

    goto :goto_0

    :cond_0
    sget-object v1, LOd/p;->TOP:LOd/p;

    invoke-virtual {v1}, LOd/p;->a()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(LOd/p;)V

    goto :goto_0

    :cond_1
    sget-object v1, LOd/p;->END:LOd/p;

    invoke-virtual {v1}, LOd/p;->a()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(LOd/p;)V

    goto :goto_0

    :cond_2
    sget-object v1, LOd/p;->BOTTOM:LOd/p;

    invoke-virtual {v1}, LOd/p;->a()I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(LOd/p;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->d7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowPadding()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowPadding(I)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->Z6:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimate()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimate(Z)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->a7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimationDuration()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimationDuration(J)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->j7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowDivider()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowDivider(Z)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->k7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerSize()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerSize(I)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->i7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->o7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupBackgroundColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupBackgroundColor(I)V

    sget v0, LOd/n$m;->m7:I

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupAnimation()LOd/o;

    move-result-object v1

    invoke-virtual {v1}, LOd/o;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    sget-object v1, LOd/o;->DROPDOWN:LOd/o;

    invoke-virtual {v1}, LOd/o;->a()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(LOd/o;)V

    goto :goto_1

    :cond_4
    sget-object v1, LOd/o;->FADE:LOd/o;

    invoke-virtual {v1}, LOd/o;->a()I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(LOd/o;)V

    goto :goto_1

    :cond_5
    sget-object v1, LOd/o;->BOUNCE:LOd/o;

    invoke-virtual {v1}, LOd/o;->a()I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(LOd/o;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->n7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupAnimationStyle()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimationStyle(I)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->r7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupWidth(I)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->q7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupHeight(I)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->p7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupElevation()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupElevation(I)V

    sget v0, LOd/n$m;->l7:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setItems(I)V

    :cond_7
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v1, LOd/n$m;->h7:I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDismissWhenNotifiedItemSelected()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDismissWhenNotifiedItemSelected(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1    # Landroidx/preference/PreferenceViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->c:I

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->r(I)V

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerAdapter()LOd/k;

    move-result-object v1

    invoke-interface {v1}, LOd/k;->d()LOd/g;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerPreference$a;

    invoke-direct {v1, p0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference$a;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerPreference;)V

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerItemSelectedListener(LMf/r;)V

    :cond_0
    if-eqz p1, :cond_4

    sget v0, LOd/n$g;->Z0:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    sget v0, LOd/n$g;->a1:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-static {v2, v4}, LOd/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4}, LOd/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->c:I

    :cond_0
    return-void
.end method
