.class public Lorg/bouncycastle/crypto/util/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Loh/x;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Loh/x;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljk/e;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/util/u$a;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/u$a;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/util/u;->b:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/crypto/util/u$b;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/u$b;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/util/u;->c:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/crypto/util/u$c;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/u$c;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/util/u;->d:Ljava/util/HashMap;

    new-instance v0, Lorg/bouncycastle/crypto/util/u$d;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/u$d;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/util/u;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/util/u;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Loh/x;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/util/u;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loh/x;

    return-object p0
.end method

.method public static c(Loh/x;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/util/u;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static d(LXi/G;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, LXi/K;

    if-eqz v0, :cond_0

    check-cast p0, LXi/K;

    invoke-virtual {p0}, LXi/K;->j()Loh/x;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/u;->c(Loh/x;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LXi/G;->a()Ljk/e;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/u;->e(Ljk/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljk/e;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/util/u;->c:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/crypto/util/u;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Lki/l;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/util/u;->b:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loh/x;

    invoke-static {p0}, LSh/c;->d(Loh/x;)Lki/l;

    move-result-object p0

    return-object p0
.end method

.method public static g(Loh/x;)Lki/l;
    .locals 0

    invoke-static {p0}, LSh/c;->d(Loh/x;)Lki/l;

    move-result-object p0

    return-object p0
.end method
