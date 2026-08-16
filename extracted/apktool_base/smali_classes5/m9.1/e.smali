.class public final Lm9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/e$d;,
        Lm9/e$b;,
        Lm9/e$c;
    }
.end annotation


# static fields
.field public static final Q:F = 0.001f

.field public static final R:F = 0.05f

.field public static final S:I = 0x8

.field public static final T:I = 0x8

.field public static final U:I = 0x10

.field public static final V:[Lm9/d;


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public volatile D:Ln9/b;

.field public E:F

.field public F:F

.field public G:F

.field public volatile H:F

.field public volatile I:F

.field public volatile J:F

.field public volatile K:F

.field public L:F

.field public M:F

.field public N:Z

.field public O:Z

.field public volatile P:Z

.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lm9/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lm9/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            "Lm9/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lm9/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lm9/e$d;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lm9/e$c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lm9/d;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lm9/d;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lm9/d;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lm9/j;

.field public final r:LQb/b;

.field public volatile s:[Lm9/d;

.field public volatile t:Lm9/e$d;

.field public volatile u:Lm9/e$b;

.field public v:[Lm9/d;

.field public w:I

.field public x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm9/c;",
            ">;"
        }
    .end annotation
.end field

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lm9/d;

    sput-object v0, Lm9/e;->V:[Lm9/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lm9/e;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lm9/e;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lm9/e;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lm9/e;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lm9/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lm9/e;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lm9/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lm9/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lm9/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lm9/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lm9/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lm9/e;->m:Ljava/util/ArrayDeque;

    iput v1, p0, Lm9/e;->n:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lm9/e;->o:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lm9/e;->p:Ljava/util/Set;

    new-instance v0, Lm9/j;

    invoke-direct {v0}, Lm9/j;-><init>()V

    iput-object v0, p0, Lm9/e;->q:Lm9/j;

    new-instance v0, LQb/b;

    invoke-direct {v0}, LQb/b;-><init>()V

    iput-object v0, p0, Lm9/e;->r:LQb/b;

    sget-object v0, Lm9/e;->V:[Lm9/d;

    iput-object v0, p0, Lm9/e;->s:[Lm9/d;

    iput-object v0, p0, Lm9/e;->v:[Lm9/d;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, Lm9/e;->y:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lm9/e;->z:F

    iput v1, p0, Lm9/e;->A:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lm9/e;->H:F

    iput v1, p0, Lm9/e;->I:F

    iput v0, p0, Lm9/e;->K:F

    return-void
.end method

.method public static synthetic a()[Lm9/d;
    .locals 1

    sget-object v0, Lm9/e;->V:[Lm9/d;

    return-object v0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;F)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "targetChunkSize"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v0

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result p0

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    int-to-long v0, v0

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lm9/e;->y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;I)V

    return-void
.end method

.method public B(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lm9/e;->y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;I)V

    return-void
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, Lm9/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lm9/e;->V:[Lm9/d;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm9/d;

    iput-object v0, p0, Lm9/e;->s:[Lm9/d;

    return-void
.end method

.method public final D(Lm9/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lm9/e;->b:Ljava/util/Map;

    iget-wide v1, p1, Lm9/d;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm9/e;->b:Ljava/util/Map;

    iget-wide v1, p1, Lm9/d;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Lm9/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lm9/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lm9/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    sget-object v0, Lm9/e;->V:[Lm9/d;

    iput-object v0, p0, Lm9/e;->v:[Lm9/d;

    const/4 v0, 0x0

    iput v0, p0, Lm9/e;->w:I

    iget v0, p0, Lm9/e;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lm9/e;->n:I

    if-nez v0, :cond_0

    iput v1, p0, Lm9/e;->n:I

    :cond_0
    return-void
.end method

.method public final G(Lm9/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk"
        }
    .end annotation

    iget-object v0, p0, Lm9/e;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v1, p0, Lm9/e;->D:Ln9/b;

    invoke-virtual {p1, v0, v1}, Lm9/d;->k(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Ln9/b;)V

    return-void
.end method

.method public H()V
    .locals 7

    iget-boolean v0, p0, Lm9/e;->P:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lm9/e;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lm9/e;->D:Ln9/b;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lm9/e;->D:Ln9/b;

    invoke-virtual {v0}, Ln9/b;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lm9/e;->D:Ln9/b;

    invoke-virtual {v0}, Ln9/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lm9/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm9/e$c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lm9/e$c;->a(Lm9/e$c;)I

    move-result v3

    iget-object v4, p0, Lm9/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lm9/e;->F()V

    invoke-static {v0}, Lm9/e$c;->b(Lm9/e$c;)[Lm9/d;

    move-result-object v0

    iput-object v0, p0, Lm9/e;->v:[Lm9/d;

    iput v1, p0, Lm9/e;->w:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm9/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lm9/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_4

    if-ge v0, v4, :cond_4

    iget-object v3, p0, Lm9/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm9/d;

    iput v1, v3, Lm9/d;->l:I

    iget-object v4, v3, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lm9/e;->G(Lm9/d;)V

    iget-object v3, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v0, v4, :cond_5

    iget v3, p0, Lm9/e;->w:I

    iget-object v5, p0, Lm9/e;->v:[Lm9/d;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lm9/e;->w:I

    aget-object v3, v5, v3

    if-eqz v3, :cond_4

    iget-object v5, v3, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v3}, Lm9/e;->G(Lm9/d;)V

    iget-object v3, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lm9/e;->w:I

    iget-object v2, p0, Lm9/e;->v:[Lm9/d;

    array-length v2, v2

    if-lt v0, v2, :cond_6

    sget-object v0, Lm9/e;->V:[Lm9/d;

    iput-object v0, p0, Lm9/e;->v:[Lm9/d;

    iput v1, p0, Lm9/e;->w:I

    :cond_6
    :goto_3
    return-void
.end method

.method public final b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    iget-object v0, p0, Lm9/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm9/d;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lm9/e;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)Lm9/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lm9/e;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public c()V
    .locals 8

    iget-object v0, p0, Lm9/e;->u:Lm9/e$b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lm9/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm9/e$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lm9/e;->u:Lm9/e$b;

    :cond_1
    const/16 v2, 0x10

    :goto_0
    invoke-static {v0}, Lm9/e$b;->a(Lm9/e$b;)I

    move-result v3

    invoke-static {v0}, Lm9/e$b;->c(Lm9/e$b;)[Lm9/d;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_2

    if-lez v2, :cond_2

    iget-object v3, p0, Lm9/e;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-static {v0}, Lm9/e$b;->c(Lm9/e$b;)[Lm9/d;

    move-result-object v4

    invoke-static {v0}, Lm9/e$b;->b(Lm9/e$b;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p0, v3, v4}, Lm9/e;->n(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lm9/d;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v0}, Lm9/e$b;->d(Lm9/e$b;)I

    move-result v3

    invoke-static {v0}, Lm9/e$b;->f(Lm9/e$b;)[Lm9/d;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_4

    if-lez v2, :cond_4

    invoke-static {v0}, Lm9/e$b;->f(Lm9/e$b;)[Lm9/d;

    move-result-object v3

    invoke-static {v0}, Lm9/e$b;->e(Lm9/e$b;)I

    move-result v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    iget-object v4, v3, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lm9/e;->y:Ljava/util/List;

    iget-object v5, p0, Lm9/e;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-boolean v6, p0, Lm9/e;->B:Z

    iget-boolean v7, p0, Lm9/e;->C:Z

    invoke-virtual {v3, v4, v5, v6, v7}, Lm9/d;->l(Ljava/util/List;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZ)V

    invoke-virtual {p0, v3}, Lm9/e;->z(Lm9/d;)V

    iget-object v3, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lm9/e$b;->a(Lm9/e$b;)I

    move-result v2

    invoke-static {v0}, Lm9/e$b;->c(Lm9/e$b;)[Lm9/d;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_5

    invoke-static {v0}, Lm9/e$b;->d(Lm9/e$b;)I

    move-result v2

    invoke-static {v0}, Lm9/e$b;->f(Lm9/e$b;)[Lm9/d;

    move-result-object v0

    array-length v0, v0

    if-lt v2, v0, :cond_5

    iput-object v1, p0, Lm9/e;->u:Lm9/e$b;

    :cond_5
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lm9/e;->q:Lm9/j;

    iget-object v1, p0, Lm9/e;->r:LQb/b;

    invoke-virtual {v0, v1}, Lm9/j;->b(LQb/b;)V

    return-void
.end method

.method public e()Z
    .locals 10

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lm9/e;->t:Lm9/e$d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lm9/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lm9/e;->u:Lm9/e$b;

    if-nez v0, :cond_2

    iget-object v0, p0, Lm9/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm9/e;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm9/e$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    iget-object v0, p0, Lm9/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    :cond_3
    :try_start_1
    iget-object v4, p0, Lm9/e;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-static {v0, v4}, Lm9/e$d;->c(Lm9/e$d;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v4, p0, Lm9/e;->s:[Lm9/d;

    invoke-static {v0, v4}, Lm9/e$d;->j(Lm9/e$d;[Lm9/d;)[Lm9/d;

    iput-object v0, p0, Lm9/e;->t:Lm9/e$d;

    invoke-virtual {p0}, Lm9/e;->F()V

    iget-object v4, p0, Lm9/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v4, p0, Lm9/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v4, p0, Lm9/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    iget-object v4, p0, Lm9/e;->p:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    iget-object v4, p0, Lm9/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v0}, Lm9/e$d;->k(Lm9/e$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v4

    iput-object v4, p0, Lm9/e;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-static {v0}, Lm9/e$d;->l(Lm9/e$d;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lm9/e;->y:Ljava/util/List;

    invoke-static {v0}, Lm9/e$d;->m(Lm9/e$d;)Z

    move-result v4

    iput-boolean v4, p0, Lm9/e;->B:Z

    invoke-static {v0}, Lm9/e$d;->n(Lm9/e$d;)Z

    move-result v4

    iput-boolean v4, p0, Lm9/e;->C:Z

    invoke-static {v0}, Lm9/e$d;->o(Lm9/e$d;)F

    move-result v4

    iput v4, p0, Lm9/e;->z:F

    invoke-static {v0}, Lm9/e$d;->p(Lm9/e$d;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lm9/e;->a:Ljava/util/Map;

    invoke-static {v0}, Lm9/e$d;->q(Lm9/e$d;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lm9/e;->b:Ljava/util/Map;

    invoke-static {v0}, Lm9/e$d;->b(Lm9/e$d;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lm9/e;->c:Ljava/util/Map;

    invoke-static {v0}, Lm9/e$d;->d(Lm9/e$d;)[Lm9/d;

    move-result-object v4

    iput-object v4, p0, Lm9/e;->s:[Lm9/d;

    iget-object v4, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Lm9/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lm9/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_4
    :goto_1
    const/16 v4, 0x8

    :goto_2
    invoke-static {v0}, Lm9/e$d;->e(Lm9/e$d;)I

    move-result v5

    invoke-static {v0}, Lm9/e$d;->i(Lm9/e$d;)[Lm9/d;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_6

    if-lez v4, :cond_6

    invoke-static {v0}, Lm9/e$d;->i(Lm9/e$d;)[Lm9/d;

    move-result-object v5

    invoke-static {v0}, Lm9/e$d;->f(Lm9/e$d;)I

    move-result v6

    aget-object v5, v5, v6

    if-eqz v5, :cond_5

    invoke-static {v0}, Lm9/e$d;->a(Lm9/e$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v6

    invoke-virtual {v5, v6}, Lm9/d;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lm9/e$d;->e(Lm9/e$d;)I

    move-result v5

    invoke-static {v0}, Lm9/e$d;->i(Lm9/e$d;)[Lm9/d;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_7

    return v3

    :cond_7
    :goto_3
    invoke-static {v0}, Lm9/e$d;->g(Lm9/e$d;)I

    move-result v5

    invoke-static {v0}, Lm9/e$d;->d(Lm9/e$d;)[Lm9/d;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_9

    if-lez v4, :cond_9

    invoke-static {v0}, Lm9/e$d;->d(Lm9/e$d;)[Lm9/d;

    move-result-object v5

    invoke-static {v0}, Lm9/e$d;->h(Lm9/e$d;)I

    move-result v6

    aget-object v5, v5, v6

    if-eqz v5, :cond_8

    iget-object v6, p0, Lm9/e;->y:Ljava/util/List;

    iget-object v7, p0, Lm9/e;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-boolean v8, p0, Lm9/e;->B:Z

    iget-boolean v9, p0, Lm9/e;->C:Z

    invoke-virtual {v5, v6, v7, v8, v9}, Lm9/d;->l(Ljava/util/List;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZ)V

    iput-object v2, v5, Lm9/d;->m:Lm9/d$a;

    invoke-virtual {p0, v5}, Lm9/e;->z(Lm9/d;)V

    iget-object v5, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_9
    invoke-static {v0}, Lm9/e$d;->g(Lm9/e$d;)I

    move-result v4

    invoke-static {v0}, Lm9/e$d;->d(Lm9/e$d;)[Lm9/d;

    move-result-object v0

    array-length v0, v0

    if-ge v4, v0, :cond_a

    return v3

    :cond_a
    iput-object v2, p0, Lm9/e;->t:Lm9/e$d;

    return v1
.end method

.method public final f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    iget-object v0, p0, Lm9/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm9/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, v0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lm9/e;->p:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lm9/e;->D(Lm9/d;)V

    iget-object p1, p0, Lm9/e;->a:Ljava/util/Map;

    iget-wide v1, v0, Lm9/d;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    iget-object v0, p0, Lm9/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm9/d;

    invoke-virtual {p0, p1}, Lm9/e;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)J

    move-result-wide v1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lm9/e;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    return-void

    :cond_0
    iget-wide v3, v0, Lm9/d;->b:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v1, v0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lm9/e;->p:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lm9/e;->D(Lm9/d;)V

    iget-object v1, p0, Lm9/e;->a:Ljava/util/Map;

    iget-wide v2, v0, Lm9/d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0, p1}, Lm9/e;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)Lm9/d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lm9/e;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;ZFZZFLn9/b;FFFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "enableMaxRenderDistance",
            "maxDistance",
            "enableImpostorSystem",
            "impostorResourcesReady",
            "impostorStartDistance",
            "impostorResources",
            "captureHalfWidth",
            "captureHalfHeight",
            "capturePivotYOffset",
            "captureSourceScale"
        }
    .end annotation

    iput-object p7, p0, Lm9/e;->D:Ln9/b;

    const/4 p7, 0x0

    if-nez p1, :cond_0

    iput-boolean p7, p0, Lm9/e;->P:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    move p4, v2

    goto :goto_0

    :cond_1
    move p4, p7

    :goto_0
    const p5, 0x3d4ccccd    # 0.05f

    invoke-static {p5, p8}, LNc/b;->M(FF)F

    move-result p8

    invoke-static {p5, p9}, LNc/b;->M(FF)F

    move-result p5

    const p9, 0x38d1b717    # 1.0E-4f

    invoke-static {p9, p11}, LNc/b;->M(FF)F

    move-result p9

    iget-boolean p11, p0, Lm9/e;->O:Z

    if-ne p11, p4, :cond_3

    iget p11, p0, Lm9/e;->H:F

    invoke-static {p11, p8}, Ljava/lang/Float;->compare(FF)I

    move-result p11

    if-nez p11, :cond_3

    iget p11, p0, Lm9/e;->I:F

    invoke-static {p11, p5}, Ljava/lang/Float;->compare(FF)I

    move-result p11

    if-nez p11, :cond_3

    iget p11, p0, Lm9/e;->J:F

    invoke-static {p11, p10}, Ljava/lang/Float;->compare(FF)I

    move-result p11

    if-nez p11, :cond_3

    iget p11, p0, Lm9/e;->K:F

    invoke-static {p11, p9}, Ljava/lang/Float;->compare(FF)I

    move-result p11

    if-eqz p11, :cond_2

    goto :goto_1

    :cond_2
    move p11, p7

    goto :goto_2

    :cond_3
    :goto_1
    move p11, v2

    :goto_2
    iget-boolean v3, p0, Lm9/e;->P:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lm9/e;->E:F

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lm9/e;->F:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lm9/e;->G:F

    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lm9/e;->N:Z

    if-ne v3, p2, :cond_4

    iget v3, p0, Lm9/e;->L:F

    invoke-static {v3, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lm9/e;->O:Z

    if-ne v3, p4, :cond_4

    iget v3, p0, Lm9/e;->M:F

    invoke-static {v3, p6}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move p7, v2

    :cond_5
    iput v0, p0, Lm9/e;->E:F

    iput v1, p0, Lm9/e;->F:F

    iput p1, p0, Lm9/e;->G:F

    iput-boolean p2, p0, Lm9/e;->N:Z

    iput p3, p0, Lm9/e;->L:F

    iput-boolean p4, p0, Lm9/e;->O:Z

    iput p6, p0, Lm9/e;->M:F

    iput p8, p0, Lm9/e;->H:F

    iput p5, p0, Lm9/e;->I:F

    iput p10, p0, Lm9/e;->J:F

    iput p9, p0, Lm9/e;->K:F

    iput-boolean v2, p0, Lm9/e;->P:Z

    if-eqz p7, :cond_6

    iget-object p1, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_6
    if-eqz p4, :cond_7

    if-eqz p11, :cond_7

    invoke-virtual {p0}, Lm9/e;->E()V

    :cond_7
    return-void
.end method

.method public i()V
    .locals 2

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->f0()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lm9/e;->A:I

    return-void
.end method

.method public final j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    iget v0, p0, Lm9/e;->z:F

    invoke-static {p1, v0}, Lm9/e;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lm9/e;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->f()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->A()I

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized m(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm9/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lm9/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lm9/e;->t:Lm9/e$d;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lm9/e$d;->e(Lm9/e$d;)I

    move-result v1

    :goto_0
    invoke-static {v0}, Lm9/e$d;->i(Lm9/e$d;)[Lm9/d;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-static {v0}, Lm9/e$d;->i(Lm9/e$d;)[Lm9/d;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-static {v0}, Lm9/e$d;->a(Lm9/e$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm9/d;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm9/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm9/d;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lm9/d;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lm9/e;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lm9/e;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lm9/e;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lm9/e;->l()V

    iget-object p1, p0, Lm9/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lm9/e;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lm9/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v0, p0, Lm9/e;->t:Lm9/e$d;

    iput-object v0, p0, Lm9/e;->u:Lm9/e$b;

    iget-object p1, p0, Lm9/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iget-object p1, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iput-object v0, p0, Lm9/e;->D:Ln9/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm9/e;->P:Z

    iget-object v1, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lm9/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lm9/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v0, p0, Lm9/e;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, Lm9/e;->y:Ljava/util/List;

    sget-object v0, Lm9/e;->V:[Lm9/d;

    iput-object v0, p0, Lm9/e;->s:[Lm9/d;

    iput-object v0, p0, Lm9/e;->v:[Lm9/d;

    iput p1, p0, Lm9/e;->w:I

    iget-object p1, p0, Lm9/e;->q:Lm9/j;

    invoke-virtual {p1}, Lm9/j;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final n(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lm9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "chunk"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lm9/d;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    return-void
.end method

.method public o()V
    .locals 10

    iget-object v0, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lm9/e;->s:[Lm9/d;

    iget-boolean v2, p0, Lm9/e;->P:Z

    if-eqz v2, :cond_b

    array-length v2, v0

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v2, p0, Lm9/e;->q:Lm9/j;

    invoke-virtual {v2, v1}, Lm9/j;->c(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v0, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2
    move v2, v1

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_a

    aget-object v4, v0, v2

    if-eqz v4, :cond_9

    iget-object v5, v4, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_5

    :cond_3
    iget v5, p0, Lm9/e;->L:F

    iget v6, v4, Lm9/d;->q:F

    add-float/2addr v5, v6

    mul-float/2addr v5, v5

    iget v6, p0, Lm9/e;->E:F

    iget v7, v4, Lm9/d;->n:F

    sub-float/2addr v6, v7

    iget v7, p0, Lm9/e;->F:F

    iget v8, v4, Lm9/d;->o:F

    sub-float/2addr v7, v8

    iget v8, p0, Lm9/e;->G:F

    iget v9, v4, Lm9/d;->p:F

    sub-float/2addr v8, v9

    mul-float/2addr v6, v6

    mul-float/2addr v8, v8

    add-float/2addr v6, v8

    mul-float/2addr v7, v7

    add-float/2addr v7, v6

    iget-boolean v8, p0, Lm9/e;->N:Z

    if-eqz v8, :cond_5

    cmpg-float v5, v7, v5

    if-gtz v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v3

    :goto_2
    iget-boolean v7, p0, Lm9/e;->O:Z

    if-eqz v7, :cond_6

    iget v7, p0, Lm9/e;->M:F

    invoke-virtual {p0, v6, v4, v7}, Lm9/e;->r(FLm9/d;F)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v3

    goto :goto_3

    :cond_6
    move v6, v1

    :goto_3
    if-nez v5, :cond_7

    sget-object v5, Lm9/d$a;->HIDDEN:Lm9/d$a;

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_8

    sget-object v5, Lm9/d$a;->IMPOSTOR_VISIBLE:Lm9/d$a;

    goto :goto_4

    :cond_8
    sget-object v5, Lm9/d$a;->NORMAL_VISIBLE:Lm9/d$a;

    :goto_4
    iget-object v6, v4, Lm9/d;->m:Lm9/d$a;

    if-eq v6, v5, :cond_9

    iget-object v6, p0, Lm9/e;->q:Lm9/j;

    invoke-virtual {v4, v6, v5}, Lm9/d;->b(Lm9/j;Lm9/d$a;)V

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lm9/e;->q:Lm9/j;

    invoke-virtual {v0}, Lm9/j;->f()V

    :cond_b
    :goto_6
    return-void
.end method

.method public final p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)Lm9/d;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lm9/e;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)J

    move-result-wide v0

    iget-object p1, p0, Lm9/e;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm9/d;

    iget-object v4, v3, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lm9/e;->A:I

    if-ge v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x4

    invoke-direct {p1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iget-object v2, p0, Lm9/e;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Lm9/d;

    invoke-virtual {p0}, Lm9/e;->s()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0, v1}, Lm9/d;-><init>(JJ)V

    iget-object v0, p0, Lm9/e;->a:Ljava/util/Map;

    iget-wide v3, v2, Lm9/d;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lm9/e;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lm9/e;->t:Lm9/e$d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final r(FLm9/d;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizontalDistSq",
            "chunk",
            "impostorStartDistance"
        }
    .end annotation

    iget p2, p2, Lm9/d;->r:F

    add-float/2addr p3, p2

    mul-float/2addr p3, p3

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final s()J
    .locals 6

    iget-object v0, p0, Lm9/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v0, v2

    iget-object v4, p0, Lm9/e;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final t(Lm9/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk"
        }
    .end annotation

    iget v0, p0, Lm9/e;->H:F

    iget v1, p0, Lm9/e;->I:F

    iget v2, p0, Lm9/e;->J:F

    iget v3, p0, Lm9/e;->K:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lm9/d;->e(FFFF)V

    return-void
.end method

.method public u()V
    .locals 8

    iget-object v0, p0, Lm9/e;->t:Lm9/e$d;

    if-nez v0, :cond_d

    iget-object v0, p0, Lm9/e;->u:Lm9/e$b;

    if-nez v0, :cond_d

    iget-object v0, p0, Lm9/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lm9/e;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lm9/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lm9/e;->t:Lm9/e$d;

    if-nez v0, :cond_4

    iget-object v0, p0, Lm9/e;->u:Lm9/e$b;

    if-nez v0, :cond_4

    iget-object v0, p0, Lm9/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lm9/e;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    iget-object v0, p0, Lm9/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_5
    :try_start_1
    iget-object v4, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    iget-object v4, p0, Lm9/e;->p:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :goto_1
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->f()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->A()I

    move-result v5

    if-eq v5, v2, :cond_8

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lm9/e;->f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v0}, Lm9/e;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0}, Lm9/e;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    :goto_2
    move-object v0, v4

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lm9/e;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm9/d;

    if-eqz v4, :cond_a

    iget-object v5, v4, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    iget-object v5, p0, Lm9/e;->y:Ljava/util/List;

    invoke-virtual {v4, v5}, Lm9/d;->f(Ljava/util/List;)V

    invoke-virtual {v4}, Lm9/d;->g()V

    invoke-virtual {p0, v4}, Lm9/e;->t(Lm9/d;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lm9/e;->C()V

    iget-object v0, p0, Lm9/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lm9/e$b;

    iget-object v5, p0, Lm9/e;->o:Ljava/util/Set;

    sget-object v6, Lm9/e;->V:[Lm9/d;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lm9/d;

    iget-object v7, p0, Lm9/e;->p:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lm9/d;

    invoke-direct {v4, v5, v6, v3}, Lm9/e$b;-><init>([Lm9/d;[Lm9/d;Lm9/e$a;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lm9/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lm9/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_4
    iget-object v2, p0, Lm9/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_d
    :goto_5
    return-void
.end method

.method public v()V
    .locals 6

    iget-object v0, p0, Lm9/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lm9/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lm9/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, p0, Lm9/e;->s:[Lm9/d;

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lm9/e;->t(Lm9/d;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lm9/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lm9/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_3
    iget-object v1, p0, Lm9/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lm9/e$c;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v5}, Lm9/e$c;-><init>(I[Lm9/d;Lm9/e$a;)V

    invoke-static {v1, v5, v4}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lm9/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public w(Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZF)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "materialObjects",
            "objects",
            "scene",
            "castShadow",
            "receiveShadow",
            "baseObjectRadius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lm9/c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;",
            "ZZF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lm9/e;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lm9/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v4, v4, p6

    const v5, 0x3a83126f    # 0.001f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iget v4, v0, Lm9/e;->A:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-instance v12, Ljava/util/HashMap;

    if-nez v2, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v6, v4

    :goto_0
    const/16 v7, 0x40

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v12, v6}, Ljava/util/HashMap;-><init>(I)V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13, v7}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Ljava/util/HashMap;

    if-nez v2, :cond_2

    const/16 v6, 0x10

    goto :goto_1

    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    invoke-direct {v14, v6}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v2, :cond_8

    const/4 v8, 0x0

    const-wide/16 v9, 0x1

    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_8

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    if-nez v15, :cond_3

    move/from16 v20, v11

    move-object/from16 v19, v13

    const-wide/16 v17, 0x1

    goto :goto_6

    :cond_3
    invoke-static {v15, v11}, Lm9/e;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;F)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_4

    new-instance v7, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x4

    invoke-direct {v7, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v19, v13

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_6

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lm9/d;

    move/from16 v20, v11

    iget-object v11, v13, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v11, v4, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v20

    goto :goto_3

    :cond_6
    move/from16 v20, v11

    const/4 v13, 0x0

    :goto_4
    if-nez v13, :cond_7

    new-instance v13, Lm9/d;

    const-wide/16 v17, 0x1

    add-long v21, v9, v17

    invoke-direct {v13, v9, v10, v5, v6}, Lm9/d;-><init>(JJ)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v5, v13, Lm9/d;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v9, v21

    goto :goto_5

    :cond_7
    const-wide/16 v17, 0x1

    :goto_5
    iget-object v2, v13, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    move-object/from16 v13, v19

    move/from16 v11, v20

    goto/16 :goto_2

    :cond_8
    move/from16 v20, v11

    move-object/from16 v19, v13

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    sget-object v4, Lm9/e;->V:[Lm9/d;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, [Lm9/d;

    const/4 v2, 0x0

    :goto_7
    array-length v4, v15

    if-ge v2, v4, :cond_9

    aget-object v4, v15, v2

    invoke-virtual {v4, v1}, Lm9/d;->f(Ljava/util/List;)V

    aget-object v4, v15, v2

    invoke-virtual {v4}, Lm9/d;->g()V

    aget-object v4, v15, v2

    invoke-virtual {v0, v4}, Lm9/e;->t(Lm9/d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lm9/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v3, v2, :cond_a

    return-void

    :cond_a
    iget-object v2, v0, Lm9/e;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lm9/e$d;

    if-nez v1, :cond_b

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    move-object v7, v1

    goto :goto_8

    :cond_b
    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v4

    :goto_8
    const/16 v16, 0x0

    move-object v6, v3

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, v20

    move-object/from16 v13, v19

    const/4 v1, 0x0

    invoke-direct/range {v6 .. v16}, Lm9/e$d;-><init>(Ljava/util/List;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZFLjava/util/Map;Ljava/util/Map;Ljava/util/Map;[Lm9/d;Lm9/e$a;)V

    invoke-static {v2, v1, v3}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lm9/e;->y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;I)V

    return-void
.end method

.method public final y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "changeType"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->p(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lm9/e;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    iget-object v0, p0, Lm9/e;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p2, p1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_1
    :goto_0
    return-void
.end method

.method public final z(Lm9/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget v0, p1, Lm9/d;->l:I

    iget v1, p0, Lm9/e;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p1, Lm9/d;->l:I

    iget-object v0, p0, Lm9/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
