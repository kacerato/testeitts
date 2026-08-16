.class public final Lcom/google/android/gms/internal/measurement/N2;
.super Lcom/google/android/gms/internal/measurement/q5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/X5;


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/measurement/N2;


# instance fields
.field private zzb:I

.field private zzd:Z

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/N2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/N2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/N2;->zzk:Lcom/google/android/gms/internal/measurement/N2;

    const-class v1, Lcom/google/android/gms/internal/measurement/N2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q5;-><init>()V

    return-void
.end method

.method public static L()Lcom/google/android/gms/internal/measurement/M2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/N2;->zzk:Lcom/google/android/gms/internal/measurement/N2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->p()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/M2;

    return-object v0
.end method

.method public static M()Lcom/google/android/gms/internal/measurement/N2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/N2;->zzk:Lcom/google/android/gms/internal/measurement/N2;

    return-object v0
.end method

.method public static synthetic U()Lcom/google/android/gms/internal/measurement/N2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/N2;->zzk:Lcom/google/android/gms/internal/measurement/N2;

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

    sget-object p1, Lcom/google/android/gms/internal/measurement/N2;->zzk:Lcom/google/android/gms/internal/measurement/N2;

    return-object p1

    :cond_0
    throw p3

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/M2;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/M2;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/N2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/N2;-><init>()V

    return-object p1

    :cond_3
    const-string v6, "zzi"

    const-string v7, "zzj"

    const-string v0, "zzb"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/N2;->zzk:Lcom/google/android/gms/internal/measurement/N2;

    const-string p3, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006"

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
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzd:Z

    return v0
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zze:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzf:Z

    return v0
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzg:Z

    return v0
.end method

.method public final I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzh:Z

    return v0
.end method

.method public final J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzi:Z

    return v0
.end method

.method public final K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzj:Z

    return v0
.end method

.method public final synthetic N(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/N2;->zzd:Z

    return-void
.end method

.method public final synthetic O(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/N2;->zze:Z

    return-void
.end method

.method public final synthetic P(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/N2;->zzf:Z

    return-void
.end method

.method public final synthetic Q(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/N2;->zzg:Z

    return-void
.end method

.method public final synthetic R(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/N2;->zzh:Z

    return-void
.end method

.method public final synthetic S(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/N2;->zzi:Z

    return-void
.end method

.method public final synthetic T(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/N2;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/N2;->zzj:Z

    return-void
.end method
