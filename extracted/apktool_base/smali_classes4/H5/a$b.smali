.class public LH5/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bozapro/circularsliderrange/CircularSliderRange$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/a;->B1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public final synthetic d:LH5/a;


# direct methods
.method public constructor <init>(LH5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH5/a$b;->d:LH5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, -0x3191d80b

    iput p1, p0, LH5/a$b;->a:F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, LH5/a$b;->c:F

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

    iget-object p1, p0, LH5/a$b;->d:LH5/a;

    invoke-static {p1}, LH5/a;->t1(LH5/a;)Landroid/widget/TextView;

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

    iget-object p2, p0, LH5/a$b;->d:LH5/a;

    invoke-static {p2}, LH5/a;->p1(LH5/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget p2, p0, LH5/a$b;->c:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iput p1, p0, LH5/a$b;->c:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, LH5/a$b;->d:LH5/a;

    invoke-static {v0, p2, p1}, LH5/a;->u1(LH5/a;FF)F

    move-result p2

    iput p2, p0, LH5/a$b;->c:F

    :goto_0
    iget p2, p0, LH5/a$b;->a:F

    const v0, -0x3191d80b

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget-object p2, p0, LH5/a$b;->d:LH5/a;

    invoke-static {p2}, LH5/a;->v1(LH5/a;)LH5/a$i;

    move-result-object p2

    invoke-interface {p2}, LH5/a$i;->get()F

    move-result p2

    iput p2, p0, LH5/a$b;->a:F

    :cond_1
    iget p2, p0, LH5/a$b;->c:F

    sub-float p2, p1, p2

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p2, v0

    iget-object v0, p0, LH5/a$b;->d:LH5/a;

    invoke-static {v0}, LH5/a;->q1(LH5/a;)F

    move-result v0

    mul-float/2addr p2, v0

    iget v0, p0, LH5/a$b;->b:F

    add-float/2addr v0, p2

    iput v0, p0, LH5/a$b;->b:F

    iget-object p2, p0, LH5/a$b;->d:LH5/a;

    invoke-static {p2}, LH5/a;->v1(LH5/a;)LH5/a$i;

    move-result-object p2

    iget v0, p0, LH5/a$b;->a:F

    iget v1, p0, LH5/a$b;->b:F

    add-float/2addr v0, v1

    invoke-interface {p2, v0}, LH5/a$i;->a(F)V

    iput p1, p0, LH5/a$b;->c:F

    iget-object p1, p0, LH5/a$b;->d:LH5/a;

    invoke-static {p1}, LH5/a;->t1(LH5/a;)Landroid/widget/TextView;

    move-result-object p1

    iget p2, p0, LH5/a$b;->b:F

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

    iget-object p2, p0, LH5/a$b;->d:LH5/a;

    invoke-static {p2}, LH5/a;->p1(LH5/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, LH5/a$b;->d:LH5/a;

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    invoke-static {p2, p1}, LH5/a;->r1(LH5/a;F)F

    iget-object p1, p0, LH5/a$b;->d:LH5/a;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, LH5/a;->s1(LH5/a;F)F

    iget-object p1, p0, LH5/a$b;->d:LH5/a;

    invoke-static {p1}, LH5/a;->q1(LH5/a;)F

    move-result p2

    iget-object v0, p0, LH5/a$b;->d:LH5/a;

    invoke-static {v0}, LH5/a;->q1(LH5/a;)F

    move-result v0

    mul-float/2addr p2, v0

    invoke-static {p1, p2}, LH5/a;->r1(LH5/a;F)F

    iget-object p1, p0, LH5/a$b;->d:LH5/a;

    invoke-static {p1}, LH5/a;->t1(LH5/a;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, LH5/a$b;->d:LH5/a;

    invoke-static {p2}, LH5/a;->q1(LH5/a;)F

    move-result p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, LH5/a$b;->c:F

    const p1, -0x3191d80b

    iput p1, p0, LH5/a$b;->a:F

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

    iget-object p1, p0, LH5/a$b;->d:LH5/a;

    invoke-static {p1}, LH5/a;->t1(LH5/a;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v2, p0, LH5/a$b;->c:F

    iput v1, p0, LH5/a$b;->a:F

    goto :goto_0

    :cond_0
    sget-object v0, Lx/b;->THUMB_PRESSED:Lx/b;

    if-ne p1, v0, :cond_1

    iput v2, p0, LH5/a$b;->c:F

    iput v1, p0, LH5/a$b;->a:F

    :cond_1
    :goto_0
    return-void
.end method
