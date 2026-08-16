.class public abstract LW0/d$a;
.super Lh1/p;
.source "SourceFile"

# interfaces
.implements LW0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, v0}, Lh1/p;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/os/IBinder;)LW0/d;
    .locals 2
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LW0/d;

    if-eqz v1, :cond_1

    check-cast v0, LW0/d;

    return-object v0

    :cond_1
    new-instance v0, LW0/r;

    invoke-direct {v0, p0}, LW0/r;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
