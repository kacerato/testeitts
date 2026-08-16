.class public LDj/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDj/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDj/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(LDj/f;)V
    .locals 1

    iget-object v0, p0, LDj/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(LGj/c;[B)LDj/a;
    .locals 4

    invoke-interface {p1, p2}, LGj/c;->a([B)[B

    move-result-object p2

    invoke-interface {p1}, LGj/c;->getKey()[B

    move-result-object v0

    invoke-interface {p1}, LGj/c;->b()[B

    move-result-object p1

    invoke-static {}, LEk/D;->u()LEk/D$a;

    move-result-object v1

    iget-object v2, p0, LDj/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDj/f;

    invoke-virtual {v3, v0}, LDj/f;->a([B)LEk/A;

    move-result-object v3

    filled-new-array {v3}, [LEk/A;

    move-result-object v3

    invoke-virtual {v1, v3}, LEk/D$a;->a([LEk/A;)LEk/D$a;

    goto :goto_0

    :cond_0
    new-instance v0, LDj/a;

    invoke-static {}, LEk/i;->u()LEk/i$a;

    move-result-object v2

    invoke-virtual {v1}, LEk/D$a;->b()LEk/D;

    move-result-object v1

    invoke-virtual {v2, v1}, LEk/i$a;->c(LEk/D;)LEk/i$a;

    move-result-object v1

    invoke-static {}, LEk/a;->u()LEk/a$a;

    move-result-object v2

    invoke-virtual {v2, p2}, LEk/a$a;->c([B)LEk/a$a;

    move-result-object p2

    invoke-virtual {p2, p1}, LEk/a$a;->e([B)LEk/a$a;

    move-result-object p1

    invoke-virtual {p1}, LEk/a$a;->a()LEk/a;

    move-result-object p1

    invoke-static {p1}, LEk/J;->u(LEk/a;)LEk/J;

    move-result-object p1

    invoke-virtual {v1, p1}, LEk/i$a;->b(LEk/J;)LEk/i$a;

    move-result-object p1

    invoke-virtual {p1}, LEk/i$a;->a()LEk/i;

    move-result-object p1

    invoke-direct {v0, p1}, LDj/a;-><init>(LEk/i;)V

    return-object v0
.end method
