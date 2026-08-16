.class public final LV1/f;
.super LV1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV1/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LV1/b<",
        "LV1/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:I = 0x0

.field public static final B:I = 0x1

.field public static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lw1/a$n;->rb:I

    sput v0, LV1/f;->z:I

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
    invoke-direct {p0, p1, v0}, LV1/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    sget v0, Lw1/a$c;->e2:I

    invoke-direct {p0, p1, p2, v0}, LV1/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    sget v0, LV1/f;->z:I

    invoke-direct {p0, p1, p2, p3, v0}, LV1/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    invoke-virtual {p0}, LV1/f;->u()V

    return-void
.end method


# virtual methods
.method public getIndicatorDirection()I
    .locals 1

    iget-object v0, p0, LV1/b;->b:LV1/c;

    check-cast v0, LV1/g;

    iget v0, v0, LV1/g;->i:I

    return v0
.end method

.method public getIndicatorInset()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, LV1/b;->b:LV1/c;

    check-cast v0, LV1/g;

    iget v0, v0, LV1/g;->h:I

    return v0
.end method

.method public getIndicatorSize()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, LV1/b;->b:LV1/c;

    check-cast v0, LV1/g;

    iget v0, v0, LV1/g;->g:I

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

    invoke-virtual {p0, p1, p2}, LV1/f;->t(Landroid/content/Context;Landroid/util/AttributeSet;)LV1/g;

    move-result-object p1

    return-object p1
.end method

.method public setIndicatorDirection(I)V
    .locals 1

    iget-object v0, p0, LV1/b;->b:LV1/c;

    check-cast v0, LV1/g;

    iput p1, v0, LV1/g;->i:I

    invoke-virtual {p0}, LV1/b;->invalidate()V

    return-void
.end method

.method public setIndicatorInset(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, LV1/b;->b:LV1/c;

    move-object v1, v0

    check-cast v1, LV1/g;

    iget v1, v1, LV1/g;->h:I

    if-eq v1, p1, :cond_0

    check-cast v0, LV1/g;

    iput p1, v0, LV1/g;->h:I

    invoke-virtual {p0}, LV1/b;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    invoke-virtual {p0}, LV1/b;->getTrackThickness()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, LV1/b;->b:LV1/c;

    move-object v1, v0

    check-cast v1, LV1/g;

    iget v1, v1, LV1/g;->g:I

    if-eq v1, p1, :cond_0

    move-object v1, v0

    check-cast v1, LV1/g;

    iput p1, v1, LV1/g;->g:I

    check-cast v0, LV1/g;

    invoke-virtual {v0}, LV1/g;->e()V

    invoke-virtual {p0}, LV1/b;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 0

    invoke-super {p0, p1}, LV1/b;->setTrackThickness(I)V

    iget-object p1, p0, LV1/b;->b:LV1/c;

    check-cast p1, LV1/g;

    invoke-virtual {p1}, LV1/g;->e()V

    return-void
.end method

.method public t(Landroid/content/Context;Landroid/util/AttributeSet;)LV1/g;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LV1/g;

    invoke-direct {v0, p1, p2}, LV1/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final u()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LV1/b;->b:LV1/c;

    check-cast v1, LV1/g;

    invoke-static {v0, v1}, LV1/l;->u(Landroid/content/Context;LV1/g;)LV1/l;

    move-result-object v0

    invoke-virtual {p0, v0}, LV1/b;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LV1/b;->b:LV1/c;

    check-cast v1, LV1/g;

    invoke-static {v0, v1}, LV1/h;->x(Landroid/content/Context;LV1/g;)LV1/h;

    move-result-object v0

    invoke-virtual {p0, v0}, LV1/b;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
