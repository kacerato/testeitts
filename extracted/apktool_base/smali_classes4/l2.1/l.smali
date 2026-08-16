.class public final Ll2/l;
.super Landroid/transition/Transition;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/l$f;,
        Ll2/l$e;,
        Ll2/l$h;,
        Ll2/l$d;,
        Ll2/l$c;,
        Ll2/l$g;
    }
.end annotation


# static fields
.field public static final A:I = 0x0

.field public static final B:I = 0x1

.field public static final C:I = 0x2

.field public static final D:I = 0x0

.field public static final E:I = 0x1

.field public static final F:I = 0x2

.field public static final G:I = 0x3

.field public static final H:I = 0x0

.field public static final I:I = 0x1

.field public static final J:I = 0x2

.field public static final K:Ljava/lang/String; = "l"

.field public static final L:Ljava/lang/String; = "materialContainerTransition:bounds"

.field public static final M:Ljava/lang/String; = "materialContainerTransition:shapeAppearance"

.field public static final N:[Ljava/lang/String;

.field public static final O:Ll2/l$f;

.field public static final P:Ll2/l$f;

.field public static final Q:Ll2/l$f;

.field public static final R:Ll2/l$f;

.field public static final S:F = -1.0f


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field public g:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field public h:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field public i:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public j:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public k:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public l:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public m:I

.field public n:I

.field public o:I

.field public p:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:La2/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public s:La2/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public t:Ll2/l$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public u:Ll2/l$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public v:Ll2/l$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public w:Ll2/l$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public x:Z

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, "materialContainerTransition:bounds"

    const-string v1, "materialContainerTransition:shapeAppearance"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ll2/l;->N:[Ljava/lang/String;

    new-instance v0, Ll2/l$f;

    new-instance v2, Ll2/l$e;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v7, 0x0

    invoke-direct {v2, v7, v1}, Ll2/l$e;-><init>(FF)V

    new-instance v3, Ll2/l$e;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8}, Ll2/l$e;-><init>(FF)V

    new-instance v4, Ll2/l$e;

    invoke-direct {v4, v7, v8}, Ll2/l$e;-><init>(FF)V

    new-instance v5, Ll2/l$e;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v5, v7, v1}, Ll2/l$e;-><init>(FF)V

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ll2/l$f;-><init>(Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$a;)V

    sput-object v0, Ll2/l;->O:Ll2/l$f;

    new-instance v0, Ll2/l$f;

    new-instance v10, Ll2/l$e;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v10, v1, v2}, Ll2/l$e;-><init>(FF)V

    new-instance v11, Ll2/l$e;

    invoke-direct {v11, v7, v8}, Ll2/l$e;-><init>(FF)V

    new-instance v12, Ll2/l$e;

    invoke-direct {v12, v7, v2}, Ll2/l$e;-><init>(FF)V

    new-instance v13, Ll2/l$e;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v13, v3, v2}, Ll2/l$e;-><init>(FF)V

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Ll2/l$f;-><init>(Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$a;)V

    sput-object v0, Ll2/l;->P:Ll2/l$f;

    new-instance v0, Ll2/l$f;

    new-instance v3, Ll2/l$e;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v5, v4}, Ll2/l$e;-><init>(FF)V

    new-instance v4, Ll2/l$e;

    invoke-direct {v4, v5, v8}, Ll2/l$e;-><init>(FF)V

    new-instance v6, Ll2/l$e;

    invoke-direct {v6, v5, v8}, Ll2/l$e;-><init>(FF)V

    new-instance v8, Ll2/l$e;

    invoke-direct {v8, v5, v2}, Ll2/l$e;-><init>(FF)V

    const/16 v20, 0x0

    move-object v15, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v20}, Ll2/l$f;-><init>(Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$a;)V

    sput-object v0, Ll2/l;->Q:Ll2/l$f;

    new-instance v0, Ll2/l$f;

    new-instance v10, Ll2/l$e;

    invoke-direct {v10, v1, v2}, Ll2/l$e;-><init>(FF)V

    new-instance v11, Ll2/l$e;

    invoke-direct {v11, v7, v2}, Ll2/l$e;-><init>(FF)V

    new-instance v12, Ll2/l$e;

    invoke-direct {v12, v7, v2}, Ll2/l$e;-><init>(FF)V

    new-instance v13, Ll2/l$e;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v13, v1, v2}, Ll2/l$e;-><init>(FF)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Ll2/l$f;-><init>(Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$a;)V

    sput-object v0, Ll2/l;->R:Ll2/l$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ll2/l;->b:Z

    .line 3
    iput-boolean v0, p0, Ll2/l;->c:Z

    .line 4
    iput-boolean v0, p0, Ll2/l;->d:Z

    .line 5
    iput-boolean v0, p0, Ll2/l;->e:Z

    const v1, 0x1020002

    .line 6
    iput v1, p0, Ll2/l;->f:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Ll2/l;->g:I

    .line 8
    iput v1, p0, Ll2/l;->h:I

    .line 9
    iput v0, p0, Ll2/l;->i:I

    .line 10
    iput v0, p0, Ll2/l;->j:I

    .line 11
    iput v0, p0, Ll2/l;->k:I

    const/high16 v1, 0x52000000

    .line 12
    iput v1, p0, Ll2/l;->l:I

    .line 13
    iput v0, p0, Ll2/l;->m:I

    .line 14
    iput v0, p0, Ll2/l;->n:I

    .line 15
    iput v0, p0, Ll2/l;->o:I

    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ll2/l;->x:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 17
    iput v0, p0, Ll2/l;->y:F

    .line 18
    iput v0, p0, Ll2/l;->z:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Ll2/l;->b:Z

    .line 21
    iput-boolean v0, p0, Ll2/l;->c:Z

    .line 22
    iput-boolean v0, p0, Ll2/l;->d:Z

    .line 23
    iput-boolean v0, p0, Ll2/l;->e:Z

    const v1, 0x1020002

    .line 24
    iput v1, p0, Ll2/l;->f:I

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Ll2/l;->g:I

    .line 26
    iput v1, p0, Ll2/l;->h:I

    .line 27
    iput v0, p0, Ll2/l;->i:I

    .line 28
    iput v0, p0, Ll2/l;->j:I

    .line 29
    iput v0, p0, Ll2/l;->k:I

    const/high16 v1, 0x52000000

    .line 30
    iput v1, p0, Ll2/l;->l:I

    .line 31
    iput v0, p0, Ll2/l;->m:I

    .line 32
    iput v0, p0, Ll2/l;->n:I

    .line 33
    iput v0, p0, Ll2/l;->o:I

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    move v0, v3

    :cond_0
    iput-boolean v0, p0, Ll2/l;->x:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    iput v0, p0, Ll2/l;->y:F

    .line 36
    iput v0, p0, Ll2/l;->z:F

    .line 37
    invoke-virtual {p0, p1, p2}, Ll2/l;->H(Landroid/content/Context;Z)V

    .line 38
    iput-boolean v3, p0, Ll2/l;->e:Z

    return-void
.end method

.method public static C(Landroid/content/Context;)I
    .locals 2
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    sget v0, Lw1/a$c;->jg:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static synthetic a(Ll2/l;)Z
    .locals 0

    iget-boolean p0, p0, Ll2/l;->c:Z

    return p0
.end method

.method public static c(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Ll2/v;->g(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-object p0

    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public static d(Landroid/view/View;Landroid/graphics/RectF;La2/o;)La2/o;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # La2/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p2}, Ll2/l;->t(Landroid/view/View;La2/o;)La2/o;

    move-result-object p0

    invoke-static {p0, p1}, Ll2/v;->b(La2/o;Landroid/graphics/RectF;)La2/o;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/transition/TransitionValues;Landroid/view/View;ILa2/o;)V
    .locals 2
    .param p0    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # La2/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {p1, p2}, Ll2/v;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget p2, Lw1/a$h;->e3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {p1}, Ll2/v;->h(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ll2/v;->g(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    :goto_1
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "materialContainerTransition:bounds"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "materialContainerTransition:shapeAppearance"

    invoke-static {p1, p2, p3}, Ll2/l;->d(Landroid/view/View;Landroid/graphics/RectF;La2/o;)La2/o;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public static h(FLandroid/view/View;)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static t(Landroid/view/View;La2/o;)La2/o;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # La2/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget p1, Lw1/a$h;->e3:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, La2/o;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La2/o;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ll2/l;->C(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, La2/o;->b(Landroid/content/Context;II)La2/o$b;

    move-result-object p0

    invoke-virtual {p0}, La2/o$b;->m()La2/o;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p1, p0, La2/s;

    if-eqz p1, :cond_3

    check-cast p0, La2/s;

    invoke-interface {p0}, La2/s;->getShapeAppearanceModel()La2/o;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, La2/o;->a()La2/o$b;

    move-result-object p0

    invoke-virtual {p0}, La2/o$b;->m()La2/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(ZLl2/l$f;Ll2/l$f;)Ll2/l$f;
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    new-instance p1, Ll2/l$f;

    iget-object p3, p0, Ll2/l;->t:Ll2/l$e;

    invoke-static {p2}, Ll2/l$f;->a(Ll2/l$f;)Ll2/l$e;

    move-result-object v0

    invoke-static {p3, v0}, Ll2/v;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ll2/l$e;

    iget-object p3, p0, Ll2/l;->u:Ll2/l$e;

    invoke-static {p2}, Ll2/l$f;->b(Ll2/l$f;)Ll2/l$e;

    move-result-object v0

    invoke-static {p3, v0}, Ll2/v;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Ll2/l$e;

    iget-object p3, p0, Ll2/l;->v:Ll2/l$e;

    invoke-static {p2}, Ll2/l$f;->c(Ll2/l$f;)Ll2/l$e;

    move-result-object v0

    invoke-static {p3, v0}, Ll2/v;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ll2/l$e;

    iget-object p3, p0, Ll2/l;->w:Ll2/l$e;

    invoke-static {p2}, Ll2/l$f;->d(Ll2/l$f;)Ll2/l$e;

    move-result-object p2

    invoke-static {p3, p2}, Ll2/v;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ll2/l$e;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ll2/l$f;-><init>(Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$a;)V

    return-object p1
.end method

.method public B()I
    .locals 1

    iget v0, p0, Ll2/l;->m:I

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Ll2/l;->b:Z

    return v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Ll2/l;->x:Z

    return v0
.end method

.method public final F(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Ll2/l;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid transition direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ll2/l;->m:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v2

    :cond_2
    invoke-static {p2}, Ll2/v;->a(Landroid/graphics/RectF;)F

    move-result p2

    invoke-static {p1}, Ll2/v;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Ll2/l;->c:Z

    return v0
.end method

.method public final H(Landroid/content/Context;Z)V
    .locals 2

    sget v0, Lw1/a$c;->Ta:I

    sget-object v1, Lx1/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p0, p1, v0, v1}, Ll2/v;->r(Landroid/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z

    if-eqz p2, :cond_0

    sget p2, Lw1/a$c;->Ja:I

    goto :goto_0

    :cond_0
    sget p2, Lw1/a$c;->Ma:I

    :goto_0
    invoke-static {p0, p1, p2}, Ll2/v;->q(Landroid/transition/Transition;Landroid/content/Context;I)Z

    iget-boolean p2, p0, Ll2/l;->d:Z

    if-nez p2, :cond_1

    sget p2, Lw1/a$c;->Va:I

    invoke-static {p0, p1, p2}, Ll2/v;->s(Landroid/transition/Transition;Landroid/content/Context;I)Z

    :cond_1
    return-void
.end method

.method public I(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ll2/l;->i:I

    iput p1, p0, Ll2/l;->j:I

    iput p1, p0, Ll2/l;->k:I

    return-void
.end method

.method public J(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ll2/l;->i:I

    return-void
.end method

.method public K(Z)V
    .locals 0

    iput-boolean p1, p0, Ll2/l;->b:Z

    return-void
.end method

.method public L(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iput p1, p0, Ll2/l;->f:I

    return-void
.end method

.method public M(Z)V
    .locals 0

    iput-boolean p1, p0, Ll2/l;->x:Z

    return-void
.end method

.method public N(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ll2/l;->k:I

    return-void
.end method

.method public O(F)V
    .locals 0

    iput p1, p0, Ll2/l;->z:F

    return-void
.end method

.method public P(La2/o;)V
    .locals 0
    .param p1    # La2/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Ll2/l;->s:La2/o;

    return-void
.end method

.method public Q(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Ll2/l;->q:Landroid/view/View;

    return-void
.end method

.method public R(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iput p1, p0, Ll2/l;->h:I

    return-void
.end method

.method public S(I)V
    .locals 0

    iput p1, p0, Ll2/l;->n:I

    return-void
.end method

.method public T(Ll2/l$e;)V
    .locals 0
    .param p1    # Ll2/l$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Ll2/l;->t:Ll2/l$e;

    return-void
.end method

.method public U(I)V
    .locals 0

    iput p1, p0, Ll2/l;->o:I

    return-void
.end method

.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Ll2/l;->c:Z

    return-void
.end method

.method public W(Ll2/l$e;)V
    .locals 0
    .param p1    # Ll2/l$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Ll2/l;->v:Ll2/l$e;

    return-void
.end method

.method public X(Ll2/l$e;)V
    .locals 0
    .param p1    # Ll2/l$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Ll2/l;->u:Ll2/l$e;

    return-void
.end method

.method public Y(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ll2/l;->l:I

    return-void
.end method

.method public Z(Ll2/l$e;)V
    .locals 0
    .param p1    # Ll2/l$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Ll2/l;->w:Ll2/l$e;

    return-void
.end method

.method public final b(Z)Ll2/l$f;
    .locals 2

    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    instance-of v1, v0, Landroid/transition/ArcMotion;

    if-nez v1, :cond_1

    instance-of v0, v0, Ll2/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ll2/l;->O:Ll2/l$f;

    sget-object v1, Ll2/l;->P:Ll2/l$f;

    invoke-virtual {p0, p1, v0, v1}, Ll2/l;->A(ZLl2/l$f;Ll2/l$f;)Ll2/l$f;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object v0, Ll2/l;->Q:Ll2/l$f;

    sget-object v1, Ll2/l;->R:Ll2/l$f;

    invoke-virtual {p0, p1, v0, v1}, Ll2/l;->A(ZLl2/l$f;Ll2/l$f;)Ll2/l$f;

    move-result-object p1

    return-object p1
.end method

.method public c0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ll2/l;->j:I

    return-void
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ll2/l;->q:Landroid/view/View;

    iget v1, p0, Ll2/l;->h:I

    iget-object v2, p0, Ll2/l;->s:La2/o;

    invoke-static {p1, v0, v1, v2}, Ll2/l;->e(Landroid/transition/TransitionValues;Landroid/view/View;ILa2/o;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ll2/l;->p:Landroid/view/View;

    iget v1, p0, Ll2/l;->g:I

    iget-object v2, p0, Ll2/l;->r:La2/o;

    invoke-static {p1, v0, v1, v2}, Ll2/l;->e(Landroid/transition/TransitionValues;Landroid/view/View;ILa2/o;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 29
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "materialContainerTransition:shapeAppearance"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, La2/o;

    if-eqz v10, :cond_7

    if-nez v11, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/RectF;

    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, La2/o;

    if-eqz v14, :cond_6

    if-nez v15, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v5, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v0, v4

    :goto_0
    iget v1, v6, Ll2/l;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget v1, v6, Ll2/l;->f:I

    invoke-static {v0, v1}, Ll2/v;->e(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v28, v2

    move-object v2, v1

    move-object/from16 v1, v28

    :goto_1
    invoke-static {v2}, Ll2/v;->g(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v3

    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-static {v2, v1, v7, v3}, Ll2/l;->c(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v10, v7, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v14, v7, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v6, v10, v14}, Ll2/l;->F(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    iget-boolean v7, v6, Ll2/l;->e:Z

    if-nez v7, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v0, v3}, Ll2/l;->H(Landroid/content/Context;Z)V

    :cond_5
    new-instance v0, Ll2/l$h;

    move-object v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v8

    iget v9, v6, Ll2/l;->y:F

    invoke-static {v9, v4}, Ll2/l;->h(FLandroid/view/View;)F

    move-result v12

    iget v9, v6, Ll2/l;->z:F

    invoke-static {v9, v5}, Ll2/l;->h(FLandroid/view/View;)F

    move-result v16

    iget v9, v6, Ll2/l;->i:I

    move/from16 v17, v9

    iget v9, v6, Ll2/l;->j:I

    move/from16 v18, v9

    iget v9, v6, Ll2/l;->k:I

    move/from16 v19, v9

    iget v9, v6, Ll2/l;->l:I

    move/from16 v20, v9

    iget-boolean v9, v6, Ll2/l;->x:Z

    move/from16 v22, v9

    iget v9, v6, Ll2/l;->n:I

    invoke-static {v9, v3}, Ll2/b;->a(IZ)Ll2/a;

    move-result-object v23

    iget v9, v6, Ll2/l;->o:I

    invoke-static {v9, v3, v10, v14}, Ll2/g;->a(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Ll2/f;

    move-result-object v24

    invoke-virtual {v6, v3}, Ll2/l;->b(Z)Ll2/l$f;

    move-result-object v25

    iget-boolean v9, v6, Ll2/l;->b:Z

    move/from16 v26, v9

    const/16 v27, 0x0

    move-object v9, v4

    move-object v13, v5

    move/from16 v21, v3

    invoke-direct/range {v7 .. v27}, Ll2/l$h;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;La2/o;FLandroid/view/View;Landroid/graphics/RectF;La2/o;FIIIIZZLl2/a;Ll2/f;Ll2/l$f;ZLl2/l$a;)V

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v7, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v3, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v1, Ll2/l$a;

    invoke-direct {v1, v6, v0}, Ll2/l$a;-><init>(Ll2/l;Ll2/l$h;)V

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Ll2/l$b;

    move-object v3, v0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Ll2/l$b;-><init>(Ll2/l;Landroid/view/View;Ll2/l$h;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-object v7

    :cond_6
    :goto_2
    sget-object v0, Ll2/l;->K:Ljava/lang/String;

    const-string v1, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_7
    :goto_3
    sget-object v0, Ll2/l;->K:Ljava/lang/String;

    const-string v1, "Skipping due to null start bounds. Ensure start view is laid out and measured."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public d0(F)V
    .locals 0

    iput p1, p0, Ll2/l;->y:F

    return-void
.end method

.method public e0(La2/o;)V
    .locals 0
    .param p1    # La2/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Ll2/l;->r:La2/o;

    return-void
.end method

.method public f()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Ll2/l;->i:I

    return v0
.end method

.method public f0(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Ll2/l;->p:Landroid/view/View;

    return-void
.end method

.method public g()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    iget v0, p0, Ll2/l;->f:I

    return v0
.end method

.method public g0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iput p1, p0, Ll2/l;->g:I

    return-void
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Ll2/l;->N:[Ljava/lang/String;

    return-object v0
.end method

.method public h0(I)V
    .locals 0

    iput p1, p0, Ll2/l;->m:I

    return-void
.end method

.method public i()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Ll2/l;->k:I

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Ll2/l;->z:F

    return v0
.end method

.method public k()La2/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll2/l;->s:La2/o;

    return-object v0
.end method

.method public l()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll2/l;->q:Landroid/view/View;

    return-object v0
.end method

.method public m()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    iget v0, p0, Ll2/l;->h:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Ll2/l;->n:I

    return v0
.end method

.method public o()Ll2/l$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll2/l;->t:Ll2/l$e;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Ll2/l;->o:I

    return v0
.end method

.method public q()Ll2/l$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll2/l;->v:Ll2/l$e;

    return-object v0
.end method

.method public r()Ll2/l$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll2/l;->u:Ll2/l$e;

    return-object v0
.end method

.method public s()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Ll2/l;->l:I

    return v0
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .locals 0
    .param p1    # Landroid/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll2/l;->d:Z

    return-void
.end method

.method public u()Ll2/l$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll2/l;->w:Ll2/l$e;

    return-object v0
.end method

.method public v()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Ll2/l;->j:I

    return v0
.end method

.method public w()F
    .locals 1

    iget v0, p0, Ll2/l;->y:F

    return v0
.end method

.method public x()La2/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll2/l;->r:La2/o;

    return-object v0
.end method

.method public y()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll2/l;->p:Landroid/view/View;

    return-object v0
.end method

.method public z()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    iget v0, p0, Ll2/l;->g:I

    return v0
.end method
