.class public LG7/d;
.super LG7/a;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:LG7/g;

.field public h:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(IIIIILG7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offImage",
            "onImage",
            "offColor",
            "onColor",
            "padding",
            "toggleListener"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, LG7/a;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, LG7/d;->a:Z

    const v0, 0x7f070115

    .line 66
    iput v0, p0, LG7/d;->b:I

    .line 67
    iput v0, p0, LG7/d;->c:I

    .line 68
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->d:I

    .line 69
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    .line 70
    iput p1, p0, LG7/d;->b:I

    .line 71
    iput p2, p0, LG7/d;->c:I

    .line 72
    iput p3, p0, LG7/d;->d:I

    .line 73
    iput p4, p0, LG7/d;->e:I

    .line 74
    iput p5, p0, LG7/d;->f:I

    .line 75
    iput-object p6, p0, LG7/d;->g:LG7/g;

    return-void
.end method

.method public constructor <init>(IIIILG7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offImage",
            "onImage",
            "offColor",
            "onColor",
            "toggleListener"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, LG7/a;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, LG7/d;->a:Z

    const v0, 0x7f070115

    .line 41
    iput v0, p0, LG7/d;->b:I

    .line 42
    iput v0, p0, LG7/d;->c:I

    .line 43
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->d:I

    .line 44
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    const/4 v0, 0x2

    .line 45
    iput v0, p0, LG7/d;->f:I

    .line 46
    iput p1, p0, LG7/d;->b:I

    .line 47
    iput p2, p0, LG7/d;->c:I

    .line 48
    iput p3, p0, LG7/d;->d:I

    .line 49
    iput p4, p0, LG7/d;->e:I

    .line 50
    iput-object p5, p0, LG7/d;->g:LG7/g;

    return-void
.end method

.method public constructor <init>(IILG7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "offImage",
            "onImage",
            "toggleListener"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, LG7/a;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, LG7/d;->a:Z

    const v0, 0x7f070115

    .line 20
    iput v0, p0, LG7/d;->b:I

    .line 21
    iput v0, p0, LG7/d;->c:I

    .line 22
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->d:I

    .line 23
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->e:I

    const/4 v0, 0x2

    .line 24
    iput v0, p0, LG7/d;->f:I

    .line 25
    iput p1, p0, LG7/d;->b:I

    .line 26
    iput p2, p0, LG7/d;->c:I

    .line 27
    iput-object p3, p0, LG7/d;->g:LG7/g;

    return-void
.end method

.method public constructor <init>(LG7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toggleListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LG7/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LG7/d;->a:Z

    const v0, 0x7f070115

    .line 3
    iput v0, p0, LG7/d;->b:I

    .line 4
    iput v0, p0, LG7/d;->c:I

    .line 5
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->d:I

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->e:I

    const/4 v0, 0x2

    .line 7
    iput v0, p0, LG7/d;->f:I

    .line 8
    iput-object p1, p0, LG7/d;->g:LG7/g;

    return-void
.end method

.method public constructor <init>(ZIIIIILG7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enabled",
            "offImage",
            "onImage",
            "offColor",
            "onColor",
            "padding",
            "toggleListener"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, LG7/a;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, LG7/d;->a:Z

    const v0, 0x7f070115

    .line 78
    iput v0, p0, LG7/d;->b:I

    .line 79
    iput v0, p0, LG7/d;->c:I

    .line 80
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->d:I

    .line 81
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    .line 82
    iput-boolean p1, p0, LG7/d;->a:Z

    .line 83
    iput p2, p0, LG7/d;->b:I

    .line 84
    iput p3, p0, LG7/d;->c:I

    .line 85
    iput p4, p0, LG7/d;->d:I

    .line 86
    iput p5, p0, LG7/d;->e:I

    .line 87
    iput p6, p0, LG7/d;->f:I

    .line 88
    iput-object p7, p0, LG7/d;->g:LG7/g;

    return-void
.end method

.method public constructor <init>(ZIIIILG7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enabled",
            "offImage",
            "onImage",
            "offColor",
            "onColor",
            "toggleListener"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, LG7/a;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, LG7/d;->a:Z

    const v0, 0x7f070115

    .line 53
    iput v0, p0, LG7/d;->b:I

    .line 54
    iput v0, p0, LG7/d;->c:I

    .line 55
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->d:I

    .line 56
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    const/4 v0, 0x2

    .line 57
    iput v0, p0, LG7/d;->f:I

    .line 58
    iput-boolean p1, p0, LG7/d;->a:Z

    .line 59
    iput p2, p0, LG7/d;->b:I

    .line 60
    iput p3, p0, LG7/d;->c:I

    .line 61
    iput p4, p0, LG7/d;->d:I

    .line 62
    iput p5, p0, LG7/d;->e:I

    .line 63
    iput-object p6, p0, LG7/d;->g:LG7/g;

    return-void
.end method

.method public constructor <init>(ZIILG7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enabled",
            "offImage",
            "onImage",
            "toggleListener"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, LG7/a;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, LG7/d;->a:Z

    const v0, 0x7f070115

    .line 30
    iput v0, p0, LG7/d;->b:I

    .line 31
    iput v0, p0, LG7/d;->c:I

    .line 32
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->d:I

    .line 33
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->e:I

    const/4 v0, 0x2

    .line 34
    iput v0, p0, LG7/d;->f:I

    .line 35
    iput-boolean p1, p0, LG7/d;->a:Z

    .line 36
    iput p2, p0, LG7/d;->b:I

    .line 37
    iput p3, p0, LG7/d;->c:I

    .line 38
    iput-object p4, p0, LG7/d;->g:LG7/g;

    return-void
.end method

.method public constructor <init>(ZLG7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "toggleListener"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, LG7/a;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, LG7/d;->a:Z

    const v0, 0x7f070115

    .line 11
    iput v0, p0, LG7/d;->b:I

    .line 12
    iput v0, p0, LG7/d;->c:I

    .line 13
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->d:I

    .line 14
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/d;->e:I

    const/4 v0, 0x2

    .line 15
    iput v0, p0, LG7/d;->f:I

    .line 16
    iput-boolean p1, p0, LG7/d;->a:Z

    .line 17
    iput-object p2, p0, LG7/d;->g:LG7/g;

    return-void
.end method

.method public static synthetic b(LG7/d;)Z
    .locals 0

    iget-boolean p0, p0, LG7/d;->a:Z

    return p0
.end method

.method public static synthetic c(LG7/d;Z)Z
    .locals 0

    iput-boolean p1, p0, LG7/d;->a:Z

    return p1
.end method

.method public static synthetic d(LG7/d;)LG7/g;
    .locals 0

    iget-object p0, p0, LG7/d;->g:LG7/g;

    return-object p0
.end method

.method public static synthetic e(LG7/d;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, LG7/d;->t(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutInflater",
            "context",
            "parent",
            "height"
        }
    .end annotation

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LG7/d;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget p3, p0, LG7/d;->f:I

    int-to-float p3, p3

    invoke-static {p3}, LNc/b;->k0(F)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, LG7/d;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr p4, p3

    sub-int/2addr p4, p3

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p3, p0, LG7/d;->h:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, LG7/d;->g:LG7/g;

    invoke-interface {p3}, LG7/g;->isChecked()Z

    move-result p3

    iput-boolean p3, p0, LG7/d;->a:Z

    invoke-virtual {p0, p2}, LG7/d;->t(Landroid/content/Context;)V

    new-instance p3, LG7/d$a;

    invoke-direct {p3, p0, p2}, LG7/d$a;-><init>(LG7/d;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, LG7/d;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LG7/d;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LG7/d;->e:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LG7/d;->c:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, LG7/d;->f:I

    return v0
.end method

.method public k()LG7/g;
    .locals 1

    iget-object v0, p0, LG7/d;->g:LG7/g;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, LG7/d;->a:Z

    return v0
.end method

.method public m(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iput-boolean p1, p0, LG7/d;->a:Z

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, LG7/d;->t(Landroid/content/Context;)V

    return-void
.end method

.method public n(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offColor"
        }
    .end annotation

    iput p1, p0, LG7/d;->d:I

    return-void
.end method

.method public o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offImage"
        }
    .end annotation

    iput p1, p0, LG7/d;->b:I

    return-void
.end method

.method public p(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onColor"
        }
    .end annotation

    iput p1, p0, LG7/d;->e:I

    return-void
.end method

.method public q(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onImage"
        }
    .end annotation

    iput p1, p0, LG7/d;->c:I

    return-void
.end method

.method public r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    iput p1, p0, LG7/d;->f:I

    return-void
.end method

.method public s(LG7/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toggleListener"
        }
    .end annotation

    iput-object p1, p0, LG7/d;->g:LG7/g;

    return-void
.end method

.method public final t(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object v0, p0, LG7/d;->h:Landroid/widget/ImageView;

    iget-boolean v1, p0, LG7/d;->a:Z

    if-eqz v1, :cond_0

    iget v1, p0, LG7/d;->c:I

    goto :goto_0

    :cond_0
    iget v1, p0, LG7/d;->b:I

    :goto_0
    invoke-static {v0, v1, p1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object v0, p0, LG7/d;->h:Landroid/widget/ImageView;

    iget-boolean v1, p0, LG7/d;->a:Z

    if-eqz v1, :cond_1

    iget v1, p0, LG7/d;->e:I

    goto :goto_1

    :cond_1
    iget v1, p0, LG7/d;->d:I

    :goto_1
    invoke-static {v0, p1, v1}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    return-void
.end method
