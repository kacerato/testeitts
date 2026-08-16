.class public final Lvd/b;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvd/b$c;,
        Lvd/b$b;,
        Lvd/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircularProgressBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularProgressBar.kt\ncom/mikhaellopez/circularprogressbar/CircularProgressBar\n*L\n1#1,382:1\n*E\n"
.end annotation


# static fields
.field public static final C:F = 100.0f

.field public static final D:F = 270.0f

.field public static final E:J = 0x5dcL

.field public static final F:Lvd/b$a;


# instance fields
.field public A:F

.field public final B:Ljava/lang/Runnable;

.field public b:Landroid/animation/ValueAnimator;

.field public c:Landroid/os/Handler;

.field public d:Landroid/graphics/RectF;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Paint;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lvd/b$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:I

.field public p:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Lvd/b$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Z

.field public t:F

.field public u:Lvd/b$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Z

.field public w:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "-",
            "Ljava/lang/Float;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:F

.field public z:Lvd/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lvd/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvd/b$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lvd/b;->F:Lvd/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lvd/b;->d:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iput-object v0, p0, Lvd/b;->e:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iput-object v0, p0, Lvd/b;->f:Landroid/graphics/Paint;

    const/high16 v0, 0x42c80000    # 100.0f

    .line 11
    iput v0, p0, Lvd/b;->h:F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lvd/d$b;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lvd/b;->i:F

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lvd/d$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lvd/b;->j:F

    const/high16 v0, -0x1000000

    .line 14
    iput v0, p0, Lvd/b;->k:I

    .line 15
    sget-object v0, Lvd/b$b;->LEFT_TO_RIGHT:Lvd/b$b;

    iput-object v0, p0, Lvd/b;->n:Lvd/b$b;

    const v1, -0x777778

    .line 16
    iput v1, p0, Lvd/b;->o:I

    .line 17
    iput-object v0, p0, Lvd/b;->r:Lvd/b$b;

    const/high16 v0, 0x43870000    # 270.0f

    .line 18
    iput v0, p0, Lvd/b;->t:F

    .line 19
    sget-object v1, Lvd/b$c;->TO_RIGHT:Lvd/b$c;

    iput-object v1, p0, Lvd/b;->u:Lvd/b$c;

    .line 20
    iput-object v1, p0, Lvd/b;->z:Lvd/b$c;

    .line 21
    iput v0, p0, Lvd/b;->A:F

    .line 22
    new-instance v0, Lvd/b$d;

    invoke-direct {v0, p0}, Lvd/b$d;-><init>(Lvd/b;)V

    iput-object v0, p0, Lvd/b;->B:Ljava/lang/Runnable;

    .line 23
    invoke-virtual {p0, p1, p2}, Lvd/b;->l(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2}, Lvd/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic a(Lvd/b;)Lvd/b$c;
    .locals 0

    iget-object p0, p0, Lvd/b;->z:Lvd/b$c;

    return-object p0
.end method

.method public static final synthetic b(Lvd/b;)F
    .locals 0

    iget p0, p0, Lvd/b;->y:F

    return p0
.end method

.method public static final synthetic c(Lvd/b;)F
    .locals 0

    iget p0, p0, Lvd/b;->A:F

    return p0
.end method

.method public static final synthetic d(Lvd/b;Lvd/b$c;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lvd/b;->m(Lvd/b$c;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lvd/b;)V
    .locals 0

    invoke-virtual {p0}, Lvd/b;->p()V

    return-void
.end method

.method public static final synthetic f(Lvd/b;Lvd/b$c;)Lvd/b$c;
    .locals 0

    invoke-virtual {p0, p1}, Lvd/b;->r(Lvd/b$c;)Lvd/b$c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lvd/b;Lvd/b$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lvd/b;->setProgressDirectionIndeterminateMode(Lvd/b$c;)V

    return-void
.end method

.method public static final synthetic h(Lvd/b;F)V
    .locals 0

    invoke-direct {p0, p1}, Lvd/b;->setProgressIndeterminateMode(F)V

    return-void
.end method

.method public static final synthetic i(Lvd/b;F)V
    .locals 0

    invoke-direct {p0, p1}, Lvd/b;->setStartAngleIndeterminateMode(F)V

    return-void
.end method

.method private final setProgressDirectionIndeterminateMode(Lvd/b$c;)V
    .locals 0

    iput-object p1, p0, Lvd/b;->z:Lvd/b$c;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final setProgressIndeterminateMode(F)V
    .locals 0

    iput p1, p0, Lvd/b;->y:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final setStartAngleIndeterminateMode(F)V
    .locals 0

    iput p1, p0, Lvd/b;->A:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic v(Lvd/b;FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lvd/b;->u(FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final getBackgroundProgressBarColor()I
    .locals 1

    iget v0, p0, Lvd/b;->o:I

    return v0
.end method

.method public final getBackgroundProgressBarColorDirection()Lvd/b$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lvd/b;->r:Lvd/b$b;

    return-object v0
.end method

.method public final getBackgroundProgressBarColorEnd()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lvd/b;->q:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBackgroundProgressBarColorStart()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lvd/b;->p:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBackgroundProgressBarWidth()F
    .locals 1

    iget v0, p0, Lvd/b;->j:F

    return v0
.end method

.method public final getIndeterminateMode()Z
    .locals 1

    iget-boolean v0, p0, Lvd/b;->v:Z

    return v0
.end method

.method public final getOnIndeterminateModeChangeListener()LMf/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LMf/l<",
            "Ljava/lang/Boolean;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lvd/b;->x:LMf/l;

    return-object v0
.end method

.method public final getOnProgressChangeListener()LMf/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LMf/l<",
            "Ljava/lang/Float;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lvd/b;->w:LMf/l;

    return-object v0
.end method

.method public final getProgress()F
    .locals 1

    iget v0, p0, Lvd/b;->g:F

    return v0
.end method

.method public final getProgressBarColor()I
    .locals 1

    iget v0, p0, Lvd/b;->k:I

    return v0
.end method

.method public final getProgressBarColorDirection()Lvd/b$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lvd/b;->n:Lvd/b$b;

    return-object v0
.end method

.method public final getProgressBarColorEnd()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lvd/b;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getProgressBarColorStart()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lvd/b;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getProgressBarWidth()F
    .locals 1

    iget v0, p0, Lvd/b;->i:F

    return v0
.end method

.method public final getProgressDirection()Lvd/b$c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lvd/b;->u:Lvd/b$c;

    return-object v0
.end method

.method public final getProgressMax()F
    .locals 1

    iget v0, p0, Lvd/b;->h:F

    return v0
.end method

.method public final getRoundBorder()Z
    .locals 1

    iget-boolean v0, p0, Lvd/b;->s:Z

    return v0
.end method

.method public final getStartAngle()F
    .locals 1

    iget v0, p0, Lvd/b;->t:F

    return v0
.end method

.method public final j(IILvd/b$b;)Landroid/graphics/LinearGradient;
    .locals 10

    sget-object v0, Lvd/c;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    move v3, v1

    move v4, v3

    :goto_0
    move v5, v4

    :goto_1
    move v6, v5

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    move v4, p3

    move v3, v1

    move v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    move v6, p3

    move v3, v1

    move v4, v3

    move v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    move v3, p3

    move v4, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    move v5, p3

    move v3, v1

    move v4, v3

    move v6, v4

    :goto_2
    new-instance p3, Landroid/graphics/LinearGradient;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, p3

    move v7, p1

    move v8, p2

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object p3
.end method

.method public final k(F)F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public final l(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lvd/d$c;->a:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.theme.obtainStyl\u2026ircularProgressBar, 0, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lvd/d$c;->h:I

    iget v0, p0, Lvd/b;->g:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->setProgress(F)V

    sget p2, Lvd/d$c;->j:I

    iget v0, p0, Lvd/b;->h:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->setProgressMax(F)V

    sget p2, Lvd/d$c;->o:I

    iget v0, p0, Lvd/b;->i:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->q(F)F

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->setProgressBarWidth(F)V

    sget p2, Lvd/d$c;->f:I

    iget v0, p0, Lvd/b;->j:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->q(F)F

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->setBackgroundProgressBarWidth(F)V

    sget p2, Lvd/d$c;->k:I

    iget v0, p0, Lvd/b;->k:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->setProgressBarColor(I)V

    sget p2, Lvd/d$c;->n:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lvd/b;->setProgressBarColorStart(Ljava/lang/Integer;)V

    :cond_0
    sget p2, Lvd/d$c;->m:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lvd/b;->setProgressBarColorEnd(Ljava/lang/Integer;)V

    :cond_1
    sget p2, Lvd/d$c;->l:I

    iget-object v0, p0, Lvd/b;->n:Lvd/b$b;

    invoke-virtual {v0}, Lvd/b$b;->a()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->w(I)Lvd/b$b;

    move-result-object p2

    invoke-virtual {p0, p2}, Lvd/b;->setProgressBarColorDirection(Lvd/b$b;)V

    sget p2, Lvd/d$c;->b:I

    iget v0, p0, Lvd/b;->o:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->setBackgroundProgressBarColor(I)V

    sget p2, Lvd/d$c;->e:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lvd/b;->setBackgroundProgressBarColorStart(Ljava/lang/Integer;)V

    :cond_2
    sget p2, Lvd/d$c;->d:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lvd/b;->setBackgroundProgressBarColorEnd(Ljava/lang/Integer;)V

    :cond_3
    sget p2, Lvd/d$c;->c:I

    iget-object v0, p0, Lvd/b;->r:Lvd/b$b;

    invoke-virtual {v0}, Lvd/b$b;->a()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->w(I)Lvd/b$b;

    move-result-object p2

    invoke-virtual {p0, p2}, Lvd/b;->setBackgroundProgressBarColorDirection(Lvd/b$b;)V

    sget p2, Lvd/d$c;->i:I

    iget-object v0, p0, Lvd/b;->u:Lvd/b$c;

    invoke-virtual {v0}, Lvd/b$c;->a()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->x(I)Lvd/b$c;

    move-result-object p2

    invoke-virtual {p0, p2}, Lvd/b;->setProgressDirection(Lvd/b$c;)V

    sget p2, Lvd/d$c;->p:I

    iget-boolean v0, p0, Lvd/b;->s:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->setRoundBorder(Z)V

    sget p2, Lvd/d$c;->q:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->setStartAngle(F)V

    sget p2, Lvd/d$c;->g:I

    iget-boolean v0, p0, Lvd/b;->v:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lvd/b;->setIndeterminateMode(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final m(Lvd/b$c;)Z
    .locals 1
    .param p1    # Lvd/b$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lvd/b$c;->TO_RIGHT:Lvd/b$c;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lvd/b;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lvd/b;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lvd/b;->o:I

    :goto_0
    iget-object v2, p0, Lvd/b;->q:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lvd/b;->o:I

    :goto_1
    iget-object v3, p0, Lvd/b;->r:Lvd/b$b;

    invoke-virtual {p0, v1, v2, v3}, Lvd/b;->j(IILvd/b$b;)Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lvd/b;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lvd/b;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lvd/b;->k:I

    :goto_0
    iget-object v2, p0, Lvd/b;->m:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lvd/b;->k:I

    :goto_1
    iget-object v3, p0, Lvd/b;->n:Lvd/b$b;

    invoke-virtual {p0, v1, v2, v3}, Lvd/b;->j(IILvd/b$b;)Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lvd/b;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lvd/b;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lvd/b;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lvd/b;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lvd/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lvd/b;->v:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lvd/b;->y:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lvd/b;->g:F

    :goto_0
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lvd/b;->h:F

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvd/b;->z:Lvd/b$c;

    invoke-virtual {p0, v0}, Lvd/b;->m(Lvd/b$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-boolean v4, p0, Lvd/b;->v:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lvd/b;->u:Lvd/b$c;

    invoke-virtual {p0, v4}, Lvd/b;->m(Lvd/b$c;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, -0x168

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v0, 0x168

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/16 v1, 0x64

    int-to-float v1, v1

    div-float v5, v0, v1

    iget-object v3, p0, Lvd/b;->d:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lvd/b;->v:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lvd/b;->A:F

    :goto_4
    move v4, v0

    goto :goto_5

    :cond_5
    iget v0, p0, Lvd/b;->t:F

    goto :goto_4

    :goto_5
    const/4 v6, 0x0

    iget-object v7, p0, Lvd/b;->f:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p2, p0, Lvd/b;->i:F

    iget v0, p0, Lvd/b;->j:F

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget-object v0, p0, Lvd/b;->d:Landroid/graphics/RectF;

    const/4 v1, 0x0

    int-to-float v1, v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr p2, v2

    add-float/2addr v1, p2

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lvd/b;->o()V

    invoke-virtual {p0}, Lvd/b;->n()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lvd/b;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lvd/b;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final q(F)F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    return p1
.end method

.method public final r(Lvd/b$c;)Lvd/b$c;
    .locals 0
    .param p1    # Lvd/b$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lvd/b;->m(Lvd/b$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lvd/b$c;->TO_LEFT:Lvd/b$c;

    goto :goto_0

    :cond_0
    sget-object p1, Lvd/b$c;->TO_RIGHT:Lvd/b$c;

    :goto_0
    return-object p1
.end method

.method public final s(FLjava/lang/Long;)V
    .locals 7
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lvd/b;->v(Lvd/b;FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lvd/b;->setBackgroundProgressBarColor(I)V

    return-void
.end method

.method public final setBackgroundProgressBarColor(I)V
    .locals 0

    iput p1, p0, Lvd/b;->o:I

    invoke-virtual {p0}, Lvd/b;->n()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBackgroundProgressBarColorDirection(Lvd/b$b;)V
    .locals 1
    .param p1    # Lvd/b$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lvd/b;->r:Lvd/b$b;

    invoke-virtual {p0}, Lvd/b;->n()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBackgroundProgressBarColorEnd(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lvd/b;->q:Ljava/lang/Integer;

    invoke-virtual {p0}, Lvd/b;->n()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBackgroundProgressBarColorStart(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lvd/b;->p:Ljava/lang/Integer;

    invoke-virtual {p0}, Lvd/b;->n()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBackgroundProgressBarWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lvd/b;->k(F)F

    move-result p1

    iput p1, p0, Lvd/b;->j:F

    iget-object v0, p0, Lvd/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setIndeterminateMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lvd/b;->v:Z

    iget-object v0, p0, Lvd/b;->x:LMf/l;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnf/P0;

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lvd/b;->setProgressIndeterminateMode(F)V

    sget-object p1, Lvd/b$c;->TO_RIGHT:Lvd/b$c;

    invoke-direct {p0, p1}, Lvd/b;->setProgressDirectionIndeterminateMode(Lvd/b$c;)V

    const/high16 p1, 0x43870000    # 270.0f

    invoke-direct {p0, p1}, Lvd/b;->setStartAngleIndeterminateMode(F)V

    iget-object p1, p0, Lvd/b;->c:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lvd/b;->B:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lvd/b;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lvd/b;->c:Landroid/os/Handler;

    iget-boolean v0, p0, Lvd/b;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvd/b;->B:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final setOnIndeterminateModeChangeListener(LMf/l;)V
    .locals 0
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lvd/b;->x:LMf/l;

    return-void
.end method

.method public final setOnProgressChangeListener(LMf/l;)V
    .locals 0
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Ljava/lang/Float;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lvd/b;->w:LMf/l;

    return-void
.end method

.method public final setProgress(F)V
    .locals 2

    iget v0, p0, Lvd/b;->g:F

    iget v1, p0, Lvd/b;->h:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, p0, Lvd/b;->g:F

    iget-object v0, p0, Lvd/b;->w:LMf/l;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnf/P0;

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressBarColor(I)V
    .locals 0

    iput p1, p0, Lvd/b;->k:I

    invoke-virtual {p0}, Lvd/b;->o()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressBarColorDirection(Lvd/b$b;)V
    .locals 1
    .param p1    # Lvd/b$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lvd/b;->n:Lvd/b$b;

    invoke-virtual {p0}, Lvd/b;->o()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressBarColorEnd(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lvd/b;->m:Ljava/lang/Integer;

    invoke-virtual {p0}, Lvd/b;->o()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressBarColorStart(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lvd/b;->l:Ljava/lang/Integer;

    invoke-virtual {p0}, Lvd/b;->o()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressBarWidth(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lvd/b;->k(F)F

    move-result p1

    iput p1, p0, Lvd/b;->i:F

    iget-object v0, p0, Lvd/b;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressDirection(Lvd/b$c;)V
    .locals 1
    .param p1    # Lvd/b$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lvd/b;->u:Lvd/b$c;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressMax(F)V
    .locals 2

    iget v0, p0, Lvd/b;->h:F

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42c80000    # 100.0f

    :goto_0
    iput p1, p0, Lvd/b;->h:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressWithAnimation(F)V
    .locals 7
    .annotation build LLf/k;
    .end annotation

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lvd/b;->v(Lvd/b;FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void
.end method

.method public final setRoundBorder(Z)V
    .locals 1

    iput-boolean p1, p0, Lvd/b;->s:Z

    iget-object v0, p0, Lvd/b;->f:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setStartAngle(F)V
    .locals 2

    const/high16 v0, 0x43870000    # 270.0f

    add-float/2addr p1, v0

    :goto_0
    const/16 v0, 0x168

    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    const/high16 p1, 0x43b40000    # 360.0f

    :cond_2
    :goto_1
    iput p1, p0, Lvd/b;->t:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final t(FLjava/lang/Long;Landroid/animation/TimeInterpolator;)V
    .locals 7
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/animation/TimeInterpolator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lvd/b;->v(Lvd/b;FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void
.end method

.method public final u(FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;)V
    .locals 3
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/animation/TimeInterpolator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    iget-object v0, p0, Lvd/b;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-boolean v0, p0, Lvd/b;->v:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lvd/b;->y:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lvd/b;->g:F

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lvd/b;->b:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lvd/b;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_2
    if-eqz p3, :cond_3

    iget-object p1, p0, Lvd/b;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iget-object p3, p0, Lvd/b;->b:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    iget-object p1, p0, Lvd/b;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    new-instance p2, Lvd/b$e;

    invoke-direct {p2, p0}, Lvd/b$e;-><init>(Lvd/b;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_5
    iget-object p1, p0, Lvd/b;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    return-void
.end method

.method public final w(I)Lvd/b$b;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object p1, Lvd/b$b;->BOTTOM_TO_END:Lvd/b$b;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This value is not supported for GradientDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p1, Lvd/b$b;->TOP_TO_BOTTOM:Lvd/b$b;

    goto :goto_0

    :cond_2
    sget-object p1, Lvd/b$b;->RIGHT_TO_LEFT:Lvd/b$b;

    goto :goto_0

    :cond_3
    sget-object p1, Lvd/b$b;->LEFT_TO_RIGHT:Lvd/b$b;

    :goto_0
    return-object p1
.end method

.method public final x(I)Lvd/b$c;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object p1, Lvd/b$c;->TO_LEFT:Lvd/b$c;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This value is not supported for ProgressDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p1, Lvd/b$c;->TO_RIGHT:Lvd/b$c;

    :goto_0
    return-object p1
.end method
