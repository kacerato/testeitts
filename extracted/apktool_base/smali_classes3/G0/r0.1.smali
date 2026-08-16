.class public abstract LG0/r0;
.super LG0/F0;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final synthetic f:LG0/f;


# direct methods
.method public constructor <init>(LG0/f;ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, LG0/r0;->f:LG0/f;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, LG0/F0;-><init>(LG0/f;Ljava/lang/Object;)V

    iput p2, p0, LG0/r0;->d:I

    iput-object p3, p0, LG0/r0;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget p1, p0, LG0/r0;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, LG0/r0;->g()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LG0/r0;->f:LG0/f;

    invoke-static {p1, v0, v1}, LG0/f;->k0(LG0/f;ILandroid/os/IInterface;)V

    new-instance p1, LB0/c;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v1}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, LG0/r0;->f(LB0/c;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, LG0/r0;->f:LG0/f;

    invoke-static {p1, v0, v1}, LG0/f;->k0(LG0/f;ILandroid/os/IInterface;)V

    iget-object p1, p0, LG0/r0;->e:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    :cond_2
    iget p1, p0, LG0/r0;->d:I

    new-instance v0, LB0/c;

    invoke-direct {v0, p1, v1}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, LG0/r0;->f(LB0/c;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public abstract f(LB0/c;)V
.end method

.method public abstract g()Z
.end method
