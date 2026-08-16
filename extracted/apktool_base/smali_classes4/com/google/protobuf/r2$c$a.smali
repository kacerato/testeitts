.class public final Lcom/google/protobuf/r2$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/r2$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/protobuf/r2$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/protobuf/r2$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/r2$c;-><init>(Lcom/google/protobuf/r2$a;)V

    iput-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    return-void
.end method

.method public static synthetic a()Lcom/google/protobuf/r2$c$a;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2$c$a;->j()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    return-object v0
.end method

.method public static j()Lcom/google/protobuf/r2$c$a;
    .locals 1

    new-instance v0, Lcom/google/protobuf/r2$c$a;

    invoke-direct {v0}, Lcom/google/protobuf/r2$c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b(I)Lcom/google/protobuf/r2$c$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->f(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->g(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->f(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(J)Lcom/google/protobuf/r2$c$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->h(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->i(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->h(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/r2$c$a;->i()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$c$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->b(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->c(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->b(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2$c$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->j(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->k(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->j(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f(J)Lcom/google/protobuf/r2$c$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->d(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->e(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->d(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g()Lcom/google/protobuf/r2$c;
    .locals 3

    new-instance v0, Lcom/google/protobuf/r2$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/r2$c;-><init>(Lcom/google/protobuf/r2$a;)V

    iget-object v1, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v1}, Lcom/google/protobuf/r2$c;->d(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->e(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->d(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->e(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v1}, Lcom/google/protobuf/r2$c;->f(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->g(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->f(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->g(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v1}, Lcom/google/protobuf/r2$c;->h(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->i(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->h(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->i(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v1}, Lcom/google/protobuf/r2$c;->j(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->k(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->j(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->k(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v1}, Lcom/google/protobuf/r2$c;->b(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->c(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->b(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->c(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :goto_4
    return-object v0
.end method

.method public h()Lcom/google/protobuf/r2$c$a;
    .locals 2

    new-instance v0, Lcom/google/protobuf/r2$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/r2$c;-><init>(Lcom/google/protobuf/r2$a;)V

    iput-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    return-object p0
.end method

.method public i()Lcom/google/protobuf/r2$c$a;
    .locals 4

    new-instance v0, Lcom/google/protobuf/r2$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/r2$c;-><init>(Lcom/google/protobuf/r2$a;)V

    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->d(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->e(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v3}, Lcom/google/protobuf/r2$c;->d(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/google/protobuf/r2$c;->e(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->f(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->g(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v3}, Lcom/google/protobuf/r2$c;->f(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/google/protobuf/r2$c;->g(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->h(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->i(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v3}, Lcom/google/protobuf/r2$c;->h(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/google/protobuf/r2$c;->i(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->j(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->k(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v3}, Lcom/google/protobuf/r2$c;->j(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/google/protobuf/r2$c;->k(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->b(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->c(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v2}, Lcom/google/protobuf/r2$c;->b(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->c(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :goto_4
    new-instance v1, Lcom/google/protobuf/r2$c$a;

    invoke-direct {v1}, Lcom/google/protobuf/r2$c$a;-><init>()V

    iput-object v0, v1, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    return-object v1
.end method

.method public k(Lcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$c$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/r2$c;->d(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->d(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->e(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->d(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/r2$c;->d(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/r2$c;->f(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->f(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->g(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->f(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/r2$c;->f(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/r2$c;->h(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->h(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->i(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->h(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/r2$c;->h(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-static {p1}, Lcom/google/protobuf/r2$c;->j(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->j(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->k(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->j(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/r2$c;->j(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/r2$c;->b(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->b(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/r2$c;->c(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/r2$c$a;->a:Lcom/google/protobuf/r2$c;

    invoke-static {v0}, Lcom/google/protobuf/r2$c;->b(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/r2$c;->b(Lcom/google/protobuf/r2$c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-object p0
.end method
