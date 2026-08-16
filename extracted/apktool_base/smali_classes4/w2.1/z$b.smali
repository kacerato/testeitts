.class public final Lw2/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/z$b$a;,
        Lw2/z$b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lw2/z$b$b;

.field public c:Lw2/z$b$b;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lw2/z$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw2/z$b$b;-><init>(Lw2/z$a;)V

    iput-object v0, p0, Lw2/z$b;->b:Lw2/z$b$b;

    .line 4
    iput-object v0, p0, Lw2/z$b;->c:Lw2/z$b$b;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lw2/z$b;->d:Z

    .line 6
    iput-boolean v0, p0, Lw2/z$b;->e:Z

    .line 7
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lw2/z$b;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lw2/z$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw2/z$b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static u(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    :cond_3
    instance-of v0, p0, Lw2/C;

    if-eqz v0, :cond_4

    check-cast p0, Lw2/C;

    invoke-virtual {p0}, Lw2/C;->e()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;C)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw2/z$b;->m(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;D)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw2/z$b;->m(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;F)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw2/z$b;->m(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;I)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw2/z$b;->m(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;J)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw2/z$b;->m(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lw2/z$b;->j(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Z)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw2/z$b;->m(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lw2/z$b$b;
    .locals 2

    new-instance v0, Lw2/z$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw2/z$b$b;-><init>(Lw2/z$a;)V

    iget-object v1, p0, Lw2/z$b;->c:Lw2/z$b$b;

    iput-object v0, v1, Lw2/z$b$b;->c:Lw2/z$b$b;

    iput-object v0, p0, Lw2/z$b;->c:Lw2/z$b$b;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Lw2/z$b;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lw2/z$b;->h()Lw2/z$b$b;

    move-result-object v0

    iput-object p1, v0, Lw2/z$b$b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lw2/z$b;->h()Lw2/z$b$b;

    move-result-object v0

    iput-object p2, v0, Lw2/z$b$b;->b:Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lw2/z$b$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final k()Lw2/z$b$a;
    .locals 2

    new-instance v0, Lw2/z$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw2/z$b$a;-><init>(Lw2/z$a;)V

    iget-object v1, p0, Lw2/z$b;->c:Lw2/z$b$b;

    iput-object v0, v1, Lw2/z$b$b;->c:Lw2/z$b$b;

    iput-object v0, p0, Lw2/z$b;->c:Lw2/z$b$b;

    return-object v0
.end method

.method public final l(Ljava/lang/Object;)Lw2/z$b;
    .locals 1

    invoke-virtual {p0}, Lw2/z$b;->k()Lw2/z$b$a;

    move-result-object v0

    iput-object p1, v0, Lw2/z$b$b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;
    .locals 1

    invoke-virtual {p0}, Lw2/z$b;->k()Lw2/z$b$a;

    move-result-object v0

    iput-object p2, v0, Lw2/z$b$b;->b:Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lw2/z$b$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public n(C)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/z$b;->l(Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public o(D)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/z$b;->l(Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public p(F)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/z$b;->l(Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public q(I)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/z$b;->l(Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public r(J)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/z$b;->l(Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Object;)Lw2/z$b;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lw2/z$b;->i(Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public t(Z)Lw2/z$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/z$b;->l(Ljava/lang/Object;)Lw2/z$b;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lw2/z$b;->d:Z

    iget-boolean v1, p0, Lw2/z$b;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lw2/z$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lw2/z$b;->b:Lw2/z$b$b;

    iget-object v3, v3, Lw2/z$b$b;->c:Lw2/z$b$b;

    const-string v4, ""

    :goto_0
    if-eqz v3, :cond_5

    iget-object v5, v3, Lw2/z$b$b;->b:Ljava/lang/Object;

    instance-of v6, v3, Lw2/z$b$a;

    if-nez v6, :cond_1

    if-nez v5, :cond_0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v5}, Lw2/z$b;->u(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_1
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lw2/z$b$b;->a:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v4, ", "

    :cond_4
    iget-object v3, v3, Lw2/z$b$b;->c:Lw2/z$b$b;

    goto :goto_0

    :cond_5
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lw2/z$b;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw2/z$b;->d:Z

    return-object p0
.end method
