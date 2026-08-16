.class public LG0/m;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LI0/c$a;
    creator = "GetServiceRequestCreator"
.end annotation

.annotation build LI0/c$g;
    value = {
        0x9
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LG0/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:[Lcom/google/android/gms/common/api/Scope;

.field public static final q:[LB0/e;


# instance fields
.field public final b:I
    .annotation build LI0/c$h;
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LI0/c$c;
        id = 0x2
    .end annotation
.end field

.field public final d:I
    .annotation build LI0/c$c;
        id = 0x3
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build LI0/c$c;
        id = 0x4
    .end annotation
.end field

.field public f:Landroid/os/IBinder;
    .annotation build LI0/c$c;
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:[Lcom/google/android/gms/common/api/Scope;
    .annotation build LI0/c$c;
        defaultValueUnchecked = "GetServiceRequest.EMPTY_SCOPES"
        id = 0x6
    .end annotation
.end field

.field public h:Landroid/os/Bundle;
    .annotation build LI0/c$c;
        defaultValueUnchecked = "new android.os.Bundle()"
        id = 0x7
    .end annotation
.end field

.field public i:Landroid/accounts/Account;
    .annotation build LI0/c$c;
        id = 0x8
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:[LB0/e;
    .annotation build LI0/c$c;
        defaultValueUnchecked = "GetServiceRequest.EMPTY_FEATURES"
        id = 0xa
    .end annotation
.end field

.field public k:[LB0/e;
    .annotation build LI0/c$c;
        defaultValueUnchecked = "GetServiceRequest.EMPTY_FEATURES"
        id = 0xb
    .end annotation
.end field

.field public final l:Z
    .annotation build LI0/c$c;
        id = 0xc
    .end annotation
.end field

.field public final m:I
    .annotation build LI0/c$c;
        defaultValue = "0"
        id = 0xd
    .end annotation
.end field

.field public n:Z
    .annotation build LI0/c$c;
        getter = "isRequestingTelemetryConfiguration"
        id = 0xe
    .end annotation
.end field

.field public final o:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getAttributionTag"
        id = 0xf
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LG0/Q0;

    invoke-direct {v0}, LG0/Q0;-><init>()V

    sput-object v0, LG0/m;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    sput-object v1, LG0/m;->p:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v0, [LB0/e;

    sput-object v0, LG0/m;->q:[LB0/e;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[LB0/e;[LB0/e;ZIZLjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Landroid/os/IBinder;
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Landroid/accounts/Account;
        .annotation build LI0/c$e;
            id = 0x8
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # [LB0/e;
        .annotation build LI0/c$e;
            id = 0xa
        .end annotation
    .end param
    .param p10    # [LB0/e;
        .annotation build LI0/c$e;
            id = 0xb
        .end annotation
    .end param
    .param p11    # Z
        .annotation build LI0/c$e;
            id = 0xc
        .end annotation
    .end param
    .param p12    # I
        .annotation build LI0/c$e;
            id = 0xd
        .end annotation
    .end param
    .param p13    # Z
        .annotation build LI0/c$e;
            id = 0xe
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0xf
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    if-nez p6, :cond_0

    sget-object p6, LG0/m;->p:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    if-nez p7, :cond_1

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :cond_1
    if-nez p9, :cond_2

    sget-object p9, LG0/m;->q:[LB0/e;

    :cond_2
    if-nez p10, :cond_3

    sget-object p10, LG0/m;->q:[LB0/e;

    :cond_3
    iput p1, p0, LG0/m;->b:I

    iput p2, p0, LG0/m;->c:I

    iput p3, p0, LG0/m;->d:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-object p2, p0, LG0/m;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object p4, p0, LG0/m;->e:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_6

    if-eqz p5, :cond_5

    invoke-static {p5}, LG0/r$a;->k(Landroid/os/IBinder;)LG0/r;

    move-result-object p1

    invoke-static {p1}, LG0/a;->t(LG0/r;)Landroid/accounts/Account;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, LG0/m;->i:Landroid/accounts/Account;

    goto :goto_2

    :cond_6
    iput-object p5, p0, LG0/m;->f:Landroid/os/IBinder;

    iput-object p8, p0, LG0/m;->i:Landroid/accounts/Account;

    :goto_2
    iput-object p6, p0, LG0/m;->g:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, LG0/m;->h:Landroid/os/Bundle;

    iput-object p9, p0, LG0/m;->j:[LB0/e;

    iput-object p10, p0, LG0/m;->k:[LB0/e;

    iput-boolean p11, p0, LG0/m;->l:Z

    iput p12, p0, LG0/m;->m:I

    iput-boolean p13, p0, LG0/m;->n:Z

    iput-object p14, p0, LG0/m;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b0()[LB0/e;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LG0/m;->k:[LB0/e;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LG0/m;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n0()I
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LG0/m;->d:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LG0/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public u0()Landroid/os/Bundle;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LG0/m;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, LG0/Q0;->a(LG0/m;Landroid/os/Parcel;I)V

    return-void
.end method
