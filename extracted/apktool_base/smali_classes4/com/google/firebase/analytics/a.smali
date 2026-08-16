.class public final Lcom/google/firebase/analytics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/firebase/analytics/FirebaseAnalytics$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/google/firebase/analytics/FirebaseAnalytics$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/google/firebase/analytics/FirebaseAnalytics$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lcom/google/firebase/analytics/FirebaseAnalytics$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/firebase/analytics/FirebaseAnalytics$b;",
            "Lcom/google/firebase/analytics/FirebaseAnalytics$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics$b;->AD_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/analytics/a;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics$b;->ANALYTICS_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/analytics/a;->c:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics$b;->AD_USER_DATA:Lcom/google/firebase/analytics/FirebaseAnalytics$b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/analytics/a;->d:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics$b;->AD_PERSONALIZATION:Lcom/google/firebase/analytics/FirebaseAnalytics$b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public final b()Lcom/google/firebase/analytics/FirebaseAnalytics$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->d:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    return-object v0
.end method

.method public final c()Lcom/google/firebase/analytics/FirebaseAnalytics$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    return-object v0
.end method

.method public final d()Lcom/google/firebase/analytics/FirebaseAnalytics$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->c:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    return-object v0
.end method

.method public final e()Lcom/google/firebase/analytics/FirebaseAnalytics$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    return-object v0
.end method

.method public final f(Lcom/google/firebase/analytics/FirebaseAnalytics$a;)V
    .locals 0
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/analytics/a;->d:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    return-void
.end method

.method public final g(Lcom/google/firebase/analytics/FirebaseAnalytics$a;)V
    .locals 0
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    return-void
.end method

.method public final h(Lcom/google/firebase/analytics/FirebaseAnalytics$a;)V
    .locals 0
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/analytics/a;->c:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    return-void
.end method

.method public final i(Lcom/google/firebase/analytics/FirebaseAnalytics$a;)V
    .locals 0
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/analytics/a;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$a;

    return-void
.end method
