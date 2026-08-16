.class public Lq6/f;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static A0:Lq6/g; = null

.field public static B0:I = 0x0

.field public static C0:J = 0x0L

.field public static final o0:Ljava/lang/String; = "LPProfiler"

.field public static final p0:Ljava/lang/Class;

.field public static final q0:I = 0x18

.field public static final r0:Z = true

.field public static s0:Z

.field public static t0:J

.field public static u0:Lq6/a;

.field public static v0:Lq6/a;

.field public static final w0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq6/f;",
            ">;"
        }
    .end annotation
.end field

.field public static x0:Z

.field public static y0:Z

.field public static z0:Ljava/lang/Thread;


# instance fields
.field public X:Landroid/widget/TextView;

.field public Y:Landroid/view/View;

.field public Z:Landroid/view/View;

.field public a0:Landroid/view/View;

.field public b0:I

.field public c0:Landroidx/recyclerview/widget/RecyclerView;

.field public d0:LF7/l;

.field public e0:Lq6/b;

.field public f0:Z

.field public g0:I

.field public h0:Landroid/widget/ImageView;

.field public final i0:Lq6/c;

.field public j0:Landroid/graphics/Bitmap;

.field public k0:Landroid/graphics/drawable/BitmapDrawable;

.field public l0:J

.field public m0:I

.field public n0:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lq6/f;

    sput-object v0, Lq6/f;->p0:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lq6/f;->w0:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lq6/f;->x0:Z

    sput-boolean v0, Lq6/f;->y0:Z

    const/4 v0, 0x0

    sput-object v0, Lq6/f;->z0:Ljava/lang/Thread;

    const/16 v0, 0x19

    sput v0, Lq6/f;->B0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 10
    const-string v0, "LP profiler"

    const-string v1, "LPProfiler"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-object v2, p0, Lq6/f;->d0:LF7/l;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lq6/f;->f0:Z

    const/16 v0, 0x5a

    .line 13
    iput v0, p0, Lq6/f;->g0:I

    .line 14
    new-instance v0, Lq6/c;

    invoke-direct {v0}, Lq6/c;-><init>()V

    iput-object v0, p0, Lq6/f;->i0:Lq6/c;

    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lq6/f;->l0:J

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lq6/f;->m0:I

    .line 17
    iput v0, p0, Lq6/f;->n0:I

    .line 18
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(LK8/a;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lq6/f;->d0:LF7/l;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lq6/f;->f0:Z

    const/16 p1, 0x5a

    .line 4
    iput p1, p0, Lq6/f;->g0:I

    .line 5
    new-instance p1, Lq6/c;

    invoke-direct {p1}, Lq6/c;-><init>()V

    iput-object p1, p0, Lq6/f;->i0:Lq6/c;

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lq6/f;->l0:J

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lq6/f;->m0:I

    .line 8
    iput p1, p0, Lq6/f;->n0:I

    .line 9
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static A1()V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lq6/f;->x0:Z

    move v1, v0

    :goto_0
    sget-object v2, Lq6/f;->w0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq6/f;

    invoke-virtual {v2}, Lq6/f;->z1()Z

    move-result v2

    if-eqz v2, :cond_0

    sput-boolean v4, Lq6/f;->x0:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean v1, Lq6/f;->x0:Z

    if-nez v1, :cond_3

    const-wide/16 v1, 0x0

    sput-wide v1, Lq6/f;->t0:J

    const/4 v1, 0x0

    sput-object v1, Lq6/f;->u0:Lq6/a;

    sget-boolean v1, Lq6/f;->y0:Z

    if-eqz v1, :cond_2

    sput-boolean v0, Lq6/f;->y0:Z

    invoke-static {}, Lq6/i;->a()V

    :cond_2
    return-void

    :cond_3
    sput-boolean v4, Lq6/f;->y0:Z

    sput-boolean v4, Lq6/f;->x0:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lq6/f;->z0:Ljava/lang/Thread;

    new-instance v0, Lq6/a;

    sget-wide v1, Lq6/f;->t0:J

    invoke-direct {v0, v1, v2}, Lq6/a;-><init>(J)V

    sput-object v0, Lq6/f;->v0:Lq6/a;

    const-string v0, "Total"

    invoke-static {v0}, Lq6/f;->O1(Ljava/lang/String;)Lq6/g;

    move-result-object v0

    sput-object v0, Lq6/f;->A0:Lq6/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Lq6/g;->l(Z)V

    :cond_4
    sget-wide v0, Lq6/f;->t0:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lq6/f;->t0:J

    return-void
.end method

.method private B1()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->e0:Lq6/b;

    invoke-virtual {v0}, Lq6/b;->b()Lq6/a;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v2, Lq6/d;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v4, p0, Lq6/f;->e0:Lq6/b;

    invoke-virtual {v4}, Lq6/b;->a()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "LP frame: %.1f ms"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lq6/d;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, LF7/i;->r(Z)V

    iget-object v5, v2, LF7/i;->f:LF7/h;

    iput-boolean v4, v5, LF7/h;->c:Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lq6/f;->e0:Lq6/b;

    invoke-virtual {v2}, Lq6/b;->d()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x4130000000000000L    # 1048576.0

    div-double/2addr v5, v7

    new-instance v2, Lq6/d;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Heap memory: %.1f MB"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lq6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, LF7/i;->r(Z)V

    iget-object v5, v2, LF7/i;->f:LF7/h;

    iput-boolean v4, v5, LF7/h;->c:Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lq6/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Java GC?: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lq6/f;->e0:Lq6/b;

    invoke-virtual {v6}, Lq6/b;->e()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lq6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, LF7/i;->r(Z)V

    iget-object v3, v2, LF7/i;->f:LF7/h;

    iput-boolean v4, v3, LF7/h;->c:Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lq6/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SGC:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lq6/f;->e0:Lq6/b;

    invoke-virtual {v5}, Lq6/b;->c()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lq6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, LF7/i;->r(Z)V

    iget-object v3, v2, LF7/i;->f:LF7/h;

    iput-boolean v4, v3, LF7/h;->c:Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lq6/a;->b()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lq6/a;->h(I)Lq6/l;

    move-result-object v3

    invoke-virtual {v3}, Lq6/l;->d()Lq6/j;

    move-result-object v5

    invoke-virtual {v5}, Lq6/j;->f()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v5, v4}, Lq6/j;->e(I)Lq6/g;

    move-result-object v6

    invoke-virtual {v6}, Lq6/g;->e()D

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thread ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lq6/l;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "[E]"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    new-instance v7, Lq6/k;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v5, v3}, Lq6/k;-><init>(Ljava/lang/String;Lq6/j;Z)V

    invoke-virtual {v5}, Lq6/j;->f()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, LF7/i;->r(Z)V

    iget-object v3, v7, LF7/i;->f:LF7/h;

    invoke-virtual {v5}, Lq6/j;->d()Z

    move-result v5

    iput-boolean v5, v3, LF7/h;->c:Z

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cant show a null data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static D1(F)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    sget-boolean v0, Lq6/f;->x0:Z

    if-eqz v0, :cond_3

    sget-object v0, Lq6/f;->v0:Lq6/a;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v0, Lq6/f;->A0:Lq6/g;

    invoke-static {v0}, Lq6/f;->M1(Lq6/g;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lq6/f;->w0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lq6/f;

    invoke-virtual {v5}, Lq6/f;->z1()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v6, Lq6/f;->v0:Lq6/a;

    sget-wide v10, Lq6/f;->C0:J

    move v7, p0

    move-wide v8, v1

    invoke-virtual/range {v5 .. v11}, Lq6/f;->L1(Lq6/a;FJJ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sput-wide v1, Lq6/f;->C0:J

    sget-object p0, Lq6/f;->v0:Lq6/a;

    sput-object p0, Lq6/f;->u0:Lq6/a;

    const/4 p0, 0x0

    sput-object p0, Lq6/f;->v0:Lq6/a;

    sput-object p0, Lq6/f;->A0:Lq6/g;

    :cond_3
    :goto_1
    return-void
.end method

.method public static E1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null component"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getDisplayableTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static F1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static G1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    invoke-static {p0}, Lq6/f;->F1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H1()Z
    .locals 1

    sget-boolean v0, Lq6/f;->x0:Z

    return v0
.end method

.method public static I1()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lq6/f;->z0:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private K1(LF7/i;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF7/i;",
            ")",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    instance-of v1, p1, Lq6/k;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lq6/k;

    invoke-virtual {v1}, Lq6/k;->u()Lq6/j;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lq6/f;->J1(Lq6/j;Ljava/util/List;)V

    :cond_0
    instance-of v1, p1, Lq6/h;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lq6/h;

    invoke-virtual {v1}, Lq6/h;->u()Lq6/g;

    move-result-object v1

    invoke-virtual {v1}, Lq6/g;->d()Lq6/j;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lq6/g;->d()Lq6/j;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lq6/f;->J1(Lq6/j;Ljava/util/List;)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF7/i;

    invoke-virtual {p1}, LF7/i;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, LF7/i;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static M1(Lq6/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lq6/g;->c()V

    :cond_0
    return-void
.end method

.method public static N1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    sget-boolean v0, Lq6/f;->x0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lq6/f;->v0:Lq6/a;

    invoke-virtual {v0, p0}, Lq6/a;->f(Ljava/lang/String;)Lq6/g;

    move-result-object p0

    invoke-static {p0}, Lq6/f;->M1(Lq6/g;)V

    return-void
.end method

.method public static O1(Ljava/lang/String;)Lq6/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    sget-boolean v0, Lq6/f;->x0:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lq6/f;->v0:Lq6/a;

    invoke-virtual {v0, p0}, Lq6/a;->f(Ljava/lang/String;)Lq6/g;

    move-result-object p0

    return-object p0
.end method

.method public static P1()V
    .locals 3

    const/16 v0, 0xfa

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x15e

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lq6/f;

    invoke-direct {v2}, Lq6/f;-><init>()V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static synthetic p1(Lq6/f;)Lq6/c;
    .locals 0

    iget-object p0, p0, Lq6/f;->i0:Lq6/c;

    return-object p0
.end method

.method public static synthetic q1(Lq6/f;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lq6/f;->j0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic r1(Lq6/f;Lq6/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lq6/f;->C1(Lq6/b;)V

    return-void
.end method

.method public static synthetic s1(Lq6/f;)Z
    .locals 0

    iget-boolean p0, p0, Lq6/f;->f0:Z

    return p0
.end method

.method public static synthetic t1(Lq6/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lq6/f;->f0:Z

    return p1
.end method

.method public static synthetic u1(Lq6/f;LF7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lq6/f;->K1(LF7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v1(Lq6/f;)Lq6/b;
    .locals 0

    iget-object p0, p0, Lq6/f;->e0:Lq6/b;

    return-object p0
.end method

.method public static synthetic w1(Lq6/f;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lq6/f;->B1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x1(Lq6/f;)LF7/l;
    .locals 0

    iget-object p0, p0, Lq6/f;->d0:LF7/l;

    return-object p0
.end method

.method public static y1()Z
    .locals 1

    sget-boolean v0, Lq6/f;->s0:Z

    return v0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0184

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lq6/f;->w0:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f09057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lq6/f;->Y:Landroid/view/View;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lq6/f;->Z:Landroid/view/View;

    iget-object v1, p0, Lq6/f;->Y:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lq6/f;->Z:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lq6/f;->h0:Landroid/widget/ImageView;

    iget-object v1, p0, Lq6/f;->i0:Lq6/c;

    iget v4, p0, Lq6/f;->g0:I

    invoke-virtual {v1, v4}, Lq6/c;->e(I)V

    iget-object v1, p0, Lq6/f;->k0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq6/f;->j0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lq6/f;->g0:I

    const/16 v4, 0x18

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lq6/f;->j0:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lq6/f;->i0:Lq6/c;

    iget-object v5, p0, Lq6/f;->e0:Lq6/b;

    invoke-virtual {v4, v1, v5}, Lq6/c;->c(Landroid/graphics/Bitmap;Lq6/b;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lq6/f;->j0:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lq6/f;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v1, p0, Lq6/f;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v1, p0, Lq6/f;->h0:Landroid/widget/ImageView;

    iget-object v3, p0, Lq6/f;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lq6/f;->h0:Landroid/widget/ImageView;

    new-instance v3, Lq6/f$a;

    invoke-direct {v3, p0}, Lq6/f$a;-><init>(Lq6/f;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lq6/f$b;

    invoke-direct {v3, p0, v1}, Lq6/f$b;-><init>(Lq6/f;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lq6/f$c;

    invoke-direct {v3, p0}, Lq6/f$c;-><init>(Lq6/f;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lq6/f;->X:Landroid/widget/TextView;

    const-string v3, "0 FPS"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0902cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lq6/f;->a0:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lq6/f;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, LF7/l;

    new-instance v4, Lq6/f$d;

    invoke-direct {v4, p0}, Lq6/f$d;-><init>(Lq6/f;)V

    invoke-direct {v3, v1, v4}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v3, p0, Lq6/f;->d0:LF7/l;

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v3, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v2, Lq6/f$e;

    invoke-direct {v2, p0}, Lq6/f$e;-><init>(Lq6/f;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0
.end method

.method public final C1(Lq6/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lq6/f;->e0:Lq6/b;

    iget-object p1, p0, Lq6/f;->Y:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lq6/f;->Z:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lq6/f;->d0:LF7/l;

    invoke-virtual {p1}, LF7/l;->v()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid thread!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public G0()V
    .locals 1

    sget-object v0, Lq6/f;->w0:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lq6/f;->j0:Landroid/graphics/Bitmap;

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    return-void
.end method

.method public final J1(Lq6/j;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stack",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/j;",
            "Ljava/util/List<",
            "LF7/i;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lq6/j;->f()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lq6/j;->e(I)Lq6/g;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lq6/e;

    invoke-direct {p1}, Lq6/e;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    :goto_1
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq6/g;

    invoke-virtual {v3}, Lq6/g;->e()D

    move-result-wide v4

    double-to-float v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lq6/g;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v2}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lq6/h;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lq6/h;-><init>(Ljava/lang/String;Lq6/g;)V

    invoke-virtual {v3}, Lq6/g;->d()Lq6/j;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lq6/g;->d()Lq6/j;

    move-result-object v5

    invoke-virtual {v5}, Lq6/j;->f()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, LF7/i;->r(Z)V

    iget-object v5, v4, LF7/i;->f:LF7/h;

    invoke-virtual {v3}, Lq6/g;->g()Z

    move-result v3

    iput-boolean v3, v5, LF7/h;->c:Z

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public L1(Lq6/a;FJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "frameData",
            "deltaTime",
            "usedBytes",
            "previousFrameUsedGC"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->i0:Lq6/c;

    new-instance v8, Lq6/b;

    move-object v1, v8

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lq6/b;-><init>(FLq6/a;JJ)V

    invoke-virtual {v0, v8}, Lq6/c;->d(Lq6/b;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lq6/f;

    invoke-direct {v0}, Lq6/f;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 8

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget v0, p0, Lq6/f;->m0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq6/f;->m0:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lq6/f;->l0:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x3b9aca00

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    iget v4, p0, Lq6/f;->m0:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lq6/f;->n0:I

    iput v5, p0, Lq6/f;->m0:I

    add-long/2addr v2, v6

    iput-wide v2, p0, Lq6/f;->l0:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lq6/f;->l0:J

    :cond_0
    iget-object v0, p0, Lq6/f;->i0:Lq6/c;

    iget v1, p0, Lq6/f;->g0:I

    invoke-virtual {v0, v1}, Lq6/c;->e(I)V

    iget-object v0, p0, Lq6/f;->k0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq6/f;->j0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lq6/f;->g0:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lq6/f;->g0:I

    const/16 v1, 0x18

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lq6/f;->j0:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lq6/f;->j0:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lq6/f;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lq6/f;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v0, p0, Lq6/f;->h0:Landroid/widget/ImageView;

    iget-object v1, p0, Lq6/f;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lq6/f;->i0:Lq6/c;

    iget-object v1, p0, Lq6/f;->j0:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lq6/f;->e0:Lq6/b;

    invoke-virtual {v0, v1, v2}, Lq6/c;->c(Landroid/graphics/Bitmap;Lq6/b;)V

    iget-object v0, p0, Lq6/f;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public o1()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->X:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lq6/f;->n0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " FPS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lq6/f;->b0:I

    iget v1, p0, Lq6/f;->n0:I

    if-eq v0, v1, :cond_2

    iput v1, p0, Lq6/f;->b0:I

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq6/f;->a0:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq6/f;->a0:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lq6/f;->a0:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public z1()Z
    .locals 1

    iget-boolean v0, p0, Lq6/f;->f0:Z

    return v0
.end method
