.class public LEk/f;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:LEk/o;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDk/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LEk/o;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEk/o;",
            "Ljava/util/List<",
            "LDk/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LEk/f;->b:LEk/o;

    iput-object p2, p0, LEk/f;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LEk/o;->v(Ljava/lang/Object;)LEk/o;

    move-result-object v0

    iput-object v0, p0, LEk/f;->b:LEk/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LDk/a;->D(Ljava/lang/Object;)LDk/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LEk/f;->c:Ljava/util/List;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)LEk/f;
    .locals 1

    instance-of v0, p0, LEk/f;

    if-eqz v0, :cond_0

    check-cast p0, LEk/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/f;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/f;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, LEk/f;->b:LEk/o;

    iget-object v1, p0, LEk/f;->c:Ljava/util/List;

    invoke-static {v1}, Lzk/a;->d(Ljava/util/List;)Loh/E;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Loh/g;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lzk/a;->e([Loh/g;)Loh/E;

    move-result-object v0

    return-object v0
.end method

.method public u()LEk/o;
    .locals 1

    iget-object v0, p0, LEk/f;->b:LEk/o;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LDk/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LEk/f;->c:Ljava/util/List;

    return-object v0
.end method
