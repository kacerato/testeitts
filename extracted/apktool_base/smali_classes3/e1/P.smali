.class public final Le1/P;
.super LG0/n;
.source "SourceFile"


# instance fields
.field public final R:Lu0/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LG0/i;Lu0/h;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, LG0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILG0/i;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)V

    new-instance p1, Lu0/g;

    if-nez p4, :cond_0

    sget-object p4, Lu0/h;->e:Lu0/h;

    :cond_0
    invoke-direct {p1, p4}, Lu0/g;-><init>(Lu0/h;)V

    invoke-static {}, Le1/x;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu0/g;->a(Ljava/lang/String;)Lu0/g;

    new-instance p2, Lu0/h;

    invoke-direct {p2, p1}, Lu0/h;-><init>(Lu0/g;)V

    iput-object p2, p0, Le1/P;->R:Lu0/h;

    return-void
.end method


# virtual methods
.method public final I()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Le1/P;->R:Lu0/h;

    invoke-virtual {v0}, Lu0/h;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method public final l()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final synthetic z(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Le1/Q;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Le1/Q;

    goto :goto_0

    :cond_1
    new-instance v0, Le1/Q;

    invoke-direct {v0, p1}, Le1/Q;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
