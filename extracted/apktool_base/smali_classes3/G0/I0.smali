.class public final LG0/I0;
.super LG0/r0;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final synthetic h:LG0/f;


# direct methods
.method public constructor <init>(LG0/f;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, LG0/I0;->h:LG0/f;

    invoke-direct {p0, p1, p2, p4}, LG0/r0;-><init>(LG0/f;ILandroid/os/Bundle;)V

    iput-object p3, p0, LG0/I0;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final f(LB0/c;)V
    .locals 1

    iget-object v0, p0, LG0/I0;->h:LG0/f;

    invoke-static {v0}, LG0/f;->e0(LG0/f;)LG0/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG0/I0;->h:LG0/f;

    invoke-static {v0}, LG0/f;->e0(LG0/f;)LG0/f$b;

    move-result-object v0

    invoke-interface {v0, p1}, LG0/f$b;->t(LB0/c;)V

    :cond_0
    iget-object v0, p0, LG0/I0;->h:LG0/f;

    invoke-virtual {v0, p1}, LG0/f;->U(LB0/c;)V

    return-void
.end method

.method public final g()Z
    .locals 6

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LG0/I0;->g:Landroid/os/IBinder;

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, LG0/I0;->h:LG0/f;

    invoke-virtual {v3}, LG0/f;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, LG0/I0;->h:LG0/f;

    invoke-virtual {v3}, LG0/f;->N()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service descriptor mismatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, LG0/I0;->h:LG0/f;

    iget-object v2, p0, LG0/I0;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, LG0/f;->z(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, LG0/I0;->h:LG0/f;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, LG0/f;->p0(LG0/f;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LG0/I0;->h:LG0/f;

    const/4 v3, 0x3

    invoke-static {v2, v3, v4, v0}, LG0/f;->p0(LG0/f;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, LG0/I0;->h:LG0/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LG0/f;->i0(LG0/f;LB0/c;)V

    iget-object v0, p0, LG0/I0;->h:LG0/f;

    invoke-virtual {v0}, LG0/f;->F()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0}, LG0/f;->d0(LG0/f;)LG0/f$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG0/I0;->h:LG0/f;

    invoke-static {v0}, LG0/f;->d0(LG0/f;)LG0/f$a;

    move-result-object v0

    invoke-interface {v0, v1}, LG0/f$a;->h(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :catch_0
    const-string v2, "service probably died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
