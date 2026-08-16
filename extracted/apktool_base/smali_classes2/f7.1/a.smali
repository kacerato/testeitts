.class public Lf7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/app/Activity;

.field public c:Z

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/ImageView;

.field public g:Lf7/b;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf7/a;->c:Z

    iput-object p1, p0, Lf7/a;->a:Landroid/view/View;

    iput-object p2, p0, Lf7/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090544

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf7/a;->d:Landroid/widget/TextView;

    const v0, 0x7f090307

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf7/a;->e:Landroid/widget/TextView;

    const v0, 0x7f09025a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lf7/a;->f:Landroid/widget/ImageView;

    new-instance p1, Lf7/a$a;

    invoke-direct {p1, p0, p2}, Lf7/a$a;-><init>(Lf7/a;Landroid/app/Activity;)V

    iput-object p1, p0, Lf7/a;->g:Lf7/b;

    sget-object p2, Lf7/d;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf7/a;->b()V

    return-void
.end method

.method public static synthetic a(Lf7/a;)V
    .locals 0

    invoke-virtual {p0}, Lf7/a;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    sget-object v0, Lf7/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf7/e;

    invoke-virtual {p0, v0}, Lf7/a;->f(Lf7/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf7/a;->c()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lf7/a;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    sget-object v0, Lf7/d;->b:Ljava/util/List;

    iget-object v1, p0, Lf7/a;->g:Lf7/b;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lf7/a;->a:Landroid/view/View;

    iput-object v0, p0, Lf7/a;->b:Landroid/app/Activity;

    iput-object v0, p0, Lf7/a;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lf7/a;->e:Landroid/widget/TextView;

    iput-object v0, p0, Lf7/a;->f:Landroid/widget/ImageView;

    iput-object v0, p0, Lf7/a;->g:Lf7/b;

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lf7/a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public f(Lf7/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lf7/a;->a:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf7/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lf7/a;->e()V

    iget-object v0, p0, Lf7/a;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lf7/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf7/a;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lf7/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf7/a;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lf7/a;->b:Landroid/app/Activity;

    iget v2, p1, Lf7/e;->c:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lf7/a;->a:Landroid/view/View;

    iget-object v1, p0, Lf7/a;->b:Landroid/app/Activity;

    iget v2, p1, Lf7/e;->d:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p1, Lf7/e;->f:Lf7/c;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lf7/a$b;

    invoke-direct {v1, p0, p1}, Lf7/a$b;-><init>(Lf7/a;Lf7/e;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p1, Lf7/e;->e:Lf7/e$a;

    sget-object v1, Lf7/e$a;->SHORT:Lf7/e$a;

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lf7/a$c;

    invoke-direct {v1, p0, p1}, Lf7/a$c;-><init>(Lf7/a;Lf7/e;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_1
    sget-object v1, Lf7/e$a;->MEDIUM:Lf7/e$a;

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lf7/a$d;

    invoke-direct {v1, p0, p1}, Lf7/a$d;-><init>(Lf7/a;Lf7/e;)V

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    sget-object v1, Lf7/e$a;->LONG:Lf7/e$a;

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lf7/a$e;

    invoke-direct {v1, p0, p1}, Lf7/a$e;-><init>(Lf7/a;Lf7/e;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    sget-object v1, Lf7/e$a;->BIGLONG:Lf7/e$a;

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lf7/a$f;

    invoke-direct {v1, p0, p1}, Lf7/a$f;-><init>(Lf7/a;Lf7/e;)V

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method
