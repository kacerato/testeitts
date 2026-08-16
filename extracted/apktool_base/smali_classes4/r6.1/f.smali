.class public Lr6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr6/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Z

.field public h:J

.field public final i:[J

.field public final j:Ljava/util/function/BiConsumer;

.field public final k:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lr6/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stackPath",
            "depth"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr6/f;->b:I

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lr6/f;->c:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lr6/f;->d:Ljava/util/Map;

    iput-boolean v0, p0, Lr6/f;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr6/f;->h:J

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lr6/f;->i:[J

    new-instance v0, Lr6/f$c;

    invoke-direct {v0, p0}, Lr6/f$c;-><init>(Lr6/f;)V

    iput-object v0, p0, Lr6/f;->j:Ljava/util/function/BiConsumer;

    new-instance v0, Lr6/f$d;

    invoke-direct {v0, p0}, Lr6/f$d;-><init>(Lr6/f;)V

    iput-object v0, p0, Lr6/f;->k:Ljava/util/function/BiConsumer;

    iput-object p1, p0, Lr6/f;->a:Ljava/lang/String;

    iput p2, p0, Lr6/f;->b:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v0, p0, Lr6/f;->i:[J

    iget-wide v1, p0, Lr6/f;->h:J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    :try_start_0
    iget-object v0, p0, Lr6/f;->c:Ljava/util/Map;

    iget-object v1, p0, Lr6/f;->j:Ljava/util/function/BiConsumer;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lr6/f;->i:[J

    aget-wide v1, v0, v3

    return-wide v1
.end method

.method public b(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "tab"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lr6/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lr6/f;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v0, p0, Lr6/f;->d:Ljava/util/Map;

    new-instance v1, Lr6/f$a;

    invoke-direct {v1, p0, p1, p2}, Lr6/f$a;-><init>(Lr6/f;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lr6/f;->c:Ljava/util/Map;

    new-instance v1, Lr6/f$b;

    invoke-direct {v1, p0, p1, p2}, Lr6/f$b;-><init>(Lr6/f;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr6/f;->d:Ljava/util/Map;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lr6/f;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lr6/f;->b:I

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lr6/f;->h:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lr6/f;->f:I

    return v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr6/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr6/f;->c:Ljava/util/Map;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr6/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lr6/f;->g:Z

    return v0
.end method

.method public k(Ljava/lang/Object;Ljava/util/List;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "callStack",
            "listIndex",
            "beforeNotifyUsedBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    iget v0, p0, Lr6/f;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr6/f;->f:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lr6/f;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr6/f;

    if-nez v1, :cond_0

    iget v1, p0, Lr6/f;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lr6/h;->b(Ljava/lang/String;I)Lr6/f;

    move-result-object v1

    iget-object v2, p0, Lr6/f;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v3, v1

    add-int/lit8 v6, p3, 0x1

    move-object v4, p1

    move-object v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lr6/f;->k(Ljava/lang/Object;Ljava/util/List;IJ)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lr6/f;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_2

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lr6/f;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lr6/f;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr6/f;->e:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    sub-long/2addr p2, v0

    iget-wide v0, p0, Lr6/f;->h:J

    sub-long/2addr p2, p4

    add-long/2addr v0, p2

    iput-wide v0, p0, Lr6/f;->h:J

    :goto_0
    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lr6/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    iget-object v0, p0, Lr6/f;->c:Ljava/util/Map;

    iget-object v1, p0, Lr6/f;->k:Ljava/util/function/BiConsumer;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public m(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stackPath",
            "depth"
        }
    .end annotation

    iput-object p1, p0, Lr6/f;->a:Ljava/lang/String;

    iput p2, p0, Lr6/f;->b:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr6/f;->h:J

    iget-object p1, p0, Lr6/f;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lr6/f;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public n(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "UIOpen"
        }
    .end annotation

    iput-boolean p1, p0, Lr6/f;->g:Z

    return-void
.end method
