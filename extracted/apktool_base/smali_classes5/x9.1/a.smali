.class public Lx9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx9/a$a;
    }
.end annotation


# instance fields
.field public a:LAc/b;

.field public b:Lz9/e;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LAc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lx9/a;->c:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, LAc/b;->I()LAc/b;

    move-result-object p1

    iput-object p1, p0, Lx9/a;->a:LAc/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lx9/a;->c:Ljava/util/List;

    .line 6
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lx9/a;->a:LAc/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz9/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "guid",
            "map"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lx9/a;->c:Ljava/util/List;

    .line 9
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lx9/a;->a:LAc/b;

    .line 10
    iput-object p2, p0, Lx9/a;->b:Lz9/e;

    return-void
.end method


# virtual methods
.method public a(LAc/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    iget-object v0, p0, Lx9/a;->a:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->Y(LAc/b;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lx9/a;->b:Lz9/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz9/e;->a()V

    :cond_0
    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lx9/a;->b:Lz9/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()LAc/b;
    .locals 1

    iget-object v0, p0, Lx9/a;->a:LAc/b;

    return-object v0
.end method

.method public e(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lx9/a;->b:Lz9/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz9/e;->g()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lx9/a;->b:Lz9/e;

    invoke-virtual {v0}, Lz9/e;->g()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lx9/a;->b:Lz9/e;

    invoke-virtual {v0, p1, p2}, Lz9/e;->f(II)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lx9/a;->b:Lz9/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz9/e;->g()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lx9/a;->b:Lz9/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(IIF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, Lx9/a;->b:Lz9/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lz9/e;->i(IIF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx9/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lx9/a;->c:Ljava/util/List;

    new-instance v2, Lx9/a$a;

    invoke-direct {v2, p1, p2, p3}, Lx9/a$a;-><init>(IIF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object v0, p0, Lx9/a;->b:Lz9/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz9/e;->g()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lx9/a;->b:Lz9/e;

    invoke-static {v0, p1}, Lz9/e;->j(Lz9/e;I)Lz9/e;

    move-result-object p1

    iput-object p1, p0, Lx9/a;->b:Lz9/e;

    move p1, v1

    :goto_1
    iget-object v0, p0, Lx9/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lx9/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lx9/a;->b:Lz9/e;

    if-eqz v3, :cond_4

    :goto_2
    iget-object p1, p0, Lx9/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    iget-object p1, p0, Lx9/a;->c:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx9/a$a;

    iget-object v3, p0, Lx9/a;->b:Lz9/e;

    invoke-virtual {v3}, Lz9/e;->g()I

    move-result v3

    iget v4, p1, Lx9/a$a;->a:I

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lx9/a;->b:Lz9/e;

    invoke-virtual {v3}, Lz9/e;->g()I

    move-result v3

    iget v4, p1, Lx9/a$a;->b:I

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lx9/a;->b:Lz9/e;

    iget v5, p1, Lx9/a$a;->a:I

    iget p1, p1, Lx9/a$a;->c:F

    invoke-virtual {v3, v5, v4, p1}, Lz9/e;->h(IIF)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lx9/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_4
    move v1, p1

    :goto_4
    monitor-exit v0

    return v1

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
