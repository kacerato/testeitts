.class public Lo6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final j0:Ljava/lang/String; = "ComponentStatisticProfiler"

.field public static final k0:Ljava/lang/Class;

.field public static final l0:I = 0x18

.field public static m0:J

.field public static n0:Lo6/b;

.field public static final o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo6/a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile p0:Z

.field public static q0:J


# instance fields
.field public X:Landroid/widget/TextView;

.field public Y:Landroid/view/View;

.field public Z:Landroid/view/View;

.field public a0:LF7/l;

.field public b0:Lo6/c;

.field public c0:Lo6/c;

.field public d0:Z

.field public e0:I

.field public f0:Landroid/widget/ImageView;

.field public final g0:Lo6/d;

.field public h0:Landroid/graphics/Bitmap;

.field public i0:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lo6/a;

    sput-object v0, Lo6/a;->k0:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lo6/a;->o0:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lo6/a;->p0:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 7
    const-string v0, "Component profiler"

    const-string v1, "ComponentStatisticProfiler"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-object v2, p0, Lo6/a;->a0:LF7/l;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lo6/a;->d0:Z

    const/16 v0, 0x5a

    .line 10
    iput v0, p0, Lo6/a;->e0:I

    .line 11
    new-instance v0, Lo6/d;

    invoke-direct {v0}, Lo6/d;-><init>()V

    iput-object v0, p0, Lo6/a;->g0:Lo6/d;

    const/4 v0, 0x0

    .line 12
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
    iput-object p1, p0, Lo6/a;->a0:LF7/l;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lo6/a;->d0:Z

    const/16 p1, 0x5a

    .line 4
    iput p1, p0, Lo6/a;->e0:I

    .line 5
    new-instance p1, Lo6/d;

    invoke-direct {p1}, Lo6/d;-><init>()V

    iput-object p1, p0, Lo6/a;->g0:Lo6/d;

    const/4 p1, 0x0

    .line 6
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method private B1()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo6/a;->b0:Lo6/c;

    invoke-virtual {v0}, Lo6/c;->a()Lo6/b;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lo6/a;->C1(Lo6/b;)Lo6/j;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Repeat"

    invoke-virtual {v0}, Lo6/b;->f()Lo6/i;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lo6/a;->A1(Ljava/lang/String;Lo6/i;)Lo6/j;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Parallel"

    invoke-virtual {v0}, Lo6/b;->d()Lo6/i;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lo6/a;->A1(Ljava/lang/String;Lo6/i;)Lo6/j;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cant show a null data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static E1(F)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    sget-boolean p0, Lo6/a;->p0:Z

    if-eqz p0, :cond_3

    sget-object p0, Lo6/a;->n0:Lo6/b;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/4 p0, 0x0

    :goto_0
    sget-object v2, Lo6/a;->o0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo6/a;

    invoke-virtual {v4}, Lo6/a;->y1()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v5, Lo6/a;->n0:Lo6/b;

    sget-wide v8, Lo6/a;->q0:J

    move-wide v6, v0

    invoke-virtual/range {v4 .. v9}, Lo6/a;->J1(Lo6/b;JJ)V

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    sput-wide v0, Lo6/a;->q0:J

    :cond_3
    :goto_1
    return-void
.end method

.method public static F1()Z
    .locals 1

    sget-boolean v0, Lo6/a;->p0:Z

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

    instance-of v1, p1, Lo6/j;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lo6/j;

    invoke-virtual {v1}, Lo6/j;->u()Lo6/i;

    move-result-object v2

    invoke-virtual {v2}, Lo6/i;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Types"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo6/a;->b0:Lo6/c;

    invoke-virtual {v2}, Lo6/c;->a()Lo6/b;

    move-result-object v2

    invoke-virtual {v1}, Lo6/j;->u()Lo6/i;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v0}, Lo6/a;->I1(Lo6/b;Lo6/i;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lo6/j;->u()Lo6/i;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lo6/a;->H1(Lo6/i;Ljava/util/List;)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
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

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static K1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "elapsedNanos"
        }
    .end annotation

    invoke-static {p0}, Lo6/a;->M1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lo6/a;->n0:Lo6/b;

    invoke-virtual {v0, p0, p1, p2}, Lo6/b;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static L1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "elapsedNanos"
        }
    .end annotation

    invoke-static {p0}, Lo6/a;->M1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lo6/a;->n0:Lo6/b;

    invoke-virtual {v0, p0, p1, p2}, Lo6/b;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static M1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    sget-boolean v0, Lo6/a;->p0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lo6/a;->n0:Lo6/b;

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->R0()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method public static N1()V
    .locals 3

    const/16 v0, 0xfa

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x15e

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lo6/a;

    invoke-direct {v2}, Lo6/a;-><init>()V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static synthetic p1(Lo6/a;)Lo6/d;
    .locals 0

    iget-object p0, p0, Lo6/a;->g0:Lo6/d;

    return-object p0
.end method

.method public static synthetic q1(Lo6/a;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lo6/a;->h0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic r1(Lo6/a;Lo6/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo6/a;->D1(Lo6/c;)V

    return-void
.end method

.method public static synthetic s1(Lo6/a;)Z
    .locals 0

    iget-boolean p0, p0, Lo6/a;->d0:Z

    return p0
.end method

.method public static synthetic t1(Lo6/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo6/a;->d0:Z

    return p1
.end method

.method public static synthetic u1(Lo6/a;LF7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lo6/a;->G1(LF7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v1(Lo6/a;)Lo6/c;
    .locals 0

    iget-object p0, p0, Lo6/a;->b0:Lo6/c;

    return-object p0
.end method

.method public static synthetic w1(Lo6/a;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lo6/a;->B1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x1(Lo6/a;)LF7/l;
    .locals 0

    iget-object p0, p0, Lo6/a;->a0:LF7/l;

    return-object p0
.end method

.method public static z1()V
    .locals 6

    const/4 v0, 0x0

    sput-boolean v0, Lo6/a;->p0:Z

    :goto_0
    sget-object v1, Lo6/a;->o0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo6/a;

    invoke-virtual {v1}, Lo6/a;->y1()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v3, Lo6/a;->p0:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean v0, Lo6/a;->p0:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    sput-wide v0, Lo6/a;->m0:J

    const/4 v0, 0x0

    sput-object v0, Lo6/a;->n0:Lo6/b;

    return-void

    :cond_2
    new-instance v0, Lo6/b;

    sget-wide v1, Lo6/a;->m0:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    sput-wide v4, Lo6/a;->m0:J

    invoke-direct {v0, v1, v2}, Lo6/b;-><init>(J)V

    sput-object v0, Lo6/a;->n0:Lo6/b;

    invoke-virtual {v0}, Lo6/b;->a()V

    sput-boolean v3, Lo6/a;->p0:Z

    return-void
.end method


# virtual methods
.method public final A1(Ljava/lang/String;Lo6/i;)Lo6/j;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "stack"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo6/i;->h()D

    move-result-wide v1

    double-to-float p1, v1

    const/4 v1, 0x1

    invoke-static {p1, v1}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lo6/j;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lo6/j;-><init>(Ljava/lang/String;Lo6/i;)V

    invoke-virtual {p2}, Lo6/i;->k()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, LF7/i;->r(Z)V

    iget-object v0, p1, LF7/i;->f:LF7/h;

    invoke-virtual {p2}, Lo6/i;->i()Z

    move-result p2

    iput-boolean p2, v0, LF7/h;->c:Z

    return-object p1
.end method

.method public C0()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0184

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lo6/a;->o0:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f09057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo6/a;->Y:Landroid/view/View;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo6/a;->Z:Landroid/view/View;

    iget-object v1, p0, Lo6/a;->Y:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lo6/a;->Z:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lo6/a;->f0:Landroid/widget/ImageView;

    iget-object v1, p0, Lo6/a;->g0:Lo6/d;

    iget v4, p0, Lo6/a;->e0:I

    invoke-virtual {v1, v4}, Lo6/d;->e(I)V

    iget-object v1, p0, Lo6/a;->i0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo6/a;->h0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lo6/a;->e0:I

    const/16 v4, 0x18

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lo6/a;->h0:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lo6/a;->g0:Lo6/d;

    iget-object v5, p0, Lo6/a;->b0:Lo6/c;

    invoke-virtual {v4, v1, v5}, Lo6/d;->c(Landroid/graphics/Bitmap;Lo6/c;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lo6/a;->h0:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lo6/a;->i0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v1, p0, Lo6/a;->i0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v1, p0, Lo6/a;->f0:Landroid/widget/ImageView;

    iget-object v3, p0, Lo6/a;->i0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lo6/a;->f0:Landroid/widget/ImageView;

    new-instance v3, Lo6/a$c;

    invoke-direct {v3, p0}, Lo6/a$c;-><init>(Lo6/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lo6/a$d;

    invoke-direct {v3, p0, v1}, Lo6/a$d;-><init>(Lo6/a;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lo6/a$e;

    invoke-direct {v3, p0}, Lo6/a$e;-><init>(Lo6/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lo6/a;->X:Landroid/widget/TextView;

    const-string v3, "0 components | 0 types | repeat 0.0 ms | parallel 0.0 ms"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0902cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, LF7/l;

    new-instance v3, Lo6/a$f;

    invoke-direct {v3, p0}, Lo6/a$f;-><init>(Lo6/a;)V

    invoke-direct {v2, v1, v3}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v2, p0, Lo6/a;->a0:LF7/l;

    return-object v0
.end method

.method public final C1(Lo6/b;)Lo6/j;
    .locals 3
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

    const-string v1, "Types: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo6/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " components / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo6/b;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " types"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lo6/j;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo6/b;->j()Lo6/i;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo6/j;-><init>(Ljava/lang/String;Lo6/i;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, LF7/i;->r(Z)V

    iget-object v0, v1, LF7/i;->f:LF7/h;

    invoke-virtual {p1}, Lo6/b;->j()Lo6/i;

    move-result-object p1

    invoke-virtual {p1}, Lo6/i;->i()Z

    move-result p1

    iput-boolean p1, v0, LF7/h;->c:Z

    return-object v1
.end method

.method public final D1(Lo6/c;)V
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

    iput-object p1, p0, Lo6/a;->b0:Lo6/c;

    iget-object p1, p0, Lo6/a;->Y:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lo6/a;->Z:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lo6/a;->a0:LF7/l;

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

    sget-object v0, Lo6/a;->o0:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo6/a;->h0:Landroid/graphics/Bitmap;

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    return-void
.end method

.method public final H1(Lo6/i;Ljava/util/List;)V
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
            "Lo6/i;",
            "Ljava/util/List<",
            "LF7/i;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p1}, Lo6/i;->k()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lo6/i;->k()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lo6/i;->j(I)Lo6/f;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lo6/a$b;

    invoke-direct {p1, p0}, Lo6/a$b;-><init>(Lo6/a;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move p1, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo6/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lo6/f;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2}, Lo6/f;->d()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.1fms"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lo6/g;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lo6/g;-><init>(Ljava/lang/String;Lo6/f;)V

    invoke-virtual {v4, v1}, LF7/i;->r(Z)V

    iget-object v2, v4, LF7/i;->f:LF7/h;

    iput-boolean v1, v2, LF7/h;->c:Z

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final I1(Lo6/b;Lo6/i;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "stack",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo6/b;",
            "Lo6/i;",
            "Ljava/util/List<",
            "LF7/i;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lo6/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Components: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo6/b;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo6/e;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LF7/i;->r(Z)V

    iget-object v2, v0, LF7/i;->f:LF7/h;

    iput-boolean v1, v2, LF7/h;->c:Z

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lo6/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo6/b;->i()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lo6/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LF7/i;->r(Z)V

    iget-object p1, v0, LF7/i;->f:LF7/h;

    iput-boolean v1, p1, LF7/h;->c:Z

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p2}, Lo6/i;->k()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Lo6/i;->k()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p2, v0}, Lo6/i;->j(I)Lo6/f;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lo6/a$a;

    invoke-direct {p2, p0}, Lo6/a$a;-><init>(Lo6/a;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move p2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo6/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lo6/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo6/f;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Lo6/g;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lo6/g;-><init>(Ljava/lang/String;Lo6/f;)V

    invoke-virtual {v3, v1}, LF7/i;->r(Z)V

    iget-object v0, v3, LF7/i;->f:LF7/h;

    iput-boolean v1, v0, LF7/h;->c:Z

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public J1(Lo6/b;JJ)V
    .locals 7
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

    new-instance v6, Lo6/c;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lo6/c;-><init>(Lo6/b;JJ)V

    iput-object v6, p0, Lo6/a;->c0:Lo6/c;

    iget-object p1, p0, Lo6/a;->g0:Lo6/d;

    invoke-virtual {p1, v6}, Lo6/d;->d(Lo6/c;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lo6/a;

    invoke-direct {v0}, Lo6/a;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Lo6/a;->g0:Lo6/d;

    iget v1, p0, Lo6/a;->e0:I

    invoke-virtual {v0, v1}, Lo6/d;->e(I)V

    iget-object v0, p0, Lo6/a;->i0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo6/a;->h0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lo6/a;->e0:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lo6/a;->e0:I

    const/16 v1, 0x18

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lo6/a;->h0:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lo6/a;->h0:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lo6/a;->i0:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lo6/a;->i0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v0, p0, Lo6/a;->f0:Landroid/widget/ImageView;

    iget-object v1, p0, Lo6/a;->i0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lo6/a;->g0:Lo6/d;

    iget-object v1, p0, Lo6/a;->h0:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lo6/a;->b0:Lo6/c;

    invoke-virtual {v0, v1, v2}, Lo6/d;->c(Landroid/graphics/Bitmap;Lo6/c;)V

    iget-object v0, p0, Lo6/a;->i0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public o1()V
    .locals 5

    iget-object v0, p0, Lo6/a;->c0:Lo6/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo6/a;->X:Landroid/widget/TextView;

    const-string v1, "0 components | 0 types | repeat 0.0 ms | parallel 0.0 ms"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo6/a;->c0:Lo6/c;

    invoke-virtual {v1}, Lo6/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " components | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo6/a;->c0:Lo6/c;

    invoke-virtual {v1}, Lo6/c;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " types | repeat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo6/a;->c0:Lo6/c;

    invoke-virtual {v1}, Lo6/c;->c()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | parallel "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo6/a;->c0:Lo6/c;

    invoke-virtual {v3}, Lo6/c;->b()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3, v2}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo6/a;->X:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public y1()Z
    .locals 1

    iget-boolean v0, p0, Lo6/a;->d0:Z

    return v0
.end method
