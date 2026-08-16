.class public final Lf1/z;
.super LG0/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LG0/i;LD0/d;LD0/k;)V
    .locals 7

    const/16 v3, 0x7e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, LG0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILG0/i;LD0/d;LD0/k;)V

    return-void
.end method


# virtual methods
.method public final C()[LB0/e;
    .locals 1

    sget-object v0, Lf1/d;->e:[LB0/e;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START"

    return-object v0
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final synthetic z(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lf1/k;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lf1/k;

    goto :goto_0

    :cond_1
    new-instance v0, Lf1/k;

    invoke-direct {v0, p1}, Lf1/k;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
