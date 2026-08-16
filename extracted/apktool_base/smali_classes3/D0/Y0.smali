.class public final LD0/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l$b;
.implements Lcom/google/android/gms/common/api/l$c;


# instance fields
.field public final e:Lcom/google/android/gms/common/api/a;

.field public final f:Z

.field public g:LD0/Z0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/Y0;->e:Lcom/google/android/gms/common/api/a;

    iput-boolean p2, p0, LD0/Y0;->f:Z

    return-void
.end method


# virtual methods
.method public final a(LD0/Z0;)V
    .locals 0

    iput-object p1, p0, LD0/Y0;->g:LD0/Z0;

    return-void
.end method

.method public final b()LD0/Z0;
    .locals 2

    iget-object v0, p0, LD0/Y0;->g:LD0/Z0;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LD0/Y0;->g:LD0/Z0;

    return-object v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, LD0/Y0;->b()LD0/Z0;

    move-result-object v0

    invoke-interface {v0, p1}, LD0/d;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method public final k(I)V
    .locals 1

    invoke-virtual {p0}, LD0/Y0;->b()LD0/Z0;

    move-result-object v0

    invoke-interface {v0, p1}, LD0/d;->k(I)V

    return-void
.end method

.method public final t(LB0/c;)V
    .locals 3
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/Y0;->e:Lcom/google/android/gms/common/api/a;

    iget-boolean v1, p0, LD0/Y0;->f:Z

    invoke-virtual {p0}, LD0/Y0;->b()LD0/Z0;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, LD0/Z0;->l0(LB0/c;Lcom/google/android/gms/common/api/a;Z)V

    return-void
.end method
