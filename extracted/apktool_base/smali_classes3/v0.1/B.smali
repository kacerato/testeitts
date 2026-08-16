.class public final Lv0/B;
.super Lcom/google/android/gms/internal/auth/c0;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "AuthenticatorTransferInfoCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv0/B;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/HashMap;


# instance fields
.field public final b:Ljava/util/Set;
    .annotation build LI0/c$d;
    .end annotation
.end field

.field public final c:I
    .annotation build LI0/c$h;
        id = 0x1
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getAccountType"
        id = 0x2
    .end annotation
.end field

.field public e:I
    .annotation build LI0/c$c;
        getter = "getStatus"
        id = 0x3
    .end annotation
.end field

.field public f:[B
    .annotation build LI0/c$c;
        getter = "getTransferBytes"
        id = 0x4
    .end annotation
.end field

.field public g:Landroid/app/PendingIntent;
    .annotation build LI0/c$c;
        getter = "getPendingIntent"
        id = 0x5
    .end annotation
.end field

.field public h:Lv0/e;
    .annotation build LI0/c$c;
        getter = "getDeviceMetaData"
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv0/C;

    invoke-direct {v0}, Lv0/C;-><init>()V

    sput-object v0, Lv0/B;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv0/B;->i:Ljava/util/HashMap;

    const/4 v1, 0x2

    const-string v2, "accountType"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/server/response/a$a;->w0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    const-string v2, "status"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/server/response/a$a;->u0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v2, "transferBytes"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/server/response/a$a;->b(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/c0;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    iput-object v0, p0, Lv0/B;->b:Ljava/util/Set;

    const/4 v0, 0x1

    iput v0, p0, Lv0/B;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ILjava/lang/String;I[BLandroid/app/PendingIntent;Lv0/e;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build LI0/c$d;
        .end annotation
    .end param
    .param p2    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p4    # I
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p5    # [B
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p6    # Landroid/app/PendingIntent;
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p7    # Lv0/e;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/c0;-><init>()V

    iput-object p1, p0, Lv0/B;->b:Ljava/util/Set;

    iput p2, p0, Lv0/B;->c:I

    iput-object p3, p0, Lv0/B;->d:Ljava/lang/String;

    iput p4, p0, Lv0/B;->e:I

    iput-object p5, p0, Lv0/B;->f:[B

    iput-object p6, p0, Lv0/B;->g:Landroid/app/PendingIntent;

    iput-object p7, p0, Lv0/B;->h:Lv0/e;

    return-void
.end method


# virtual methods
.method public final synthetic d()Ljava/util/Map;
    .locals 1

    sget-object v0, Lv0/B;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/common/server/response/a$a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lv0/B;->f:[B

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SafeParcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lv0/B;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lv0/B;->d:Ljava/lang/String;

    return-object p1

    :cond_3
    iget p1, p0, Lv0/B;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/google/android/gms/common/server/response/a$a;)Z
    .locals 1

    iget-object v0, p0, Lv0/B;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final l(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;[B)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iput-object p3, p0, Lv0/B;->f:[B

    iget-object p2, p0, Lv0/B;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Field with id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not known to be a byte array."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final m(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iput p3, p0, Lv0/B;->e:I

    iget-object p2, p0, Lv0/B;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Field with id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not known to be an int."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final p(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iput-object p3, p0, Lv0/B;->d:Ljava/lang/String;

    iget-object p2, p0, Lv0/B;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Field with id=%d is not known to be a string."

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lv0/B;->b:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lv0/B;->c:I

    invoke-static {p1, v2, v3}, LI0/b;->F(Landroid/os/Parcel;II)V

    :cond_0
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lv0/B;->d:Ljava/lang/String;

    invoke-static {p1, v3, v4, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_1
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lv0/B;->e:I

    invoke-static {p1, v3, v4}, LI0/b;->F(Landroid/os/Parcel;II)V

    :cond_2
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lv0/B;->f:[B

    invoke-static {p1, v3, v4, v2}, LI0/b;->m(Landroid/os/Parcel;I[BZ)V

    :cond_3
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lv0/B;->g:Landroid/app/PendingIntent;

    invoke-static {p1, v3, v4, p2, v2}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_4
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lv0/B;->h:Lv0/e;

    invoke-static {p1, v3, v1, p2, v2}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_5
    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
