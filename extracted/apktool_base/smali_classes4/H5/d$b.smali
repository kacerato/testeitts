.class public LH5/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bozapro/circularsliderrange/CircularSliderRange$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/d;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LH5/d;


# direct methods
.method public constructor <init>(LH5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH5/d$b;->a:LH5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    return-void
.end method

.method public b(D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, LH5/d$b;->a:LH5/d;

    iget v1, v0, LH5/d;->g0:F

    double-to-float p1, p1

    invoke-static {v0, v1, p1}, LH5/d;->p1(LH5/d;FF)F

    move-result p2

    iput p2, v0, LH5/d;->g0:F

    sget-object p2, LW7/b;->i:La8/a;

    iget-object p2, p2, La8/a;->a:La8/b;

    iget-object p2, p2, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, LH5/d$b;->a:LH5/d;

    iget v1, v0, LH5/d;->g0:F

    sub-float v1, p1, v1

    neg-float v1, v1

    iget v0, v0, LH5/d;->j0:F

    mul-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T2(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p2, p0, LH5/d$b;->a:LH5/d;

    iput p1, p2, LH5/d;->g0:F

    sget-object p1, LW7/b;->i:La8/a;

    iget-object p1, p1, La8/a;->a:La8/b;

    iget-object p1, p1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->T2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method

.method public c(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, LH5/d$b;->a:LH5/d;

    double-to-float p1, p1

    const/high16 p2, 0x43b40000    # 360.0f

    div-float/2addr p1, p2

    iput p1, v0, LH5/d;->j0:F

    iget-object p2, v0, LH5/d;->d0:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Lx/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    sget-object v0, Lx/b;->THUMB_RELEASED:Lx/b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LH5/d$b;->a:LH5/d;

    iget-object p1, p1, LH5/d;->d0:Landroid/widget/TextView;

    const-string v0, "y"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
