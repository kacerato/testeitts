.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final l0:Ljava/lang/String; = "MemoryPanel"

.field public static final m0:Ljava/lang/Class;

.field public static final n0:I = 0x18

.field public static o0:Z

.field public static p0:J

.field public static q0:Lr6/a;

.field public static r0:Lr6/a;

.field public static final s0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile t0:Z

.field public static u0:Ljava/lang/Thread;

.field public static v0:I

.field public static w0:Z

.field public static x0:J


# instance fields
.field public X:Landroid/widget/TextView;

.field public Y:Landroid/view/View;

.field public Z:Landroid/view/View;

.field public a0:I

.field public b0:Landroidx/recyclerview/widget/RecyclerView;

.field public c0:LF7/l;

.field public d0:Lr6/b;

.field public e0:I

.field public f0:Z

.field public g0:I

.field public h0:Landroid/widget/ImageView;

.field public final i0:Lr6/c;

.field public j0:Landroid/graphics/Bitmap;

.field public k0:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->m0:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->s0:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->t0:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->u0:Ljava/lang/Thread;

    const/16 v1, 0x63

    sput v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->v0:I

    sput-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->w0:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 8
    const-string v0, "Memory profiler"

    const-string v1, "MemoryPanel"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->c0:LF7/l;

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->e0:I

    .line 11
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->f0:Z

    const/16 v0, 0x5a

    .line 12
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->g0:I

    .line 13
    new-instance v0, Lr6/c;

    invoke-direct {v0}, Lr6/c;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->i0:Lr6/c;

    const/4 v0, 0x0

    .line 14
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
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
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->c0:LF7/l;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->e0:I

    .line 4
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->f0:Z

    const/16 p1, 0x5a

    .line 5
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->g0:I

    .line 6
    new-instance p1, Lr6/c;

    invoke-direct {p1}, Lr6/c;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->i0:Lr6/c;

    const/4 p1, 0x0

    .line 7
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static A1()V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->t0:Z

    move v1, v0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->s0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->z1()Z

    move-result v2

    if-eqz v2, :cond_0

    sput-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->t0:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->t0:Z

    if-nez v1, :cond_3

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->p0:J

    const/4 v1, 0x0

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->q0:Lr6/a;

    sget-boolean v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->w0:Z

    if-eqz v1, :cond_2

    sput-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->w0:Z

    invoke-static {}, Lr6/h;->a()V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->l:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher$a;

    sput-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->t0:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->u0:Ljava/lang/Thread;

    new-instance v0, Lr6/a;

    sget-wide v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->p0:J

    invoke-direct {v0, v1, v2}, Lr6/a;-><init>(J)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->r0:Lr6/a;

    sget-wide v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->p0:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->p0:J

    return-void
.end method

.method private B1()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->d0:Lr6/b;

    invoke-virtual {v0}, Lr6/b;->b()Lr6/a;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->d0:Lr6/b;

    invoke-virtual {v2}, Lr6/b;->c()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    new-instance v4, Lr6/d;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Heap memory: %.1f MB"

    invoke-static {v5, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lr6/d;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, LF7/i;->r(Z)V

    iget-object v3, v4, LF7/i;->f:LF7/h;

    iput-boolean v2, v3, LF7/h;->c:Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lr6/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Java GC?: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->d0:Lr6/b;

    invoke-virtual {v6}, Lr6/b;->g()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lr6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, LF7/i;->r(Z)V

    iget-object v4, v3, LF7/i;->f:LF7/h;

    iput-boolean v2, v4, LF7/h;->c:Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->d0:Lr6/b;

    invoke-virtual {v3}, Lr6/b;->e()F

    move-result v3

    new-instance v4, Lr6/d;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "Native memory: %.1f MB"

    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lr6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, LF7/i;->r(Z)V

    iget-object v3, v4, LF7/i;->f:LF7/h;

    iput-boolean v2, v3, LF7/h;->c:Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->d0:Lr6/b;

    invoke-virtual {v3}, Lr6/b;->c()J

    new-instance v3, Lr6/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SGC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->d0:Lr6/b;

    invoke-virtual {v5}, Lr6/b;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lr6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, LF7/i;->r(Z)V

    iget-object v4, v3, LF7/i;->f:LF7/h;

    iput-boolean v2, v4, LF7/h;->c:Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lr6/a;->c()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lr6/a;->j(I)Lr6/i;

    move-result-object v3

    invoke-virtual {v3}, Lr6/i;->e()Lr6/f;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lr6/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "[E]"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    new-instance v6, Lr6/g;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v4, v3}, Lr6/g;-><init>(Ljava/lang/String;Lr6/f;Z)V

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, LF7/i;->r(Z)V

    iget-object v3, v6, LF7/i;->f:LF7/h;

    invoke-virtual {v4}, Lr6/f;->j()Z

    move-result v4

    iput-boolean v4, v3, LF7/h;->c:Z

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cant show a null data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static D1(F)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    sget-boolean p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->t0:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->r0:Lr6/a;

    invoke-virtual {p0}, Lr6/a;->a()V

    const/4 p0, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->s0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->z1()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->r0:Lr6/a;

    sget-wide v8, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->x0:J

    move-wide v6, v0

    invoke-virtual/range {v4 .. v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->I1(Lr6/a;JJ)V

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    sput-wide v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->x0:J

    return-void
.end method

.method public static E1()Z
    .locals 1

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->t0:Z

    return v0
.end method

.method private G1(LF7/i;)Ljava/util/List;
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

    instance-of v1, p1, Lr6/g;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lr6/g;

    invoke-virtual {v1}, Lr6/g;->u()Lr6/f;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->F1(Lr6/f;Ljava/util/List;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF7/i;

    invoke-virtual {p1}, LF7/i;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, LF7/i;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static H1(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->t0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->r0:Lr6/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    move v5, v3

    :goto_0
    array-length v6, v0

    const/4 v7, 0x1

    if-ge v4, v6, :cond_4

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.itsmagic.engine.Activities.Editor.Panels.Profiler.MemoryProfiler.AllocatorWatcher"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "notify"

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/C;->c()Ljava/util/List;

    move-result-object v0

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    move v5, v3

    move v6, v5

    move v8, v6

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_c

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    if-nez v8, :cond_6

    const-string v10, "AllocatorWatcher.notify"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v6, v7

    move v8, v6

    goto :goto_3

    :cond_6
    const-string v10, "DebugException"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_3

    :cond_7
    const-string v10, "com.itsmagic.engine.Core.Core."

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_4

    :cond_8
    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_9
    const-string v10, "at "

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->C()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.itsmagic.engine."

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_c
    :goto_4
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->r0:Lr6/a;

    invoke-virtual {v0, p0, v4, v1, v2}, Lr6/a;->h(Ljava/lang/Object;Ljava/util/List;J)V

    return-void
.end method

.method public static K1()V
    .locals 3

    const/16 v0, 0xfa

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x15e

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;-><init>()V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)Lr6/c;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->i0:Lr6/c;

    return-object p0
.end method

.method public static synthetic q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->j0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;Lr6/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->C1(Lr6/b;)V

    return-void
.end method

.method public static synthetic s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->f0:Z

    return p0
.end method

.method public static synthetic t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->f0:Z

    return p1
.end method

.method public static synthetic u1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;LF7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->G1(LF7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)Lr6/b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->d0:Lr6/b;

    return-object p0
.end method

.method public static synthetic w1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->B1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)LF7/l;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->c0:LF7/l;

    return-object p0
.end method

.method public static y1()Z
    .locals 1

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->o0:Z

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

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->s0:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f09057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->Y:Landroid/view/View;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->Z:Landroid/view/View;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->Y:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->Z:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->h0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->i0:Lr6/c;

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->g0:I

    invoke-virtual {v1, v4}, Lr6/c;->e(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->k0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->j0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->g0:I

    const/16 v4, 0x18

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->j0:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->i0:Lr6/c;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->d0:Lr6/b;

    invoke-virtual {v4, v1, v5}, Lr6/c;->c(Landroid/graphics/Bitmap;Lr6/b;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->j0:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->h0:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->h0:Landroid/widget/ImageView;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$e;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$f;

    invoke-direct {v3, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$g;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->X:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {}, LK8/d;->d()F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->X:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->J1(F)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FPS"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0902cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, LF7/l;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$h;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)V

    invoke-direct {v2, v1, v3}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->c0:LF7/l;

    return-object v0
.end method

.method public final C1(Lr6/b;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->d0:Lr6/b;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->Y:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->Z:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->c0:LF7/l;

    invoke-virtual {p1}, LF7/l;->v()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid thread!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final F1(Lr6/f;Ljava/util/List;)V
    .locals 8
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
            "Lr6/f;",
            "Ljava/util/List<",
            "LF7/i;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lr6/f;->c()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$b;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$c;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;Lr6/f;)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const-string v3, "]"

    const-string v4, " ["

    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lr6/f;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lr6/d;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lr6/d;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, LF7/i;->r(Z)V

    iget-object v5, v3, LF7/i;->f:LF7/h;

    iput-boolean v4, v5, LF7/h;->c:Z

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lr6/f;->h()Ljava/util/Map;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$d;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p1, Lr6/e;

    invoke-direct {p1}, Lr6/e;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_1
    if-ltz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr6/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lr6/f;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lr6/f;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lr6/g;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v1}, Lr6/g;-><init>(Ljava/lang/String;Lr6/f;)V

    invoke-virtual {v6, v2}, LF7/i;->r(Z)V

    iget-object v5, v6, LF7/i;->f:LF7/h;

    invoke-virtual {v1}, Lr6/f;->j()Z

    move-result v1

    iput-boolean v1, v5, LF7/h;->c:Z

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public G0()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->s0:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->j0:Landroid/graphics/Bitmap;

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    return-void
.end method

.method public I1(Lr6/a;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frameData",
            "usedBytes",
            "previousFrameUsedGC"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->i0:Lr6/c;

    new-instance v7, Lr6/b;

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lr6/b;-><init>(Lr6/a;JJ)V

    invoke-virtual {v0, v7}, Lr6/c;->d(Lr6/b;)V

    return-void
.end method

.method public final J1(F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
        }
    .end annotation

    float-to-int p1, p1

    return p1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->i0:Lr6/c;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->g0:I

    invoke-virtual {v0, v1}, Lr6/c;->e(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->k0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->j0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->g0:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->g0:I

    const/16 v1, 0x18

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->j0:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->j0:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->k0:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->h0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->i0:Lr6/c;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->j0:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->d0:Lr6/b;

    invoke-virtual {v0, v1, v2}, Lr6/c;->c(Landroid/graphics/Bitmap;Lr6/b;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public o1()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v0, v1

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->X:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Heap: %.1f MB"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public z1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->f0:Z

    return v0
.end method
