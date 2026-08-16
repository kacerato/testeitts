.class public Lorg/bouncycastle/operator/jcajce/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/operator/jcajce/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:[Ljava/security/Signature;

.field public b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>([Ljava/security/Signature;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/c$c;->a:[Ljava/security/Signature;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p1

    if-eq v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-static {v1}, LJj/f;->b(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/bouncycastle/operator/jcajce/c$c;->b:Ljava/io/OutputStream;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-eq v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    new-instance v1, Lfm/f;

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/c$c;->b:Ljava/io/OutputStream;

    aget-object v3, p1, v0

    invoke-static {v3}, LJj/f;->b(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfm/f;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string v0, "no matching signature found in composite"

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 2

    new-instance v0, Lhi/b;

    sget-object v1, LQh/c;->P:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/c$c;->b:Ljava/io/OutputStream;

    return-object v0
.end method

.method public verify([B)Z
    .locals 5

    :try_start_0
    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/c$c;->a:[Ljava/security/Signature;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v4

    invoke-virtual {v4}, Loh/c;->J()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v2
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move v1, v3

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 p1, v1, 0x1

    return p1

    :goto_2
    new-instance v0, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception obtaining signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
