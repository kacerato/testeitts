.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LOd/i;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPowerSpinnerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PowerSpinnerView.kt\ncom/skydoves/powerspinner/PowerSpinnerView$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,855:1\n1#2:856\n*E\n"
.end annotation


# instance fields
.field public final a:Lcom/skydoves/powerspinner/PowerSpinnerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-direct {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    return-void
.end method


# virtual methods
.method public final A(I)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupWidth(I)V

    return-object p0
.end method

.method public final a()Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    return-object v0
.end method

.method public final b()Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    return-object v0
.end method

.method public final c(Z)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimate(Z)V

    return-object p0
.end method

.method public final d(J)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimationDuration(J)V

    return-object p0
.end method

.method public final e(I)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowResource(I)V

    return-object p0
.end method

.method public final f(LOd/p;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # LOd/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(LOd/p;)V

    return-object p0
.end method

.method public final g(I)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowPadding(I)V

    return-object p0
.end method

.method public final h(I)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowTint(I)V

    return-object p0
.end method

.method public final i(Z)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDisableChangeTextWhenNotified(Z)V

    return-object p0
.end method

.method public final j(Z)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDismissWhenNotifiedItemSelected(Z)V

    return-object p0
.end method

.method public final k(I)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerColor(I)V

    return-object p0
.end method

.method public final l(I)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerSize(I)V

    return-object p0
.end method

.method public final m(Landroidx/lifecycle/LifecycleOwner;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-object p0
.end method

.method public final synthetic n(LMf/a;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "Lnf/P0;",
            ">;)",
            "Lcom/skydoves/powerspinner/PowerSpinnerView$b;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerView$b$a;

    invoke-direct {v1, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$b$a;-><init>(LMf/a;)V

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerDismissListener(LOd/f;)V

    return-object p0
.end method

.method public final o(LOd/f;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # LOd/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerDismissListener(LOd/f;)V

    return-object p0
.end method

.method public final synthetic p(LMf/r;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
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
            ">;)",
            "Lcom/skydoves/powerspinner/PowerSpinnerView$b;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->c(Lcom/skydoves/powerspinner/PowerSpinnerView;)LOd/k;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerView$b$b;

    invoke-direct {v1, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$b$b;-><init>(LMf/r;)V

    invoke-interface {v0, v1}, LOd/k;->c(LOd/g;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(LOd/g;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
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
            "TT;>;)",
            "Lcom/skydoves/powerspinner/PowerSpinnerView$b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "onSpinnerItemSelectedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->c(Lcom/skydoves/powerspinner/PowerSpinnerView;)LOd/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LOd/k;->c(LOd/g;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic r(LMf/p;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/p<",
            "-",
            "Landroid/view/View;",
            "-",
            "Landroid/view/MotionEvent;",
            "Lnf/P0;",
            ">;)",
            "Lcom/skydoves/powerspinner/PowerSpinnerView$b;"
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerView$b$c;

    invoke-direct {v1, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$b$c;-><init>(LMf/p;)V

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerOutsideTouchListener(LOd/h;)V

    return-object p0
.end method

.method public final s(LOd/h;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # LOd/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerOutsideTouchListener(LOd/h;)V

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setPreferenceName(Ljava/lang/String;)V

    return-object p0
.end method

.method public final u(Z)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowArrow(Z)V

    return-object p0
.end method

.method public final v(Z)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowDivider(Z)V

    return-object p0
.end method

.method public final w(LOd/o;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # LOd/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(LOd/o;)V

    return-object p0
.end method

.method public final x(I)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimationStyle(I)V

    return-object p0
.end method

.method public final y(I)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupBackgroundColor(I)V

    return-object p0
.end method

.method public final z(I)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupHeight(I)V

    return-object p0
.end method
