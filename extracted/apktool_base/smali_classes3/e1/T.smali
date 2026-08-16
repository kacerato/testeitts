.class public final Le1/T;
.super LG0/n;
.source "SourceFile"


# instance fields
.field public final R:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/auth/api/identity/z;LG0/i;LD0/d;LD0/k;)V
    .locals 7

    const/16 v3, 0xdf

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, LG0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILG0/i;LD0/d;LD0/k;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Le1/T;->R:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final C()[LB0/e;
    .locals 1

    sget-object v0, Le1/w;->v:[LB0/e;

    return-object v0
.end method

.method public final I()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Le1/T;->R:Landroid/os/Bundle;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.auth.api.identity.internal.ICredentialSavingService"

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.auth.api.identity.service.credentialsaving.START"

    return-object v0
.end method

.method public final R()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()I
    .locals 1

    const v0, 0x1110e58

    return v0
.end method

.method public final synthetic z(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.identity.internal.ICredentialSavingService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Le1/Z;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Le1/Z;

    goto :goto_0

    :cond_1
    new-instance v0, Le1/Z;

    invoke-direct {v0, p1}, Le1/Z;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
