.class public final LDb/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:LDb/a;

.field public final b:LDb/a$d;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDc/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDb/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(LDb/a;LDb/a$d;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "owner",
            "key",
            "sourceMeshes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDb/a;",
            "LDb/a$d;",
            "Ljava/util/List<",
            "LDc/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LDb/a$c;->c:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LDb/a$c;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, LDb/a$c;->e:I

    .line 6
    iput-boolean v0, p0, LDb/a$c;->f:Z

    .line 7
    iput-boolean v0, p0, LDb/a$c;->g:Z

    .line 8
    iput-object p1, p0, LDb/a$c;->a:LDb/a;

    .line 9
    iput-object p2, p0, LDb/a$c;->b:LDb/a$d;

    .line 10
    invoke-static {p2}, LDb/a$d;->a(LDb/a$d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 11
    invoke-static {p2}, LDb/a$d;->b(LDb/a$d;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 12
    invoke-static {p2}, LDb/a$d;->c(LDb/a$d;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 13
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 14
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDc/a;

    .line 15
    invoke-static {v2, p1, v1, p2}, LW8/a;->a(LDc/a;FFF)LDc/a;

    move-result-object v2

    .line 16
    iget-object v3, p0, LDb/a$c;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v3, LDc/c;

    invoke-direct {v3, v2}, LDc/c;-><init>(LDc/a;)V

    .line 18
    :try_start_0
    iget-object v2, p0, LDb/a$c;->d:Ljava/util/List;

    invoke-static {v3}, LDb/a$c;->d(LDc/c;)LDb/a$b;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v3}, LDc/c;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v3}, LDc/c;->d()V

    .line 20
    throw p1

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(LDb/a;LDb/a$d;Ljava/util/List;LDb/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LDb/a$c;-><init>(LDb/a;LDb/a$d;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(LDb/a$c;)V
    .locals 0

    invoke-virtual {p0}, LDb/a$c;->e()V

    return-void
.end method

.method public static d(LDc/c;)LDb/a$b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempShape"
        }
    .end annotation

    invoke-static {p0}, LDb/a;->c(LDc/c;)Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    move-result-object p0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->isCompressed()Z

    move-result p0

    new-instance v4, LDb/a$b;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, p0, v5}, LDb/a$b;-><init>(JZLDb/a$a;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_0
    move-wide v2, v0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_0

    :goto_1
    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-static {v2, v3}, LDb/a;->b(J)V

    :cond_0
    throw p0
.end method


# virtual methods
.method public b(I)LW8/b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, LDb/a$c;->i()V

    :try_start_0
    iget-object v0, p0, LDb/a$c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDb/a$b;

    new-instance v1, LDc/c;

    invoke-static {v0}, LDb/a$b;->a(LDb/a$b;)J

    move-result-wide v2

    invoke-static {v0}, LDb/a$b;->b(LDb/a$b;)Z

    move-result v0

    iget-object v4, p0, LDb/a$c;->c:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LDc/a;

    invoke-direct {v1, v2, v3, v0, p1}, LDc/c;-><init>(JZLDc/a;)V

    new-instance p1, LW8/b;

    const/4 v0, 0x1

    invoke-direct {p1, v1, p0, v0}, LW8/b;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;LDb/a$c;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0}, LDb/a$c;->h()Z

    throw p1
.end method

.method public declared-synchronized c()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LDb/a$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LDb/a$c;->g:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LDb/a$c;->g:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LDb/a$c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LDb/a$c;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDb/a$b;

    if-eqz v1, :cond_1

    invoke-static {v1}, LDb/a$b;->a(LDb/a$b;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-static {v1}, LDb/a$b;->a(LDb/a$b;)J

    move-result-wide v1

    invoke-static {v1, v2}, LDb/a;->b(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, LDb/a$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LDb/a$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()LDb/a$d;
    .locals 1

    iget-object v0, p0, LDb/a$c;->b:LDb/a$d;

    return-object v0
.end method

.method public declared-synchronized g()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LDb/a$c;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LDb/a$c;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v0, p0, LDb/a$c;->e:I

    const/4 v2, 0x1

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    iput v0, p0, LDb/a$c;->e:I

    :cond_1
    iget v0, p0, LDb/a$c;->e:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, LDb/a$c;->f:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, LDb/a$c;->f:Z

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    iget-object v0, p0, LDb/a$c;->a:LDb/a;

    invoke-static {v0, p0}, LDb/a;->a(LDb/a;LDb/a$c;)V

    invoke-virtual {p0}, LDb/a$c;->e()V

    return v2

    :cond_3
    return v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LDb/a$c;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LDb/a$c;->g:Z

    if-nez v0, :cond_0

    iget v0, p0, LDb/a$c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LDb/a$c;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CollisionBvhCacheEntry was already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
