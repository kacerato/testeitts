.class public Lt6/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt6/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lt6/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lt6/e;

.field public e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "depth"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lt6/l;->a:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lt6/l;->b:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lt6/l;->c:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lt6/l;->d:Lt6/e;

    iput-boolean v0, p0, Lt6/l;->e:Z

    iput p1, p0, Lt6/l;->a:I

    return-void
.end method

.method public static synthetic a(Lt6/l;Lt6/e;)Lt6/e;
    .locals 0

    iput-object p1, p0, Lt6/l;->d:Lt6/e;

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
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

    iget-object v0, p0, Lt6/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lt6/l;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt6/e;

    invoke-virtual {v2, p1, p2}, Lt6/e;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lt6/l;->a:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lt6/l;->e:Z

    return v0
.end method

.method public e(I)Lt6/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lt6/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt6/e;

    return-object p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lt6/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Lt6/e;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lt6/l;->d:Lt6/e;

    if-eqz v0, :cond_1

    iget v1, p0, Lt6/l;->a:I

    sget v2, Lt6/j;->C0:I

    if-lt v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt6/e;->q(IZ)Lt6/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt6/l;->g(Ljava/lang/String;)Lt6/e;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lt6/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt6/e;

    if-nez v0, :cond_2

    invoke-static {p1}, Lt6/g;->b(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    iget-object v1, p0, Lt6/l;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lt6/l;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object v0, p0, Lt6/l;->d:Lt6/e;

    new-instance p1, Lt6/l$a;

    invoke-direct {p1, p0}, Lt6/l$a;-><init>(Lt6/l;)V

    invoke-virtual {v0, p1}, Lt6/e;->r(Lt6/e$a;)V

    return-object v0
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lt6/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lt6/l;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt6/e;

    invoke-virtual {v2}, Lt6/e;->m()V

    invoke-static {v2}, Lt6/g;->c(Lt6/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt6/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lt6/l;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt6/l;->d:Lt6/e;

    return-void
.end method

.method public i(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "UIOpen"
        }
    .end annotation

    iput-boolean p1, p0, Lt6/l;->e:Z

    return-void
.end method
