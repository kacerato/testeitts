.class public Lrc/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final i:F = 0.01f

.field public static final j:F = 0.5f

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltc/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v18, "DPAD_RIGHT"

    const-string v19, "DPAD_CENTER"

    const-string v0, "A"

    const-string v1, "B"

    const-string v2, "X"

    const-string v3, "Y"

    const-string v4, "L1"

    const-string v5, "L2"

    const-string v6, "R1"

    const-string v7, "R2"

    const-string v8, "START"

    const-string v9, "SELECT"

    const-string v10, "C"

    const-string v11, "Z"

    const-string v12, "THUMBL"

    const-string v13, "THUMBR"

    const-string v14, "MODE"

    const-string v15, "DPAD_UP"

    const-string v16, "DPAD_DOWN"

    const-string v17, "DPAD_LEFT"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrc/a$e;->k:[Ljava/lang/String;

    const-string v7, "AXIS_HAT_X"

    const-string v8, "AXIS_HAT_Y"

    const-string v1, "AXIS_X"

    const-string v2, "AXIS_Y"

    const-string v3, "AXIS_Z"

    const-string v4, "AXIS_RX"

    const-string v5, "AXIS_RY"

    const-string v6, "AXIS_RZ"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrc/a$e;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrc/a$e;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrc/a$e;->b:Ljava/util/Map;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lrc/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lrc/a$e;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lrc/a$e;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lrc/a$e;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrc/a$e;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrc/a$e;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lrc/a$e;->l:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lrc/a$e;->k:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lrc/a$e;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Invalid axis name"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Ltc/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lrc/a$e;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltc/c;

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Lrc/a$e;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Lrc/a$e;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public g(Landroid/view/MotionEvent;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lrc/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v0, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object v0, p0, Lrc/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    const v4, 0x3c23d70a    # 0.01f

    invoke-static {v2, v4}, LNc/b;->j0(FF)F

    move-result v2

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v0, p0, Lrc/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v2, v4}, LNc/b;->j0(FF)F

    move-result v2

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v0, p0, Lrc/a$e;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v5, v5

    const/16 v6, 0xe

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v0, v5, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object v0, p0, Lrc/a$e;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v5, v4}, LNc/b;->j0(FF)F

    move-result v5

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v0, p0, Lrc/a$e;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v5, v4}, LNc/b;->j0(FF)F

    move-result v5

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/16 v5, 0xf

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    invoke-virtual {v0, v5, v7}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v7

    if-eqz v7, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    const/16 v8, 0x10

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v9, 0x0

    if-eqz v7, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v9

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    :cond_3
    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v10, p0, Lrc/a$e;->a:Ljava/util/Map;

    const-string v11, "AXIS_X"

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    invoke-static {v12, v4}, LNc/b;->j0(FF)F

    move-result v12

    neg-float v12, v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lrc/a$e;->a:Ljava/util/Map;

    const-string v11, "AXIS_Y"

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    invoke-static {v12, v4}, LNc/b;->j0(FF)F

    move-result v12

    neg-float v12, v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lrc/a$e;->a:Ljava/util/Map;

    const-string v11, "AXIS_Z"

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v2, v4}, LNc/b;->j0(FF)F

    move-result v2

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lrc/a$e;->a:Ljava/util/Map;

    const-string v10, "AXIS_RX"

    const/16 v11, 0xc

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    invoke-static {v11, v4}, LNc/b;->j0(FF)F

    move-result v11

    neg-float v11, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lrc/a$e;->a:Ljava/util/Map;

    const-string v10, "AXIS_RY"

    const/16 v11, 0xd

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    invoke-static {v11, v4}, LNc/b;->j0(FF)F

    move-result v11

    neg-float v11, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lrc/a$e;->a:Ljava/util/Map;

    const-string v10, "AXIS_RZ"

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    invoke-static {p1, v4}, LNc/b;->j0(FF)F

    move-result p1

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v2, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p1, 0x3f000000    # 0.5f

    const/high16 v2, -0x41000000    # -0.5f

    if-eqz v7, :cond_6

    iget-object v6, p0, Lrc/a$e;->a:Ljava/util/Map;

    const-string v7, "AXIS_HAT_X"

    invoke-static {v5, v4}, LNc/b;->j0(FF)F

    move-result v10

    neg-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v7, "DPAD_LEFT"

    cmpg-float v10, v5, v2

    if-gez v10, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v1

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v7, "DPAD_RIGHT"

    cmpl-float v5, v5, p1

    if-lez v5, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_6
    :goto_5
    if-eqz v0, :cond_9

    iget-object v0, p0, Lrc/a$e;->a:Ljava/util/Map;

    const-string v5, "AXIS_HAT_Y"

    invoke-static {v9, v4}, LNc/b;->j0(FF)F

    move-result v4

    neg-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v4, "DPAD_UP"

    cmpg-float v2, v9, v2

    if-gez v2, :cond_7

    move v2, v3

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "DPAD_DOWN"

    cmpl-float p1, v9, p1

    if-lez p1, :cond_8

    move v1, v3

    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    monitor-exit v8

    return-void

    :goto_7
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Landroid/view/KeyEvent;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "keyIsDown"
        }
    .end annotation

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "MODE"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_1
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "SELECT"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_2
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "START"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_3
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "THUMBR"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_4
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "THUMBL"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_5
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "R2"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_6
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "L2"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_7
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "R1"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_8
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "L1"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_9
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "Z"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_a
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "Y"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_b
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "X"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_c
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "C"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_d
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "B"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_e
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "A"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_f
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "DPAD_CENTER"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_10
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "DPAD_RIGHT"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_11
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "DPAD_LEFT"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_12
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "DPAD_DOWN"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :pswitch_13
    iget-object p1, p0, Lrc/a$e;->g:Ljava/util/Map;

    const-string v2, "DPAD_UP"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()Z
    .locals 7

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v3}, Landroid/view/InputDevice;->getSources()I

    move-result v3

    and-int/lit16 v4, v3, 0x401

    const/16 v5, 0x401

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const v5, 0x1000010

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return v6

    :cond_5
    return v1
.end method

.method public j()V
    .locals 7

    iget-object v0, p0, Lrc/a$e;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p0, Lrc/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v0, p0, Lrc/a$e;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p0, Lrc/a$e;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lrc/a$e;->b:Ljava/util/Map;

    iget-object v2, p0, Lrc/a$e;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lrc/a$e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lrc/a$e;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltc/c;

    if-nez v3, :cond_1

    new-instance v3, Ltc/c;

    invoke-direct {v3}, Ltc/c;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Ltc/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lrc/a$e;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Ltc/c;->c:Z

    iget-boolean v4, v3, Ltc/c;->e:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    iget-boolean v2, v3, Ltc/c;->i:Z

    if-nez v2, :cond_3

    iget v2, v3, Ltc/c;->j:F

    invoke-static {}, LK8/d;->e()F

    move-result v4

    add-float/2addr v2, v4

    iput v2, v3, Ltc/c;->j:F

    const v4, 0x3e99999a    # 0.3f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    iput-boolean v5, v3, Ltc/c;->d:Z

    iput-boolean v5, v3, Ltc/c;->i:Z

    iput-boolean v5, v3, Ltc/c;->e:Z

    goto :goto_2

    :cond_2
    iput-boolean v6, v3, Ltc/c;->d:Z

    :cond_3
    :goto_2
    iget-boolean v2, v3, Ltc/c;->b:Z

    if-nez v2, :cond_4

    iget-boolean v2, v3, Ltc/c;->c:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v3, Ltc/c;->g:Z

    if-nez v2, :cond_5

    iput-boolean v5, v3, Ltc/c;->g:Z

    iput-boolean v5, v3, Ltc/c;->b:Z

    goto :goto_3

    :cond_4
    iput-boolean v6, v3, Ltc/c;->b:Z

    :cond_5
    :goto_3
    iget-boolean v2, v3, Ltc/c;->c:Z

    if-nez v2, :cond_7

    iget-boolean v4, v3, Ltc/c;->f:Z

    if-nez v4, :cond_6

    iget-boolean v4, v3, Ltc/c;->h:Z

    if-nez v4, :cond_8

    iput-boolean v5, v3, Ltc/c;->f:Z

    iput-boolean v5, v3, Ltc/c;->h:Z

    goto :goto_4

    :cond_6
    iput-boolean v6, v3, Ltc/c;->f:Z

    goto :goto_4

    :cond_7
    iput-boolean v6, v3, Ltc/c;->h:Z

    :cond_8
    :goto_4
    if-nez v2, :cond_0

    iget-boolean v2, v3, Ltc/c;->f:Z

    if-nez v2, :cond_0

    iput-boolean v6, v3, Ltc/c;->g:Z

    iput-boolean v6, v3, Ltc/c;->i:Z

    const/4 v2, 0x0

    iput v2, v3, Ltc/c;->j:F

    iput-boolean v6, v3, Ltc/c;->e:Z

    iput-boolean v6, v3, Ltc/c;->d:Z

    goto/16 :goto_0

    :cond_9
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
