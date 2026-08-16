.class public Lorg/bouncycastle/operator/jcajce/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/jcajce/b;->c(LHj/d;)LQk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final synthetic b:Ljava/io/OutputStream;

.field public final synthetic c:[Ljava/security/Signature;

.field public final synthetic d:Lorg/bouncycastle/operator/jcajce/b;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/b;Ljava/io/OutputStream;[Ljava/security/Signature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/b$b;->d:Lorg/bouncycastle/operator/jcajce/b;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/b$b;->b:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/bouncycastle/operator/jcajce/b$b;->c:[Ljava/security/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/b$b;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/b$b;->d:Lorg/bouncycastle/operator/jcajce/b;

    invoke-static {v0}, Lorg/bouncycastle/operator/jcajce/b;->a(Lorg/bouncycastle/operator/jcajce/b;)Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/b$b;->a:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    :try_start_0
    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/b$b;->c:[Ljava/security/Signature;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    new-instance v2, Loh/r0;

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/b$b;->c:[Ljava/security/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    const-string v0, "DER"

    invoke-virtual {v1, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception obtaining signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception encoding signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
