.class public LQ1/a;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements La2/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQ1/a$a;
    }
.end annotation


# static fields
.field public static final t:I

.field public static final u:I = -0x80000000


# instance fields
.field public final b:La2/p;

.field public final c:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Path;

.field public h:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:La2/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:La2/o;

.field public k:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field public l:Landroid/graphics/Path;

.field public m:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field public n:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field public o:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field public p:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field public q:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field public r:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lw1/a$n;->oc:I

    sput v0, LQ1/a;->t:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, LQ1/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, LQ1/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sget v0, LQ1/a;->t:I

    invoke-static {p1, p2, p3, v0}, Lh2/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, La2/p;->k()La2/p;

    move-result-object p1

    iput-object p1, p0, LQ1/a;->b:La2/p;

    .line 5
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, LQ1/a;->g:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, LQ1/a;->s:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, LQ1/a;->f:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, -0x1

    .line 10
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 12
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, LQ1/a;->c:Landroid/graphics/RectF;

    .line 13
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, LQ1/a;->d:Landroid/graphics/RectF;

    .line 14
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, LQ1/a;->l:Landroid/graphics/Path;

    .line 15
    sget-object v2, Lw1/a$o;->zq:[I

    .line 16
    invoke-virtual {v1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 17
    sget v4, Lw1/a$o;->Jq:I

    .line 18
    invoke-static {v1, v2, v4}, LX1/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, LQ1/a;->h:Landroid/content/res/ColorStateList;

    .line 19
    sget v4, Lw1/a$o;->Kq:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, LQ1/a;->k:F

    .line 20
    sget v4, Lw1/a$o;->Aq:I

    .line 21
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 22
    iput p1, p0, LQ1/a;->m:I

    .line 23
    iput p1, p0, LQ1/a;->n:I

    .line 24
    iput p1, p0, LQ1/a;->o:I

    .line 25
    iput p1, p0, LQ1/a;->p:I

    .line 26
    sget v4, Lw1/a$o;->Dq:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, LQ1/a;->m:I

    .line 27
    sget v4, Lw1/a$o;->Gq:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, LQ1/a;->n:I

    .line 28
    sget v4, Lw1/a$o;->Eq:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, LQ1/a;->o:I

    .line 29
    sget v4, Lw1/a$o;->Bq:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, LQ1/a;->p:I

    .line 30
    sget p1, Lw1/a$o;->Fq:I

    const/high16 v4, -0x80000000

    invoke-virtual {v2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, LQ1/a;->q:I

    .line 31
    sget p1, Lw1/a$o;->Cq:I

    invoke-virtual {v2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, LQ1/a;->r:I

    .line 32
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, LQ1/a;->e:Landroid/graphics/Paint;

    .line 34
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    invoke-static {v1, p2, p3, v0}, La2/o;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)La2/o$b;

    move-result-object p1

    invoke-virtual {p1}, La2/o$b;->m()La2/o;

    move-result-object p1

    iput-object p1, p0, LQ1/a;->j:La2/o;

    .line 37
    new-instance p1, LQ1/a$a;

    invoke-direct {p1, p0}, LQ1/a$a;-><init>(LQ1/a;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static synthetic a(LQ1/a;)La2/o;
    .locals 0

    iget-object p0, p0, LQ1/a;->j:La2/o;

    return-object p0
.end method

.method public static synthetic b(LQ1/a;)La2/j;
    .locals 0

    iget-object p0, p0, LQ1/a;->i:La2/j;

    return-object p0
.end method

.method public static synthetic c(LQ1/a;La2/j;)La2/j;
    .locals 0

    iput-object p1, p0, LQ1/a;->i:La2/j;

    return-object p1
.end method

.method public static synthetic d(LQ1/a;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, LQ1/a;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method private g()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final e(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, LQ1/a;->h:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LQ1/a;->e:Landroid/graphics/Paint;

    iget v1, p0, LQ1/a;->k:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LQ1/a;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, LQ1/a;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v1, p0, LQ1/a;->k:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, LQ1/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, LQ1/a;->g:Landroid/graphics/Path;

    iget-object v1, p0, LQ1/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, LQ1/a;->q:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, LQ1/a;->r:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, LQ1/a;->p:I

    return v0
.end method

.method public final getContentPaddingEnd()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, LQ1/a;->r:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, LQ1/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, LQ1/a;->m:I

    goto :goto_0

    :cond_1
    iget v0, p0, LQ1/a;->o:I

    :goto_0
    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    invoke-virtual {p0}, LQ1/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, LQ1/a;->g()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    iget v0, p0, LQ1/a;->r:I

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, LQ1/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, LQ1/a;->q:I

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, LQ1/a;->m:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    invoke-virtual {p0}, LQ1/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, LQ1/a;->g()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    iget v0, p0, LQ1/a;->q:I

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, LQ1/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, LQ1/a;->r:I

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, LQ1/a;->o:I

    return v0
.end method

.method public final getContentPaddingStart()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, LQ1/a;->q:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, LQ1/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, LQ1/a;->o:I

    goto :goto_0

    :cond_1
    iget v0, p0, LQ1/a;->m:I

    :goto_0
    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, LQ1/a;->n:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingEnd()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingLeft()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingRight()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingStart()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingTop()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getShapeAppearanceModel()La2/o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LQ1/a;->j:La2/o;

    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LQ1/a;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, LQ1/a;->k:F

    return v0
.end method

.method public h(IIII)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    const/high16 v0, -0x80000000

    iput v0, p0, LQ1/a;->q:I

    iput v0, p0, LQ1/a;->r:I

    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, LQ1/a;->m:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, LQ1/a;->n:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-super {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, LQ1/a;->o:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-super {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget v4, p0, LQ1/a;->p:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iput p1, p0, LQ1/a;->m:I

    iput p2, p0, LQ1/a;->n:I

    iput p3, p0, LQ1/a;->o:I

    iput p4, p0, LQ1/a;->p:I

    return-void
.end method

.method public i(IIII)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x11
    .end annotation

    invoke-super {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, LQ1/a;->n:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-super {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, LQ1/a;->getContentPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-super {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget v4, p0, LQ1/a;->p:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-direct {p0}, LQ1/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, LQ1/a;->m:I

    iput p2, p0, LQ1/a;->n:I

    invoke-direct {p0}, LQ1/a;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    iput p1, p0, LQ1/a;->o:I

    iput p4, p0, LQ1/a;->p:I

    return-void
.end method

.method public final j(II)V
    .locals 5

    iget-object v0, p0, LQ1/a;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, LQ1/a;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, LQ1/a;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, LQ1/a;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, LQ1/a;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, LQ1/a;->b:La2/p;

    iget-object v1, p0, LQ1/a;->j:La2/o;

    iget-object v2, p0, LQ1/a;->c:Landroid/graphics/RectF;

    iget-object v3, p0, LQ1/a;->g:Landroid/graphics/Path;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v2, v3}, La2/p;->e(La2/o;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, LQ1/a;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, LQ1/a;->l:Landroid/graphics/Path;

    iget-object v1, p0, LQ1/a;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v0, p0, LQ1/a;->d:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, LQ1/a;->l:Landroid/graphics/Path;

    iget-object p2, p0, LQ1/a;->d:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, LQ1/a;->l:Landroid/graphics/Path;

    iget-object v1, p0, LQ1/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, LQ1/a;->e(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-boolean p1, p0, LQ1/a;->s:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, LQ1/a;->s:Z

    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, LQ1/a;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-super {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-super {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LQ1/a;->setPadding(IIII)V

    return-void

    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-super {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-super {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LQ1/a;->setPaddingRelative(IIII)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0, p1, p2}, LQ1/a;->j(II)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    invoke-virtual {p0}, LQ1/a;->getContentPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingRight()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingBottom()I

    move-result v0

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    invoke-virtual {p0}, LQ1/a;->getContentPaddingStart()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingEnd()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p0}, LQ1/a;->getContentPaddingBottom()I

    move-result v0

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setShapeAppearanceModel(La2/o;)V
    .locals 1
    .param p1    # La2/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, LQ1/a;->j:La2/o;

    iget-object v0, p0, LQ1/a;->i:La2/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La2/j;->setShapeAppearanceModel(La2/o;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LQ1/a;->j(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LQ1/a;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LQ1/a;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget v0, p0, LQ1/a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, LQ1/a;->k:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, LQ1/a;->setStrokeWidth(F)V

    return-void
.end method
