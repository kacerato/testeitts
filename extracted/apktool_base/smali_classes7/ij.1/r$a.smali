.class public Lij/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lij/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lij/r;->a(Lij/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lij/r;


# direct methods
.method public constructor <init>(Lij/r;)V
    .locals 0

    iput-object p1, p0, Lij/r$a;->a:Lij/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lij/k;Lij/u;)Lij/m;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lij/m;

    invoke-direct {v0, p1, p2}, Lij/m;-><init>(Lij/k;Lij/u;)V

    invoke-virtual {v0}, Lij/m;->n()I

    move-result p2

    const/16 v1, 0x191

    if-ne p2, v1, :cond_7

    const-string p2, "WWW-Authenticate"

    invoke-virtual {v0, p2}, Lij/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "digest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lij/r$a;->a:Lij/r;

    invoke-static {p1, v0}, Lij/r;->b(Lij/r;Lij/m;)Lij/m;

    move-result-object p1

    goto/16 :goto_1

    :cond_0
    const-string v3, "basic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lij/m;->d()V

    const-string v2, "Basic"

    invoke-virtual {v0, p2}, Lij/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lij/s;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v2}, Lij/r;->c(Lij/r;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v2}, Lij/r;->c(Lij/r;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "realm"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied realm \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v2}, Lij/r;->c(Lij/r;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' does not match server realm \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3, v1, v3}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw p1

    :cond_2
    :goto_0
    new-instance v0, Lij/l;

    invoke-direct {v0, p1}, Lij/l;-><init>(Lij/k;)V

    invoke-virtual {v0, v3}, Lij/l;->g(Lij/j;)Lij/l;

    move-result-object v0

    iget-object v1, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v1}, Lij/r;->c(Lij/r;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v1}, Lij/r;->c(Lij/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic realm=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v2}, Lij/r;->c(Lij/r;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lij/l;->c(Ljava/lang/String;Ljava/lang/String;)Lij/l;

    :cond_3
    iget-object p2, p0, Lij/r$a;->a:Lij/r;

    invoke-static {p2}, Lij/r;->d(Lij/r;)Ljava/lang/String;

    move-result-object p2

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lij/r$a;->a:Lij/r;

    invoke-static {p2}, Lij/r;->d(Lij/r;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iget-object v1, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v1}, Lij/r;->e(Lij/r;)[C

    move-result-object v1

    array-length v1, v1

    add-int/2addr p2, v1

    new-array p2, p2, [C

    iget-object v1, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v1}, Lij/r;->d(Lij/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v2}, Lij/r;->d(Lij/r;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v1}, Lij/r;->d(Lij/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    aput-char v2, p2, v1

    iget-object v1, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v1}, Lij/r;->e(Lij/r;)[C

    move-result-object v1

    iget-object v2, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v2}, Lij/r;->d(Lij/r;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lij/r$a;->a:Lij/r;

    invoke-static {v4}, Lij/r;->e(Lij/r;)[C

    move-result-object v4

    array-length v4, v4

    invoke-static {v1, v3, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/bouncycastle/util/w;->k([C)[B

    move-result-object v2

    invoke-static {v2}, Lem/c;->i([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lij/l;->c(Ljava/lang/String;Ljava/lang/String;)Lij/l;

    invoke-virtual {p1}, Lij/k;->a()Lij/g;

    move-result-object p1

    invoke-virtual {v0}, Lij/l;->b()Lij/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lij/g;->a(Lij/k;)Lij/m;

    move-result-object p1

    invoke-static {p2, v3}, Lorg/bouncycastle/util/a;->g0([CC)V

    :goto_1
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User must not contain a \':\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown auth mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    const-string p2, "Status of 401 but no WWW-Authenticate header"

    invoke-direct {p1, p2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-object v0
.end method
