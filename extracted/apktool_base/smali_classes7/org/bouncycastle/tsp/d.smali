.class public Lorg/bouncycastle/tsp/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Ljava/util/Set;


# instance fields
.field public a:Lci/k;

.field public b:Lhi/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tsp/d;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lci/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {p1}, Lci/k;->x()Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/d;->b:Lhi/C;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/tsp/d;->p(Ljava/io/InputStream;)Lci/k;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/d;-><init>(Lci/k;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/d;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static p(Ljava/io/InputStream;)Lci/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "malformed request: "

    :try_start_0
    new-instance v1, Loh/r;

    invoke-direct {v1, p0}, Loh/r;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Loh/r;->k()Loh/B;

    move-result-object p0

    invoke-static {p0}, Lci/k;->y(Ljava/lang/Object;)Lci/k;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Loh/x;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Lci/k;->v()Loh/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Lci/k;->v()Loh/e;

    move-result-object v0

    invoke-virtual {v0}, Loh/e;->J()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->b:Lhi/C;

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tsp/d;->c:Ljava/util/Set;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/tsp/d;->b:Lhi/C;

    invoke-virtual {v1}, Lhi/C;->v()[Loh/x;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public e(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->b:Lhi/C;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->b:Lhi/C;

    invoke-static {v0}, Lorg/bouncycastle/tsp/c;->c(Lhi/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()Lhi/C;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->b:Lhi/C;

    return-object v0
.end method

.method public h()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Lci/k;->z()Lci/h;

    move-result-object v0

    invoke-virtual {v0}, Lci/h;->u()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public i()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Lci/k;->z()Lci/h;

    move-result-object v0

    invoke-virtual {v0}, Lci/h;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Lci/k;->z()Lci/h;

    move-result-object v0

    invoke-virtual {v0}, Lci/h;->v()[B

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->b:Lhi/C;

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tsp/d;->c:Ljava/util/Set;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/tsp/d;->b:Lhi/C;

    invoke-virtual {v1}, Lhi/C;->E()[Loh/x;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Lci/k;->A()Loh/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Lci/k;->A()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Lci/k;->B()Loh/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Lci/k;->B()Loh/x;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->a:Lci/k;

    invoke-virtual {v0}, Lci/k;->C()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/d;->b:Lhi/C;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tsp/d;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tsp/d;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p3}, Lorg/bouncycastle/tsp/d;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/d;->i()Loh/x;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/d;->m()Loh/x;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/d;->m()Loh/x;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string p2, "request contains unknown policy"

    const/16 p3, 0x100

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/d;->g()Lhi/C;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/d;->g()Lhi/C;

    move-result-object p1

    invoke-virtual {p1}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Loh/x;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string p2, "request contains unknown extension"

    const/high16 p3, 0x800000

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/d;->i()Loh/x;

    move-result-object p1

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/tsp/c;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/d;->j()[B

    move-result-object p2

    array-length p2, p2

    if-ne p1, p2, :cond_4

    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string p2, "imprint digest the wrong length"

    const/4 p3, 0x4

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string p2, "request contains unknown algorithm"

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
