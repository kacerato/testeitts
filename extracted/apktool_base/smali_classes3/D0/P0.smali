.class public final LD0/P0;
.super LD0/U0;
.source "SourceFile"


# instance fields
.field public final g:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(LD0/i;)V
    .locals 1

    invoke-static {}, LB0/h;->x()LB0/h;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LD0/U0;-><init>(LD0/i;LB0/h;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LD0/P0;->g:Landroid/util/SparseArray;

    iget-object p1, p0, LD0/h;->b:LD0/i;

    const-string v0, "AutoManageHelper"

    invoke-interface {p1, v0, p0}, LD0/i;->c(Ljava/lang/String;LD0/h;)V

    return-void
.end method

.method public static u(LD0/g;)LD0/P0;
    .locals 2

    invoke-static {p0}, LD0/h;->c(LD0/g;)LD0/i;

    move-result-object p0

    const-string v0, "AutoManageHelper"

    const-class v1, LD0/P0;

    invoke-interface {p0, v0, v1}, LD0/i;->a(Ljava/lang/String;Ljava/lang/Class;)LD0/h;

    move-result-object v0

    check-cast v0, LD0/P0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, LD0/P0;

    invoke-direct {v0, p0}, LD0/P0;-><init>(LD0/i;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, LD0/P0;->x(I)LD0/O0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "GoogleApiClient #"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget v3, v1, LD0/O0;->e:I

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, LD0/O0;->f:Lcom/google/android/gms/common/api/l;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/google/android/gms/common/api/l;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 4

    invoke-super {p0}, LD0/U0;->k()V

    iget-object v0, p0, LD0/P0;->g:Landroid/util/SparseArray;

    iget-boolean v1, p0, LD0/U0;->c:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoManageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LD0/U0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, LD0/P0;->x(I)LD0/O0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, LD0/O0;->f:Lcom/google/android/gms/common/api/l;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/l;->g()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 2

    invoke-super {p0}, LD0/U0;->l()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, LD0/P0;->x(I)LD0/O0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, LD0/O0;->f:Lcom/google/android/gms/common/api/l;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/l;->i()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final n(LB0/c;I)V
    .locals 2

    const-string v0, "Unresolved error while connecting client. Stopping auto-manage."

    const-string v1, "AutoManageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    iget-object v0, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/O0;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, LD0/P0;->w(I)V

    iget-object p2, v0, LD0/O0;->g:Lcom/google/android/gms/common/api/l$c;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, LD0/k;->t(LB0/c;)V

    :cond_1
    return-void
.end method

.method public final o()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, LD0/P0;->x(I)LD0/O0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, LD0/O0;->f:Lcom/google/android/gms/common/api/l;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/l;->g()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final v(ILcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/l$c;)V
    .locals 5
    .param p3    # Lcom/google/android/gms/common/api/l$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already managing a GoogleApiClient with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, LG0/A;->y(ZLjava/lang/Object;)V

    iget-object v0, p0, LD0/U0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/R0;

    iget-boolean v1, p0, LD0/U0;->c:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "starting AutoManage for client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoManageHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, LD0/O0;

    invoke-direct {v1, p0, p1, p2, p3}, LD0/O0;-><init>(LD0/P0;ILcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/l$c;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/common/api/l;->C(Lcom/google/android/gms/common/api/l$c;)V

    iget-object p3, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean p1, p0, LD0/U0;->c:Z

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "connecting "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/l;->g()V

    :cond_1
    return-void
.end method

.method public final w(I)V
    .locals 2

    iget-object v0, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/O0;

    iget-object v1, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_0

    iget-object p1, v0, LD0/O0;->f:Lcom/google/android/gms/common/api/l;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->G(Lcom/google/android/gms/common/api/l$c;)V

    iget-object p1, v0, LD0/O0;->f:Lcom/google/android/gms/common/api/l;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/l;->i()V

    :cond_0
    return-void
.end method

.method public final x(I)LD0/O0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, LD0/P0;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD0/O0;

    return-object p1
.end method
