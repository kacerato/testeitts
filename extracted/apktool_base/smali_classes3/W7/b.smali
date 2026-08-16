.class public LW7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "@FRAME@"

.field public static final b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lc8/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lcom/itsmagic/engine/Engines/Engine/World/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:LX7/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:LC8/a;

.field public static final g:Lu8/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final h:Lb8/f;

.field public static final i:La8/a;

.field public static final j:Ld8/j;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static k:LW7/e;

.field public static l:Z

.field public static final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static o:Ljava/lang/String;

.field public static p:LW7/d;

.field public static q:Ljava/lang/String;

.field public static r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;-><init>()V

    sput-object v0, LW7/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    new-instance v0, Lc8/b;

    invoke-direct {v0}, Lc8/b;-><init>()V

    sput-object v0, LW7/b;->c:Lc8/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;-><init>()V

    sput-object v0, LW7/b;->d:Lcom/itsmagic/engine/Engines/Engine/World/a;

    new-instance v0, LX7/a;

    invoke-direct {v0}, LX7/a;-><init>()V

    sput-object v0, LW7/b;->e:LX7/a;

    new-instance v0, LC8/a;

    invoke-direct {v0}, LC8/a;-><init>()V

    sput-object v0, LW7/b;->f:LC8/a;

    new-instance v0, Lu8/c;

    invoke-direct {v0}, Lu8/c;-><init>()V

    sput-object v0, LW7/b;->g:Lu8/c;

    new-instance v0, Lb8/f;

    invoke-direct {v0}, Lb8/f;-><init>()V

    sput-object v0, LW7/b;->h:Lb8/f;

    new-instance v0, La8/a;

    invoke-direct {v0}, La8/a;-><init>()V

    sput-object v0, LW7/b;->i:La8/a;

    new-instance v0, Ld8/j;

    invoke-direct {v0}, Ld8/j;-><init>()V

    sput-object v0, LW7/b;->j:Ld8/j;

    const/4 v0, 0x0

    sput-boolean v0, LW7/b;->l:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LW7/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LW7/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput-object v0, LW7/b;->o:Ljava/lang/String;

    sput-object v0, LW7/b;->q:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/pedant/SweetAlert/SweetAlertDialog;->DARK_STYLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, LW7/b;->n()V

    return-void
.end method

.method public static b()V
    .locals 1

    :try_start_0
    invoke-static {}, LK8/a;->e()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Ljava/io/File;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2, p1}, LW7/b;->c(Ljava/io/File;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".world"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object p0, LW7/b;->q:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, LW7/b;->q:Ljava/lang/String;

    sput-object p0, LW7/b;->o:Ljava/lang/String;

    sget-object p0, LW7/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x0

    sput-object p0, LW7/b;->q:Ljava/lang/String;

    :cond_0
    sget-object p0, LW7/b;->i:La8/a;

    invoke-virtual {p0}, La8/a;->a()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->C()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->L()V

    invoke-static {}, LK8/a;->t()V

    return-void
.end method

.method public static e()V
    .locals 1

    :try_start_0
    invoke-static {}, LK8/a;->v()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->h()V

    sget-object p0, LW7/b;->i:La8/a;

    invoke-virtual {p0}, La8/a;->a()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->C()V

    return-void
.end method

.method public static g()V
    .locals 8

    :try_start_0
    invoke-static {}, LQb/a;->d()V

    sget-wide v0, LK8/a;->t:J

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    sget-object v3, LW7/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    sget-object v3, LW7/b;->o:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, LW7/b;->o:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, LW7/b;->i:La8/a;

    invoke-virtual {v3}, La8/a;->b()V

    sput-boolean v4, LW7/b;->l:Z

    sget-object v3, LW7/b;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "Invalid project"

    if-eqz v3, :cond_3

    :try_start_1
    sput-boolean v4, Lc8/b;->b:Z

    sput-boolean v4, Lc8/b;->a:Z

    sput-boolean v4, Lc8/b;->d:Z

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "@@ASSET@@"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    :try_start_2
    const-string v3, ""

    const-string v6, "worldzero"

    new-instance v7, LW7/b$c;

    invoke-direct {v7}, LW7/b$c;-><init>()V

    invoke-static {v3, v6, v4, v7}, Lcom/itsmagic/engine/Engines/Engine/World/a;->G(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Lc8/b;->a:Z
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_0
    :try_start_4
    sget-object v3, LW7/b;->k:LW7/e;

    if-eqz v3, :cond_1

    const-string v6, "Loading world file from disk"

    invoke-interface {v3, v6}, LW7/e;->b(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, "_EDITOR"

    const-string v6, "currentScene.scn"

    new-instance v7, LW7/b$d;

    invoke-direct {v7}, LW7/b$d;-><init>()V

    invoke-static {v3, v6, v4, v7}, Lcom/itsmagic/engine/Engines/Engine/World/a;->I(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v6, LW7/b;->k:LW7/e;

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, LW7/e;->onError(Ljava/lang/String;)V

    sput-object v5, LW7/b;->k:LW7/e;

    goto :goto_3

    :cond_2
    sget-object v3, LW7/b;->k:LW7/e;

    if-eqz v3, :cond_5

    invoke-interface {v3, v6}, LW7/e;->onError(Ljava/lang/String;)V

    sput-object v5, LW7/b;->k:LW7/e;

    goto :goto_3

    :cond_3
    sget-object v3, LW7/b;->k:LW7/e;

    if-eqz v3, :cond_4

    invoke-interface {v3, v6}, LW7/e;->onError(Ljava/lang/String;)V

    sput-object v5, LW7/b;->k:LW7/e;

    :cond_4
    invoke-static {v6}, LN7/c;->v0(Ljava/lang/String;)V

    :cond_5
    :goto_3
    sput-object v5, LW7/b;->o:Ljava/lang/String;

    sget-object v3, LW7/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :cond_6
    sget-boolean v3, LW7/b;->l:Z

    if-eqz v3, :cond_7

    invoke-static {v2}, LW7/b;->f(Landroid/content/Context;)V

    sput-boolean v4, LW7/b;->l:Z

    :cond_7
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@FRAME@C/Frame ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] ended "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LK8/d;->e()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0, v4}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ4/d;->U1(Ljava/lang/String;)V

    invoke-static {}, LJ4/d;->N1()V

    invoke-static {}, LK8/d;->g()V

    invoke-static {v2}, Lkb/a;->c(Landroid/content/Context;)V

    invoke-static {}, LK8/d;->d()F

    move-result v0

    invoke-static {v0}, Lm6/a;->b(F)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public static h()V
    .locals 1

    :try_start_0
    invoke-static {}, LK8/a;->w()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static i(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    :try_start_0
    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->n()V

    sget-wide v0, LK8/a;->t:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@FRAME@C/Frame ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] started"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ4/d;->U1(Ljava/lang/String;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    sget v1, LW7/b;->r:I

    add-int/lit8 v1, v1, 0x1

    sput v1, LW7/b;->r:I

    invoke-static {}, Lp6/d;->E1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "Editor pre-ops"

    invoke-static {v1}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {p0, p1}, LK8/c;->c(II)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;->staticUpdate()V

    invoke-static {}, La4/c;->f()V

    invoke-static {}, LK3/e;->g()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->p()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/p;->a()V

    invoke-static {v1}, Lp6/d;->J1(Lp6/g;)V

    sget-object p0, LW7/b;->p:LW7/d;

    if-eqz p0, :cond_3

    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Editor custom axis"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v2

    :goto_1
    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p1

    invoke-virtual {p1, v0}, LP4/b;->b(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0}, Lp6/d;->J1(Lp6/g;)V

    sget-object p0, LW7/b;->p:LW7/d;

    invoke-interface {p0}, LW7/d;->c()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, LW7/b;->p:LW7/d;

    sget p1, LW7/b;->r:I

    invoke-interface {p0, p1}, LW7/d;->a(I)V

    :cond_3
    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Editor ops"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v2

    :cond_4
    invoke-static {}, Lm6/a;->a()V

    invoke-static {}, LZ7/a;->a()V

    invoke-static {}, LZ7/b;->a()V

    invoke-static {}, Lc7/d;->d()V

    invoke-static {}, LW7/c;->b()V

    invoke-static {v2}, Lp6/d;->J1(Lp6/g;)V

    sget-boolean p0, Lc8/b;->d:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    sget-boolean p0, Lc8/b;->e:Z

    sput-boolean p0, Lc8/b;->a:Z

    sput-boolean p1, Lc8/b;->d:Z

    sget-boolean p0, Lc8/b;->e:Z

    if-nez p0, :cond_5

    invoke-static {}, LJAVARuntime/Thread;->interruptAll()V

    :cond_5
    invoke-static {}, LW7/b;->q()V

    :cond_6
    sget-boolean p0, Lc8/b;->f:Z

    if-eqz p0, :cond_7

    sget-boolean p0, Lc8/b;->g:Z

    sput-boolean p0, Lc8/b;->b:Z

    sput-boolean p1, Lc8/b;->f:Z

    invoke-static {}, LW7/b;->q()V

    :cond_7
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->V()V

    :cond_8
    invoke-static {v0}, Lkb/a;->b(Landroid/content/Context;)V

    invoke-static {v0}, LK8/a;->x(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {}, LW7/a;->a()V

    :cond_0
    invoke-static {p0}, Lw3/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, LW7/b$a;

    invoke-direct {p0}, LW7/b$a;-><init>()V

    invoke-static {p0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;-><init>()V

    new-instance v0, Lfb/a;

    invoke-direct {v0}, Lfb/a;-><init>()V

    invoke-static {p0}, LK8/a;->u(Landroid/content/Context;)V

    sget-object v0, LW7/b;->f:LC8/a;

    invoke-virtual {v0, p0}, LC8/a;->g(Landroid/content/Context;)V

    sget-object v0, LW7/b;->g:Lu8/c;

    invoke-virtual {v0, p0}, Lu8/c;->b(Landroid/content/Context;)V

    sget-object p0, LW7/b;->j:Ld8/j;

    invoke-virtual {p0}, Ld8/j;->m0()V

    invoke-static {}, LK4/b;->x()V

    invoke-static {}, Lh4/k;->K()V

    return-void
.end method

.method public static k(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    invoke-static {}, LK8/a;->n()V

    invoke-static {p0, p1}, LK8/c;->c(II)V

    invoke-static {p0, p1}, LK8/a;->y(II)V

    return-void
.end method

.method public static l(IILandroid/view/SurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "surfaceView"
        }
    .end annotation

    invoke-static {}, LK8/a;->n()V

    invoke-static {p2}, LK8/a;->z(Landroid/view/SurfaceView;)V

    invoke-static {p0, p1}, LK8/c;->c(II)V

    return-void
.end method

.method public static m()V
    .locals 3

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Editor panels update"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    sget-object v2, LW7/b;->p:LW7/d;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, LW7/d;->d(Landroid/content/Context;)V

    :cond_1
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public static n()V
    .locals 9

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :try_start_0
    invoke-static {v0, v1}, LW7/b;->c(Ljava/io/File;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, ""

    const-string v6, "/"

    if-ge v2, v4, :cond_1

    :try_start_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "example"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    move-object v3, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    move v2, v0

    :goto_2
    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    new-instance v0, LW7/b$e;

    invoke-direct {v0, v3}, LW7/b$e;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static o()V
    .locals 0

    invoke-static {}, LK8/a;->N()V

    return-void
.end method

.method public static p(Ljava/lang/String;LW7/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "projectName",
            "swapProjectListener"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->latestProject:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->e()V

    sput-object p1, LW7/b;->k:LW7/e;

    sget-object p1, LW7/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sput-object p0, LW7/b;->o:Ljava/lang/String;

    sget-object p0, LW7/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static q()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    new-instance v1, LW7/b$b;

    invoke-direct {v1}, LW7/b$b;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
