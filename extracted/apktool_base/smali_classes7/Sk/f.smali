.class public LSk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhi/h0;

.field public b:Lfi/d;

.field public c:Ljava/util/List;

.field public d:Z


# direct methods
.method public constructor <init>(LSk/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LSk/f;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, LSk/f;->d:Z

    iget-object v0, p1, LSk/f;->a:Lhi/h0;

    iput-object v0, p0, LSk/f;->a:Lhi/h0;

    iget-object v0, p1, LSk/f;->b:Lfi/d;

    iput-object v0, p0, LSk/f;->b:Lfi/d;

    iget-boolean v0, p1, LSk/f;->d:Z

    iput-boolean v0, p0, LSk/f;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, LSk/f;->c:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LSk/f;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfi/d;Lhi/h0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LSk/f;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, LSk/f;->d:Z

    iput-object p1, p0, LSk/f;->b:Lfi/d;

    iput-object p2, p0, LSk/f;->a:Lhi/h0;

    return-void
.end method


# virtual methods
.method public a(Loh/x;Loh/g;)LSk/f;
    .locals 3

    iget-object v0, p0, LSk/f;->c:Ljava/util/List;

    new-instance v1, LXh/a;

    new-instance v2, Loh/I0;

    invoke-direct {v2, p2}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {v1, p1, v2}, LXh/a;-><init>(Loh/x;Loh/G;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Loh/x;[Loh/g;)LSk/f;
    .locals 3

    iget-object v0, p0, LSk/f;->c:Ljava/util/List;

    new-instance v1, LXh/a;

    new-instance v2, Loh/I0;

    invoke-direct {v2, p2}, Loh/I0;-><init>([Loh/g;)V

    invoke-direct {v1, p1, v2}, LXh/a;-><init>(Loh/x;Loh/G;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(LQk/f;)LSk/e;
    .locals 5

    iget-object v0, p0, LSk/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LSk/f;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, LXh/f;

    iget-object v1, p0, LSk/f;->b:Lfi/d;

    iget-object v2, p0, LSk/f;->a:Lhi/h0;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LXh/f;-><init>(Lfi/d;Lhi/h0;Loh/G;)V

    goto :goto_1

    :cond_0
    new-instance v0, LXh/f;

    iget-object v1, p0, LSk/f;->b:Lfi/d;

    iget-object v2, p0, LSk/f;->a:Lhi/h0;

    new-instance v3, Loh/I0;

    invoke-direct {v3}, Loh/I0;-><init>()V

    invoke-direct {v0, v1, v2, v3}, LXh/f;-><init>(Lfi/d;Lhi/h0;Loh/G;)V

    goto :goto_1

    :cond_1
    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, LSk/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LXh/a;->y(Ljava/lang/Object;)LXh/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_2
    new-instance v1, LXh/f;

    iget-object v2, p0, LSk/f;->b:Lfi/d;

    iget-object v3, p0, LSk/f;->a:Lhi/h0;

    new-instance v4, Loh/I0;

    invoke-direct {v4, v0}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {v1, v2, v3, v4}, LXh/f;-><init>(Lfi/d;Lhi/h0;Loh/G;)V

    move-object v0, v1

    :goto_1
    :try_start_0
    invoke-interface {p1}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v0, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance v1, LSk/e;

    new-instance v2, LXh/e;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v3

    new-instance v4, Loh/r0;

    invoke-interface {p1}, LQk/f;->getSignature()[B

    move-result-object p1

    invoke-direct {v4, p1}, Loh/r0;-><init>([B)V

    invoke-direct {v2, v0, v3, v4}, LXh/e;-><init>(LXh/f;Lhi/b;Loh/c;)V

    invoke-direct {v1, v2}, LSk/e;-><init>(LXh/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot produce certification request signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(LQk/f;Lhi/h0;LQk/f;)LSk/e;
    .locals 6

    const-string v0, "cannot produce certification request signature"

    const-string v1, "DER"

    new-instance v2, Loh/h;

    invoke-direct {v2}, Loh/h;-><init>()V

    iget-object v3, p0, LSk/f;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LXh/a;->y(Ljava/lang/Object;)LXh/a;

    move-result-object v4

    invoke-virtual {v2, v4}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    new-instance v3, LXh/a;

    sget-object v4, Lhi/B;->K:Loh/x;

    new-instance v5, Loh/I0;

    invoke-direct {v5, p2}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {v3, v4, v5}, LXh/a;-><init>(Loh/x;Loh/G;)V

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    new-instance p2, LXh/a;

    sget-object v3, Lhi/B;->L:Loh/x;

    new-instance v4, Loh/I0;

    invoke-interface {p3}, LQk/f;->a()Lhi/b;

    move-result-object v5

    invoke-direct {v4, v5}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {p2, v3, v4}, LXh/a;-><init>(Loh/x;Loh/G;)V

    invoke-virtual {v2, p2}, Loh/h;->a(Loh/g;)V

    new-instance p2, LXh/f;

    iget-object v3, p0, LSk/f;->b:Lfi/d;

    iget-object v4, p0, LSk/f;->a:Lhi/h0;

    new-instance v5, Loh/I0;

    invoke-direct {v5, v2}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {p2, v3, v4, v5}, LXh/f;-><init>(Lfi/d;Lhi/h0;Loh/G;)V

    :try_start_0
    invoke-interface {p3}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p2, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    new-instance p2, LXh/a;

    sget-object v3, Lhi/B;->M:Loh/x;

    new-instance v4, Loh/I0;

    new-instance v5, Loh/r0;

    invoke-interface {p3}, LQk/f;->getSignature()[B

    move-result-object p3

    invoke-direct {v5, p3}, Loh/r0;-><init>([B)V

    invoke-direct {v4, v5}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {p2, v3, v4}, LXh/a;-><init>(Loh/x;Loh/G;)V

    invoke-virtual {v2, p2}, Loh/h;->a(Loh/g;)V

    new-instance p2, LXh/f;

    iget-object p3, p0, LSk/f;->b:Lfi/d;

    iget-object v3, p0, LSk/f;->a:Lhi/h0;

    new-instance v4, Loh/I0;

    invoke-direct {v4, v2}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {p2, p3, v3, v4}, LXh/f;-><init>(Lfi/d;Lhi/h0;Loh/G;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p1}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-virtual {p2, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    new-instance p3, LSk/e;

    new-instance v1, LXh/e;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v2

    new-instance v3, Loh/r0;

    invoke-interface {p1}, LQk/f;->getSignature()[B

    move-result-object p1

    invoke-direct {v3, p1}, Loh/r0;-><init>([B)V

    invoke-direct {v1, p2, v2, v3}, LXh/e;-><init>(LXh/f;Lhi/b;Loh/c;)V

    invoke-direct {p3, v1}, LSk/e;-><init>(LXh/e;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p3

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Loh/x;Loh/g;)LSk/f;
    .locals 2

    iget-object v0, p0, LSk/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXh/a;

    invoke-virtual {v1}, LXh/a;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v1, p1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/x;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already set"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p0, p1, p2}, LSk/f;->a(Loh/x;Loh/g;)LSk/f;

    return-object p0
.end method

.method public f(Loh/x;[Loh/g;)LSk/f;
    .locals 2

    iget-object v0, p0, LSk/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXh/a;

    invoke-virtual {v1}, LXh/a;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v1, p1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/x;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already set"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p0, p1, p2}, LSk/f;->b(Loh/x;[Loh/g;)LSk/f;

    return-object p0
.end method

.method public g(Z)LSk/f;
    .locals 0

    iput-boolean p1, p0, LSk/f;->d:Z

    return-object p0
.end method
