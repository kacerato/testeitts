.class public abstract Lp2/e;
.super Lp2/b;
.source "SourceFile"

# interfaces
.implements Lp2/f;


# direct methods
.method public static k(Landroid/os/IBinder;)Lp2/f;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.play.core.inappreview.protocol.IInAppReviewService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lp2/f;

    if-eqz v1, :cond_1

    check-cast v0, Lp2/f;

    return-object v0

    :cond_1
    new-instance v0, Lp2/d;

    invoke-direct {v0, p0}, Lp2/d;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
