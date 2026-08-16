.class public final Lcom/google/android/gms/internal/measurement/K1;
.super Lcom/google/android/gms/internal/measurement/q5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/X5;


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/K1;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/z5;

.field private zzf:Lcom/google/android/gms/internal/measurement/z5;

.field private zzg:Z

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/K1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/K1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/K1;->zzi:Lcom/google/android/gms/internal/measurement/K1;

    const-class v1, Lcom/google/android/gms/internal/measurement/K1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q5;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->z()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zze:Lcom/google/android/gms/internal/measurement/z5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->z()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    return-void
.end method

.method public static synthetic O()Lcom/google/android/gms/internal/measurement/K1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/K1;->zzi:Lcom/google/android/gms/internal/measurement/K1;

    return-object v0
.end method


# virtual methods
.method public final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/measurement/K1;->zzi:Lcom/google/android/gms/internal/measurement/K1;

    return-object p1

    :cond_0
    throw p3

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/J1;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/J1;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/K1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/K1;-><init>()V

    return-object p1

    :cond_3
    const-string v6, "zzg"

    const-string v7, "zzh"

    const-string v0, "zzb"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-class v3, Lcom/google/android/gms/internal/measurement/U1;

    const-string v4, "zzf"

    const-class v5, Lcom/google/android/gms/internal/measurement/M1;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/K1;->zzi:Lcom/google/android/gms/internal/measurement/K1;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/q5;->u(Lcom/google/android/gms/internal/measurement/W5;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final E()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zzd:I

    return v0
.end method

.method public final G()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zze:Lcom/google/android/gms/internal/measurement/z5;

    return-object v0
.end method

.method public final H()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zze:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final I(I)Lcom/google/android/gms/internal/measurement/U1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zze:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/U1;

    return-object p1
.end method

.method public final J()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    return-object v0
.end method

.method public final K()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final L(I)Lcom/google/android/gms/internal/measurement/M1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/M1;

    return-object p1
.end method

.method public final synthetic M(ILcom/google/android/gms/internal/measurement/U1;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zze:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->A(Lcom/google/android/gms/internal/measurement/z5;)Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zze:Lcom/google/android/gms/internal/measurement/z5;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zze:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic N(ILcom/google/android/gms/internal/measurement/M1;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->A(Lcom/google/android/gms/internal/measurement/z5;)Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K1;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
