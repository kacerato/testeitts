.class public Lq6/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq6/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lq6/g;

.field public d:Z


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

    iput v0, p0, Lq6/j;->a:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lq6/j;->b:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lq6/j;->c:Lq6/g;

    iput-boolean v0, p0, Lq6/j;->d:Z

    iput p1, p0, Lq6/j;->a:I

    return-void
.end method

.method public static synthetic a(Lq6/j;Lq6/g;)Lq6/g;
    .locals 0

    iput-object p1, p0, Lq6/j;->c:Lq6/g;

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

    iget-object v0, p0, Lq6/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lq6/j;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq6/g;

    invoke-virtual {v2, p1, p2}, Lq6/g;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

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

    iget v0, p0, Lq6/j;->a:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lq6/j;->d:Z

    return v0
.end method

.method public e(I)Lq6/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lq6/j;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq6/g;

    return-object p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lq6/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Lq6/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lq6/j;->c:Lq6/g;

    if-eqz v0, :cond_1

    iget v1, p0, Lq6/j;->a:I

    sget v2, Lq6/f;->B0:I

    if-lt v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lq6/g;->m(IZ)Lq6/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq6/j;->g(Ljava/lang/String;)Lq6/g;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lq6/i;->b(Ljava/lang/String;)Lq6/g;

    move-result-object p1

    iget-object v0, p0, Lq6/j;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lq6/j;->c:Lq6/g;

    new-instance v0, Lq6/j$a;

    invoke-direct {v0, p0}, Lq6/j$a;-><init>(Lq6/j;)V

    invoke-virtual {p1, v0}, Lq6/g;->n(Lq6/g$a;)V

    return-object p1
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lq6/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lq6/j;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq6/g;

    invoke-virtual {v2}, Lq6/g;->i()V

    invoke-static {v2}, Lq6/i;->c(Lq6/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

    iput-boolean p1, p0, Lq6/j;->d:Z

    return-void
.end method
