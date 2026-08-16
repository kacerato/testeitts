.class public final LF2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LF2/a;
.end annotation

.annotation runtime LI2/j;
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final e:I = -0x1

.field public static final f:J


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF2/b;->b:Ljava/lang/String;

    iput p2, p0, LF2/b;->c:I

    iput-boolean p3, p0, LF2/b;->d:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)LF2/b;
    .locals 3

    invoke-static {p0}, LF2/b;->c(Ljava/lang/String;)LF2/b;

    move-result-object v0

    invoke-virtual {v0}, LF2/b;->h()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Host has a port: %s"

    invoke-static {v1, v2, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;I)LF2/b;
    .locals 3

    invoke-static {p1}, LF2/b;->i(I)Z

    move-result v0

    const-string v1, "Port out of range: %s"

    invoke-static {v0, v1, p1}, Lw2/H;->k(ZLjava/lang/String;I)V

    invoke-static {p0}, LF2/b;->c(Ljava/lang/String;)LF2/b;

    move-result-object v0

    invoke-virtual {v0}, LF2/b;->h()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Host has a port: %s"

    invoke-static {v1, v2, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance p0, LF2/b;

    iget-object v1, v0, LF2/b;->b:Ljava/lang/String;

    iget-boolean v0, v0, LF2/b;->d:Z

    invoke-direct {p0, v1, p1, v0}, LF2/b;-><init>(Ljava/lang/String;IZ)V

    return-object p0
.end method

.method public static c(Ljava/lang/String;)LF2/b;
    .locals 8
    .annotation build LI2/a;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, LF2/b;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v3

    aget-object v0, v0, v2

    :goto_0
    move-object v5, v4

    move v4, v3

    goto :goto_2

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ltz v4, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const/4 v4, 0x0

    move-object v5, p0

    move-object v7, v4

    move v4, v0

    move-object v0, v7

    :goto_2
    invoke-static {v0}, Lw2/P;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lw2/e;->f()Lw2/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw2/e;->C(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    const-string v1, "Unparseable port number: %s"

    invoke-static {v2, v1, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, LF2/b;->i(I)Z

    move-result v0

    const-string v2, "Port number out of range: %s"

    invoke-static {v0, v2, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Unparseable port number: "

    if-eqz v1, :cond_4

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_5
    new-instance p0, LF2/b;

    invoke-direct {p0, v5, v1, v4}, LF2/b;-><init>(Ljava/lang/String;IZ)V

    return-object p0
.end method

.method public static e(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Bracketed host-port string must start with a bracket: %s"

    invoke-static {v1, v2, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v4, 0x5d

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v2, v5, :cond_1

    if-le v4, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v5, "Invalid bracketed host/port: %s"

    invoke-static {v2, v5, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    const-string p0, ""

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_3

    move v0, v3

    :cond_3
    const-string v1, "Only a colon may follow a close bracket: %s"

    invoke-static {v0, v1, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x2

    move v0, v4

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    const-string v3, "Port must be numeric: %s"

    invoke-static {v1, v3, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF2/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LF2/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, LF2/b;

    iget-object v1, p0, LF2/b;->b:Ljava/lang/String;

    iget-object v3, p1, LF2/b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, LF2/b;->c:I

    iget p1, p1, LF2/b;->c:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, LF2/b;->h()Z

    move-result v0

    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget v0, p0, LF2/b;->c:I

    return v0
.end method

.method public g(I)I
    .locals 1

    invoke-virtual {p0}, LF2/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, LF2/b;->c:I

    :cond_0
    return p1
.end method

.method public h()Z
    .locals 1

    iget v0, p0, LF2/b;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LF2/b;->b:Ljava/lang/String;

    iget v1, p0, LF2/b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lw2/B;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public j()LF2/b;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    iget-boolean v0, p0, LF2/b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Possible bracketless IPv6 literal: %s"

    iget-object v2, p0, LF2/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public k(I)LF2/b;
    .locals 3

    invoke-static {p1}, LF2/b;->i(I)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p0}, LF2/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LF2/b;

    iget-object v1, p0, LF2/b;->b:Ljava/lang/String;

    iget-boolean v2, p0, LF2/b;->d:Z

    invoke-direct {v0, v1, p1, v2}, LF2/b;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, LF2/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, LF2/b;->b:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LF2/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, LF2/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, LF2/b;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, LF2/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
