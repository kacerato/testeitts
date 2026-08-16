.class public abstract Lcom/google/android/gms/common/server/response/b;
.super Lcom/google/android/gms/common/server/response/a;
.source "SourceFile"

# interfaces
.implements LI0/c;


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LG0/F;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build LC0/a;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/a;-><init>()V

    return-void
.end method


# virtual methods
.method public F0()[B
    .locals 2
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/server/response/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/a;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/server/response/a$a;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/server/response/a;->g(Lcom/google/android/gms/common/server/response/a$a;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1, v3}, Lcom/google/android/gms/common/server/response/a;->g(Lcom/google/android/gms/common/server/response/a$a;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/server/response/a;->e(Lcom/google/android/gms/common/server/response/a$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/common/server/response/a;->e(Lcom/google/android/gms/common/server/response/a$a;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    return v0

    :cond_5
    invoke-virtual {p1, v3}, Lcom/google/android/gms/common/server/response/a;->g(Lcom/google/android/gms/common/server/response/a$a;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_6
    return v1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 4
    .annotation build LC0/a;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/server/response/a$a;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/server/response/a;->g(Lcom/google/android/gms/common/server/response/a$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/server/response/a;->e(Lcom/google/android/gms/common/server/response/a$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method
