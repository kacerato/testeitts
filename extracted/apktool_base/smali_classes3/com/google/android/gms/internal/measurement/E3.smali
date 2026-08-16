.class public final Lcom/google/android/gms/internal/measurement/E3;
.super Lcom/google/android/gms/internal/measurement/q5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/X5;


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/E3;


# instance fields
.field private zzb:I

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:F

.field private zzi:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/E3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/E3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/E3;->zzj:Lcom/google/android/gms/internal/measurement/E3;

    const-class v1, Lcom/google/android/gms/internal/measurement/E3;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q5;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static P()Lcom/google/android/gms/internal/measurement/D3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/E3;->zzj:Lcom/google/android/gms/internal/measurement/E3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->p()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/D3;

    return-object v0
.end method

.method public static synthetic Y()Lcom/google/android/gms/internal/measurement/E3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/E3;->zzj:Lcom/google/android/gms/internal/measurement/E3;

    return-object v0
.end method


# virtual methods
.method public final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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

    sget-object p1, Lcom/google/android/gms/internal/measurement/E3;->zzj:Lcom/google/android/gms/internal/measurement/E3;

    return-object p1

    :cond_0
    throw p3

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/D3;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/D3;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/E3;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/E3;-><init>()V

    return-object p1

    :cond_3
    const-string v5, "zzh"

    const-string v6, "zzi"

    const-string v0, "zzb"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/E3;->zzj:Lcom/google/android/gms/internal/measurement/E3;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

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

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzd:J

    return-wide v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzg:J

    return-wide v0
.end method

.method public final L()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final M()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzh:F

    return v0
.end method

.method public final N()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final O()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzi:D

    return-wide v0
.end method

.method public final synthetic Q(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/E3;->zzd:J

    return-void
.end method

.method public final synthetic R(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/E3;->zze:Ljava/lang/String;

    return-void
.end method

.method public final synthetic S(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/E3;->zzf:Ljava/lang/String;

    return-void
.end method

.method public final synthetic T()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/E3;->zzj:Lcom/google/android/gms/internal/measurement/E3;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/E3;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzf:Ljava/lang/String;

    return-void
.end method

.method public final synthetic U(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/E3;->zzg:J

    return-void
.end method

.method public final synthetic V()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzg:J

    return-void
.end method

.method public final synthetic W(D)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/E3;->zzi:D

    return-void
.end method

.method public final synthetic X()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzb:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/E3;->zzi:D

    return-void
.end method
