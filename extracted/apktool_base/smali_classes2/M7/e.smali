.class public LM7/e;
.super LM7/g;
.source "SourceFile"


# static fields
.field public static final H:I = 0x2


# instance fields
.field public A:I

.field public B:Landroid/view/View;

.field public C:Z

.field public D:Landroid/widget/ImageView;

.field public E:Z

.field public F:Ljava/lang/String;

.field public G:Landroid/widget/TextView;

.field public i:I

.field public j:LM7/f;

.field public k:Landroid/content/Context;

.field public l:I

.field public m:Z

.field public n:LAc/b;

.field public o:I

.field public p:Z

.field public q:LAc/b;

.field public r:I

.field public s:Z

.field public t:LAc/b;

.field public u:I

.field public v:Z

.field public w:LAc/b;

.field public x:I

.field public y:Z

.field public z:LAc/b;


# direct methods
.method public constructor <init>(ILM7/f;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "listener",
            "context"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 23
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/e;->l:I

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, LM7/e;->m:Z

    .line 25
    iput-object v0, p0, LM7/e;->n:LAc/b;

    .line 26
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->o:I

    .line 27
    iput-boolean v1, p0, LM7/e;->p:Z

    .line 28
    iput-object v0, p0, LM7/e;->q:LAc/b;

    .line 29
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->r:I

    .line 30
    iput-boolean v1, p0, LM7/e;->s:Z

    .line 31
    iput-object v0, p0, LM7/e;->t:LAc/b;

    .line 32
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->u:I

    .line 33
    iput-boolean v1, p0, LM7/e;->v:Z

    .line 34
    iput-object v0, p0, LM7/e;->w:LAc/b;

    .line 35
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->x:I

    .line 36
    iput-boolean v1, p0, LM7/e;->y:Z

    .line 37
    iput-object v0, p0, LM7/e;->z:LAc/b;

    .line 38
    iput-boolean v1, p0, LM7/e;->C:Z

    .line 39
    const-string v0, "Text"

    iput-object v0, p0, LM7/e;->F:Ljava/lang/String;

    .line 40
    iput p1, p0, LM7/e;->i:I

    .line 41
    iput-object p2, p0, LM7/e;->j:LM7/f;

    .line 42
    iput-object p3, p0, LM7/e;->k:Landroid/content/Context;

    .line 43
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/e;->A:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "icon",
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/e;->l:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, LM7/e;->m:Z

    .line 4
    iput-object v0, p0, LM7/e;->n:LAc/b;

    .line 5
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->o:I

    .line 6
    iput-boolean v1, p0, LM7/e;->p:Z

    .line 7
    iput-object v0, p0, LM7/e;->q:LAc/b;

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->r:I

    .line 9
    iput-boolean v1, p0, LM7/e;->s:Z

    .line 10
    iput-object v0, p0, LM7/e;->t:LAc/b;

    .line 11
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->u:I

    .line 12
    iput-boolean v1, p0, LM7/e;->v:Z

    .line 13
    iput-object v0, p0, LM7/e;->w:LAc/b;

    .line 14
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->x:I

    .line 15
    iput-boolean v1, p0, LM7/e;->y:Z

    .line 16
    iput-object v0, p0, LM7/e;->z:LAc/b;

    .line 17
    iput-boolean v1, p0, LM7/e;->C:Z

    .line 18
    const-string v0, "Text"

    iput-object v0, p0, LM7/e;->F:Ljava/lang/String;

    .line 19
    iput p1, p0, LM7/e;->i:I

    .line 20
    iput-object p2, p0, LM7/e;->k:Landroid/content/Context;

    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/e;->A:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;LM7/f;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "text",
            "listener",
            "context"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 45
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/e;->l:I

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, LM7/e;->m:Z

    .line 47
    iput-object v0, p0, LM7/e;->n:LAc/b;

    .line 48
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->o:I

    .line 49
    iput-boolean v1, p0, LM7/e;->p:Z

    .line 50
    iput-object v0, p0, LM7/e;->q:LAc/b;

    .line 51
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->r:I

    .line 52
    iput-boolean v1, p0, LM7/e;->s:Z

    .line 53
    iput-object v0, p0, LM7/e;->t:LAc/b;

    .line 54
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->u:I

    .line 55
    iput-boolean v1, p0, LM7/e;->v:Z

    .line 56
    iput-object v0, p0, LM7/e;->w:LAc/b;

    .line 57
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/e;->x:I

    .line 58
    iput-boolean v1, p0, LM7/e;->y:Z

    .line 59
    iput-object v0, p0, LM7/e;->z:LAc/b;

    .line 60
    iput-boolean v1, p0, LM7/e;->C:Z

    .line 61
    iput p1, p0, LM7/e;->i:I

    .line 62
    iput-object p2, p0, LM7/e;->F:Ljava/lang/String;

    .line 63
    iput-object p3, p0, LM7/e;->j:LM7/f;

    .line 64
    iput-object p4, p0, LM7/e;->k:Landroid/content/Context;

    .line 65
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/e;->A:I

    return-void
.end method

.method private A(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v1, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    return-object p1

    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, LM7/e;->A(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_4

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, LM7/e;->A(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private K(IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "isDirect"
        }
    .end annotation

    if-nez p2, :cond_1

    iget-object p2, p0, LM7/e;->k:Landroid/content/Context;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return p1
.end method

.method public static synthetic q(LM7/e;)Z
    .locals 0

    iget-boolean p0, p0, LM7/e;->C:Z

    return p0
.end method

.method public static synthetic r(LM7/e;)Z
    .locals 0

    iget-boolean p0, p0, LM7/e;->s:Z

    return p0
.end method

.method public static synthetic s(LM7/e;)Z
    .locals 0

    iget-boolean p0, p0, LM7/e;->y:Z

    return p0
.end method

.method public static synthetic t(LM7/e;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, LM7/e;->z(IZ)V

    return-void
.end method

.method public static synthetic u(LM7/e;)Z
    .locals 0

    iget-boolean p0, p0, LM7/e;->p:Z

    return p0
.end method

.method public static synthetic v(LM7/e;)V
    .locals 0

    invoke-direct {p0}, LM7/e;->y()V

    return-void
.end method

.method public static synthetic w(LM7/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LM7/e;->F:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic x(LM7/e;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LM7/e;->G:Landroid/widget/TextView;

    return-object p0
.end method

.method private y()V
    .locals 2

    iget v0, p0, LM7/e;->u:I

    iget-boolean v1, p0, LM7/e;->v:Z

    invoke-direct {p0, v0, v1}, LM7/e;->z(IZ)V

    return-void
.end method

.method private z(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "isDirect"
        }
    .end annotation

    iget-object v0, p0, LM7/e;->B:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, LM7/e;->K(IZ)I

    move-result p1

    iget-object p2, p0, LM7/e;->B:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, LM7/e;->A(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    if-eqz p2, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public B()I
    .locals 1

    iget v0, p0, LM7/e;->r:I

    return v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, LM7/e;->x:I

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, LM7/e;->o:I

    return v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, LM7/e;->A:I

    return v0
.end method

.method public F()LM7/f;
    .locals 1

    iget-object v0, p0, LM7/e;->j:LM7/f;

    return-object v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, LM7/e;->u:I

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LM7/e;->F:Ljava/lang/String;

    return-object v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, LM7/e;->E:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, LM7/e;->C:Z

    return v0
.end method

.method public L(I)LM7/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedColor"
        }
    .end annotation

    iput p1, p0, LM7/e;->r:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/e;->s:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/e;->t:LAc/b;

    return-object p0
.end method

.method public M(LAc/b;)LM7/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/e;->t:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/e;->r:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/e;->s:Z

    :cond_0
    return-object p0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedColor"
        }
    .end annotation

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/e;->r:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/e;->s:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/e;->t:LAc/b;

    return-object p0
.end method

.method public O(I)LM7/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedOutlineColor"
        }
    .end annotation

    iput p1, p0, LM7/e;->x:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/e;->y:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/e;->z:LAc/b;

    return-object p0
.end method

.method public P(LAc/b;)LM7/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedOutlineColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/e;->z:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/e;->x:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/e;->y:Z

    :cond_0
    return-object p0
.end method

.method public Q(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedOutlineColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/e;->x:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/e;->y:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/e;->z:LAc/b;

    :cond_0
    return-object p0
.end method

.method public R(IZ)LM7/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "isDirect"
        }
    .end annotation

    iget-object v0, p0, LM7/e;->B:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, LM7/e;->K(IZ)I

    move-result v0

    iget-object v1, p0, LM7/e;->B:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, LM7/e;->A(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, LM7/e;->B:Landroid/view/View;

    iget-object v0, p0, LM7/e;->k:Landroid/content/Context;

    invoke-static {p2, v0, p1}, LVc/e;->t(Landroid/view/View;Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, LM7/e;->B:Landroid/view/View;

    iget-object v0, p0, LM7/e;->k:Landroid/content/Context;

    invoke-static {p2, v0, p1}, LVc/e;->u(Landroid/view/View;Landroid/content/Context;I)V

    :goto_0
    invoke-direct {p0}, LM7/e;->y()V

    :cond_2
    return-object p0
.end method

.method public S(I)LM7/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColor"
        }
    .end annotation

    iput p1, p0, LM7/e;->o:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LM7/e;->p:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/e;->q:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/e;->R(IZ)LM7/e;

    return-object p0
.end method

.method public T(LAc/b;)LM7/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/e;->q:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/e;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/e;->p:Z

    invoke-virtual {p0, p1, v0}, LM7/e;->R(IZ)LM7/e;

    :cond_0
    return-object p0
.end method

.method public U(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColor"
        }
    .end annotation

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/e;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/e;->p:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/e;->q:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/e;->R(IZ)LM7/e;

    return-object p0
.end method

.method public V(Z)LM7/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disableTint"
        }
    .end annotation

    iput-boolean p1, p0, LM7/e;->E:Z

    iget p1, p0, LM7/e;->o:I

    iget-boolean v0, p0, LM7/e;->p:Z

    invoke-virtual {p0, p1, v0}, LM7/e;->Z(IZ)LM7/e;

    return-object p0
.end method

.method public W(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableTouchAnimation"
        }
    .end annotation

    iput-boolean p1, p0, LM7/e;->C:Z

    return-void
.end method

.method public X(I)LM7/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iput p1, p0, LM7/e;->A:I

    return-object p0
.end method

.method public Y(I)LM7/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColor"
        }
    .end annotation

    iput p1, p0, LM7/e;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LM7/e;->m:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/e;->n:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/e;->Z(IZ)LM7/e;

    return-object p0
.end method

.method public Z(IZ)LM7/e;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "isDirect"
        }
    .end annotation

    iget-object v0, p0, LM7/e;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, LM7/e;->E:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p0, LM7/e;->k:Landroid/content/Context;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {v0, v1, v2}, LVc/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LM7/e;->k:Landroid/content/Context;

    invoke-static {v0, v1, p1}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, LVc/e;->m(Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    iget-object v0, p0, LM7/e;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, LM7/e;->E:Z

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LM7/e;->K(IZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    :goto_1
    return-object p0
.end method

.method public a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "context",
            "layoutInflater"
        }
    .end annotation

    iput-object p2, p0, LM7/e;->k:Landroid/content/Context;

    const v0, 0x7f0c0093

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v0, p0, LM7/e;->A:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090503

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LM7/e;->G:Landroid/widget/TextView;

    iget-object v0, p0, LM7/e;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090571

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LM7/e;->B:Landroid/view/View;

    const p1, 0x7f09025a

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LM7/e;->D:Landroid/widget/ImageView;

    iget v0, p0, LM7/e;->i:I

    invoke-static {p1, v0, p2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget p1, p0, LM7/e;->l:I

    iget-boolean v0, p0, LM7/e;->m:Z

    invoke-virtual {p0, p1, v0}, LM7/e;->Z(IZ)LM7/e;

    new-instance p1, LM7/e$a;

    invoke-direct {p1, p0, p2}, LM7/e$a;-><init>(LM7/e;Landroid/content/Context;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, LM7/e;->o:I

    iget-boolean p2, p0, LM7/e;->p:Z

    invoke-virtual {p0, p1, p2}, LM7/e;->R(IZ)LM7/e;

    invoke-virtual {p0, p3}, LM7/g;->m(Landroid/view/View;)V

    return-void
.end method

.method public a0(LAc/b;)LM7/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/e;->n:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/e;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/e;->m:Z

    invoke-virtual {p0, p1, v0}, LM7/e;->Z(IZ)LM7/e;

    :cond_0
    return-object p0
.end method

.method public b0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColor"
        }
    .end annotation

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/e;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/e;->m:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/e;->n:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/e;->Z(IZ)LM7/e;

    return-object p0
.end method

.method public c0(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LM7/e;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LM7/e;->k:Landroid/content/Context;

    invoke-static {v0, p1}, LVc/e;->n(Landroid/widget/ImageView;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d0(LM7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, LM7/e;->j:LM7/f;

    return-void
.end method

.method public e0(I)LM7/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColor"
        }
    .end annotation

    iput p1, p0, LM7/e;->u:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/e;->v:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/e;->w:LAc/b;

    invoke-direct {p0}, LM7/e;->y()V

    return-object p0
.end method

.method public f0(LAc/b;)LM7/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/e;->w:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/e;->u:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/e;->v:Z

    invoke-direct {p0}, LM7/e;->y()V

    :cond_0
    return-object p0
.end method

.method public g0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/e;->u:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/e;->v:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/e;->w:LAc/b;

    invoke-direct {p0}, LM7/e;->y()V

    :cond_0
    return-object p0
.end method

.method public h0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    new-instance v0, LM7/e$b;

    invoke-direct {v0, p0, p1}, LM7/e$b;-><init>(LM7/e;Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, LM7/e;->q:LAc/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/e;->o:I

    iput-boolean v1, p0, LM7/e;->p:Z

    :cond_0
    iget-object v0, p0, LM7/e;->t:LAc/b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/e;->r:I

    iput-boolean v1, p0, LM7/e;->s:Z

    :cond_1
    iget-object v0, p0, LM7/e;->n:LAc/b;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/e;->l:I

    iput-boolean v1, p0, LM7/e;->m:Z

    :cond_2
    iget-object v0, p0, LM7/e;->w:LAc/b;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/e;->u:I

    iput-boolean v1, p0, LM7/e;->v:Z

    :cond_3
    iget-object v0, p0, LM7/e;->z:LAc/b;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/e;->x:I

    iput-boolean v1, p0, LM7/e;->y:Z

    :cond_4
    iget v0, p0, LM7/e;->o:I

    iget-boolean v1, p0, LM7/e;->p:Z

    invoke-virtual {p0, v0, v1}, LM7/e;->R(IZ)LM7/e;

    iget v0, p0, LM7/e;->l:I

    iget-boolean v1, p0, LM7/e;->m:Z

    invoke-virtual {p0, v0, v1}, LM7/e;->Z(IZ)LM7/e;

    invoke-direct {p0}, LM7/e;->y()V

    return-void
.end method
