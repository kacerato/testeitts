.class public Lrc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnGenericMotionListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnCapturedPointerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0x1c

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lrc/a$g;->r:LIc/e;

    invoke-virtual {v1}, LIc/e;->b()F

    move-result v2

    add-float v3, v2, v0

    invoke-virtual {v1, v2, v3}, LIc/e;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    sget-object v0, Lrc/a$g;->s:LIc/e;

    invoke-virtual {v0}, LIc/e;->b()F

    move-result v1

    add-float v2, v1, p1

    invoke-virtual {v0, v1, v2}, LIc/e;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lrc/a$g;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "motionEvent",
            "allowScroll"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lrc/c;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lrc/c;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lrc/c;->f(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lrc/c;->e(Landroid/view/MotionEvent;)V

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_1

    const/16 p1, 0x9

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    sget-object p2, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {p2, p1}, Lrc/a$g;->d(F)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getSources()I

    move-result p1

    and-int/lit16 v1, p1, 0x2002

    const/16 v2, 0x2002

    if-eq v1, v2, :cond_1

    const v1, 0x20004

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final d(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    sget-object p1, Lrc/a;->t:Lrc/a$f;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lrc/a$f;->d(Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lrc/a;->t:Lrc/a$f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrc/a$f;->d(Z)V

    :goto_0
    return-void
.end method

.method public final e(Landroid/view/MotionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    sget-object v0, Lrc/a$g;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lrc/a$g;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lrc/a$g;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lrc/a$g;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lrc/a$g;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final f(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    sget-object v0, Lrc/a$g;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v0, Lrc/a$g;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p1, Lrc/a$g;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onCapturedPointer(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "motionEvent"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lrc/c;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lrc/c;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Lrc/c;->f(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lrc/c;->e(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x9

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    sget-object p2, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {p2, p1}, Lrc/a$g;->d(F)V

    return v1

    :cond_1
    invoke-virtual {p0, p2}, Lrc/c;->a(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "motionEvent"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lrc/c;->b(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "motionEvent"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lrc/c;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lrc/c;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lrc/c;->f(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lrc/c;->e(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "motionEvent"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lrc/c;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lrc/c;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lrc/c;->f(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lrc/c;->e(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    return v0

    :cond_1
    return p2
.end method
