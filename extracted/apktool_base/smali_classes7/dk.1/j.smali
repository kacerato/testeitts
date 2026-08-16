.class public Ldk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/PrivateKey;Ljava/lang/String;)Ldk/b;
    .locals 1

    new-instance v0, Ldk/b;

    invoke-direct {v0, p0, p1}, Ldk/b;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/security/PrivateKey;Ljava/util/Map;)Ldk/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ldk/b;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance p1, Ldk/b;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ldk/b;-><init>(Ljava/security/PrivateKey;Ljava/util/Map;)V

    return-object p1
.end method
