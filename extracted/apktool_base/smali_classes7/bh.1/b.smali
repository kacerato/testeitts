.class public abstract Lbh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh/b$a;,
        Lbh/b$b;,
        Lbh/b$c;,
        Lbh/b$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lbh/b<",
        "+TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNote.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Note.kt\norg/anastr/speedviewlib/components/note/Note\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n1#2:269\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nNote.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Note.kt\norg/anastr/speedviewlib/components/note/Note\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n1#2:269\n*E\n"
    }
.end annotation


# static fields
.field public static final q:Lbh/b$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final r:I = -0x1


# instance fields
.field public final a:F

.field public final b:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lbh/b$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lbh/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:F

.field public p:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbh/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbh/b$b;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lbh/b;->q:Lbh/b$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lbh/b;->a:F

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lbh/b;->b:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lbh/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lbh/b;->h:Landroid/graphics/Bitmap;

    sget-object v0, Lbh/b$c;->CenterIndicator:Lbh/b$c;

    iput-object v0, p0, Lbh/b;->i:Lbh/b$c;

    sget-object v0, Lbh/b$a;->Top:Lbh/b$a;

    iput-object v0, p0, Lbh/b;->j:Lbh/b$a;

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lbh/b;->o:F

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lbh/b;->f(F)F

    move-result v0

    iput v0, p0, Lbh/b;->p:F

    const v0, -0x292829

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40e00000    # 7.0f

    invoke-virtual {p0, p1}, Lbh/b;->f(F)F

    move-result v0

    invoke-virtual {p0, p1}, Lbh/b;->f(F)F

    move-result v1

    invoke-virtual {p0, p1}, Lbh/b;->f(F)F

    move-result v2

    invoke-virtual {p0, p1}, Lbh/b;->f(F)F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lbh/b;->q(FFFF)Lbh/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lbh/b;->p:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget v3, p0, Lbh/b;->k:I

    int-to-float v3, v3

    iget v4, p0, Lbh/b;->l:I

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v3, p0, Lbh/b;->k:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, p0, Lbh/b;->k:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {p0, v3}, Lbh/b;->f(F)F

    move-result v5

    sub-float/2addr v2, v5

    iget v5, v0, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x1

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lbh/b;->k:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p0, v3}, Lbh/b;->f(F)F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lbh/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p0, Lbh/b;->o:F

    iget-object v2, p0, Lbh/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 8

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lbh/b;->k:I

    int-to-float v1, v1

    iget v2, p0, Lbh/b;->p:F

    sub-float/2addr v1, v2

    iget v2, p0, Lbh/b;->l:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, p0, Lbh/b;->k:I

    int-to-float v2, v2

    iget v3, p0, Lbh/b;->l:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v0, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v5, p0, Lbh/b;->l:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {p0, v6}, Lbh/b;->f(F)F

    move-result v7

    sub-float/2addr v5, v7

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget v3, p0, Lbh/b;->l:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v6}, Lbh/b;->f(F)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lbh/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p0, Lbh/b;->o:F

    iget-object v2, p0, Lbh/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 8

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lbh/b;->p:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget v3, p0, Lbh/b;->k:I

    int-to-float v3, v3

    iget v4, p0, Lbh/b;->l:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v3, p0, Lbh/b;->l:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x1

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v5, p0, Lbh/b;->l:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {p0, v6}, Lbh/b;->f(F)F

    move-result v7

    sub-float/2addr v5, v7

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget v3, p0, Lbh/b;->l:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v6}, Lbh/b;->f(F)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lbh/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p0, Lbh/b;->o:F

    iget-object v2, p0, Lbh/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lbh/b;->k:I

    int-to-float v1, v1

    iget v2, p0, Lbh/b;->l:I

    int-to-float v2, v2

    iget v3, p0, Lbh/b;->p:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, p0, Lbh/b;->k:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lbh/b;->l:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, p0, Lbh/b;->k:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/high16 v4, 0x41100000    # 9.0f

    invoke-virtual {p0, v4}, Lbh/b;->f(F)F

    move-result v5

    sub-float/2addr v2, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x1

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lbh/b;->k:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v4}, Lbh/b;->f(F)F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lbh/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p0, Lbh/b;->o:F

    iget-object v2, p0, Lbh/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public abstract e(I)V
.end method

.method public final f(F)F
    .locals 1

    iget v0, p0, Lbh/b;->a:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public final g(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lbh/b;->j:Lbh/b$a;

    sget-object v1, Lbh/b$d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbh/b;->h:Landroid/graphics/Bitmap;

    iget v1, p0, Lbh/b;->k:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float v1, p2, v1

    iget-object v3, p0, Lbh/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p3, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lbh/b;->m:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    iget v0, p0, Lbh/b;->p:F

    add-float/2addr p3, v0

    iget v0, p0, Lbh/b;->e:F

    add-float/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Lbh/b;->h(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, Lbh/b;->h:Landroid/graphics/Bitmap;

    iget v1, p0, Lbh/b;->l:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float v1, p3, v1

    iget-object v3, p0, Lbh/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lbh/b;->p:F

    add-float/2addr p2, v0

    iget v0, p0, Lbh/b;->d:F

    add-float/2addr p2, v0

    iget v0, p0, Lbh/b;->l:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p3, v0

    iget v0, p0, Lbh/b;->e:F

    add-float/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Lbh/b;->h(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbh/b;->h:Landroid/graphics/Bitmap;

    iget v1, p0, Lbh/b;->k:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float v1, p2, v1

    iget v3, p0, Lbh/b;->l:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    iget-object v4, p0, Lbh/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lbh/b;->m:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    iget v0, p0, Lbh/b;->l:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iget v0, p0, Lbh/b;->e:F

    add-float/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Lbh/b;->h(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbh/b;->h:Landroid/graphics/Bitmap;

    iget v1, p0, Lbh/b;->k:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget v3, p0, Lbh/b;->l:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float v3, p3, v3

    iget-object v4, p0, Lbh/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lbh/b;->k:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget v0, p0, Lbh/b;->d:F

    add-float/2addr p2, v0

    iget v0, p0, Lbh/b;->l:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p3, v0

    iget v0, p0, Lbh/b;->e:F

    add-float/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Lbh/b;->h(Landroid/graphics/Canvas;FF)V

    :goto_0
    return-void
.end method

.method public abstract h(Landroid/graphics/Canvas;FF)V
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final i()Lbh/b$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lbh/b;->j:Lbh/b$a;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Lbh/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final k()F
    .locals 1

    iget v0, p0, Lbh/b;->o:F

    return v0
.end method

.method public final l()Lbh/b$c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lbh/b;->i:Lbh/b$c;

    return-object v0
.end method

.method public final m(II)V
    .locals 2

    iput p1, p0, Lbh/b;->m:I

    iput p2, p0, Lbh/b;->n:I

    iget-object v0, p0, Lbh/b;->j:Lbh/b$a;

    sget-object v1, Lbh/b$a;->Top:Lbh/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lbh/b$a;->Bottom:Lbh/b$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    iget v0, p0, Lbh/b;->d:F

    add-float/2addr p1, v0

    iget v0, p0, Lbh/b;->f:F

    add-float/2addr p1, v0

    iget v0, p0, Lbh/b;->p:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lbh/b;->k:I

    int-to-float p1, p2

    iget p2, p0, Lbh/b;->e:F

    add-float/2addr p1, p2

    iget p2, p0, Lbh/b;->g:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lbh/b;->l:I

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float p1, p1

    iget v0, p0, Lbh/b;->d:F

    add-float/2addr p1, v0

    iget v0, p0, Lbh/b;->f:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lbh/b;->k:I

    int-to-float p1, p2

    iget p2, p0, Lbh/b;->e:F

    add-float/2addr p1, p2

    iget p2, p0, Lbh/b;->g:F

    add-float/2addr p1, p2

    iget p2, p0, Lbh/b;->p:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lbh/b;->l:I

    :goto_1
    invoke-virtual {p0}, Lbh/b;->s()V

    return-void
.end method

.method public final n(Lbh/b$a;)Lbh/b;
    .locals 1
    .param p1    # Lbh/b$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbh/b$a;",
            ")TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "align"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbh/b;->j:Lbh/b$a;

    const-string p1, "null cannot be cast to non-null type N of org.anastr.speedviewlib.components.note.Note"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(I)Lbh/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lbh/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const-string p1, "null cannot be cast to non-null type N of org.anastr.speedviewlib.components.note.Note"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(F)Lbh/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lbh/b;->o:F

    const-string p1, "null cannot be cast to non-null type N of org.anastr.speedviewlib.components.note.Note"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cornersRound cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(FFFF)Lbh/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lbh/b;->d:F

    iput p2, p0, Lbh/b;->e:F

    iput p3, p0, Lbh/b;->f:F

    iput p4, p0, Lbh/b;->g:F

    iget p1, p0, Lbh/b;->m:I

    iget p2, p0, Lbh/b;->n:I

    invoke-virtual {p0, p1, p2}, Lbh/b;->m(II)V

    const-string p1, "null cannot be cast to non-null type N of org.anastr.speedviewlib.components.note.Note"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Lbh/b$c;)Lbh/b;
    .locals 1
    .param p1    # Lbh/b$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbh/b$c;",
            ")TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbh/b;->i:Lbh/b$c;

    const-string p1, "null cannot be cast to non-null type N of org.anastr.speedviewlib.components.note.Note"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s()V
    .locals 3

    iget v0, p0, Lbh/b;->k:I

    if-lez v0, :cond_4

    iget v1, p0, Lbh/b;->l:I

    if-lez v1, :cond_4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lbh/b;->h:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lbh/b;->h:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lbh/b;->j:Lbh/b$a;

    sget-object v2, Lbh/b$d;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lbh/b;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, v0}, Lbh/b;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lbh/b;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lbh/b;->b(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_0
    return-void
.end method
