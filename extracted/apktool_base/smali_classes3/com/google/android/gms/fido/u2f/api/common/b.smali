.class public Lcom/google/android/gms/fido/u2f/api/common/b;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "KeyHandleCreator"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/u2f/api/common/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LI0/c$h;
        getter = "getVersionCode"
        id = 0x1
    .end annotation
.end field

.field public final c:[B
    .annotation build LI0/c$c;
        getter = "getBytes"
        id = 0x2
    .end annotation
.end field

.field public final d:Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;
    .annotation build LI0/c$c;
        getter = "getProtocolVersionAsString"
        id = 0x3
        type = "java.lang.String"
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation build LI0/c$c;
        getter = "getTransports"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc1/g;

    invoke-direct {v0}, Lc1/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # [B
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 1
    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->b:I

    iput-object p2, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->c:[B

    .line 2
    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;->c(Ljava/lang/String;)Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->d:Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;
    :try_end_0
    .catch Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion$UnsupportedProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>([BLcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;Ljava/util/List;)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/common/Transport;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, LI0/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->b:I

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->c:[B

    iput-object p2, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->d:Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;

    iput-object p3, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    return-void
.end method

.method public static u0(Lorg/json/JSONObject;)Lcom/google/android/gms/fido/u2f/api/common/b;
    .locals 5
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;->c(Ljava/lang/String;)Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion$UnsupportedProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "keyHandle"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    :try_start_1
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "transports"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/fido/common/Transport;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    :goto_1
    new-instance p0, Lcom/google/android/gms/fido/u2f/api/common/b;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/fido/u2f/api/common/b;-><init>([BLcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;Ljava/util/List;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/json/JSONException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lorg/json/JSONException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b0()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/common/Transport;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/fido/u2f/api/common/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/fido/u2f/api/common/b;

    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->c:[B

    iget-object v3, p1, Lcom/google/android/gms/fido/u2f/api/common/b;->c:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->d:Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;

    iget-object v3, p1, Lcom/google/android/gms/fido/u2f/api/common/b;->d:Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    if-nez v1, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p1, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v0

    :cond_7
    :goto_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->d:Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;

    iget-object v2, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->c:[B

    return-object v0
.end method

.method public n0()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->b:I

    return v0
.end method

.method public t()Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->d:Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->c:[B

    invoke-static {v1}, LT0/c;->d([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->d:Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{keyHandle: %s, version: %s, transports: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v0()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/fido/u2f/api/common/b;->w0()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final w0()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->c:[B

    if-eqz v1, :cond_0

    const-string v2, "keyHandle"

    const/16 v3, 0xb

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->d:Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;

    if-eqz v1, :cond_1

    const-string v2, "version"

    invoke-virtual {v1}, Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fido/common/Transport;

    invoke-virtual {v3}, Lcom/google/android/gms/fido/common/Transport;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "transports"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fido/u2f/api/common/b;->n0()I

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/fido/u2f/api/common/b;->n()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LI0/b;->m(Landroid/os/Parcel;I[BZ)V

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/b;->d:Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/u2f/api/common/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/fido/u2f/api/common/b;->b0()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LI0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
