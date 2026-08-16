.class public Lt6/j;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt6/j$g;
    }
.end annotation


# static fields
.field public static A0:Ljava/lang/Thread; = null

.field public static B0:Lt6/e; = null

.field public static C0:I = 0x0

.field public static D0:J = 0x0L

.field public static final p0:Ljava/lang/String; = "RunnableProfiler"

.field public static final q0:Ljava/lang/Class;

.field public static final r0:I = 0x18

.field public static final s0:Z = true

.field public static t0:Z

.field public static u0:J

.field public static v0:Lt6/a;

.field public static w0:Lt6/a;

.field public static final x0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt6/j;",
            ">;"
        }
    .end annotation
.end field

.field public static y0:Z

.field public static z0:Z


# instance fields
.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/view/View;

.field public a0:Landroid/view/View;

.field public b0:I

.field public c0:Landroidx/recyclerview/widget/RecyclerView;

.field public d0:LF7/l;

.field public e0:Lt6/b;

.field public f0:I

.field public g0:Z

.field public h0:I

.field public i0:Landroid/widget/ImageView;

.field public final j0:Lt6/c;

.field public k0:Landroid/graphics/Bitmap;

.field public l0:Landroid/graphics/drawable/BitmapDrawable;

.field public m0:J

.field public n0:I

.field public o0:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt6/j$a;

    invoke-direct {v0}, Lt6/j$a;-><init>()V

    invoke-static {v0}, Lt6/k;->f(Lt6/k$a;)V

    const-class v0, Lt6/j;

    sput-object v0, Lt6/j;->q0:Ljava/lang/Class;

    const-wide/16 v0, 0x0

    sput-wide v0, Lt6/j;->u0:J

    const/4 v0, 0x0

    sput-object v0, Lt6/j;->v0:Lt6/a;

    sput-object v0, Lt6/j;->w0:Lt6/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v1, Lt6/j;->x0:Ljava/util/List;

    const/4 v1, 0x0

    sput-boolean v1, Lt6/j;->y0:Z

    sput-boolean v1, Lt6/j;->z0:Z

    sput-object v0, Lt6/j;->A0:Ljava/lang/Thread;

    const/16 v0, 0x19

    sput v0, Lt6/j;->C0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 11
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROFILER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunnableProfiler"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object v2, p0, Lt6/j;->d0:LF7/l;

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lt6/j;->f0:I

    .line 14
    iput-boolean v0, p0, Lt6/j;->g0:Z

    const/16 v0, 0x5a

    .line 15
    iput v0, p0, Lt6/j;->h0:I

    .line 16
    new-instance v0, Lt6/c;

    invoke-direct {v0}, Lt6/c;-><init>()V

    iput-object v0, p0, Lt6/j;->j0:Lt6/c;

    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lt6/j;->m0:J

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lt6/j;->n0:I

    .line 19
    iput v0, p0, Lt6/j;->o0:I

    .line 20
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
    iput-object p1, p0, Lt6/j;->d0:LF7/l;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lt6/j;->f0:I

    .line 4
    iput-boolean p1, p0, Lt6/j;->g0:Z

    const/16 p1, 0x5a

    .line 5
    iput p1, p0, Lt6/j;->h0:I

    .line 6
    new-instance p1, Lt6/c;

    invoke-direct {p1}, Lt6/c;-><init>()V

    iput-object p1, p0, Lt6/j;->j0:Lt6/c;

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lt6/j;->m0:J

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lt6/j;->n0:I

    .line 9
    iput p1, p0, Lt6/j;->o0:I

    .line 10
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static A1()Z
    .locals 1

    sget-boolean v0, Lt6/j;->t0:Z

    return v0
.end method

.method public static C1()V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lt6/j;->y0:Z

    move v1, v0

    :goto_0
    sget-object v2, Lt6/j;->x0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt6/j;

    invoke-virtual {v2}, Lt6/j;->B1()Z

    move-result v2

    if-eqz v2, :cond_0

    sput-boolean v4, Lt6/j;->y0:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean v1, Lt6/j;->y0:Z

    if-nez v1, :cond_3

    const-wide/16 v1, 0x0

    sput-wide v1, Lt6/j;->u0:J

    const/4 v1, 0x0

    sput-object v1, Lt6/j;->v0:Lt6/a;

    sget-boolean v1, Lt6/j;->z0:Z

    if-eqz v1, :cond_2

    sput-boolean v0, Lt6/j;->z0:Z

    invoke-static {}, Lt6/g;->a()V

    :cond_2
    return-void

    :cond_3
    sput-boolean v4, Lt6/j;->z0:Z

    sput-boolean v4, Lt6/j;->y0:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lt6/j;->A0:Ljava/lang/Thread;

    new-instance v0, Lt6/a;

    sget-wide v1, Lt6/j;->u0:J

    invoke-direct {v0, v1, v2}, Lt6/a;-><init>(J)V

    sput-object v0, Lt6/j;->w0:Lt6/a;

    const-string v0, "Total"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    sput-object v0, Lt6/j;->B0:Lt6/e;

    invoke-virtual {v0, v4}, Lt6/e;->p(Z)V

    sget-wide v0, Lt6/j;->u0:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lt6/j;->u0:J

    return-void
.end method

.method private G1()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v0}, Lt6/b;->b()Lt6/a;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v2, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v2}, Lt6/b;->d()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    new-instance v4, Lt6/d;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Heap memory: %.1f MB"

    invoke-static {v5, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lt6/d;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, LF7/i;->r(Z)V

    iget-object v3, v4, LF7/i;->f:LF7/h;

    iput-boolean v2, v3, LF7/h;->c:Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v3}, Lt6/b;->d()J

    new-instance v3, Lt6/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Java GC?: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v6}, Lt6/b;->e()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lt6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, LF7/i;->r(Z)V

    iget-object v4, v3, LF7/i;->f:LF7/h;

    iput-boolean v2, v4, LF7/h;->c:Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v3}, Lt6/b;->d()J

    new-instance v3, Lt6/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SGC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v5}, Lt6/b;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lt6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, LF7/i;->r(Z)V

    iget-object v4, v3, LF7/i;->f:LF7/h;

    iput-boolean v2, v4, LF7/h;->c:Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p0, v0}, Lt6/j;->E1(Lt6/a;)Ljava/util/List;

    move-result-object v0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt6/j$g;

    invoke-virtual {p0, v4}, Lt6/j;->X1(Lt6/j$g;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lt6/d;

    invoke-static {v4}, Lt6/j$g;->a(Lt6/j$g;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lt6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, LF7/i;->r(Z)V

    iget-object v4, v5, LF7/i;->f:LF7/h;

    iput-boolean v2, v4, LF7/h;->c:Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cant show a null data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static I1(F)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    sget-boolean v0, Lt6/j;->y0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v0, Lt6/j;->B0:Lt6/e;

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lt6/j;->x0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lt6/j;

    invoke-virtual {v5}, Lt6/j;->B1()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v6, Lt6/j;->w0:Lt6/a;

    sget-wide v10, Lt6/j;->D0:J

    move v7, p0

    move-wide v8, v1

    invoke-virtual/range {v5 .. v11}, Lt6/j;->O1(Lt6/a;FJJ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sput-wide v1, Lt6/j;->D0:J

    return-void
.end method

.method public static J1()Z
    .locals 1

    sget-boolean v0, Lt6/j;->y0:Z

    return v0
.end method

.method public static K1()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lt6/j;->A0:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic L1(Ljava/lang/Object;)D
    .locals 2

    check-cast p0, Lt6/j$g;

    invoke-static {p0}, Lt6/j$g;->c(Lt6/j$g;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic M1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p0, Lt6/j$g;

    invoke-static {p0}, Lt6/j$g;->d(Lt6/j$g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private N1(LF7/i;)Ljava/util/List;
    .locals 0
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

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p1
.end method

.method public static P1(Lt6/e;)V
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

    invoke-virtual {p0}, Lt6/e;->c()V

    :cond_0
    return-void
.end method

.method public static Q1(Lt6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    invoke-static {p0}, Lt6/j;->P1(Lt6/e;)V

    return-void
.end method

.method public static R1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    sget-boolean v0, Lt6/j;->y0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lt6/j;->w0:Lt6/a;

    invoke-virtual {v0, p0}, Lt6/a;->f(Ljava/lang/String;)Lt6/e;

    move-result-object p0

    invoke-static {p0}, Lt6/j;->P1(Lt6/e;)V

    return-void
.end method

.method public static S1(Ljava/lang/String;)Lt6/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    sget-boolean v0, Lt6/j;->y0:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lt6/j;->w0:Lt6/a;

    invoke-virtual {v0, p0}, Lt6/a;->f(Ljava/lang/String;)Lt6/e;

    move-result-object p0

    return-object p0
.end method

.method public static T1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    const-string v0, "interrupt"

    invoke-static {v0, p0}, Lt6/j;->W1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static U1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    const-string v0, "postOnEngine"

    invoke-static {v0, p0}, Lt6/j;->W1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static V1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    const-string v0, "runOnEngine"

    invoke-static {v0, p0}, Lt6/j;->W1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static W1(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "operation",
            "runnable"
        }
    .end annotation

    sget-boolean v0, Lt6/j;->y0:Z

    if-eqz v0, :cond_6

    sget-object v0, Lt6/j;->w0:Lt6/a;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    sget v1, Lt6/j;->C0:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sget-object v1, Lt6/j;->w0:Lt6/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lt6/a;->f(Ljava/lang/String;)Lt6/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 p1, 0x3

    :goto_1
    array-length v1, p0

    if-ge p1, v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lt6/j;->C0:I

    if-gt v1, v2, :cond_5

    aget-object v1, p0, p1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.itsmagic.engine.Activities.Editor.Panels.Profiler.RunnableProfiler."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lt6/j;->w0:Lt6/a;

    invoke-virtual {v2, v1}, Lt6/a;->f(Ljava/lang/String;)Lt6/e;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_4
    if-ltz p0, :cond_6

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt6/e;

    invoke-static {p1}, Lt6/j;->P1(Lt6/e;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method

.method public static Y1()V
    .locals 3

    const/16 v0, 0xfa

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x15e

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lt6/j;

    invoke-direct {v2}, Lt6/j;-><init>()V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static synthetic p1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lt6/j;->M1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q1(Ljava/lang/Object;)D
    .locals 2

    invoke-static {p0}, Lt6/j;->L1(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic r1(Lt6/j;)Lt6/c;
    .locals 0

    iget-object p0, p0, Lt6/j;->j0:Lt6/c;

    return-object p0
.end method

.method public static synthetic s1(Lt6/j;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lt6/j;->k0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic t1(Lt6/j;Lt6/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt6/j;->H1(Lt6/b;)V

    return-void
.end method

.method public static synthetic u1(Lt6/j;)Z
    .locals 0

    iget-boolean p0, p0, Lt6/j;->g0:Z

    return p0
.end method

.method public static synthetic v1(Lt6/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lt6/j;->g0:Z

    return p1
.end method

.method public static synthetic w1(Lt6/j;LF7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lt6/j;->N1(LF7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x1(Lt6/j;)Lt6/b;
    .locals 0

    iget-object p0, p0, Lt6/j;->e0:Lt6/b;

    return-object p0
.end method

.method public static synthetic y1(Lt6/j;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lt6/j;->G1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z1(Lt6/j;Lt6/a;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lt6/j;->D1(Lt6/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B1()Z
    .locals 1

    iget-boolean v0, p0, Lt6/j;->g0:Z

    return v0
.end method

.method public C0()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0184

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lt6/j;->x0:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f09057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lt6/j;->Z:Landroid/view/View;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lt6/j;->a0:Landroid/view/View;

    iget-object v1, p0, Lt6/j;->Z:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lt6/j;->a0:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lt6/j;->i0:Landroid/widget/ImageView;

    iget-object v1, p0, Lt6/j;->j0:Lt6/c;

    iget v4, p0, Lt6/j;->h0:I

    invoke-virtual {v1, v4}, Lt6/c;->e(I)V

    iget-object v1, p0, Lt6/j;->l0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt6/j;->k0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lt6/j;->h0:I

    const/16 v4, 0x18

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lt6/j;->k0:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lt6/j;->j0:Lt6/c;

    iget-object v5, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v4, v1, v5}, Lt6/c;->c(Landroid/graphics/Bitmap;Lt6/b;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lt6/j;->k0:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lt6/j;->l0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v1, p0, Lt6/j;->l0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v1, p0, Lt6/j;->i0:Landroid/widget/ImageView;

    iget-object v3, p0, Lt6/j;->l0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lt6/j;->i0:Landroid/widget/ImageView;

    new-instance v3, Lt6/j$b;

    invoke-direct {v3, p0}, Lt6/j$b;-><init>(Lt6/j;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lt6/j$c;

    invoke-direct {v3, p0, v1}, Lt6/j$c;-><init>(Lt6/j;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lt6/j$d;

    invoke-direct {v3, p0}, Lt6/j$d;-><init>(Lt6/j;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lt6/j;->X:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {}, LK8/d;->d()F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lt6/j;->X:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FPS"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0902cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lt6/j;->Y:Landroid/widget/TextView;

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lt6/j;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, LF7/l;

    new-instance v4, Lt6/j$e;

    invoke-direct {v4, p0}, Lt6/j$e;-><init>(Lt6/j;)V

    invoke-direct {v3, v1, v4}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v3, p0, Lt6/j;->d0:LF7/l;

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
    new-instance v2, Lt6/j$f;

    invoke-direct {v2, p0}, Lt6/j$f;-><init>(Lt6/j;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0
.end method

.method public final D1(Lt6/a;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Heap memory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v2, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v2}, Lt6/b;->d()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f MB"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Java GC?: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v3}, Lt6/b;->e()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SGC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v1}, Lt6/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lt6/j;->E1(Lt6/a;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt6/j$g;

    invoke-virtual {p0, v3}, Lt6/j;->X1(Lt6/j$g;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lt6/j$g;->a(Lt6/j$g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final E1(Lt6/a;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt6/a;",
            ")",
            "Ljava/util/List<",
            "Lt6/j$g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lt6/a;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lt6/a;->h(I)Lt6/n;

    move-result-object v2

    invoke-virtual {v2}, Lt6/n;->d()Lt6/l;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lt6/j;->F1(Lt6/l;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lt6/h;

    invoke-direct {v0}, Lt6/h;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lt6/i;

    invoke-direct {v1}, Lt6/i;-><init>()V

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public final F1(Lt6/l;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stack",
            "summaryMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt6/l;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lt6/j$g;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lt6/l;->f()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lt6/l;->e(I)Lt6/e;

    move-result-object v1

    invoke-virtual {v1}, Lt6/e;->i()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt6/j$g;

    if-nez v3, :cond_1

    new-instance v3, Lt6/j$g;

    invoke-virtual {v1}, Lt6/e;->i()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lt6/j$g;-><init>(Ljava/lang/String;Lt6/j$a;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v3, v1}, Lt6/j$g;->b(Lt6/j$g;Lt6/e;)V

    invoke-virtual {v1}, Lt6/e;->f()Lt6/l;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lt6/l;->f()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v1, p2}, Lt6/j;->F1(Lt6/l;Ljava/util/Map;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public G0()V
    .locals 1

    sget-object v0, Lt6/j;->x0:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lt6/j;->k0:Landroid/graphics/Bitmap;

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    return-void
.end method

.method public final H1(Lt6/b;)V
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

    iput-object p1, p0, Lt6/j;->e0:Lt6/b;

    iget-object p1, p0, Lt6/j;->Z:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lt6/j;->a0:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lt6/j;->d0:LF7/l;

    invoke-virtual {p1}, LF7/l;->v()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid thread!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O1(Lt6/a;FJJ)V
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

    iget-object v0, p0, Lt6/j;->j0:Lt6/c;

    new-instance v8, Lt6/b;

    move-object v1, v8

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lt6/b;-><init>(FLt6/a;JJ)V

    invoke-virtual {v0, v8}, Lt6/c;->d(Lt6/b;)V

    return-void
.end method

.method public final X1(Lt6/j$g;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "summary"
        }
    .end annotation

    invoke-static {p1}, Lt6/j$g;->c(Lt6/j$g;)D

    const/4 p1, 0x1

    return p1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lt6/j;

    invoke-direct {v0}, Lt6/j;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 8

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget v0, p0, Lt6/j;->n0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt6/j;->n0:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lt6/j;->m0:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x3b9aca00

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    iget v4, p0, Lt6/j;->n0:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lt6/j;->o0:I

    iput v5, p0, Lt6/j;->n0:I

    add-long/2addr v2, v6

    iput-wide v2, p0, Lt6/j;->m0:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lt6/j;->m0:J

    :cond_0
    iget-object v0, p0, Lt6/j;->j0:Lt6/c;

    iget v1, p0, Lt6/j;->h0:I

    invoke-virtual {v0, v1}, Lt6/c;->e(I)V

    iget-object v0, p0, Lt6/j;->l0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt6/j;->k0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lt6/j;->h0:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lt6/j;->h0:I

    const/16 v1, 0x18

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lt6/j;->k0:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lt6/j;->k0:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lt6/j;->l0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lt6/j;->l0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v0, p0, Lt6/j;->i0:Landroid/widget/ImageView;

    iget-object v1, p0, Lt6/j;->l0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lt6/j;->j0:Lt6/c;

    iget-object v1, p0, Lt6/j;->k0:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lt6/j;->e0:Lt6/b;

    invoke-virtual {v0, v1, v2}, Lt6/c;->c(Landroid/graphics/Bitmap;Lt6/b;)V

    iget-object v0, p0, Lt6/j;->l0:Landroid/graphics/drawable/BitmapDrawable;

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

    iget-object v0, p0, Lt6/j;->X:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lt6/j;->o0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " FPS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lt6/j;->b0:I

    iget v1, p0, Lt6/j;->o0:I

    if-eq v0, v1, :cond_2

    iput v1, p0, Lt6/j;->b0:I

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt6/j;->Y:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt6/j;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lt6/j;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
