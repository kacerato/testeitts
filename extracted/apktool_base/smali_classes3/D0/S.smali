.class public final LD0/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/v;


# instance fields
.field public final synthetic a:LD0/q;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/gms/common/api/l;

.field public final synthetic d:Lcom/google/android/gms/common/api/internal/q;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/q;LD0/q;ZLcom/google/android/gms/common/api/l;)V
    .locals 0

    iput-object p1, p0, LD0/S;->d:Lcom/google/android/gms/common/api/internal/q;

    iput-object p2, p0, LD0/S;->a:LD0/q;

    iput-boolean p3, p0, LD0/S;->b:Z

    iput-object p4, p0, LD0/S;->c:Lcom/google/android/gms/common/api/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/u;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, LD0/S;->d:Lcom/google/android/gms/common/api/internal/q;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/q;->L(Lcom/google/android/gms/common/api/internal/q;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz0/c;->b(Landroid/content/Context;)Lz0/c;

    move-result-object v0

    invoke-virtual {v0}, Lz0/c;->i()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD0/S;->d:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD0/S;->d:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q;->i()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q;->g()V

    :cond_0
    iget-object v0, p0, LD0/S;->a:LD0/q;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    iget-boolean p1, p0, LD0/S;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, LD0/S;->c:Lcom/google/android/gms/common/api/l;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/l;->i()V

    :cond_1
    return-void
.end method
