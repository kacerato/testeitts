.class public Lh7/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/b;->C()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lob/b;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic e:Lh7/b;


# direct methods
.method public constructor <init>(Lh7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh7/b$d;->e:Lh7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7/b$d;->b:Ljava/lang/Object;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object p1, p0, Lh7/b$d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object p1, p0, Lh7/b$d;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "motionEvent"
        }
    .end annotation

    iget-object v0, p0, Lh7/b$d;->e:Lh7/b;

    invoke-static {v0}, Lh7/b;->u(Lh7/b;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh7/b$d;->e:Lh7/b;

    invoke-static {v0}, Lh7/b;->u(Lh7/b;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lh7/b$d;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lh7/b$d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object v0, p0, Lh7/b$d;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    new-instance p2, Lob/b;

    new-instance v0, Lh7/b$d$a;

    invoke-direct {v0, p0}, Lh7/b$d$a;-><init>(Lh7/b$d;)V

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p2, v0, v1}, Lob/b;-><init>(Lob/b$a;F)V

    iput-object p2, p0, Lh7/b$d;->a:Lob/b;

    invoke-static {p2}, LK8/a;->J(Lob/b;)V

    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lh7/b$d;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lh7/b$d;->a:Lob/b;

    if-eqz p2, :cond_2

    invoke-static {p2}, LK8/a;->p(Lob/b;)V

    iput-object v1, p0, Lh7/b$d;->a:Lob/b;

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p1

    goto :goto_4

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lh7/b$d;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lh7/b$d;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object v0, p0, Lh7/b$d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->distance(FF)F

    move-result p2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_4

    iget-object p2, p0, Lh7/b$d;->a:Lob/b;

    if-eqz p2, :cond_4

    invoke-static {p2}, LK8/a;->p(Lob/b;)V

    iput-object v1, p0, Lh7/b$d;->a:Lob/b;

    goto :goto_2

    :catchall_2
    move-exception p2

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit p1

    goto :goto_4

    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p2

    :cond_5
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disallowIntercept"
        }
    .end annotation

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "motionEvent"
        }
    .end annotation

    iget-object p1, p0, Lh7/b$d;->e:Lh7/b;

    invoke-static {p1}, Lh7/b;->u(Lh7/b;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh7/b$d;->e:Lh7/b;

    invoke-static {p1}, Lh7/b;->u(Lh7/b;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method
