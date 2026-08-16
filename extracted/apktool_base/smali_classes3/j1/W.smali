.class public final Lj1/W;
.super LG0/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LG0/i;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)V
    .locals 7

    const/16 v3, 0x95

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, LG0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILG0/i;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)V

    return-void
.end method


# virtual methods
.method public final C()[LB0/e;
    .locals 2

    sget-object v0, LY0/c;->h:LB0/e;

    sget-object v1, LY0/c;->i:LB0/e;

    filled-new-array {v0, v1}, [LB0/e;

    move-result-object v0

    return-object v0
.end method

.method public final I()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "FIDO2_ACTION_START_SERVICE"

    const-string v2, "com.google.android.gms.fido.fido2.privileged.START"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedService"

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.fido.fido2.privileged.START"

    return-object v0
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()I
    .locals 1

    const v0, 0xc65d40

    return v0
.end method

.method public final synthetic z(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lj1/Z;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lj1/Z;

    goto :goto_0

    :cond_1
    new-instance v0, Lj1/Z;

    invoke-direct {v0, p1}, Lj1/Z;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
