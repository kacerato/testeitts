.class public final LL2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/google/firebase/analytics/FirebaseAnalytics;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LL2/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final a()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, LL2/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public static final b(LK2/d;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1
    .param p0    # LK2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LL2/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez p0, :cond_1

    sget-object p0, LL2/a;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, LL2/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_0

    sget-object v0, LK2/d;->a:LK2/d;

    invoke-static {v0}, LK2/o;->c(LK2/d;)LK2/g;

    move-result-object v0

    invoke-virtual {v0}, LK2/g;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sput-object v0, LL2/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    :cond_1
    :goto_2
    sget-object p0, LL2/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {p0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LL2/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static final d(Lcom/google/firebase/analytics/FirebaseAnalytics;Ljava/lang/String;LMf/l;)V
    .locals 1
    .param p0    # Lcom/google/firebase/analytics/FirebaseAnalytics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LMf/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/analytics/FirebaseAnalytics;",
            "Ljava/lang/String;",
            "LMf/l<",
            "-",
            "LL2/c;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LL2/c;

    invoke-direct {v0}, LL2/c;-><init>()V

    invoke-interface {p2, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, LL2/c;->a()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final e(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    .locals 0
    .param p0    # Lcom/google/firebase/analytics/FirebaseAnalytics;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, LL2/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method public static final f(Lcom/google/firebase/analytics/FirebaseAnalytics;LMf/l;)V
    .locals 1
    .param p0    # Lcom/google/firebase/analytics/FirebaseAnalytics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LMf/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/analytics/FirebaseAnalytics;",
            "LMf/l<",
            "-",
            "Lcom/google/firebase/analytics/a;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/analytics/a;

    invoke-direct {v0}, Lcom/google/firebase/analytics/a;-><init>()V

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/firebase/analytics/a;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->f(Ljava/util/Map;)V

    return-void
.end method
