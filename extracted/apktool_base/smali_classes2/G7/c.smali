.class public LG7/c;
.super LG7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LG7/c$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:LG7/c$b;

.field public e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(IILG7/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "color",
            "listener"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, LG7/a;-><init>()V

    const v0, 0x7f070115

    .line 13
    iput v0, p0, LG7/c;->a:I

    .line 14
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    const/4 v0, 0x2

    .line 15
    iput v0, p0, LG7/c;->c:I

    .line 16
    iput p1, p0, LG7/c;->a:I

    .line 17
    iput p2, p0, LG7/c;->b:I

    .line 18
    iput-object p3, p0, LG7/c;->d:LG7/c$b;

    return-void
.end method

.method public constructor <init>(ILG7/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "icon",
            "listener"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, LG7/a;-><init>()V

    const v0, 0x7f070115

    .line 7
    iput v0, p0, LG7/c;->a:I

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/c;->b:I

    const/4 v0, 0x2

    .line 9
    iput v0, p0, LG7/c;->c:I

    .line 10
    iput p1, p0, LG7/c;->a:I

    .line 11
    iput-object p2, p0, LG7/c;->d:LG7/c$b;

    return-void
.end method

.method public constructor <init>(LG7/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LG7/a;-><init>()V

    const v0, 0x7f070115

    .line 2
    iput v0, p0, LG7/c;->a:I

    .line 3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LG7/c;->b:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, LG7/c;->c:I

    .line 5
    iput-object p1, p0, LG7/c;->d:LG7/c$b;

    return-void
.end method

.method public static synthetic b(LG7/c;)LG7/c$b;
    .locals 0

    iget-object p0, p0, LG7/c;->d:LG7/c$b;

    return-object p0
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

    iput-object v0, p0, LG7/c;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget p2, p0, LG7/c;->c:I

    int-to-float p2, p2

    invoke-static {p2}, LNc/b;->k0(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, LG7/c;->e:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr p4, p2

    sub-int/2addr p4, p2

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, LG7/c;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, LG7/c;->k()V

    new-instance p2, LG7/c$a;

    invoke-direct {p2, p0}, LG7/c$a;-><init>(LG7/c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, LG7/c;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LG7/c;->a:I

    return v0
.end method

.method public e()LG7/c$b;
    .locals 1

    iget-object v0, p0, LG7/c;->d:LG7/c$b;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LG7/c;->c:I

    return v0
.end method

.method public g(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput p1, p0, LG7/c;->b:I

    invoke-virtual {p0}, LG7/c;->k()V

    return-void
.end method

.method public h(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    iput p1, p0, LG7/c;->a:I

    invoke-virtual {p0}, LG7/c;->k()V

    return-void
.end method

.method public i(LG7/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, LG7/c;->d:LG7/c$b;

    return-void
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    iput p1, p0, LG7/c;->c:I

    return-void
.end method

.method public final k()V
    .locals 3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LG7/c;->e:Landroid/widget/ImageView;

    iget v2, p0, LG7/c;->a:I

    invoke-static {v1, v2, v0}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object v1, p0, LG7/c;->e:Landroid/widget/ImageView;

    iget v2, p0, LG7/c;->b:I

    invoke-static {v1, v0, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    return-void
.end method
