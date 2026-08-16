.class public final Lcom/google/android/gms/internal/measurement/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation build Lv2/d;
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/measurement/L;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/measurement/L;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y;->b:Lcom/google/android/gms/internal/measurement/L;

    new-instance v0, Lcom/google/android/gms/internal/measurement/w;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/w;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Lcom/google/android/gms/internal/measurement/x;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/z;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/z;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Lcom/google/android/gms/internal/measurement/x;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/A;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/A;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Lcom/google/android/gms/internal/measurement/x;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/E;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/E;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Lcom/google/android/gms/internal/measurement/x;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/J;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/J;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Lcom/google/android/gms/internal/measurement/x;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/K;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/K;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Lcom/google/android/gms/internal/measurement/x;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/M;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/M;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/y;->a(Lcom/google/android/gms/internal/measurement/x;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/x;)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/N;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/N;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/h2;Lcom/google/android/gms/internal/measurement/q;)Lcom/google/android/gms/internal/measurement/q;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/I2;->l(Lcom/google/android/gms/internal/measurement/h2;)I

    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/r;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/android/gms/internal/measurement/r;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/r;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/r;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/x;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y;->b:Lcom/google/android/gms/internal/measurement/L;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Lcom/google/android/gms/internal/measurement/x;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/h2;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/q;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method
