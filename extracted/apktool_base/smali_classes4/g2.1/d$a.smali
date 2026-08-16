.class public Lg2/d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg2/d;->T(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:I

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Lg2/d;


# direct methods
.method public constructor <init>(Lg2/d;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lg2/d$a;->e:Lg2/d;

    iput p2, p0, Lg2/d$a;->a:I

    iput-object p3, p0, Lg2/d$a;->b:Landroid/widget/TextView;

    iput p4, p0, Lg2/d$a;->c:I

    iput-object p5, p0, Lg2/d$a;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lg2/d$a;->e:Lg2/d;

    iget v0, p0, Lg2/d$a;->a:I

    invoke-static {p1, v0}, Lg2/d;->a(Lg2/d;I)I

    iget-object p1, p0, Lg2/d$a;->e:Lg2/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg2/d;->b(Lg2/d;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Lg2/d$a;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lg2/d$a;->c:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lg2/d$a;->e:Lg2/d;

    invoke-static {p1}, Lg2/d;->c(Lg2/d;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg2/d$a;->e:Lg2/d;

    invoke-static {p1}, Lg2/d;->c(Lg2/d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lg2/d$a;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lg2/d$a;->d:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lg2/d$a;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
