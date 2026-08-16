.class public Ls6/e;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final l0:Ljava/lang/String; = "NativeMemoryPanel"

.field public static final m0:Ljava/lang/Class;

.field public static final n0:I = 0x18

.field public static final o0:Z = false

.field public static p0:J

.field public static q0:Ls6/a;

.field public static final r0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls6/e;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile s0:Z

.field public static t0:J


# instance fields
.field public X:Landroid/widget/TextView;

.field public Y:Landroid/view/View;

.field public Z:Landroid/view/View;

.field public a0:I

.field public b0:Landroidx/recyclerview/widget/RecyclerView;

.field public c0:LF7/l;

.field public d0:Ls6/b;

.field public e0:I

.field public f0:Z

.field public g0:I

.field public h0:Landroid/widget/ImageView;

.field public final i0:Ls6/c;

.field public j0:Landroid/graphics/Bitmap;

.field public k0:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ls6/e;

    sput-object v0, Ls6/e;->m0:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Ls6/e;->r0:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Ls6/e;->s0:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 8
    const-string v0, "Native memory profiler"

    const-string v1, "NativeMemoryPanel"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-object v2, p0, Ls6/e;->c0:LF7/l;

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Ls6/e;->e0:I

    .line 11
    iput-boolean v0, p0, Ls6/e;->f0:Z

    const/16 v0, 0x5a

    .line 12
    iput v0, p0, Ls6/e;->g0:I

    .line 13
    new-instance v0, Ls6/c;

    invoke-direct {v0}, Ls6/c;-><init>()V

    iput-object v0, p0, Ls6/e;->i0:Ls6/c;

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
    iput-object p1, p0, Ls6/e;->c0:LF7/l;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Ls6/e;->e0:I

    .line 4
    iput-boolean p1, p0, Ls6/e;->f0:Z

    const/16 p1, 0x5a

    .line 5
    iput p1, p0, Ls6/e;->g0:I

    .line 6
    new-instance p1, Ls6/c;

    invoke-direct {p1}, Ls6/c;-><init>()V

    iput-object p1, p0, Ls6/e;->i0:Ls6/c;

    const/4 p1, 0x0

    .line 7
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method private A1()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls6/e;->d0:Ls6/b;

    invoke-virtual {v0}, Ls6/b;->b()Ls6/a;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v2, Ls6/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Java GC?: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ls6/e;->d0:Ls6/b;

    invoke-virtual {v4}, Ls6/b;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ls6/d;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LF7/i;->r(Z)V

    iget-object v4, v2, LF7/i;->f:LF7/h;

    iput-boolean v3, v4, LF7/h;->c:Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Ls6/e;->d0:Ls6/b;

    invoke-virtual {v2}, Ls6/b;->d()F

    move-result v2

    new-instance v4, Ls6/d;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "Native memory: %.1f MB"

    invoke-static {v5, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ls6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, LF7/i;->r(Z)V

    iget-object v2, v4, LF7/i;->f:LF7/h;

    iput-boolean v3, v2, LF7/h;->c:Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ls6/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SGC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ls6/e;->d0:Ls6/b;

    invoke-virtual {v5}, Ls6/b;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ls6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LF7/i;->r(Z)V

    iget-object v4, v2, LF7/i;->f:LF7/h;

    iput-boolean v3, v4, LF7/h;->c:Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0}, Ls6/a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ls6/e$a;

    invoke-direct {v0, p0}, Ls6/e$a;-><init>(Ls6/e;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "Filament"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Engine"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-instance v6, Ls6/d;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ls6/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, LF7/i;->r(Z)V

    iget-object v4, v6, LF7/i;->f:LF7/h;

    iput-boolean v3, v4, LF7/h;->c:Z

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cant show a null data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static C1(F)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    sget-boolean p0, Ls6/e;->s0:Z

    if-eqz p0, :cond_3

    sget-object p0, Ls6/e;->q0:Ls6/a;

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

    sget-object p0, Ls6/e;->q0:Ls6/a;

    invoke-virtual {p0}, Ls6/a;->a()V

    const/4 p0, 0x0

    :goto_0
    sget-object v2, Ls6/e;->r0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ls6/e;

    invoke-virtual {v4}, Ls6/e;->y1()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v5, Ls6/e;->q0:Ls6/a;

    sget-wide v8, Ls6/e;->t0:J

    move-wide v6, v0

    invoke-virtual/range {v4 .. v9}, Ls6/e;->G1(Ls6/a;JJ)V

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    sput-wide v0, Ls6/e;->t0:J

    :cond_3
    :goto_1
    return-void
.end method

.method public static D1()Z
    .locals 1

    sget-boolean v0, Ls6/e;->s0:Z

    return v0
.end method

.method private E1(LF7/i;)Ljava/util/List;
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

.method public static F1(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    return-void
.end method

.method private H1(F)I
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

.method public static I1()V
    .locals 3

    const/16 v0, 0xfa

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x15e

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Ls6/e;

    invoke-direct {v2}, Ls6/e;-><init>()V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static synthetic p1(Ls6/e;)Ls6/c;
    .locals 0

    iget-object p0, p0, Ls6/e;->i0:Ls6/c;

    return-object p0
.end method

.method public static synthetic q1(Ls6/e;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Ls6/e;->j0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic r1(Ls6/e;Ls6/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Ls6/e;->B1(Ls6/b;)V

    return-void
.end method

.method public static synthetic s1(Ls6/e;)Z
    .locals 0

    iget-boolean p0, p0, Ls6/e;->f0:Z

    return p0
.end method

.method public static synthetic t1(Ls6/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Ls6/e;->f0:Z

    return p1
.end method

.method public static synthetic u1(Ls6/e;LF7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Ls6/e;->E1(LF7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v1(Ls6/e;)Ls6/b;
    .locals 0

    iget-object p0, p0, Ls6/e;->d0:Ls6/b;

    return-object p0
.end method

.method public static synthetic w1(Ls6/e;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Ls6/e;->A1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static x1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static z1()V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Ls6/e;->s0:Z

    :goto_0
    sget-object v1, Ls6/e;->r0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls6/e;

    invoke-virtual {v1}, Ls6/e;->y1()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v3, Ls6/e;->s0:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean v0, Ls6/e;->s0:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    sput-wide v0, Ls6/e;->p0:J

    const/4 v0, 0x0

    sput-object v0, Ls6/e;->q0:Ls6/a;

    return-void

    :cond_2
    sput-boolean v3, Ls6/e;->s0:Z

    new-instance v0, Ls6/a;

    sget-wide v1, Ls6/e;->p0:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Ls6/e;->p0:J

    invoke-direct {v0, v1, v2}, Ls6/a;-><init>(J)V

    sput-object v0, Ls6/e;->q0:Ls6/a;

    return-void
.end method


# virtual methods
.method public final B1(Ls6/b;)V
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

    iput-object p1, p0, Ls6/e;->d0:Ls6/b;

    iget-object p1, p0, Ls6/e;->Y:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ls6/e;->Z:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ls6/e;->c0:LF7/l;

    invoke-virtual {p1}, LF7/l;->v()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid thread!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C0()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0184

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Ls6/e;->r0:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f09057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ls6/e;->Y:Landroid/view/View;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ls6/e;->Z:Landroid/view/View;

    iget-object v1, p0, Ls6/e;->Y:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Ls6/e;->Z:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Ls6/e;->h0:Landroid/widget/ImageView;

    iget-object v1, p0, Ls6/e;->i0:Ls6/c;

    iget v4, p0, Ls6/e;->g0:I

    invoke-virtual {v1, v4}, Ls6/c;->e(I)V

    iget-object v1, p0, Ls6/e;->k0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ls6/e;->j0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Ls6/e;->g0:I

    const/16 v4, 0x18

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Ls6/e;->j0:Landroid/graphics/Bitmap;

    iget-object v4, p0, Ls6/e;->i0:Ls6/c;

    iget-object v5, p0, Ls6/e;->d0:Ls6/b;

    invoke-virtual {v4, v1, v5}, Ls6/c;->c(Landroid/graphics/Bitmap;Ls6/b;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Ls6/e;->j0:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Ls6/e;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v1, p0, Ls6/e;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v1, p0, Ls6/e;->h0:Landroid/widget/ImageView;

    iget-object v3, p0, Ls6/e;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Ls6/e;->h0:Landroid/widget/ImageView;

    new-instance v3, Ls6/e$b;

    invoke-direct {v3, p0}, Ls6/e$b;-><init>(Ls6/e;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Ls6/e$c;

    invoke-direct {v3, p0, v1}, Ls6/e$c;-><init>(Ls6/e;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Ls6/e$d;

    invoke-direct {v3, p0}, Ls6/e$d;-><init>(Ls6/e;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ls6/e;->X:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {}, LK8/d;->d()F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, p0, Ls6/e;->X:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ls6/e;->H1(F)I

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

    iput-object v1, p0, Ls6/e;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, LF7/l;

    new-instance v3, Ls6/e$e;

    invoke-direct {v3, p0}, Ls6/e$e;-><init>(Ls6/e;)V

    invoke-direct {v2, v1, v3}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v2, p0, Ls6/e;->c0:LF7/l;

    return-object v0
.end method

.method public G0()V
    .locals 1

    sget-object v0, Ls6/e;->r0:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Ls6/e;->j0:Landroid/graphics/Bitmap;

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    return-void
.end method

.method public G1(Ls6/a;JJ)V
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

    iget-object v0, p0, Ls6/e;->i0:Ls6/c;

    new-instance v7, Ls6/b;

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Ls6/b;-><init>(Ls6/a;JJ)V

    invoke-virtual {v0, v7}, Ls6/c;->d(Ls6/b;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Ls6/e;

    invoke-direct {v0}, Ls6/e;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Ls6/e;->i0:Ls6/c;

    iget v1, p0, Ls6/e;->g0:I

    invoke-virtual {v0, v1}, Ls6/c;->e(I)V

    iget-object v0, p0, Ls6/e;->k0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls6/e;->j0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Ls6/e;->g0:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Ls6/e;->g0:I

    const/16 v1, 0x18

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ls6/e;->j0:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Ls6/e;->j0:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Ls6/e;->k0:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Ls6/e;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v0, p0, Ls6/e;->h0:Landroid/widget/ImageView;

    iget-object v1, p0, Ls6/e;->k0:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Ls6/e;->i0:Ls6/c;

    iget-object v1, p0, Ls6/e;->j0:Landroid/graphics/Bitmap;

    iget-object v2, p0, Ls6/e;->d0:Ls6/b;

    invoke-virtual {v0, v1, v2}, Ls6/c;->c(Landroid/graphics/Bitmap;Ls6/b;)V

    iget-object v0, p0, Ls6/e;->k0:Landroid/graphics/drawable/BitmapDrawable;

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

    iget-object v2, p0, Ls6/e;->X:Landroid/widget/TextView;

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

.method public y1()Z
    .locals 1

    iget-boolean v0, p0, Ls6/e;->f0:Z

    return v0
.end method
