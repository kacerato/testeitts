.class public LC5/h$H;
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

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(LC5/b;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$colorImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$H;->a:LC5/b;

    iput-object p2, p0, LC5/h$H;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lv3/k;)V
    .locals 3
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

    iget-object p1, p0, LC5/h$H;->a:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    invoke-interface {p1}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LC5/h$H;->a:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    invoke-interface {p1}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iget-object v0, p0, LC5/h$H;->a:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-interface {v0, v1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    :cond_1
    iget-object v0, p0, LC5/h$H;->b:Landroid/widget/ImageView;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :try_start_0
    iget-object p1, p0, LC5/h$H;->a:LC5/b;

    invoke-virtual {p1}, LC5/b;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv3/o;->b(Lv3/k;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    sget-object p1, LW7/b;->i:La8/a;

    iget-object p1, p1, La8/a;->a:La8/b;

    iget-object p1, p1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez p1, :cond_3

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

    :cond_3
    :goto_2
    return-void
.end method
