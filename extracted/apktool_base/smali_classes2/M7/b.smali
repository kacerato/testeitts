.class public LM7/b;
.super LM7/g;
.source "SourceFile"


# static fields
.field public static final J:I = 0x2


# instance fields
.field public A:Landroid/widget/FrameLayout;

.field public B:I

.field public C:Z

.field public D:LAc/b;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/ImageView;

.field public G:Ljava/lang/String;

.field public H:Z

.field public I:Z

.field public i:LM7/a;

.field public j:LM7/c$b;

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

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:LAc/b;


# direct methods
.method public constructor <init>(ILM7/a;LM7/c$b;Landroid/content/Context;)V
    .locals 4
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

    .line 72
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 73
    sget-object v0, LM7/c$b;->Disconnected:LM7/c$b;

    iput-object v0, p0, LM7/b;->j:LM7/c$b;

    .line 74
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/b;->l:I

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, LM7/b;->m:Z

    .line 76
    iput-object v0, p0, LM7/b;->n:LAc/b;

    .line 77
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/b;->o:I

    .line 78
    iput-boolean v1, p0, LM7/b;->p:Z

    .line 79
    iput-object v0, p0, LM7/b;->q:LAc/b;

    .line 80
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/b;->r:I

    .line 81
    iput-boolean v1, p0, LM7/b;->s:Z

    .line 82
    iput-object v2, p0, LM7/b;->t:LAc/b;

    .line 83
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/b;->x:I

    .line 84
    iput-boolean v1, p0, LM7/b;->y:Z

    .line 85
    iput-object v2, p0, LM7/b;->z:LAc/b;

    .line 86
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/b;->B:I

    .line 87
    iput-boolean v1, p0, LM7/b;->C:Z

    .line 88
    iput-object v0, p0, LM7/b;->D:LAc/b;

    .line 89
    const-string v0, ""

    iput-object v0, p0, LM7/b;->G:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, LM7/b;->H:Z

    .line 91
    iput p1, p0, LM7/b;->w:I

    .line 92
    iput-object p2, p0, LM7/b;->i:LM7/a;

    .line 93
    iput-object p3, p0, LM7/b;->j:LM7/c$b;

    .line 94
    iput-object p4, p0, LM7/b;->k:Landroid/content/Context;

    .line 95
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/b;->u:I

    .line 96
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/b;->v:I

    return-void
.end method

.method public constructor <init>(ILM7/a;Landroid/content/Context;)V
    .locals 4
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

    .line 48
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 49
    sget-object v0, LM7/c$b;->Disconnected:LM7/c$b;

    iput-object v0, p0, LM7/b;->j:LM7/c$b;

    .line 50
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/b;->l:I

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, LM7/b;->m:Z

    .line 52
    iput-object v0, p0, LM7/b;->n:LAc/b;

    .line 53
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/b;->o:I

    .line 54
    iput-boolean v1, p0, LM7/b;->p:Z

    .line 55
    iput-object v0, p0, LM7/b;->q:LAc/b;

    .line 56
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/b;->r:I

    .line 57
    iput-boolean v1, p0, LM7/b;->s:Z

    .line 58
    iput-object v2, p0, LM7/b;->t:LAc/b;

    .line 59
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/b;->x:I

    .line 60
    iput-boolean v1, p0, LM7/b;->y:Z

    .line 61
    iput-object v2, p0, LM7/b;->z:LAc/b;

    .line 62
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/b;->B:I

    .line 63
    iput-boolean v1, p0, LM7/b;->C:Z

    .line 64
    iput-object v0, p0, LM7/b;->D:LAc/b;

    .line 65
    const-string v0, ""

    iput-object v0, p0, LM7/b;->G:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, LM7/b;->H:Z

    .line 67
    iput p1, p0, LM7/b;->w:I

    .line 68
    iput-object p2, p0, LM7/b;->i:LM7/a;

    .line 69
    iput-object p3, p0, LM7/b;->k:Landroid/content/Context;

    .line 70
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/b;->u:I

    .line 71
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/b;->v:I

    return-void
.end method

.method public constructor <init>(ILM7/c$b;Landroid/content/Context;)V
    .locals 4
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

    .line 24
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 25
    sget-object v0, LM7/c$b;->Disconnected:LM7/c$b;

    iput-object v0, p0, LM7/b;->j:LM7/c$b;

    .line 26
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/b;->l:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, LM7/b;->m:Z

    .line 28
    iput-object v0, p0, LM7/b;->n:LAc/b;

    .line 29
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/b;->o:I

    .line 30
    iput-boolean v1, p0, LM7/b;->p:Z

    .line 31
    iput-object v0, p0, LM7/b;->q:LAc/b;

    .line 32
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/b;->r:I

    .line 33
    iput-boolean v1, p0, LM7/b;->s:Z

    .line 34
    iput-object v2, p0, LM7/b;->t:LAc/b;

    .line 35
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/b;->x:I

    .line 36
    iput-boolean v1, p0, LM7/b;->y:Z

    .line 37
    iput-object v2, p0, LM7/b;->z:LAc/b;

    .line 38
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/b;->B:I

    .line 39
    iput-boolean v1, p0, LM7/b;->C:Z

    .line 40
    iput-object v0, p0, LM7/b;->D:LAc/b;

    .line 41
    const-string v0, ""

    iput-object v0, p0, LM7/b;->G:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, LM7/b;->H:Z

    .line 43
    iput p1, p0, LM7/b;->w:I

    .line 44
    iput-object p2, p0, LM7/b;->j:LM7/c$b;

    .line 45
    iput-object p3, p0, LM7/b;->k:Landroid/content/Context;

    .line 46
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/b;->u:I

    .line 47
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/b;->v:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 4
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

    iput-object v0, p0, LM7/b;->j:LM7/c$b;

    .line 3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/b;->l:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, LM7/b;->m:Z

    .line 5
    iput-object v0, p0, LM7/b;->n:LAc/b;

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/b;->o:I

    .line 7
    iput-boolean v1, p0, LM7/b;->p:Z

    .line 8
    iput-object v0, p0, LM7/b;->q:LAc/b;

    .line 9
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/b;->r:I

    .line 10
    iput-boolean v1, p0, LM7/b;->s:Z

    .line 11
    iput-object v2, p0, LM7/b;->t:LAc/b;

    .line 12
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/b;->x:I

    .line 13
    iput-boolean v1, p0, LM7/b;->y:Z

    .line 14
    iput-object v2, p0, LM7/b;->z:LAc/b;

    .line 15
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/b;->B:I

    .line 16
    iput-boolean v1, p0, LM7/b;->C:Z

    .line 17
    iput-object v0, p0, LM7/b;->D:LAc/b;

    .line 18
    const-string v0, ""

    iput-object v0, p0, LM7/b;->G:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, LM7/b;->H:Z

    .line 20
    iput p1, p0, LM7/b;->w:I

    .line 21
    iput-object p2, p0, LM7/b;->k:Landroid/content/Context;

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600ba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/b;->u:I

    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LM7/b;->v:I

    return-void
.end method

.method public static synthetic q(LM7/b;)Z
    .locals 0

    iget-boolean p0, p0, LM7/b;->H:Z

    return p0
.end method

.method public static synthetic r(LM7/b;)Z
    .locals 0

    iget-boolean p0, p0, LM7/b;->p:Z

    return p0
.end method

.method public static synthetic s(LM7/b;)Z
    .locals 0

    iget-boolean p0, p0, LM7/b;->m:Z

    return p0
.end method


# virtual methods
.method public A()LM7/a;
    .locals 1

    iget-object v0, p0, LM7/b;->i:LM7/a;

    return-object v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, LM7/b;->r:I

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LM7/b;->G:Ljava/lang/String;

    return-object v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, LM7/b;->B:I

    return v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, LM7/b;->u:I

    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, LM7/b;->H:Z

    return v0
.end method

.method public final G(IZ)I
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

    iget-object p2, p0, LM7/b;->k:Landroid/content/Context;

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

.method public H(I)LM7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedColor"
        }
    .end annotation

    iput p1, p0, LM7/b;->o:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/b;->p:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/b;->q:LAc/b;

    return-object p0
.end method

.method public I(LAc/b;)LM7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/b;->q:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/b;->o:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/b;->p:Z

    :cond_0
    return-object p0
.end method

.method public J(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/b;->o:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/b;->p:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/b;->q:LAc/b;

    :cond_0
    return-object p0
.end method

.method public K(I)LM7/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LM7/b;->L(IZ)LM7/b;

    move-result-object p1

    return-object p1
.end method

.method public L(IZ)LM7/b;
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

    iget-object v0, p0, LM7/b;->A:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, LM7/b;->G(IZ)I

    move-result v0

    iget-object v1, p0, LM7/b;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, LM7/b;->v(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, LM7/b;->A:Landroid/widget/FrameLayout;

    iget-object v0, p0, LM7/b;->k:Landroid/content/Context;

    invoke-static {p2, v0, p1}, LVc/e;->t(Landroid/view/View;Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, LM7/b;->A:Landroid/widget/FrameLayout;

    iget-object v0, p0, LM7/b;->k:Landroid/content/Context;

    invoke-static {p2, v0, p1}, LVc/e;->u(Landroid/view/View;Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0}, LM7/b;->t()V

    :cond_2
    return-object p0
.end method

.method public M(LAc/b;)LM7/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LM7/b;->L(IZ)LM7/b;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LM7/b;->L(IZ)LM7/b;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public O(LM7/c$b;)LM7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connector"
        }
    .end annotation

    iput-object p1, p0, LM7/b;->j:LM7/c$b;

    return-object p0
.end method

.method public P(I)LM7/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColor"
        }
    .end annotation

    iput p1, p0, LM7/b;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LM7/b;->m:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/b;->n:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/b;->L(IZ)LM7/b;

    return-object p0
.end method

.method public Q(LAc/b;)LM7/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/b;->n:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/b;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/b;->m:Z

    invoke-virtual {p0, p1, v0}, LM7/b;->L(IZ)LM7/b;

    :cond_0
    return-object p0
.end method

.method public R(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/b;
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

    iput p1, p0, LM7/b;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/b;->m:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/b;->n:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/b;->L(IZ)LM7/b;

    :cond_0
    return-object p0
.end method

.method public S(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableTouchAnimation"
        }
    .end annotation

    iput-boolean p1, p0, LM7/b;->H:Z

    return-void
.end method

.method public T(I)LM7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iput p1, p0, LM7/b;->v:I

    return-object p0
.end method

.method public U(I)LM7/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput p1, p0, LM7/b;->x:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LM7/b;->y:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/b;->z:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/b;->V(IZ)LM7/b;

    return-object p0
.end method

.method public V(IZ)LM7/b;
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

    iget-object v0, p0, LM7/b;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, LM7/b;->I:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, LM7/b;->k:Landroid/content/Context;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {v0, p2, v1}, LVc/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LM7/b;->k:Landroid/content/Context;

    invoke-static {v0, p2, p1}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, LVc/e;->m(Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public W(LAc/b;)LM7/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/b;->z:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/b;->x:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/b;->y:Z

    invoke-virtual {p0, p1, v0}, LM7/b;->V(IZ)LM7/b;

    :cond_0
    return-object p0
.end method

.method public X(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/b;->x:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM7/b;->y:Z

    const/4 v1, 0x0

    iput-object v1, p0, LM7/b;->z:LAc/b;

    invoke-virtual {p0, p1, v0}, LM7/b;->V(IZ)LM7/b;

    :cond_0
    return-object p0
.end method

.method public Y(LM7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, LM7/b;->i:LM7/a;

    return-void
.end method

.method public Z(I)LM7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColor"
        }
    .end annotation

    iput p1, p0, LM7/b;->r:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/b;->s:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/b;->t:LAc/b;

    invoke-virtual {p0}, LM7/b;->t()V

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

    iput-object p2, p0, LM7/b;->k:Landroid/content/Context;

    sget-object v0, LM7/b$b;->a:[I

    iget-object v1, p0, LM7/b;->j:LM7/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0c0097

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c0096

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c009b

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0c009a

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0c0099

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0c0098

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p3, p0, LM7/b;->u:I

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget p3, p0, LM7/b;->v:I

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090571

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, LM7/b;->A:Landroid/widget/FrameLayout;

    const p1, 0x7f0904f9

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LM7/b;->E:Landroid/widget/TextView;

    iget-object p3, p0, LM7/b;->G:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, LM7/b;->u()V

    const p1, 0x7f09025a

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LM7/b;->F:Landroid/widget/ImageView;

    iget p3, p0, LM7/b;->w:I

    invoke-static {p1, p3, p2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget p1, p0, LM7/b;->x:I

    iget-boolean p3, p0, LM7/b;->y:Z

    invoke-virtual {p0, p1, p3}, LM7/b;->V(IZ)LM7/b;

    new-instance p1, LM7/b$a;

    invoke-direct {p1, p0, p2}, LM7/b$a;-><init>(LM7/b;Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, LM7/b;->l:I

    iget-boolean p2, p0, LM7/b;->m:Z

    invoke-virtual {p0, p1, p2}, LM7/b;->L(IZ)LM7/b;

    invoke-virtual {p0, v1}, LM7/g;->m(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a0(LAc/b;)LM7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/b;->t:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/b;->r:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/b;->s:Z

    invoke-virtual {p0}, LM7/b;->t()V

    :cond_0
    return-object p0
.end method

.method public b0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/b;
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

    iput p1, p0, LM7/b;->r:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/b;->s:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/b;->t:LAc/b;

    invoke-virtual {p0}, LM7/b;->t()V

    :cond_0
    return-object p0
.end method

.method public c0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, LM7/b;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object p1, p0, LM7/b;->G:Ljava/lang/String;

    return-void
.end method

.method public d0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    iput p1, p0, LM7/b;->B:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/b;->C:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/b;->D:LAc/b;

    invoke-virtual {p0}, LM7/b;->u()V

    return-void
.end method

.method public e0(LAc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/b;->D:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/b;->B:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/b;->C:Z

    invoke-virtual {p0}, LM7/b;->u()V

    :cond_0
    return-void
.end method

.method public f0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
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

    iput p1, p0, LM7/b;->B:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/b;->C:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/b;->D:LAc/b;

    invoke-virtual {p0}, LM7/b;->u()V

    :cond_0
    return-void
.end method

.method public g0(I)LM7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iput p1, p0, LM7/b;->u:I

    return-object p0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, LM7/b;->n:LAc/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/b;->l:I

    iput-boolean v1, p0, LM7/b;->m:Z

    :cond_0
    iget-object v0, p0, LM7/b;->q:LAc/b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/b;->o:I

    iput-boolean v1, p0, LM7/b;->p:Z

    :cond_1
    iget-object v0, p0, LM7/b;->z:LAc/b;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/b;->x:I

    iput-boolean v1, p0, LM7/b;->y:Z

    :cond_2
    iget-object v0, p0, LM7/b;->D:LAc/b;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/b;->B:I

    iput-boolean v1, p0, LM7/b;->C:Z

    :cond_3
    iget-object v0, p0, LM7/b;->t:LAc/b;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/b;->r:I

    iput-boolean v1, p0, LM7/b;->s:Z

    :cond_4
    iget v0, p0, LM7/b;->l:I

    iget-boolean v1, p0, LM7/b;->m:Z

    invoke-virtual {p0, v0, v1}, LM7/b;->L(IZ)LM7/b;

    iget v0, p0, LM7/b;->x:I

    iget-boolean v1, p0, LM7/b;->y:Z

    invoke-virtual {p0, v0, v1}, LM7/b;->V(IZ)LM7/b;

    invoke-virtual {p0}, LM7/b;->u()V

    invoke-virtual {p0}, LM7/b;->t()V

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, LM7/b;->A:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LM7/b;->r:I

    iget-boolean v1, p0, LM7/b;->s:Z

    invoke-virtual {p0, v0, v1}, LM7/b;->G(IZ)I

    move-result v0

    iget-object v1, p0, LM7/b;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, LM7/b;->v(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-void
.end method

.method public final u()V
    .locals 3

    iget-object v0, p0, LM7/b;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LM7/b;->C:Z

    if-eqz v1, :cond_0

    iget v1, p0, LM7/b;->B:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, LM7/b;->B:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LM7/b;->G(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final v(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;
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

    invoke-virtual {p0, p1}, LM7/b;->v(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

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

    invoke-virtual {p0, v2}, LM7/b;->v(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, LM7/b;->o:I

    return v0
.end method

.method public x()LM7/c$b;
    .locals 1

    iget-object v0, p0, LM7/b;->j:LM7/c$b;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, LM7/b;->l:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, LM7/b;->v:I

    return v0
.end method
