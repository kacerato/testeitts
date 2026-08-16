.class public abstract LRg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljavax/net/ssl/X509TrustManager;)LRg/c;
    .locals 1

    invoke-static {}, LPg/f;->k()LPg/f;

    move-result-object v0

    invoke-virtual {v0, p0}, LPg/f;->d(Ljavax/net/ssl/X509TrustManager;)LRg/c;

    move-result-object p0

    return-object p0
.end method

.method public static varargs c([Ljava/security/cert/X509Certificate;)LRg/c;
    .locals 2

    new-instance v0, LRg/a;

    new-instance v1, LRg/b;

    invoke-direct {v1, p0}, LRg/b;-><init>([Ljava/security/cert/X509Certificate;)V

    invoke-direct {v0, v1}, LRg/a;-><init>(LRg/f;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method
