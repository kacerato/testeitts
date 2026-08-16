.class public LHj/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Loh/x;


# direct methods
.method public constructor <init>(Lhi/h0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    :try_start_0
    sget-object v1, LLj/a;->a:[Loh/x;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "unable to create CompositePublicKey from SubjectPublicKeyInfo"

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, LLj/b;

    invoke-direct {v0}, LLj/b;-><init>()V

    invoke-interface {v0, p1}, Lbk/c;->a(Lhi/h0;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, LHj/e;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LHj/e;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LHj/e;->b:Ljava/util/List;

    invoke-virtual {p1}, LHj/e;->a()Loh/x;

    move-result-object p1

    iput-object p1, p0, LHj/e;->c:Loh/x;

    return-void

    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs constructor <init>(Loh/x;[Ljava/security/PublicKey;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHj/e;->c:Loh/x;

    if-eqz p2, :cond_1

    array-length p1, p2

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LHj/e;->b:Ljava/util/List;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "at least one public key must be provided for the composite public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([Ljava/security/PublicKey;)V
    .locals 1

    .line 3
    sget-object v0, Lyj/c;->Q:Loh/x;

    invoke-direct {p0, v0, p1}, LHj/e;-><init>(Loh/x;[Ljava/security/PublicKey;)V

    return-void
.end method


# virtual methods
.method public a()Loh/x;
    .locals 1

    iget-object v0, p0, LHj/e;->c:Loh/x;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LHj/e;->b:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LHj/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, LHj/e;

    invoke-virtual {p1}, LHj/e;->a()Loh/x;

    move-result-object v1

    iget-object v3, p0, LHj/e;->c:Loh/x;

    invoke-virtual {v1, v3}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LHj/e;->b:Ljava/util/List;

    iget-object p1, p1, LHj/e;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    sget-object v0, LLj/a;->d:Ljava/util/HashMap;

    iget-object v1, p0, LHj/e;->c:Loh/x;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLj/a$a;

    invoke-virtual {v0}, LLj/a$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LHj/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LHj/e;->c:Loh/x;

    sget-object v3, Lyj/c;->Q:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LHj/e;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    goto :goto_2

    :cond_0
    iget-object v2, p0, LHj/e;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v2

    invoke-virtual {v2}, Lhi/h0;->z()Loh/c;

    move-result-object v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lhi/h0;

    new-instance v2, Lhi/b;

    iget-object v3, p0, LHj/e;->c:Loh/x;

    invoke-direct {v2, v3}, Lhi/b;-><init>(Loh/x;)V

    new-instance v3, Loh/G0;

    invoke-direct {v3, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {v1, v2, v3}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    const-string v0, "DER"

    invoke-virtual {v1, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to encode composite public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LHj/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method
