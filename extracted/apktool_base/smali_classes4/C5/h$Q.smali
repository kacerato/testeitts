.class public LC5/h$Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(LC5/b;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$keyframeBtn",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$Q;->a:LC5/b;

    iput-object p2, p0, LC5/h$Q;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, LC5/h$Q;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lv3/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "repeater"
        }
    .end annotation

    iget-object p1, p0, LC5/h$Q;->a:LC5/b;

    iget-object v0, p1, LC5/b;->K:Ljava/lang/String;

    iget-object v1, p1, LC5/b;->L:Ljava/lang/String;

    iget-object p1, p1, LC5/b;->M:Ljava/lang/String;

    invoke-static {v0, v1, p1}, LC5/h;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, LC5/h$Q;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, LC5/h$Q;->c:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LC5/h$Q;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, LC5/h$Q;->c:Landroid/content/Context;

    const v1, 0x7f0700f8

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p1, p0, LC5/h$Q;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, LC5/h$Q;->c:Landroid/content/Context;

    invoke-static {p1, v0}, LC5/h;->g(Landroid/view/View;Landroid/content/Context;)V

    :try_start_0
    iget-object p1, p0, LC5/h$Q;->a:LC5/b;

    invoke-virtual {p1}, LC5/b;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv3/o;->b(Lv3/k;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object p1, LW7/b;->i:La8/a;

    iget-object p1, p1, La8/a;->a:La8/b;

    iget-object p1, p1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez p1, :cond_2

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv3/o;->b(Lv3/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv3/o;->b(Lv3/k;)V

    :cond_2
    :goto_2
    return-void
.end method
