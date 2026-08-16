.class public Lorg/bouncycastle/cms/jcajce/G$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/G;->a(Lhi/b;Lhi/b;[B)Lorg/bouncycastle/cms/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/io/InputStream;

.field public final synthetic b:Lhi/b;

.field public final synthetic c:Ljavax/crypto/Cipher;

.field public final synthetic d:Lorg/bouncycastle/cms/jcajce/G;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/G;Lhi/b;Ljavax/crypto/Cipher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/G$a;->d:Lorg/bouncycastle/cms/jcajce/G;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/G$a;->b:Lhi/b;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/G$a;->c:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/G$a;->b:Lhi/b;

    return-object v0
.end method

.method public b()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/G$a;->a:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/cms/c0;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/cms/c0;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/c0;->c()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/G$b;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/G$a;->c:Ljavax/crypto/Cipher;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/G$b;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/G$a;->a:Ljava/io/InputStream;

    new-instance v0, LJj/a;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/G$a;->c:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, LJj/a;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
