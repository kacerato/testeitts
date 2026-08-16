.class public Lz7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/app/Activity;

.field public c:Lz7/a;

.field public d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public e:F

.field public f:I

.field public g:Z

.field public h:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(ILandroid/app/Activity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "activity"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x74

    const/16 v2, 0x6a

    const/16 v3, 0x14

    const/16 v4, 0x27

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    iput-object v0, p0, Lz7/b;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lz7/b;->e:F

    const/16 v0, 0x11

    iput v0, p0, Lz7/b;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz7/b;->g:Z

    iput p1, p0, Lz7/b;->a:I

    iput-object p2, p0, Lz7/b;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;LP8/p;)LC5/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "cls",
            "instance",
            "editor",
            "listener"
        }
    .end annotation

    new-instance p1, LC5/a;

    const-string v0, "Extract method"

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p4}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    const p4, 0x7f05009d

    iput p4, p1, LC5/a;->p:I

    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    iput-object p4, p1, LC5/a;->o:Ljava/util/List;

    iget-object v0, p0, Lz7/b;->b:Landroid/app/Activity;

    invoke-static {p2, p3, v0, v1, p5}, LP8/f;->B(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;ZLP8/p;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lz7/b;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lz7/b;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public final e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lz7/b;->f:I

    return v0
.end method

.method public g()Lz7/a;
    .locals 1

    iget-object v0, p0, Lz7/b;->c:Lz7/a;

    return-object v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lz7/b;->e:F

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lz7/b;->g:Z

    return v0
.end method

.method public j(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    iput-object p1, p0, Lz7/b;->b:Landroid/app/Activity;

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundTint"
        }
    .end annotation

    iput-object p1, p0, Lz7/b;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public l(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cancelOnBackButton"
        }
    .end annotation

    iput-boolean p1, p0, Lz7/b;->g:Z

    return-void
.end method

.method public m(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravity"
        }
    .end annotation

    iput p1, p0, Lz7/b;->f:I

    return-void
.end method

.method public n(Lz7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lz7/b;->c:Lz7/a;

    return-void
.end method

.method public o(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleRatio"
        }
    .end annotation

    iput p1, p0, Lz7/b;->e:F

    return-void
.end method

.method public p()V
    .locals 6

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lz7/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lz7/b;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lz7/b;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lz7/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lz7/b;->e:F

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget v1, p0, Lz7/b;->f:I

    const/16 v2, 0x11

    const v4, 0x1020002

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lz7/b;->b:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v5, p0, Lz7/b;->f:I

    invoke-virtual {v1, v2, v5, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lz7/b;->b:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lz7/b;->f:I

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    iget-object v1, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    new-instance v2, Lz7/b$b;

    invoke-direct {v2, p0}, Lz7/b$b;-><init>(Lz7/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :try_start_0
    iget-object v1, p0, Lz7/b;->h:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lz7/b;->b:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p0, Lz7/b;->c:Lz7/a;

    const-string v3, "Unknown"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lz7/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Lz7/b;->c:Lz7/a;

    iget-object v2, p0, Lz7/b;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v2}, Lz7/a;->a(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public q(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lz7/b;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LC5/b;

    iget-object v1, v3, LC5/b;->n:LC5/b$a;

    sget-object v2, LC5/b$a;->Vector:LC5/b$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lz7/b;->b:Landroid/app/Activity;

    invoke-static {p2, v0, v3, v1, v2}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget-object v2, LC5/b$a;->Component:LC5/b$a;

    if-ne v1, v2, :cond_1

    iget-object v5, p0, Lz7/b;->b:Landroid/app/Activity;

    new-instance v6, Lz7/b$a;

    invoke-direct {v6, p0, p1, p2}, Lz7/b$a;-><init>(Lz7/b;Ljava/util/List;Landroid/widget/LinearLayout;)V

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, v0

    invoke-static/range {v1 .. v6}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    iget-object v6, p0, Lz7/b;->b:Landroid/app/Activity;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, v0

    invoke-static/range {v1 .. v6}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method
