.class public LM7/c;
.super LM7/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LM7/c$b;
    }
.end annotation


# static fields
.field public static final H:I = 0x2


# instance fields
.field public A:LAc/b;

.field public B:I

.field public C:I

.field public D:Landroid/widget/FrameLayout;

.field public E:Z

.field public F:Landroid/widget/ImageView;

.field public G:Z

.field public i:I

.field public j:LM7/d;

.field public k:LM7/c$b;

.field public l:Landroid/content/Context;

.field public m:I

.field public n:Z

.field public o:LAc/b;

.field public p:I

.field public q:Z

.field public r:LAc/b;

.field public s:I

.field public t:Z

.field public u:LAc/b;

.field public v:I

.field public w:Z

.field public x:LAc/b;

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(ILM7/c$b;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "connector",
            "context"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 24
    sget-object v0, LM7/c$b;->Disconnected:LM7/c$b;

    iput-object v0, p0, LM7/c;->k:LM7/c$b;

    .line 25
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/c;->m:I

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, LM7/c;->n:Z

    .line 27
    iput-object v0, p0, LM7/c;->o:LAc/b;

    .line 28
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->p:I

    .line 29
    iput-boolean v1, p0, LM7/c;->q:Z

    .line 30
    iput-object v0, p0, LM7/c;->r:LAc/b;

    .line 31
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->s:I

    .line 32
    iput-boolean v1, p0, LM7/c;->t:Z

    .line 33
    iput-object v0, p0, LM7/c;->u:LAc/b;

    .line 34
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->v:I

    .line 35
    iput-boolean v1, p0, LM7/c;->w:Z

    .line 36
    iput-object v0, p0, LM7/c;->x:LAc/b;

    .line 37
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->y:I

    .line 38
    iput-boolean v1, p0, LM7/c;->z:Z

    .line 39
    iput-object v0, p0, LM7/c;->A:LAc/b;

    .line 40
    iput-boolean v1, p0, LM7/c;->E:Z

    .line 41
    iput p1, p0, LM7/c;->i:I

    .line 42
    iput-object p2, p0, LM7/c;->k:LM7/c$b;

    .line 43
    iput-object p3, p0, LM7/c;->l:Landroid/content/Context;

    .line 44
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/c;->B:I

    .line 45
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/c;->C:I

    return-void
.end method

.method public constructor <init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V
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
            "listener",
            "connector",
            "context"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 70
    sget-object v0, LM7/c$b;->Disconnected:LM7/c$b;

    iput-object v0, p0, LM7/c;->k:LM7/c$b;

    .line 71
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/c;->m:I

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, LM7/c;->n:Z

    .line 73
    iput-object v0, p0, LM7/c;->o:LAc/b;

    .line 74
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->p:I

    .line 75
    iput-boolean v1, p0, LM7/c;->q:Z

    .line 76
    iput-object v0, p0, LM7/c;->r:LAc/b;

    .line 77
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->s:I

    .line 78
    iput-boolean v1, p0, LM7/c;->t:Z

    .line 79
    iput-object v0, p0, LM7/c;->u:LAc/b;

    .line 80
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->v:I

    .line 81
    iput-boolean v1, p0, LM7/c;->w:Z

    .line 82
    iput-object v0, p0, LM7/c;->x:LAc/b;

    .line 83
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->y:I

    .line 84
    iput-boolean v1, p0, LM7/c;->z:Z

    .line 85
    iput-object v0, p0, LM7/c;->A:LAc/b;

    .line 86
    iput-boolean v1, p0, LM7/c;->E:Z

    .line 87
    iput p1, p0, LM7/c;->i:I

    .line 88
    iput-object p2, p0, LM7/c;->j:LM7/d;

    .line 89
    iput-object p3, p0, LM7/c;->k:LM7/c$b;

    .line 90
    iput-object p4, p0, LM7/c;->l:Landroid/content/Context;

    .line 91
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/c;->B:I

    .line 92
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/c;->C:I

    return-void
.end method

.method public constructor <init>(ILM7/d;Landroid/content/Context;)V
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

    .line 46
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 47
    sget-object v0, LM7/c$b;->Disconnected:LM7/c$b;

    iput-object v0, p0, LM7/c;->k:LM7/c$b;

    .line 48
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/c;->m:I

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, LM7/c;->n:Z

    .line 50
    iput-object v0, p0, LM7/c;->o:LAc/b;

    .line 51
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->p:I

    .line 52
    iput-boolean v1, p0, LM7/c;->q:Z

    .line 53
    iput-object v0, p0, LM7/c;->r:LAc/b;

    .line 54
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->s:I

    .line 55
    iput-boolean v1, p0, LM7/c;->t:Z

    .line 56
    iput-object v0, p0, LM7/c;->u:LAc/b;

    .line 57
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->v:I

    .line 58
    iput-boolean v1, p0, LM7/c;->w:Z

    .line 59
    iput-object v0, p0, LM7/c;->x:LAc/b;

    .line 60
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->y:I

    .line 61
    iput-boolean v1, p0, LM7/c;->z:Z

    .line 62
    iput-object v0, p0, LM7/c;->A:LAc/b;

    .line 63
    iput-boolean v1, p0, LM7/c;->E:Z

    .line 64
    iput p1, p0, LM7/c;->i:I

    .line 65
    iput-object p2, p0, LM7/c;->j:LM7/d;

    .line 66
    iput-object p3, p0, LM7/c;->l:Landroid/content/Context;

    .line 67
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/c;->B:I

    .line 68
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/c;->C:I

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
    sget-object v0, LM7/c$b;->Disconnected:LM7/c$b;

    iput-object v0, p0, LM7/c;->k:LM7/c$b;

    .line 3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/c;->m:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, LM7/c;->n:Z

    .line 5
    iput-object v0, p0, LM7/c;->o:LAc/b;

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->p:I

    .line 7
    iput-boolean v1, p0, LM7/c;->q:Z

    .line 8
    iput-object v0, p0, LM7/c;->r:LAc/b;

    .line 9
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->s:I

    .line 10
    iput-boolean v1, p0, LM7/c;->t:Z

    .line 11
    iput-object v0, p0, LM7/c;->u:LAc/b;

    .line 12
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->v:I

    .line 13
    iput-boolean v1, p0, LM7/c;->w:Z

    .line 14
    iput-object v0, p0, LM7/c;->x:LAc/b;

    .line 15
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/c;->y:I

    .line 16
    iput-boolean v1, p0, LM7/c;->z:Z

    .line 17
    iput-object v0, p0, LM7/c;->A:LAc/b;

    .line 18
    iput-boolean v1, p0, LM7/c;->E:Z

    .line 19
    iput p1, p0, LM7/c;->i:I

    .line 20
    iput-object p2, p0, LM7/c;->l:Landroid/content/Context;

    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600ba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/c;->B:I

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/c;->C:I

    return-void
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

    if-eqz p2, :cond_0

    return p1

    :cond_0
    :try_start_0
    iget-object p2, p0, LM7/c;->l:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1
.end method

.method public static synthetic q(LM7/c;)Z
    .locals 0

    iget-boolean p0, p0, LM7/c;->E:Z

    return p0
.end method

.method public static synthetic r(LM7/c;)Z
    .locals 0

    iget-boolean p0, p0, LM7/c;->t:Z

    return p0
.end method

.method public static synthetic s(LM7/c;)Z
    .locals 0

    iget-boolean p0, p0, LM7/c;->z:Z

    return p0
.end method

.method public static synthetic t(LM7/c;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, LM7/c;->x(IZ)V

    return-void
.end method

.method public static synthetic u(LM7/c;)Z
    .locals 0

    iget-boolean p0, p0, LM7/c;->q:Z

    return p0
.end method

.method public static synthetic v(LM7/c;)V
    .locals 0

    invoke-direct {p0}, LM7/c;->w()V

    return-void
.end method

.method private w()V
    .locals 2

    iget v0, p0, LM7/c;->v:I

    iget-boolean v1, p0, LM7/c;->w:Z

    invoke-direct {p0, v0, v1}, LM7/c;->x(IZ)V

    return-void
.end method

.method private x(IZ)V
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

    iget-object v0, p0, LM7/c;->D:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, LM7/c;->K(IZ)I

    move-result p1

    iget-object p2, p0, LM7/c;->D:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, LM7/c;->y(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    if-eqz p2, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-void
.end method

.method private y(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;
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

    invoke-direct {p0, p1}, LM7/c;->y(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

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

    invoke-direct {p0, v2}, LM7/c;->y(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

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
.method public A()I
    .locals 1

    iget v0, p0, LM7/c;->y:I

    return v0
.end method

.method public B()LM7/c$b;
    .locals 1

    iget-object v0, p0, LM7/c;->k:LM7/c$b;

    return-object v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, LM7/c;->p:I

    return v0
.end method

.method public D()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, LM7/c;->F:Landroid/widget/ImageView;

    return-object v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, LM7/c;->C:I

    return v0
.end method

.method public F()LM7/d;
    .locals 1

    iget-object v0, p0, LM7/c;->j:LM7/d;

    return-object v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, LM7/c;->v:I

    return v0
.end method

.method public H()I
    .locals 1

    iget v0, p0, LM7/c;->B:I

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, LM7/c;->G:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, LM7/c;->E:Z

    return v0
.end method

.method public L(I)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedColor"
        }
    .end annotation

    iput p1, p0, LM7/c;->s:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/c;->t:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/c;->u:LAc/b;

    return-object p0
.end method

.method public M(LAc/b;)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/c;->u:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/c;->s:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/c;->t:Z

    :cond_0
    return-object p0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;
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

    iput p1, p0, LM7/c;->s:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/c;->t:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/c;->u:LAc/b;

    return-object p0
.end method

.method public O(I)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedOutlineColor"
        }
    .end annotation

    iput p1, p0, LM7/c;->y:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/c;->z:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/c;->A:LAc/b;

    return-object p0
.end method

.method public P(LAc/b;)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedOutlineColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/c;->A:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/c;->y:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/c;->z:Z

    :cond_0
    return-object p0
.end method

.method public Q(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;
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

    iput p1, p0, LM7/c;->y:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/c;->z:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/c;->A:LAc/b;

    :cond_0
    return-object p0
.end method

.method public R(IZ)LM7/c;
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

    iget-object v0, p0, LM7/c;->D:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, LM7/c;->K(IZ)I

    move-result v0

    iget-object v1, p0, LM7/c;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, LM7/c;->y(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, LM7/c;->D:Landroid/widget/FrameLayout;

    iget-object v0, p0, LM7/c;->l:Landroid/content/Context;

    invoke-static {p2, v0, p1}, LVc/e;->t(Landroid/view/View;Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, LM7/c;->D:Landroid/widget/FrameLayout;

    iget-object v0, p0, LM7/c;->l:Landroid/content/Context;

    invoke-static {p2, v0, p1}, LVc/e;->u(Landroid/view/View;Landroid/content/Context;I)V

    :goto_0
    invoke-direct {p0}, LM7/c;->w()V

    :cond_2
    return-object p0
.end method

.method public S(LM7/c$b;)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connector"
        }
    .end annotation

    iput-object p1, p0, LM7/c;->k:LM7/c$b;

    return-object p0
.end method

.method public T(I)LM7/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColor"
        }
    .end annotation

    iput p1, p0, LM7/c;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LM7/c;->q:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/c;->r:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/c;->R(IZ)LM7/c;

    return-object p0
.end method

.method public U(LAc/b;)LM7/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/c;->r:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/c;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/c;->q:Z

    invoke-virtual {p0, p1, v0}, LM7/c;->R(IZ)LM7/c;

    :cond_0
    return-object p0
.end method

.method public V(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;
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

    iput p1, p0, LM7/c;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/c;->q:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/c;->r:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/c;->R(IZ)LM7/c;

    return-object p0
.end method

.method public W(Z)LM7/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disableTint"
        }
    .end annotation

    iput-boolean p1, p0, LM7/c;->G:Z

    iget p1, p0, LM7/c;->p:I

    iget-boolean v0, p0, LM7/c;->q:Z

    invoke-virtual {p0, p1, v0}, LM7/c;->c0(IZ)LM7/c;

    return-object p0
.end method

.method public X(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableTouchAnimation"
        }
    .end annotation

    iput-boolean p1, p0, LM7/c;->E:Z

    return-void
.end method

.method public Y(I)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iput p1, p0, LM7/c;->C:I

    return-object p0
.end method

.method public Z(I)LM7/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    iput p1, p0, LM7/c;->i:I

    iget-object p1, p0, LM7/c;->F:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, LM7/c;->h0(Landroid/widget/ImageView;)V

    iget p1, p0, LM7/c;->m:I

    iget-boolean v0, p0, LM7/c;->n:Z

    invoke-virtual {p0, p1, v0}, LM7/c;->c0(IZ)LM7/c;

    :cond_0
    return-object p0
.end method

.method public a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 3
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

    iput-object p2, p0, LM7/c;->l:Landroid/content/Context;

    iget-object v0, p0, LM7/c;->k:LM7/c$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0c008e

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v0, 0x7f0c008d

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v0, 0x7f0c0092

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v0, 0x7f0c0091

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_4
    const v0, 0x7f0c0090

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v0, 0x7f0c008f

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p3, p0, LM7/c;->B:I

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget p3, p0, LM7/c;->C:I

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090571

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, LM7/c;->D:Landroid/widget/FrameLayout;

    const p1, 0x7f09025a

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LM7/c;->F:Landroid/widget/ImageView;

    const/high16 p1, 0x40c00000    # 6.0f

    invoke-static {p1}, LNc/b;->k0(F)I

    move-result p1

    iget-object p3, p0, LM7/c;->F:Landroid/widget/ImageView;

    invoke-virtual {p3, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, LM7/c;->F:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, LM7/c;->h0(Landroid/widget/ImageView;)V

    iget p1, p0, LM7/c;->m:I

    iget-boolean p3, p0, LM7/c;->n:Z

    invoke-virtual {p0, p1, p3}, LM7/c;->c0(IZ)LM7/c;

    new-instance p1, LM7/c$a;

    invoke-direct {p1, p0, p2}, LM7/c$a;-><init>(LM7/c;Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, LM7/c;->p:I

    iget-boolean p2, p0, LM7/c;->q:Z

    invoke-virtual {p0, p1, p2}, LM7/c;->R(IZ)LM7/c;

    invoke-virtual {p0, v1}, LM7/g;->m(Landroid/view/View;)V

    iget-object p1, p0, LM7/c;->j:LM7/d;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, LM7/d;->a(LM7/c;)V

    :cond_6
    return-void
.end method

.method public a0(Ljava/io/File;)LM7/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LM7/c;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, LM7/c;->l:Landroid/content/Context;

    invoke-static {v0, p1, v1}, LVc/e;->G(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V

    iget p1, p0, LM7/c;->m:I

    iget-boolean v0, p0, LM7/c;->n:Z

    invoke-virtual {p0, p1, v0}, LM7/c;->c0(IZ)LM7/c;

    :cond_0
    return-object p0
.end method

.method public b0(I)LM7/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColor"
        }
    .end annotation

    iput p1, p0, LM7/c;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LM7/c;->n:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/c;->o:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/c;->c0(IZ)LM7/c;

    return-object p0
.end method

.method public c0(IZ)LM7/c;
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

    iget-object v0, p0, LM7/c;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, LM7/c;->G:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, LM7/c;->l:Landroid/content/Context;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {v0, p2, v1}, LVc/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LM7/c;->l:Landroid/content/Context;

    invoke-static {v0, p2, p1}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, LVc/e;->m(Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public d0(LAc/b;)LM7/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/c;->o:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/c;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/c;->n:Z

    invoke-virtual {p0, p1, v0}, LM7/c;->c0(IZ)LM7/c;

    :cond_0
    return-object p0
.end method

.method public e0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;
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

    iput p1, p0, LM7/c;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/c;->n:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/c;->o:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/c;->c0(IZ)LM7/c;

    return-object p0
.end method

.method public f0(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LM7/c;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LM7/c;->l:Landroid/content/Context;

    invoke-static {v0, p1}, LVc/e;->n(Landroid/widget/ImageView;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    int-to-float p1, p1

    invoke-static {p1}, LNc/b;->k0(F)I

    move-result p1

    iget-object v0, p0, LM7/c;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public h0(Landroid/widget/ImageView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    iget v0, p0, LM7/c;->i:I

    iget-object v1, p0, LM7/c;->l:Landroid/content/Context;

    invoke-static {p1, v0, v1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void
.end method

.method public i0(LM7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, LM7/c;->j:LM7/d;

    return-void
.end method

.method public j0(I)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColor"
        }
    .end annotation

    iput p1, p0, LM7/c;->v:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/c;->w:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/c;->x:LAc/b;

    invoke-direct {p0}, LM7/c;->w()V

    return-object p0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, LM7/c;->r:LAc/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/c;->p:I

    iput-boolean v1, p0, LM7/c;->q:Z

    :cond_0
    iget-object v0, p0, LM7/c;->u:LAc/b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/c;->s:I

    iput-boolean v1, p0, LM7/c;->t:Z

    :cond_1
    iget-object v0, p0, LM7/c;->o:LAc/b;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/c;->m:I

    iput-boolean v1, p0, LM7/c;->n:Z

    :cond_2
    iget-object v0, p0, LM7/c;->x:LAc/b;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/c;->v:I

    iput-boolean v1, p0, LM7/c;->w:Z

    :cond_3
    iget-object v0, p0, LM7/c;->A:LAc/b;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/c;->y:I

    iput-boolean v1, p0, LM7/c;->z:Z

    :cond_4
    iget v0, p0, LM7/c;->p:I

    iget-boolean v1, p0, LM7/c;->q:Z

    invoke-virtual {p0, v0, v1}, LM7/c;->R(IZ)LM7/c;

    iget v0, p0, LM7/c;->m:I

    iget-boolean v1, p0, LM7/c;->n:Z

    invoke-virtual {p0, v0, v1}, LM7/c;->c0(IZ)LM7/c;

    invoke-direct {p0}, LM7/c;->w()V

    return-void
.end method

.method public k0(LAc/b;)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/c;->x:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/c;->v:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/c;->w:Z

    invoke-direct {p0}, LM7/c;->w()V

    :cond_0
    return-object p0
.end method

.method public l0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;
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

    iput p1, p0, LM7/c;->v:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/c;->w:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/c;->x:LAc/b;

    invoke-direct {p0}, LM7/c;->w()V

    :cond_0
    return-object p0
.end method

.method public m0(I)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iput p1, p0, LM7/c;->B:I

    return-object p0
.end method

.method public z()I
    .locals 1

    iget v0, p0, LM7/c;->s:I

    return v0
.end method
