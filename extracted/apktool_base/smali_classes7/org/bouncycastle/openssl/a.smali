.class public Lorg/bouncycastle/openssl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/E;

.field public b:Loh/E;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Loh/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/openssl/a;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Loh/x;",
            ">;",
            "Ljava/util/Set<",
            "Loh/x;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/a;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/openssl/a;->e(Ljava/util/Set;)Loh/E;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openssl/a;->a:Loh/E;

    invoke-virtual {p0, p3}, Lorg/bouncycastle/openssl/a;->e(Ljava/util/Set;)Loh/E;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openssl/a;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Loh/x;",
            ">;)V"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/bouncycastle/openssl/a;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/g;

    instance-of v1, v0, Loh/E;

    if-eqz v1, :cond_1

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openssl/a;->a:Loh/E;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_2

    check-cast v0, Loh/M;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openssl/a;->b:Loh/E;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Loh/Q;

    if-eqz v1, :cond_0

    invoke-static {v0}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object v0

    invoke-virtual {v0}, Loh/Q;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openssl/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Loh/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openssl/a;->b:Loh/E;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openssl/a;->f(Loh/E;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Loh/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openssl/a;->a:Loh/E;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openssl/a;->f(Loh/E;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()Loh/E;
    .locals 4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/openssl/a;->a:Loh/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/openssl/a;->b:Loh/E;

    if-eqz v1, :cond_1

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/openssl/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Loh/M0;

    iget-object v2, p0, Lorg/bouncycastle/openssl/a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Loh/M0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public final e(Ljava/util/Set;)Loh/E;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Loh/x;",
            ">;)",
            "Loh/E;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_1
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(Loh/E;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loh/E;",
            ")",
            "Ljava/util/Set<",
            "Loh/x;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1
.end method
