.class public Lorg/bouncycastle/cms/jcajce/M$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/M;->d(Lhi/b;Lhi/b;[B[B)Lorg/bouncycastle/cms/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:Ljava/security/Key;

.field public final synthetic c:Ljavax/crypto/Mac;

.field public final synthetic d:Lorg/bouncycastle/cms/jcajce/M;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/M;Lhi/b;Ljava/security/Key;Ljavax/crypto/Mac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/M$a;->d:Lorg/bouncycastle/cms/jcajce/M;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/M$a;->a:Lhi/b;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/M$a;->b:Ljava/security/Key;

    iput-object p4, p0, Lorg/bouncycastle/cms/jcajce/M$a;->c:Ljavax/crypto/Mac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/M$a;->a:Lhi/b;

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/M$a;->c:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/jcajce/g;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/M$a;->a:Lhi/b;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/M$a;->b:Ljava/security/Key;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/g;-><init>(Lhi/b;Ljava/security/Key;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LJj/d;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/M$a;->c:Ljavax/crypto/Mac;

    invoke-direct {v0, v1}, LJj/d;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
