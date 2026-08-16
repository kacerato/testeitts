.class public Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;
    }
.end annotation


# instance fields
.field public final A:Landroid/graphics/Rect;

.field public B:Z

.field public b:F

.field public c:F

.field public d:F

.field public e:Ljava/lang/String;

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/Paint;

.field public final l:Landroid/graphics/Paint;

.field public final m:Landroid/graphics/RectF;

.field public final n:Landroid/graphics/RectF;

.field public final o:Landroid/graphics/Path;

.field public final p:Landroid/graphics/Path;

.field public final q:[F

.field public final r:[F

.field public s:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;

.field public t:F

.field public u:F

.field public v:Z

.field public final w:I

.field public x:Landroid/widget/EditText;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->c:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    .line 5
    const-string v1, "%.2f"

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->f:F

    .line 7
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g:F

    .line 8
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->h:F

    .line 9
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i:F

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->j:Landroid/graphics/Paint;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->k:Landroid/graphics/Paint;

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->l:Landroid/graphics/Paint;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->m:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->n:Landroid/graphics/RectF;

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->o:Landroid/graphics/Path;

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->p:Landroid/graphics/Path;

    const/16 v0, 0x8

    .line 17
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->q:[F

    .line 18
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->r:[F

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    .line 20
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->z:Z

    .line 21
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->A:Landroid/graphics/Rect;

    .line 22
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->B:Z

    .line 23
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->w:I

    .line 24
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "attrs"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->c:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 28
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    .line 29
    const-string v0, "%.2f"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->f:F

    .line 31
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g:F

    .line 32
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->h:F

    .line 33
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i:F

    .line 34
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->j:Landroid/graphics/Paint;

    .line 35
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->k:Landroid/graphics/Paint;

    .line 36
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->l:Landroid/graphics/Paint;

    .line 37
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->m:Landroid/graphics/RectF;

    .line 38
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->n:Landroid/graphics/RectF;

    .line 39
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->o:Landroid/graphics/Path;

    .line 40
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->p:Landroid/graphics/Path;

    const/16 p2, 0x8

    .line 41
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->q:[F

    .line 42
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->r:[F

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    .line 44
    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->z:Z

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->A:Landroid/graphics/Rect;

    .line 46
    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->B:Z

    .line 47
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->w:I

    .line 48
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->b:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 51
    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->c:F

    const/high16 p3, 0x3f000000    # 0.5f

    .line 52
    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    .line 53
    const-string p3, "%.2f"

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->f:F

    .line 55
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g:F

    .line 56
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->h:F

    .line 57
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i:F

    .line 58
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->j:Landroid/graphics/Paint;

    .line 59
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->k:Landroid/graphics/Paint;

    .line 60
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->l:Landroid/graphics/Paint;

    .line 61
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->m:Landroid/graphics/RectF;

    .line 62
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->n:Landroid/graphics/RectF;

    .line 63
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->o:Landroid/graphics/Path;

    .line 64
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->p:Landroid/graphics/Path;

    const/16 p2, 0x8

    .line 65
    new-array p3, p2, [F

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->q:[F

    .line 66
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->r:[F

    const/4 p2, 0x0

    .line 67
    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    .line 68
    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->z:Z

    .line 69
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->A:Landroid/graphics/Rect;

    .line 70
    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->B:Z

    .line 71
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->w:I

    .line 72
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->l(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->j()V

    return-void
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->k(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->m()V

    return-void
.end method

.method public static e(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "lo",
            "hi"
        }
    .end annotation

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->A:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g(Z)V

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e:Ljava/lang/String;

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    new-instance v0, LA7/a;

    invoke-direct {v0, p0}, LA7/a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final g(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apply"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2c

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->b:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->c:F

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e(FFF)F

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->q(FZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->z:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    return v0
.end method

.method public final h(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->c:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->b:F

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    sub-float/2addr p1, v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v3, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e(FFF)F

    move-result p1

    return p1
.end method

.method public final i(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->j:Landroid/graphics/Paint;

    const v4, -0xaaa6a1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->k:Landroid/graphics/Paint;

    const v3, -0xc47d0a

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->l:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->l:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->l:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    const/16 v3, 0x3002

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    const v3, -0x7f000001

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    const/4 v3, 0x2

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x77

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    new-instance v1, LA7/b;

    invoke-direct {v1, p0}, LA7/b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    new-instance v1, LA7/c;

    invoke-direct {v1, p0}, LA7/c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public final synthetic j()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->z:Z

    return-void
.end method

.method public final synthetic k(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g(Z)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic l(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->z:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic m()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public n(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topLeft",
            "topRight",
            "bottomRight",
            "bottomLeft"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->f:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g:F

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->h:F

    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public o(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tlDp",
            "trDp",
            "brDp",
            "blDp"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    mul-float/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->n(FFFF)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v7, v4, v2

    if-lez v7, :cond_2

    cmpg-float v7, v6, v5

    if-gtz v7, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v7, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->m:Landroid/graphics/RectF;

    invoke-virtual {v7, v2, v5, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->h(F)F

    move-result v7

    sub-float v8, v4, v2

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    iget-object v8, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {v8, v2, v5, v7, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->m:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v3

    iget-object v8, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->m:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v3

    iget v9, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->f:F

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v10, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->f:F

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v11, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g:F

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v12, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g:F

    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget v13, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->h:F

    invoke-static {v13, v7}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget v14, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->h:F

    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget v15, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i:F

    invoke-static {v15, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v15, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i:F

    invoke-static {v15, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v15, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->q:[F

    const/16 v16, 0x0

    aput v9, v15, v16

    const/4 v9, 0x1

    aput v10, v15, v9

    const/4 v10, 0x2

    aput v11, v15, v10

    const/4 v11, 0x3

    aput v12, v15, v11

    const/4 v12, 0x4

    aput v13, v15, v12

    const/4 v13, 0x5

    aput v14, v15, v13

    const/4 v14, 0x6

    aput v7, v15, v14

    const/4 v7, 0x7

    aput v8, v15, v7

    iget-object v8, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v3

    iget-object v15, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    div-float/2addr v15, v3

    iget v3, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->f:F

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v7, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->f:F

    invoke-static {v7, v15}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v14, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g:F

    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget v13, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g:F

    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget v12, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->h:F

    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget v11, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->h:F

    invoke-static {v11, v15}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v10, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i:F

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v10, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i:F

    invoke-static {v10, v15}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget-object v15, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->r:[F

    aput v3, v15, v16

    aput v7, v15, v9

    const/4 v3, 0x2

    aput v14, v15, v3

    const/4 v3, 0x3

    aput v13, v15, v3

    const/4 v3, 0x4

    aput v12, v15, v3

    const/4 v3, 0x5

    aput v11, v15, v3

    const/4 v3, 0x6

    aput v8, v15, v3

    const/4 v3, 0x7

    aput v10, v15, v3

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->o:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->o:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->m:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->q:[F

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v7, v8, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->o:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->p:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->p:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->n:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->r:[F

    invoke-virtual {v3, v7, v8, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->p:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean v3, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    if-nez v3, :cond_3

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v7, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e:Ljava/lang/String;

    iget v8, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v8, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v8, v7

    div-float/2addr v8, v6

    sub-float/2addr v5, v8

    add-float/2addr v2, v4

    div-float/2addr v2, v6

    iget-object v4, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-boolean v2, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->B:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v3, -0xbf7f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onMeasure(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->v:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->t:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->w:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->u:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->w:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->v:Z

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->r(F)V

    return v1

    :cond_4
    iget-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->v:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->f()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->s:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    invoke-interface {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;->a(FZ)V

    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->t:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->u:F

    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->v:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->r(F)V

    return v1
.end method

.method public p(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    cmpl-float v0, p2, p1

    if-nez v0, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p2, p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->b:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->c:F

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->q(FZ)V

    return-void
.end method

.method public q(FZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "fromUser"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->b:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->c:F

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e(FFF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->s:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    invoke-interface {p1, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;->a(FZ)V

    :cond_0
    iget-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->y:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e:Ljava/lang/String;

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->x:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, LA7/d;

    invoke-direct {p1, p0}, LA7/d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final r(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e(FFF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->b:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->c:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->q(FZ)V

    return-void
.end method

.method public setDebugEditorBounds(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->B:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "printfFormat"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "%.2f"

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFormatStr(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fmt"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "%.2f"

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnValueChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;)V
    .locals 0
    .param p1    # Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->s:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;

    return-void
.end method

.method public setRadiusBottomLeft(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->i:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadiusBottomRight(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->h:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadiusTopLeft(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->f:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadiusTopRight(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->g:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->q(FZ)V

    return-void
.end method
