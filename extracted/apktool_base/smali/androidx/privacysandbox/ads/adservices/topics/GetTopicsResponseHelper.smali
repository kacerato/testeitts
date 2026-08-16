.class public final Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;

    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;-><init>()V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;->INSTANCE:Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertResponse$ads_adservices_release(Landroid/adservices/topics/GetTopicsResponse;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;
    .locals 9

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/topics/e;->a(Landroid/adservices/topics/GetTopicsResponse;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/f;->a(Ljava/lang/Object;)Landroid/adservices/topics/Topic;

    move-result-object v1

    new-instance v8, Landroidx/privacysandbox/ads/adservices/topics/Topic;

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/g;->a(Landroid/adservices/topics/Topic;)J

    move-result-wide v3

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/h;->a(Landroid/adservices/topics/Topic;)J

    move-result-wide v5

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/i;->a(Landroid/adservices/topics/Topic;)I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/privacysandbox/ads/adservices/topics/Topic;-><init>(JJI)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;

    invoke-direct {p1, v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final convertResponseWithEncryptedTopics$ads_adservices_release(Landroid/adservices/topics/GetTopicsResponse;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;
    .locals 10
    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext11OptIn;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/topics/e;->a(Landroid/adservices/topics/GetTopicsResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/f;->a(Ljava/lang/Object;)Landroid/adservices/topics/Topic;

    move-result-object v2

    new-instance v9, Landroidx/privacysandbox/ads/adservices/topics/Topic;

    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/g;->a(Landroid/adservices/topics/Topic;)J

    move-result-wide v4

    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/h;->a(Landroid/adservices/topics/Topic;)J

    move-result-wide v6

    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/i;->a(Landroid/adservices/topics/Topic;)I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroidx/privacysandbox/ads/adservices/topics/Topic;-><init>(JJI)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/topics/j;->a(Landroid/adservices/topics/GetTopicsResponse;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/k;->a(Ljava/lang/Object;)Landroid/adservices/topics/EncryptedTopic;

    move-result-object v2

    new-instance v3, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;

    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/l;->a(Landroid/adservices/topics/EncryptedTopic;)[B

    move-result-object v4

    const-string v5, "encryptedTopic.encryptedTopic"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/m;->a(Landroid/adservices/topics/EncryptedTopic;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "encryptedTopic.keyIdentifier"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/n;->a(Landroid/adservices/topics/EncryptedTopic;)[B

    move-result-object v2

    const-string v6, "encryptedTopic.encapsulatedKey"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v2}, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;-><init>([BLjava/lang/String;[B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;

    invoke-direct {p1, v0, v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method
