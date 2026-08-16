.class public Ljj/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljj/l;->a()Ljj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljj/l;


# direct methods
.method public constructor <init>(Ljj/l;)V
    .locals 0

    iput-object p1, p0, Ljj/l$a;->a:Ljj/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ljj/l$a;->a:Ljj/l;

    iget-object v2, v2, Ljj/l;->d:[Ljavax/net/ssl/X509TrustManager;

    array-length v3, v2

    if-eq v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    iget-object v0, p0, Ljj/l$a;->a:Ljj/l;

    iget-object v1, v0, Ljj/l;->b:Ljava/security/Provider;

    iget-object v0, v0, Ljj/l;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Ljj/l$a;->a:Ljj/l;

    iget-object v2, v1, Ljj/l;->c:[Ljavax/net/ssl/KeyManager;

    iget-object v3, v1, Ljj/l;->d:[Ljavax/net/ssl/X509TrustManager;

    iget-object v1, v1, Ljj/l;->e:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
