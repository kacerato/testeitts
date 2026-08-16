.class public Lti/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:Lhi/C;

.field public c:Lti/l;


# direct methods
.method public constructor <init>(Lhi/h0;LQk/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/b;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lti/b;->b:Lhi/C;

    new-instance v0, Lti/l;

    invoke-direct {v0, p1, p2}, Lti/l;-><init>(Lhi/h0;LQk/p;)V

    iput-object v0, p0, Lti/b;->c:Lti/l;

    return-void
.end method

.method public constructor <init>(Lti/l;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/b;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lti/b;->b:Lhi/C;

    iput-object p1, p0, Lti/b;->c:Lti/l;

    return-void
.end method


# virtual methods
.method public a(Lti/c;Lti/d;)Lti/b;
    .locals 6

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lti/b;->e(Lti/c;Lti/d;Ljava/util/Date;Ljava/util/Date;Lhi/C;)Lti/b;

    return-object p0
.end method

.method public b(Lti/c;Lti/d;Lhi/C;)Lti/b;
    .locals 6

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lti/b;->e(Lti/c;Lti/d;Ljava/util/Date;Ljava/util/Date;Lhi/C;)Lti/b;

    return-object p0
.end method

.method public c(Lti/c;Lti/d;Ljava/util/Date;Lhi/C;)Lti/b;
    .locals 6

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lti/b;->e(Lti/c;Lti/d;Ljava/util/Date;Ljava/util/Date;Lhi/C;)Lti/b;

    return-object p0
.end method

.method public d(Lti/c;Lti/d;Ljava/util/Date;Ljava/util/Date;)Lti/b;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lti/b;->e(Lti/c;Lti/d;Ljava/util/Date;Ljava/util/Date;Lhi/C;)Lti/b;

    return-object p0
.end method

.method public e(Lti/c;Lti/d;Ljava/util/Date;Ljava/util/Date;Lhi/C;)Lti/b;
    .locals 8

    iget-object v0, p0, Lti/b;->a:Ljava/util/List;

    new-instance v7, Lti/b$a;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lti/b$a;-><init>(Lti/c;Lti/d;Ljava/util/Date;Ljava/util/Date;Lhi/C;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f(LQk/f;[Lli/h;Ljava/util/Date;)Lti/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    iget-object v0, p0, Lti/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/b$a;

    invoke-virtual {v2}, Lti/b$a;->a()LVh/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string p3, "exception creating Request"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance v0, LVh/l;

    iget-object v2, p0, Lti/b;->c:Lti/l;

    invoke-virtual {v2}, Lti/l;->a()LVh/j;

    move-result-object v2

    new-instance v3, Loh/n;

    invoke-direct {v3, p3}, Loh/n;-><init>(Ljava/util/Date;)V

    new-instance p3, Loh/G0;

    invoke-direct {p3, v1}, Loh/G0;-><init>(Loh/h;)V

    iget-object v1, p0, Lti/b;->b:Lhi/C;

    invoke-direct {v0, v2, v3, p3, v1}, LVh/l;-><init>(LVh/j;Loh/n;Loh/E;Lhi/C;)V

    :try_start_1
    invoke-interface {p1}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    new-instance p3, Loh/r0;

    invoke-interface {p1}, LQk/f;->getSignature()[B

    move-result-object v1

    invoke-direct {p3, v1}, Loh/r0;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object p1

    if-eqz p2, :cond_2

    array-length v1, p2

    if-lez v1, :cond_2

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v3, p2

    if-eq v2, v3, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {v3}, Lli/h;->x()Lhi/q;

    move-result-object v3

    invoke-virtual {v1, v3}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Loh/G0;

    invoke-direct {p2, v1}, Loh/G0;-><init>(Loh/h;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    new-instance v1, Lti/a;

    new-instance v2, LVh/a;

    invoke-direct {v2, v0, p1, p3, p2}, LVh/a;-><init>(LVh/l;Lhi/b;Loh/r0;Loh/E;)V

    invoke-direct {v1, v2}, Lti/a;-><init>(LVh/a;)V

    return-object v1

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception processing TBSRequest: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public g(Lhi/C;)Lti/b;
    .locals 0

    iput-object p1, p0, Lti/b;->b:Lhi/C;

    return-object p0
.end method
