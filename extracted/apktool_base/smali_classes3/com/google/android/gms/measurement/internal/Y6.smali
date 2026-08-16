.class public final Lcom/google/android/gms/measurement/internal/Y6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/measurement/n3;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:J

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/c7;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/c7;[B)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/Y6;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Lcom/google/android/gms/internal/measurement/b3;)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/b3;->J()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(JLcom/google/android/gms/internal/measurement/b3;)Z
    .locals 7

    invoke-static {p3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Y6;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/Y6;->b:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/Y6;->b(Lcom/google/android/gms/internal/measurement/b3;)J

    move-result-wide v2

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/Y6;->b(Lcom/google/android/gms/internal/measurement/b3;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/Y6;->d:J

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/q5;->f()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Y6;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->f1:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->o()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->o()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_6

    return v1

    :cond_6
    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/Y6;->d:J

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/Y6;->b:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object p2, Lcom/google/android/gms/measurement/internal/e2;->k:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {p2, v6}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt p1, p2, :cond_7

    return v1

    :cond_7
    return p3
.end method
