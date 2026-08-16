.class public final Lv0/x;
.super Lcom/google/android/gms/internal/auth/c0;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "AccountTransferProgressCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv0/x;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Landroidx/collection/ArrayMap;


# instance fields
.field public final b:I
    .annotation build LI0/c$h;
        id = 0x1
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation build LI0/c$c;
        getter = "getRegisteredAccountTypes"
        id = 0x2
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation build LI0/c$c;
        getter = "getInProgressAccountTypes"
        id = 0x3
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation build LI0/c$c;
        getter = "getSuccessAccountTypes"
        id = 0x4
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation build LI0/c$c;
        getter = "getFailedAccountTypes"
        id = 0x5
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation build LI0/c$c;
        getter = "getEscrowedAccountTypes"
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv0/y;

    invoke-direct {v0}, Lv0/y;-><init>()V

    sput-object v0, Lv0/x;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lv0/x;->h:Landroidx/collection/ArrayMap;

    const/4 v1, 0x2

    const-string v2, "registered"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/server/response/a$a;->y0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    const-string v2, "in_progress"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/server/response/a$a;->y0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v2, "success"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/server/response/a$a;->y0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    const-string v2, "failed"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/server/response/a$a;->y0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    const-string v2, "escrowed"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/server/response/a$a;->y0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/c0;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lv0/x;->b:I

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/c0;-><init>()V

    iput p1, p0, Lv0/x;->b:I

    iput-object p2, p0, Lv0/x;->c:Ljava/util/List;

    iput-object p3, p0, Lv0/x;->d:Ljava/util/List;

    iput-object p4, p0, Lv0/x;->e:Ljava/util/List;

    iput-object p5, p0, Lv0/x;->f:Ljava/util/List;

    iput-object p6, p0, Lv0/x;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final d()Ljava/util/Map;
    .locals 1

    sget-object v0, Lv0/x;->h:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/common/server/response/a$a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result v0

    packed-switch v0, :pswitch_data_0

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

    :pswitch_0
    iget-object p1, p0, Lv0/x;->g:Ljava/util/List;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lv0/x;->f:Ljava/util/List;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lv0/x;->e:Ljava/util/List;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lv0/x;->d:Ljava/util/List;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lv0/x;->c:Ljava/util/List;

    return-object p1

    :pswitch_5
    iget p1, p0, Lv0/x;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lcom/google/android/gms/common/server/response/a$a;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final t(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    iput-object p3, p0, Lv0/x;->g:Ljava/util/List;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Field with id=%d is not known to be a string list."

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iput-object p3, p0, Lv0/x;->f:Ljava/util/List;

    return-void

    :cond_2
    iput-object p3, p0, Lv0/x;->e:Ljava/util/List;

    return-void

    :cond_3
    iput-object p3, p0, Lv0/x;->d:Ljava/util/List;

    return-void

    :cond_4
    iput-object p3, p0, Lv0/x;->c:Ljava/util/List;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lv0/x;->b:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lv0/x;->c:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LI0/b;->a0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, Lv0/x;->d:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, LI0/b;->a0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x4

    iget-object v1, p0, Lv0/x;->e:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, LI0/b;->a0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x5

    iget-object v1, p0, Lv0/x;->f:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, LI0/b;->a0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Lv0/x;->g:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, LI0/b;->a0(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
