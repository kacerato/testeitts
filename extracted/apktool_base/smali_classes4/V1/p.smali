.class public final LV1/p;
.super LV1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV1/p$b;,
        LV1/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LV1/b<",
        "LV1/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:I = 0x0

.field public static final B:I = 0x1

.field public static final C:I = 0x0

.field public static final D:I = 0x1

.field public static final E:I = 0x2

.field public static final F:I = 0x3

.field public static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lw1/a$n;->Db:I

    sput v0, LV1/p;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LV1/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Lw1/a$c;->m9:I

    invoke-direct {p0, p1, p2, v0}, LV1/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 3
    sget v0, LV1/p;->z:I

    invoke-direct {p0, p1, p2, p3, v0}, LV1/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    invoke-direct {p0}, LV1/p;->u()V

    return-void
.end method

.method private u()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LV1/b;->b:LV1/c;

    check-cast v1, LV1/q;

    invoke-static {v0, v1}, LV1/l;->v(Landroid/content/Context;LV1/q;)LV1/l;

    move-result-object v0

    invoke-virtual {p0, v0}, LV1/b;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LV1/b;->b:LV1/c;

    check-cast v1, LV1/q;

    invoke-static {v0, v1}, LV1/h;->y(Landroid/content/Context;LV1/q;)LV1/h;

    move-result-object v0

    invoke-virtual {p0, v0}, LV1/b;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getIndeterminateAnimationType()I
    .locals 1

    iget-object v0, p0, LV1/b;->b:LV1/c;

    check-cast v0, LV1/q;

    iget v0, v0, LV1/q;->g:I

    return v0
.end method

.method public getIndicatorDirection()I
    .locals 1

    iget-object v0, p0, LV1/b;->b:LV1/c;

    check-cast v0, LV1/q;

    iget v0, v0, LV1/q;->h:I

    return v0
.end method

.method public bridge synthetic i(Landroid/content/Context;Landroid/util/AttributeSet;)LV1/c;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, LV1/p;->t(Landroid/content/Context;Landroid/util/AttributeSet;)LV1/q;

    move-result-object p1

    return-object p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, LV1/b;->b:LV1/c;

    move-object p2, p1

    check-cast p2, LV1/q;

    check-cast p1, LV1/q;

    iget p1, p1, LV1/q;->h:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, LV1/b;->b:LV1/c;

    check-cast p1, LV1/q;

    iget p1, p1, LV1/q;->h:I

    const/4 p4, 0x2

    if-eq p1, p4, :cond_2

    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LV1/b;->b:LV1/c;

    check-cast p1, LV1/q;

    iget p1, p1, LV1/q;->h:I

    const/4 p4, 0x3

    if-ne p1, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :cond_2
    :goto_0
    iput-boolean p3, p2, LV1/q;->i:Z

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    add-int/2addr p3, p4

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    add-int/2addr p3, p4

    sub-int/2addr p2, p3

    invoke-virtual {p0}, LV1/b;->getIndeterminateDrawable()LV1/l;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p0}, LV1/b;->getProgressDrawable()LV1/h;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method public p(IZ)V
    .locals 1

    iget-object v0, p0, LV1/b;->b:LV1/c;

    if-eqz v0, :cond_0

    check-cast v0, LV1/q;

    iget v0, v0, LV1/q;->g:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, LV1/b;->p(IZ)V

    return-void
.end method

.method public setIndeterminateAnimationType(I)V
    .locals 3

    iget-object v0, p0, LV1/b;->b:LV1/c;

    check-cast v0, LV1/q;

    iget v0, v0, LV1/q;->g:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LV1/b;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, LV1/b;->b:LV1/c;

    move-object v1, v0

    check-cast v1, LV1/q;

    iput p1, v1, LV1/q;->g:I

    check-cast v0, LV1/q;

    invoke-virtual {v0}, LV1/q;->e()V

    if-nez p1, :cond_3

    invoke-virtual {p0}, LV1/b;->getIndeterminateDrawable()LV1/l;

    move-result-object p1

    new-instance v0, LV1/n;

    iget-object v1, p0, LV1/b;->b:LV1/c;

    check-cast v1, LV1/q;

    invoke-direct {v0, v1}, LV1/n;-><init>(LV1/q;)V

    invoke-virtual {p1, v0}, LV1/l;->y(LV1/k;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LV1/b;->getIndeterminateDrawable()LV1/l;

    move-result-object p1

    new-instance v0, LV1/o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LV1/b;->b:LV1/c;

    check-cast v2, LV1/q;

    invoke-direct {v0, v1, v2}, LV1/o;-><init>(Landroid/content/Context;LV1/q;)V

    invoke-virtual {p1, v0}, LV1/l;->y(LV1/k;)V

    :goto_1
    invoke-virtual {p0}, LV1/b;->invalidate()V

    return-void
.end method

.method public varargs setIndicatorColor([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, LV1/b;->setIndicatorColor([I)V

    iget-object p1, p0, LV1/b;->b:LV1/c;

    check-cast p1, LV1/q;

    invoke-virtual {p1}, LV1/q;->e()V

    return-void
.end method

.method public setIndicatorDirection(I)V
    .locals 4

    iget-object v0, p0, LV1/b;->b:LV1/c;

    move-object v1, v0

    check-cast v1, LV1/q;

    iput p1, v1, LV1/q;->h:I

    check-cast v0, LV1/q;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, LV1/b;->b:LV1/c;

    check-cast v2, LV1/q;

    iget v2, v2, LV1/q;->h:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iput-boolean v1, v0, LV1/q;->i:Z

    invoke-virtual {p0}, LV1/b;->invalidate()V

    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 0

    invoke-super {p0, p1}, LV1/b;->setTrackCornerRadius(I)V

    iget-object p1, p0, LV1/b;->b:LV1/c;

    check-cast p1, LV1/q;

    invoke-virtual {p1}, LV1/q;->e()V

    invoke-virtual {p0}, LV1/b;->invalidate()V

    return-void
.end method

.method public t(Landroid/content/Context;Landroid/util/AttributeSet;)LV1/q;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LV1/q;

    invoke-direct {v0, p1, p2}, LV1/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
