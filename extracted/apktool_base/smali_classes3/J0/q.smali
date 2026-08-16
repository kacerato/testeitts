.class public final LJ0/q;
.super LG0/n;
.source "SourceFile"


# instance fields
.field public final R:LG0/K;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LG0/i;LG0/K;LD0/d;LD0/k;)V
    .locals 7

    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, LG0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILG0/i;LD0/d;LD0/k;)V

    iput-object p4, p0, LJ0/q;->R:LG0/K;

    return-void
.end method


# virtual methods
.method public final C()[LB0/e;
    .locals 1

    sget-object v0, Lg1/f;->b:[LB0/e;

    return-object v0
.end method

.method public final I()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, LJ0/q;->R:LG0/K;

    invoke-virtual {v0}, LG0/K;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.common.telemetry.service.START"

    return-object v0
.end method

.method public final R()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()I
    .locals 1

    const v0, 0xc1fa340

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
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LJ0/j;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, LJ0/j;

    goto :goto_0

    :cond_1
    new-instance v0, LJ0/j;

    invoke-direct {v0, p1}, LJ0/j;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
