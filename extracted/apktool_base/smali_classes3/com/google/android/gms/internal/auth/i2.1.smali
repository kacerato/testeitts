.class public final Lcom/google/android/gms/internal/auth/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/p2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/d2;

.field public final b:Lcom/google/android/gms/internal/auth/F2;

.field public final c:Lcom/google/android/gms/internal/auth/s1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/F2;Lcom/google/android/gms/internal/auth/s1;Lcom/google/android/gms/internal/auth/d2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/i2;->b:Lcom/google/android/gms/internal/auth/F2;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/i2;->c:Lcom/google/android/gms/internal/auth/s1;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/i2;->a:Lcom/google/android/gms/internal/auth/d2;

    return-void
.end method

.method public static g(Lcom/google/android/gms/internal/auth/F2;Lcom/google/android/gms/internal/auth/s1;Lcom/google/android/gms/internal/auth/d2;)Lcom/google/android/gms/internal/auth/i2;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/i2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/i2;-><init>(Lcom/google/android/gms/internal/auth/F2;Lcom/google/android/gms/internal/auth/s1;Lcom/google/android/gms/internal/auth/d2;)V

    return-object v0
.end method


# virtual methods
.method public final Q1()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/i2;->a:Lcom/google/android/gms/internal/auth/d2;

    instance-of v1, v0, Lcom/google/android/gms/internal/auth/B1;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/auth/B1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/B1;->c()Lcom/google/android/gms/internal/auth/B1;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/auth/B1;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/B1;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/z1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/c2;->Q1()Lcom/google/android/gms/internal/auth/d2;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/i2;->b:Lcom/google/android/gms/internal/auth/F2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/F2;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/i2;->c:Lcom/google/android/gms/internal/auth/s1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/s1;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/i2;->b:Lcom/google/android/gms/internal/auth/F2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/F2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/i2;->b:Lcom/google/android/gms/internal/auth/F2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/F2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/i2;->b:Lcom/google/android/gms/internal/auth/F2;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/F2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final d(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/Y0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/auth/B1;

    iget-object p3, p2, Lcom/google/android/gms/internal/auth/B1;->zzc:Lcom/google/android/gms/internal/auth/H2;

    invoke-static {}, Lcom/google/android/gms/internal/auth/H2;->a()Lcom/google/android/gms/internal/auth/H2;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/H2;->d()Lcom/google/android/gms/internal/auth/H2;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/auth/B1;->zzc:Lcom/google/android/gms/internal/auth/H2;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/auth/A1;

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/i2;->b:Lcom/google/android/gms/internal/auth/F2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/auth/r2;->d(Lcom/google/android/gms/internal/auth/F2;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/i2;->c:Lcom/google/android/gms/internal/auth/s1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/s1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/w1;

    const/4 p1, 0x0

    throw p1
.end method
