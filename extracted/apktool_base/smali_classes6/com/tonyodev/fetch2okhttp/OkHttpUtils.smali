.class public final Lcom/tonyodev/fetch2okhttp/OkHttpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LLf/j;
    name = "OkHttpUtils"
.end annotation


# direct methods
.method public static final getDefaultCookieJar()Lokhttp3/n;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getDefaultCookieManager()Ljava/net/CookieManager;

    move-result-object v0

    new-instance v1, Lokhttp3/JavaNetCookieJar;

    invoke-direct {v1, v0}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    check-cast v1, Lokhttp3/n;

    return-object v1
.end method
