.class public LM7/i;
.super LM7/g;
.source "SourceFile"


# static fields
.field public static final E:I = 0x2


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/graphics/drawable/GradientDrawable;

.field public D:I

.field public i:Landroid/content/Context;

.field public j:LM7/j;

.field public k:Ljava/lang/String;

.field public l:F

.field public m:I

.field public n:I

.field public o:Z

.field public p:LAc/b;

.field public q:I

.field public r:Z

.field public s:LAc/b;

.field public t:I

.field public u:Z

.field public v:LAc/b;

.field public w:I

.field public x:Z

.field public y:LAc/b;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 2
    const-string v0, "Progress"

    iput-object v0, p0, LM7/i;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LM7/i;->l:F

    .line 4
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/i;->n:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, LM7/i;->o:Z

    .line 6
    iput-object v0, p0, LM7/i;->p:LAc/b;

    .line 7
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->q:I

    .line 8
    iput-boolean v1, p0, LM7/i;->r:Z

    .line 9
    iput-object v0, p0, LM7/i;->s:LAc/b;

    .line 10
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->t:I

    .line 11
    iput-boolean v1, p0, LM7/i;->u:Z

    .line 12
    iput-object v0, p0, LM7/i;->v:LAc/b;

    .line 13
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->w:I

    .line 14
    iput-boolean v1, p0, LM7/i;->x:Z

    .line 15
    iput-object v0, p0, LM7/i;->y:LAc/b;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, LM7/i;->D:I

    .line 17
    iput-object p1, p0, LM7/i;->i:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600ba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/i;->m:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLM7/j;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "value",
            "listener",
            "context"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 79
    const-string v0, "Progress"

    iput-object v0, p0, LM7/i;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, LM7/i;->l:F

    .line 81
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/i;->n:I

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, LM7/i;->o:Z

    .line 83
    iput-object v0, p0, LM7/i;->p:LAc/b;

    .line 84
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->q:I

    .line 85
    iput-boolean v1, p0, LM7/i;->r:Z

    .line 86
    iput-object v0, p0, LM7/i;->s:LAc/b;

    .line 87
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->t:I

    .line 88
    iput-boolean v1, p0, LM7/i;->u:Z

    .line 89
    iput-object v0, p0, LM7/i;->v:LAc/b;

    .line 90
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->w:I

    .line 91
    iput-boolean v1, p0, LM7/i;->x:Z

    .line 92
    iput-object v0, p0, LM7/i;->y:LAc/b;

    const/4 v0, -0x1

    .line 93
    iput v0, p0, LM7/i;->D:I

    .line 94
    iput-object p1, p0, LM7/i;->k:Ljava/lang/String;

    .line 95
    invoke-static {p2}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, LM7/i;->l:F

    .line 96
    iput-object p3, p0, LM7/i;->j:LM7/j;

    .line 97
    iput-object p4, p0, LM7/i;->i:Landroid/content/Context;

    .line 98
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/i;->m:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLandroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "value",
            "context"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 59
    const-string v0, "Progress"

    iput-object v0, p0, LM7/i;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, LM7/i;->l:F

    .line 61
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/i;->n:I

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, p0, LM7/i;->o:Z

    .line 63
    iput-object v0, p0, LM7/i;->p:LAc/b;

    .line 64
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->q:I

    .line 65
    iput-boolean v1, p0, LM7/i;->r:Z

    .line 66
    iput-object v0, p0, LM7/i;->s:LAc/b;

    .line 67
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->t:I

    .line 68
    iput-boolean v1, p0, LM7/i;->u:Z

    .line 69
    iput-object v0, p0, LM7/i;->v:LAc/b;

    .line 70
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->w:I

    .line 71
    iput-boolean v1, p0, LM7/i;->x:Z

    .line 72
    iput-object v0, p0, LM7/i;->y:LAc/b;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, LM7/i;->D:I

    .line 74
    iput-object p1, p0, LM7/i;->k:Ljava/lang/String;

    .line 75
    invoke-static {p2}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, LM7/i;->l:F

    .line 76
    iput-object p3, p0, LM7/i;->i:Landroid/content/Context;

    .line 77
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/i;->m:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LM7/j;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "listener",
            "context"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 39
    const-string v0, "Progress"

    iput-object v0, p0, LM7/i;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, LM7/i;->l:F

    .line 41
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/i;->n:I

    const/4 v1, 0x1

    .line 42
    iput-boolean v1, p0, LM7/i;->o:Z

    .line 43
    iput-object v0, p0, LM7/i;->p:LAc/b;

    .line 44
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->q:I

    .line 45
    iput-boolean v1, p0, LM7/i;->r:Z

    .line 46
    iput-object v0, p0, LM7/i;->s:LAc/b;

    .line 47
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->t:I

    .line 48
    iput-boolean v1, p0, LM7/i;->u:Z

    .line 49
    iput-object v0, p0, LM7/i;->v:LAc/b;

    .line 50
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->w:I

    .line 51
    iput-boolean v1, p0, LM7/i;->x:Z

    .line 52
    iput-object v0, p0, LM7/i;->y:LAc/b;

    const/4 v0, -0x1

    .line 53
    iput v0, p0, LM7/i;->D:I

    .line 54
    iput-object p1, p0, LM7/i;->k:Ljava/lang/String;

    .line 55
    iput-object p2, p0, LM7/i;->j:LM7/j;

    .line 56
    iput-object p3, p0, LM7/i;->i:Landroid/content/Context;

    .line 57
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/i;->m:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "context"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 20
    const-string v0, "Progress"

    iput-object v0, p0, LM7/i;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, LM7/i;->l:F

    .line 22
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/i;->n:I

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, LM7/i;->o:Z

    .line 24
    iput-object v0, p0, LM7/i;->p:LAc/b;

    .line 25
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->q:I

    .line 26
    iput-boolean v1, p0, LM7/i;->r:Z

    .line 27
    iput-object v0, p0, LM7/i;->s:LAc/b;

    .line 28
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->t:I

    .line 29
    iput-boolean v1, p0, LM7/i;->u:Z

    .line 30
    iput-object v0, p0, LM7/i;->v:LAc/b;

    .line 31
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/i;->w:I

    .line 32
    iput-boolean v1, p0, LM7/i;->x:Z

    .line 33
    iput-object v0, p0, LM7/i;->y:LAc/b;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, LM7/i;->D:I

    .line 35
    iput-object p1, p0, LM7/i;->k:Ljava/lang/String;

    .line 36
    iput-object p2, p0, LM7/i;->i:Landroid/content/Context;

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/i;->m:I

    return-void
.end method

.method private H(IZ)I
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

    iget-object p2, p0, LM7/i;->i:Landroid/content/Context;

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

.method public static synthetic q(LM7/i;)V
    .locals 0

    invoke-virtual {p0}, LM7/i;->v()V

    return-void
.end method

.method public static synthetic r(LM7/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LM7/i;->k:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic s(LM7/i;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LM7/i;->B:Landroid/widget/TextView;

    return-object p0
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, LM7/i;->z:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LM7/i;->w:I

    iget-boolean v1, p0, LM7/i;->x:Z

    invoke-direct {p0, v0, v1}, LM7/i;->H(IZ)I

    move-result v0

    iget-object v1, p0, LM7/i;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, LM7/i;->x(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-void
.end method

.method private w()V
    .locals 2

    iget v0, p0, LM7/i;->t:I

    iget-boolean v1, p0, LM7/i;->u:Z

    invoke-virtual {p0, v0, v1}, LM7/i;->Y(IZ)LM7/i;

    return-void
.end method

.method private x(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;
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

    invoke-direct {p0, p1}, LM7/i;->x(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

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

    invoke-direct {p0, v2}, LM7/i;->x(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public A()LM7/j;
    .locals 1

    iget-object v0, p0, LM7/i;->j:LM7/j;

    return-object v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, LM7/i;->w:I

    return v0
.end method

.method public C()F
    .locals 1

    iget v0, p0, LM7/i;->l:F

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, LM7/i;->q:I

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LM7/i;->k:Ljava/lang/String;

    return-object v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, LM7/i;->t:I

    return v0
.end method

.method public G()F
    .locals 1

    iget v0, p0, LM7/i;->l:F

    return v0
.end method

.method public I(IZ)LM7/i;
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

    iget-object v0, p0, LM7/i;->z:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, LM7/i;->H(IZ)I

    move-result p1

    iget-object p2, p0, LM7/i;->z:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, LM7/i;->x(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    invoke-direct {p0}, LM7/i;->u()V

    :cond_1
    return-object p0
.end method

.method public J(I)LM7/i;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColor"
        }
    .end annotation

    iput p1, p0, LM7/i;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LM7/i;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/i;->p:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/i;->I(IZ)LM7/i;

    return-object p0
.end method

.method public K(LAc/b;)LM7/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/i;->p:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/i;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/i;->o:Z

    invoke-virtual {p0, p1, v0}, LM7/i;->I(IZ)LM7/i;

    :cond_0
    return-object p0
.end method

.method public L(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/i;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/i;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/i;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/i;->p:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/i;->I(IZ)LM7/i;

    :cond_0
    return-object p0
.end method

.method public M(I)LM7/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iput p1, p0, LM7/i;->m:I

    return-object p0
.end method

.method public N(LM7/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, LM7/i;->j:LM7/j;

    invoke-virtual {p0}, LM7/i;->t()V

    return-void
.end method

.method public O(I)LM7/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColor"
        }
    .end annotation

    iput p1, p0, LM7/i;->w:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/i;->x:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/i;->y:LAc/b;

    invoke-direct {p0}, LM7/i;->u()V

    return-object p0
.end method

.method public P(LAc/b;)LM7/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/i;->y:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/i;->w:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/i;->x:Z

    invoke-direct {p0}, LM7/i;->u()V

    :cond_0
    return-object p0
.end method

.method public Q(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/i;
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

    iput p1, p0, LM7/i;->w:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/i;->x:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/i;->y:LAc/b;

    invoke-direct {p0}, LM7/i;->u()V

    :cond_0
    return-object p0
.end method

.method public R(F)LM7/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, LM7/i;->b0(F)LM7/i;

    move-result-object p1

    return-object p1
.end method

.method public S(I)LM7/i;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressColor"
        }
    .end annotation

    iput p1, p0, LM7/i;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LM7/i;->r:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/i;->s:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/i;->T(IZ)LM7/i;

    return-object p0
.end method

.method public T(IZ)LM7/i;
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

    iget-object v0, p0, LM7/i;->C:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, LM7/i;->H(IZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public U(LAc/b;)LM7/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/i;->s:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/i;->q:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/i;->r:Z

    invoke-virtual {p0, p1, v0}, LM7/i;->T(IZ)LM7/i;

    :cond_0
    return-object p0
.end method

.method public V(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/i;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/i;->q:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/i;->r:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/i;->s:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/i;->T(IZ)LM7/i;

    :cond_0
    return-object p0
.end method

.method public W(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    new-instance v0, LM7/i$b;

    invoke-direct {v0, p0, p1}, LM7/i$b;-><init>(LM7/i;Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public X(I)LM7/i;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    iput p1, p0, LM7/i;->t:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LM7/i;->u:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/i;->v:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/i;->Y(IZ)LM7/i;

    return-object p0
.end method

.method public Y(IZ)LM7/i;
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

    iget-object v0, p0, LM7/i;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LM7/i;->H(IZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public Z(LAc/b;)LM7/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/i;->v:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/i;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/i;->u:Z

    invoke-virtual {p0, p1, v0}, LM7/i;->Y(IZ)LM7/i;

    :cond_0
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

    iput-object p2, p0, LM7/i;->i:Landroid/content/Context;

    iget v0, p0, LM7/i;->D:I

    if-gez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    iput v0, p0, LM7/i;->D:I

    :cond_0
    const v0, 0x7f0c0095

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v0, p0, LM7/i;->m:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090571

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LM7/i;->z:Landroid/view/View;

    const p1, 0x7f0903c1

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LM7/i;->A:Landroid/view/View;

    const p1, 0x7f090503

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LM7/i;->B:Landroid/widget/TextView;

    iget-object v0, p0, LM7/i;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, LM7/i;->t()V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, LM7/i;->C:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object p1, p0, LM7/i;->C:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object p1, p0, LM7/i;->A:Landroid/view/View;

    iget-object p2, p0, LM7/i;->C:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LM7/i;->z:Landroid/view/View;

    new-instance p2, LM7/i$a;

    invoke-direct {p2, p0}, LM7/i$a;-><init>(LM7/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget p1, p0, LM7/i;->n:I

    iget-boolean p2, p0, LM7/i;->o:Z

    invoke-virtual {p0, p1, p2}, LM7/i;->I(IZ)LM7/i;

    iget p1, p0, LM7/i;->q:I

    iget-boolean p2, p0, LM7/i;->r:Z

    invoke-virtual {p0, p1, p2}, LM7/i;->T(IZ)LM7/i;

    invoke-direct {p0}, LM7/i;->w()V

    invoke-direct {p0}, LM7/i;->u()V

    invoke-virtual {p0}, LM7/i;->v()V

    invoke-virtual {p0, p3}, LM7/g;->m(Landroid/view/View;)V

    return-void
.end method

.method public a0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/i;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/i;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/i;->u:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/i;->v:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/i;->Y(IZ)LM7/i;

    :cond_0
    return-object p0
.end method

.method public b0(F)LM7/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, LM7/i;->l:F

    new-instance p1, LM7/i$c;

    invoke-direct {p1, p0}, LM7/i$c;-><init>(LM7/i;)V

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, LM7/i;->p:LAc/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/i;->n:I

    iput-boolean v1, p0, LM7/i;->o:Z

    :cond_0
    iget-object v0, p0, LM7/i;->s:LAc/b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/i;->q:I

    iput-boolean v1, p0, LM7/i;->r:Z

    :cond_1
    iget-object v0, p0, LM7/i;->v:LAc/b;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/i;->t:I

    iput-boolean v1, p0, LM7/i;->u:Z

    :cond_2
    iget-object v0, p0, LM7/i;->y:LAc/b;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/i;->w:I

    iput-boolean v1, p0, LM7/i;->x:Z

    :cond_3
    iget v0, p0, LM7/i;->n:I

    iget-boolean v1, p0, LM7/i;->o:Z

    invoke-virtual {p0, v0, v1}, LM7/i;->I(IZ)LM7/i;

    iget v0, p0, LM7/i;->q:I

    iget-boolean v1, p0, LM7/i;->r:Z

    invoke-virtual {p0, v0, v1}, LM7/i;->T(IZ)LM7/i;

    invoke-direct {p0}, LM7/i;->w()V

    invoke-direct {p0}, LM7/i;->u()V

    invoke-virtual {p0}, LM7/i;->v()V

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, LM7/i;->z:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LM7/i;->j:LM7/j;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LM7/i;->z:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, LM7/i;->z:Landroid/view/View;

    new-instance v1, LM7/i$d;

    invoke-direct {v1, p0}, LM7/i$d;-><init>(LM7/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final v()V
    .locals 4

    iget-object v0, p0, LM7/i;->z:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, LM7/i;->A:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, LM7/i;->D:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    int-to-float v2, v0

    iget v3, p0, LM7/i;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2, v0}, LNc/b;->F(III)I

    move-result v0

    iget-object v2, p0, LM7/i;->A:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v0, :cond_2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, LM7/i;->A:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v2, p0, LM7/i;->A:Landroid/view/View;

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public y()I
    .locals 1

    iget v0, p0, LM7/i;->n:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, LM7/i;->m:I

    return v0
.end method
