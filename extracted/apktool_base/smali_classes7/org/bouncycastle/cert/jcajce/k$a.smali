.class public Lorg/bouncycastle/cert/jcajce/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/jcajce/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;

.field public b:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/k$a;->a:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lorg/bouncycastle/cert/jcajce/k$a;->b:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 2

    new-instance v0, Lhi/b;

    sget-object v1, LWh/b;->i:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    return-object v0
.end method

.method public b()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/k$a;->b:Ljava/security/MessageDigest;

    iget-object v1, p0, Lorg/bouncycastle/cert/jcajce/k$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/jcajce/k$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/k$a;->a:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
