.class public LJ7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJ7/a$c;,
        LJ7/a$d;,
        LJ7/a$e;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/content/Context;

.field public final c:Landroid/view/LayoutInflater;

.field public d:LJ7/a$c;

.field public e:Z

.field public f:I

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LJ7/a$e;",
            ">;"
        }
    .end annotation
.end field

.field public h:LJ7/a$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;LJ7/a$c;LJ7/a$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "listener",
            "sizeStars"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LJ7/a;->e:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LJ7/a;->g:Ljava/util/List;

    iput-object p1, p0, LJ7/a;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, LJ7/a;->c:Landroid/view/LayoutInflater;

    iput-object p2, p0, LJ7/a;->d:LJ7/a$c;

    const/16 p1, 0xa

    iput p1, p0, LJ7/a;->a:I

    iput-object p3, p0, LJ7/a;->h:LJ7/a$d;

    return-void
.end method

.method public static synthetic a(LJ7/a;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LJ7/a;->h(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public static synthetic b(LJ7/a;I)I
    .locals 0

    iput p1, p0, LJ7/a;->f:I

    return p1
.end method

.method public static synthetic c(LJ7/a;)V
    .locals 0

    invoke-virtual {p0}, LJ7/a;->l()V

    return-void
.end method

.method public static synthetic d(LJ7/a;)LJ7/a$c;
    .locals 0

    iget-object p0, p0, LJ7/a;->d:LJ7/a$c;

    return-object p0
.end method


# virtual methods
.method public e(ILandroid/widget/LinearLayout;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentSelectedStar",
            "content"
        }
    .end annotation

    iput p1, p0, LJ7/a;->f:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, LJ7/a;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x1

    move v0, p1

    :goto_0
    iget v1, p0, LJ7/a;->a:I

    if-gt v0, v1, :cond_3

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, LJ7/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, LJ7/a;->h:LJ7/a$d;

    iget-object v2, v2, LJ7/a$d;->a:LJ7/a$d$c;

    invoke-virtual {v2}, LJ7/a$d$a;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    iget-object v3, p0, LJ7/a;->h:LJ7/a$d;

    iget-object v3, v3, LJ7/a$d;->a:LJ7/a$d$c;

    invoke-virtual {v3}, LJ7/a$d$a;->a()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    rem-int/lit8 v2, v0, 0x2

    if-ne v2, p1, :cond_0

    const v2, 0x7f070226

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_0
    const v2, 0x7f070227

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v2, p0, LJ7/a;->a:I

    sub-int/2addr v2, p1

    if-eq v0, v2, :cond_1

    new-instance v2, Landroid/widget/Space;

    iget-object v3, p0, LJ7/a;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, LJ7/a;->h:LJ7/a$d;

    iget-object v3, v3, LJ7/a$d;->b:LJ7/a$d$b;

    invoke-virtual {v3}, LJ7/a$d$a;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    iget-object v4, p0, LJ7/a;->h:LJ7/a$d;

    iget-object v4, v4, LJ7/a$d;->b:LJ7/a$d$b;

    invoke-virtual {v4}, LJ7/a$d$a;->a()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v4

    invoke-virtual {p2, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v0}, LJ7/a;->h(Landroid/widget/ImageView;I)V

    iget-object v2, p0, LJ7/a;->g:Ljava/util/List;

    new-instance v3, LJ7/a$a;

    invoke-direct {v3, p0, v1, v0}, LJ7/a$a;-><init>(LJ7/a;Landroid/widget/ImageView;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, LJ7/a;->e:Z

    if-eqz v2, :cond_2

    new-instance v2, LJ7/a$b;

    invoke-direct {v2, p0, v0}, LJ7/a$b;-><init>(LJ7/a;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, LJ7/a;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, LJ7/a;->e:Z

    return v0
.end method

.method public final h(Landroid/widget/ImageView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "starIndex"
        }
    .end annotation

    iget v0, p0, LJ7/a;->f:I

    if-gt p2, v0, :cond_0

    iget-object p2, p0, LJ7/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {p1, p2, v0}, LVc/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LJ7/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {p1, p2, v0}, LVc/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_0
    return-void
.end method

.method public i(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowClick"
        }
    .end annotation

    iput-boolean p1, p0, LJ7/a;->e:Z

    return-void
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iput p1, p0, LJ7/a;->f:I

    invoke-virtual {p0}, LJ7/a;->l()V

    return-void
.end method

.method public k(LJ7/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, LJ7/a;->d:LJ7/a$c;

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, LJ7/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ7/a$e;

    invoke-interface {v1}, LJ7/a$e;->update()V

    goto :goto_0

    :cond_0
    return-void
.end method
