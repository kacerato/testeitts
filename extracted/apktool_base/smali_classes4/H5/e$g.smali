.class public LH5/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bozapro/circularsliderrange/CircularSliderRange$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/e;->K1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LH5/e;


# direct methods
.method public constructor <init>(LH5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH5/e$g;->a:LH5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/b;)V
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

    iget-object p1, p0, LH5/e$g;->a:LH5/e;

    invoke-static {p1}, LH5/e;->u1(LH5/e;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lx/b;->THUMB_PRESSED:Lx/b;

    :goto_0
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

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    double-to-float p1, p1

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotE:F

    iget-object p2, p0, LH5/e$g;->a:LH5/e;

    invoke-static {p2}, LH5/e;->q1(LH5/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, LH5/e$g;->a:LH5/e;

    iget v0, p2, LH5/e;->h0:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iput p1, p2, LH5/e;->h0:F

    goto :goto_0

    :cond_0
    invoke-static {p2, v0, p1}, LH5/e;->v1(LH5/e;FF)F

    move-result v0

    iput v0, p2, LH5/e;->h0:F

    :goto_0
    iget-object p2, p0, LH5/e$g;->a:LH5/e;

    iget v0, p2, LH5/e;->f0:F

    const v1, -0x3191d80b

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-static {p2}, LH5/e;->w1(LH5/e;)F

    move-result v0

    iput v0, p2, LH5/e;->f0:F

    :cond_1
    iget-object p2, p0, LH5/e$g;->a:LH5/e;

    iget v0, p2, LH5/e;->h0:F

    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {p2}, LH5/e;->r1(LH5/e;)F

    move-result p2

    mul-float/2addr v0, p2

    iget-object p2, p0, LH5/e$g;->a:LH5/e;

    iget v1, p2, LH5/e;->g0:F

    add-float/2addr v1, v0

    iput v1, p2, LH5/e;->g0:F

    iget v0, p2, LH5/e;->f0:F

    add-float/2addr v0, v1

    invoke-static {p2, v0}, LH5/e;->x1(LH5/e;F)V

    iget-object p2, p0, LH5/e$g;->a:LH5/e;

    iput p1, p2, LH5/e;->h0:F

    invoke-static {p2}, LH5/e;->u1(LH5/e;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, LH5/e$g;->a:LH5/e;

    iget p2, p2, LH5/e;->g0:F

    const/4 v0, 0x2

    invoke-static {p2, v0}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    double-to-float p1, p1

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotS:F

    iget-object p2, p0, LH5/e$g;->a:LH5/e;

    invoke-static {p2}, LH5/e;->q1(LH5/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, LH5/e$g;->a:LH5/e;

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    invoke-static {p2, p1}, LH5/e;->s1(LH5/e;F)F

    iget-object p1, p0, LH5/e$g;->a:LH5/e;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, LH5/e;->t1(LH5/e;F)F

    iget-object p1, p0, LH5/e$g;->a:LH5/e;

    invoke-static {p1}, LH5/e;->r1(LH5/e;)F

    move-result p2

    iget-object v0, p0, LH5/e$g;->a:LH5/e;

    invoke-static {v0}, LH5/e;->r1(LH5/e;)F

    move-result v0

    mul-float/2addr p2, v0

    invoke-static {p1, p2}, LH5/e;->s1(LH5/e;F)F

    iget-object p1, p0, LH5/e$g;->a:LH5/e;

    invoke-static {p1}, LH5/e;->u1(LH5/e;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, LH5/e$g;->a:LH5/e;

    invoke-static {p2}, LH5/e;->r1(LH5/e;)F

    move-result p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LH5/e$g;->a:LH5/e;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, LH5/e;->h0:F

    const p2, -0x3191d80b

    iput p2, p1, LH5/e;->f0:F

    return-void
.end method

.method public d(Lx/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    sget-object v0, Lx/b;->THUMB_RELEASED:Lx/b;

    const v1, -0x3191d80b

    const/high16 v2, -0x40800000    # -1.0f

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LH5/e$g;->a:LH5/e;

    invoke-static {p1}, LH5/e;->u1(LH5/e;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LH5/e$g;->a:LH5/e;

    iput v2, p1, LH5/e;->h0:F

    iput v1, p1, LH5/e;->f0:F

    goto :goto_0

    :cond_0
    sget-object v0, Lx/b;->THUMB_PRESSED:Lx/b;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LH5/e$g;->a:LH5/e;

    iput v2, p1, LH5/e;->h0:F

    iput v1, p1, LH5/e;->f0:F

    :cond_1
    :goto_0
    return-void
.end method
