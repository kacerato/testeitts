.class public Ll6/b;
.super Lj6/d;
.source "SourceFile"


# instance fields
.field public final c:LU5/a;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:I

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "icon",
            "title"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lj6/d;-><init>(I)V

    .line 20
    new-instance p1, LU5/a;

    invoke-direct {p1}, LU5/a;-><init>()V

    iput-object p1, p0, Ll6/b;->c:LU5/a;

    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Ll6/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Ll6/b;->g:Ljava/util/List;

    .line 23
    iput-object p2, p0, Ll6/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "searchText"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lj6/d;-><init>(I)V

    .line 25
    new-instance p1, LU5/a;

    invoke-direct {p1}, LU5/a;-><init>()V

    iput-object p1, p0, Ll6/b;->c:LU5/a;

    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Ll6/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Ll6/b;->g:Ljava/util/List;

    .line 28
    iput-object p2, p0, Ll6/b;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p3}, Ll6/b;->A(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "searchText",
            "tags"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lj6/d;-><init>(I)V

    .line 31
    new-instance p1, LU5/a;

    invoke-direct {p1}, LU5/a;-><init>()V

    iput-object p1, p0, Ll6/b;->c:LU5/a;

    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Ll6/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Ll6/b;->g:Ljava/util/List;

    .line 34
    iput-object p2, p0, Ll6/b;->d:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p3}, Ll6/b;->A(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p4}, Ll6/b;->z(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lj6/d;-><init>()V

    .line 2
    new-instance v0, LU5/a;

    invoke-direct {v0}, LU5/a;-><init>()V

    iput-object v0, p0, Ll6/b;->c:LU5/a;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ll6/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Ll6/b;->g:Ljava/util/List;

    .line 5
    iput-object p1, p0, Ll6/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "searchText"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lj6/d;-><init>()V

    .line 7
    new-instance v0, LU5/a;

    invoke-direct {v0}, LU5/a;-><init>()V

    iput-object v0, p0, Ll6/b;->c:LU5/a;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ll6/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Ll6/b;->g:Ljava/util/List;

    .line 10
    iput-object p1, p0, Ll6/b;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p2}, Ll6/b;->A(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "searchText",
            "tags"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lj6/d;-><init>()V

    .line 13
    new-instance v0, LU5/a;

    invoke-direct {v0}, LU5/a;-><init>()V

    iput-object v0, p0, Ll6/b;->c:LU5/a;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ll6/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Ll6/b;->g:Ljava/util/List;

    .line 16
    iput-object p1, p0, Ll6/b;->d:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p2}, Ll6/b;->A(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p3}, Ll6/b;->z(Ljava/lang/String;)V

    return-void
.end method

.method public static B(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packages",
            "offset",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, LNc/b;->N(II)I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lt p1, p2, :cond_1

    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic o(Ll6/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Ll6/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic p([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ll6/b;->y([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(LU5/a;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ll6/b;->x(LU5/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ll6/b;)I
    .locals 0

    iget p0, p0, Ll6/b;->f:I

    return p0
.end method

.method public static synthetic s(Ll6/b;)I
    .locals 2

    iget v0, p0, Ll6/b;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ll6/b;->f:I

    return v0
.end method

.method public static synthetic t(Ljava/util/List;II)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Ll6/b;->B(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Ll6/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ll6/b;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic v(Ll6/b;)LU5/a;
    .locals 0

    iget-object p0, p0, Ll6/b;->c:LU5/a;

    return-object p0
.end method

.method public static x(LU5/a;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchOptions"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LU5/a;->i()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LU5/a;->i()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LU5/a;->i()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchtext"
        }
    .end annotation

    iget-object v0, p0, Ll6/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll6/b;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll6/b;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Ll6/b;->c:LU5/a;

    invoke-virtual {v0, p1}, LU5/a;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll6/b;->w()V

    return-void
.end method

.method public b()V
    .locals 4

    invoke-virtual {p0}, Lj6/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lj6/d;->b()V

    iget-object v0, p0, Ll6/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lj6/d;->e()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {v0, v1}, Lq7/a;->t1(Landroid/view/View;Lr4/a$e;)Lq7/a;

    move-result-object v0

    iget-object v1, p0, Ll6/b;->c:LU5/a;

    invoke-virtual {v1}, LU5/a;->c()LU5/a;

    move-result-object v1

    const-string v3, "itsmagic"

    invoke-virtual {v1, v3}, LU5/a;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LU5/a;->n(Z)V

    iget v2, p0, Ll6/b;->f:I

    invoke-virtual {v1, v2}, LU5/a;->o(I)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, LU5/a;->m(I)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ll6/b$b;

    invoke-direct {v3, p0, v1, v0}, Ll6/b$b;-><init>(Ll6/b;LU5/a;Lq7/a;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll6/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 1

    invoke-super {p0}, Lj6/d;->j()V

    const/4 v0, 0x0

    iput v0, p0, Ll6/b;->f:I

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll6/b;->f:I

    invoke-virtual {p0}, Ll6/b;->b()V

    return-void
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Ll6/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lob/b;

    new-instance v1, Ll6/b$a;

    invoke-direct {v1, p0}, Ll6/b$a;-><init>(Ll6/b;)V

    invoke-direct {v0, v1}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ll6/b;->j()V

    invoke-virtual {p0}, Ll6/b;->b()V

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    iget-object v0, p0, Ll6/b;->c:LU5/a;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LU5/a;->s([Ljava/lang/String;)V

    return-void
.end method
