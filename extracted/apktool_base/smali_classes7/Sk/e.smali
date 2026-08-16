.class public LSk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:[LXh/a;


# instance fields
.field public final a:LXh/e;

.field public final b:Z

.field public final c:Lhi/b;

.field public final d:Lhi/h0;

.field public final e:Loh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [LXh/a;

    sput-object v0, LSk/e;->f:[LXh/a;

    return-void
.end method

.method public constructor <init>(LXh/e;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    iput-object p1, p0, LSk/e;->a:LXh/e;

    invoke-virtual {p1}, LXh/e;->u()LXh/f;

    move-result-object p1

    invoke-virtual {p1}, LXh/f;->u()Loh/G;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p1

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LXh/a;->y(Ljava/lang/Object;)LXh/a;

    move-result-object v3

    sget-object v4, Lhi/B;->L:Loh/x;

    invoke-virtual {v3}, LXh/a;->u()Loh/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, LSk/e;->g(LXh/a;)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    :cond_1
    sget-object v4, Lhi/B;->K:Loh/x;

    invoke-virtual {v3}, LXh/a;->u()Loh/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, LSk/e;->g(LXh/a;)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v1

    :cond_2
    sget-object v4, Lhi/B;->M:Loh/x;

    invoke-virtual {v3}, LXh/a;->u()Loh/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, LSk/e;->g(LXh/a;)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v1, v0

    move-object v2, v1

    :cond_4
    const/4 p1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    move v4, p1

    :goto_1
    if-eqz v1, :cond_6

    move v5, v3

    goto :goto_2

    :cond_6
    move v5, p1

    :goto_2
    or-int/2addr v4, v5

    if-eqz v2, :cond_7

    move v5, v3

    goto :goto_3

    :cond_7
    move v5, p1

    :goto_3
    or-int/2addr v4, v5

    iput-boolean v4, p0, LSk/e;->b:Z

    if-eqz v4, :cond_c

    if-eqz v0, :cond_8

    move v4, v3

    goto :goto_4

    :cond_8
    move v4, p1

    :goto_4
    if-eqz v1, :cond_9

    move v5, v3

    goto :goto_5

    :cond_9
    move v5, p1

    :goto_5
    and-int/2addr v4, v5

    if-eqz v2, :cond_a

    move p1, v3

    :cond_a
    and-int/2addr p1, v4

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid alternate public key details found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_6
    iput-object v0, p0, LSk/e;->c:Lhi/b;

    iput-object v1, p0, LSk/e;->d:Lhi/h0;

    iput-object v2, p0, LSk/e;->e:Loh/c;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "certificationRequest cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, LSk/e;->m([B)LXh/e;

    move-result-object p1

    invoke-direct {p0, p1}, LSk/e;-><init>(LXh/e;)V

    return-void
.end method

.method public static g(LXh/a;)Loh/g;
    .locals 2

    invoke-virtual {p0}, LXh/a;->x()[Loh/g;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "single value attribute value not size of 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m([B)LXh/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, LXh/e;->v(Ljava/lang/Object;)LXh/e;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/pkcs/PKCSIOException;

    const-string v1, "empty data passed to constructor"

    invoke-direct {p0, v1}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()[LXh/a;
    .locals 4

    iget-object v0, p0, LSk/e;->a:LXh/e;

    invoke-virtual {v0}, LXh/e;->u()LXh/f;

    move-result-object v0

    invoke-virtual {v0}, LXh/f;->u()Loh/G;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LSk/e;->f:[LXh/a;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/G;->size()I

    move-result v1

    new-array v1, v1, [LXh/a;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/G;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v2}, Loh/G;->H(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, LXh/a;->y(Ljava/lang/Object;)LXh/a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public b(Loh/x;)[LXh/a;
    .locals 5

    iget-object v0, p0, LSk/e;->a:LXh/e;

    invoke-virtual {v0}, LXh/e;->u()LXh/f;

    move-result-object v0

    invoke-virtual {v0}, LXh/f;->u()Loh/G;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, LSk/e;->f:[LXh/a;

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/G;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v2}, Loh/G;->H(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, LXh/a;->y(Ljava/lang/Object;)LXh/a;

    move-result-object v3

    invoke-virtual {v3}, LXh/a;->u()Loh/x;

    move-result-object v4

    invoke-virtual {v4, p1}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, LSk/e;->f:[LXh/a;

    return-object p1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [LXh/a;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LXh/a;

    return-object p1
.end method

.method public c()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSk/e;->a:LXh/e;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public d()Lhi/C;
    .locals 9

    invoke-virtual {p0}, LSk/e;->a()[LXh/a;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_6

    aget-object v3, v0, v2

    sget-object v4, LXh/t;->d2:Loh/x;

    invoke-virtual {v3}, LXh/a;->u()Loh/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    invoke-virtual {v3}, LXh/a;->v()Loh/G;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Loh/G;->size()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v1}, Loh/G;->H(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v3

    invoke-virtual {v3}, Loh/E;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/e;->G(Ljava/lang/Object;)Loh/e;

    move-result-object v4

    invoke-virtual {v4}, Loh/e;->J()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    move v4, v1

    :goto_2
    invoke-virtual {v3}, Loh/E;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-virtual {v3, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v4

    invoke-virtual {v3, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v3

    invoke-virtual {v3}, Loh/y;->H()[B

    move-result-object v3

    invoke-virtual {v0, v4, v1, v3}, Lhi/D;->d(Loh/x;Z[B)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Loh/E;->size()I

    move-result v6

    if-ne v6, v5, :cond_2

    invoke-virtual {v3, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v5

    invoke-virtual {v3, v8}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v3

    invoke-virtual {v3}, Loh/y;->H()[B

    move-result-object v3

    invoke-virtual {v0, v5, v4, v3}, Lhi/D;->d(Loh/x;Z[B)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect sequence size of Extension get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Loh/E;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected 2 or three"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-virtual {v0}, Lhi/D;->e()Lhi/C;

    move-result-object v0

    return-object v0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asn1 processing issue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pkcs_9_at_extensionRequest present but has no value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LSk/e;->a:LXh/e;

    invoke-virtual {v0}, LXh/e;->x()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LSk/e;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LSk/e;

    invoke-virtual {p0}, LSk/e;->n()LXh/e;

    move-result-object v0

    invoke-virtual {p1}, LSk/e;->n()LXh/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Lhi/b;
    .locals 1

    iget-object v0, p0, LSk/e;->a:LXh/e;

    invoke-virtual {v0}, LXh/e;->y()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public h()Lfi/d;
    .locals 1

    iget-object v0, p0, LSk/e;->a:LXh/e;

    invoke-virtual {v0}, LXh/e;->u()LXh/f;

    move-result-object v0

    invoke-virtual {v0}, LXh/f;->x()Lfi/d;

    move-result-object v0

    invoke-static {v0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, LSk/e;->n()LXh/e;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lhi/h0;
    .locals 1

    iget-object v0, p0, LSk/e;->a:LXh/e;

    invoke-virtual {v0}, LXh/e;->u()LXh/f;

    move-result-object v0

    invoke-virtual {v0}, LXh/f;->y()Lhi/h0;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, LSk/e;->b:Z

    return v0
.end method

.method public k(LQk/h;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    iget-boolean v0, p0, LSk/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LSk/e;->a:LXh/e;

    invoke-virtual {v0}, LXh/e;->u()LXh/f;

    move-result-object v0

    invoke-virtual {v0}, LXh/f;->u()Loh/G;

    move-result-object v1

    new-instance v2, Loh/h;

    invoke-direct {v2}, Loh/h;-><init>()V

    invoke-virtual {v1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LXh/a;->y(Ljava/lang/Object;)LXh/a;

    move-result-object v3

    sget-object v4, Lhi/B;->M:Loh/x;

    invoke-virtual {v3}, LXh/a;->u()Loh/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_1
    new-instance v1, LXh/f;

    invoke-virtual {v0}, LXh/f;->x()Lfi/d;

    move-result-object v3

    invoke-virtual {v0}, LXh/f;->y()Lhi/h0;

    move-result-object v0

    new-instance v4, Loh/I0;

    invoke-direct {v4, v2}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {v1, v3, v0, v4}, LXh/f;-><init>(Lfi/d;Lhi/h0;Loh/G;)V

    :try_start_0
    iget-object v0, p0, LSk/e;->c:Lhi/b;

    invoke-interface {p1, v0}, LQk/h;->a(Lhi/b;)LQk/g;

    move-result-object p1

    invoke-interface {p1}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, LSk/e;->e:Loh/c;

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    invoke-interface {p1, v0}, LQk/g;->verify([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/pkcs/PKCSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no alternate public key present"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(LQk/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    iget-object v0, p0, LSk/e;->a:LXh/e;

    invoke-virtual {v0}, LXh/e;->u()LXh/f;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, LSk/e;->a:LXh/e;

    invoke-virtual {v1}, LXh/e;->y()Lhi/b;

    move-result-object v1

    invoke-interface {p1, v1}, LQk/h;->a(Lhi/b;)LQk/g;

    move-result-object p1

    invoke-interface {p1}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v0, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, LSk/e;->e()[B

    move-result-object v0

    invoke-interface {p1, v0}, LQk/g;->verify([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/pkcs/PKCSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public n()LXh/e;
    .locals 1

    iget-object v0, p0, LSk/e;->a:LXh/e;

    return-object v0
.end method
