.class public final Lcom/google/android/gms/internal/measurement/s2;
.super Lcom/google/android/gms/internal/measurement/m5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/X5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t2;->Z()Lcom/google/android/gms/internal/measurement/t2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t2;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t2;->J()I

    move-result v0

    return v0
.end method

.method public final u(I)Lcom/google/android/gms/internal/measurement/r2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/t2;->K(I)Lcom/google/android/gms/internal/measurement/r2;

    move-result-object p1

    return-object p1
.end method

.method public final v(ILcom/google/android/gms/internal/measurement/q2;)Lcom/google/android/gms/internal/measurement/s2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/r2;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/t2;->W(ILcom/google/android/gms/internal/measurement/r2;)V

    return-object p0
.end method

.method public final w()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t2;->L()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/internal/measurement/s2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t2;->X()V

    return-object p0
.end method

.method public final y()Lcom/google/android/gms/internal/measurement/s2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t2;->Y()V

    return-object p0
.end method

.method public final z()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t2;->O()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
