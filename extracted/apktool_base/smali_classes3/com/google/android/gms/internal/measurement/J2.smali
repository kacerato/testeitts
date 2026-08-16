.class public final Lcom/google/android/gms/internal/measurement/J2;
.super Lcom/google/android/gms/internal/measurement/q5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/X5;


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/measurement/J2;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/measurement/Q5;

.field private zzm:Lcom/google/android/gms/internal/measurement/Q5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/J2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/J2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    const-class v1, Lcom/google/android/gms/internal/measurement/J2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q5;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Q5;->e()Lcom/google/android/gms/internal/measurement/Q5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzl:Lcom/google/android/gms/internal/measurement/Q5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Q5;->e()Lcom/google/android/gms/internal/measurement/Q5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzm:Lcom/google/android/gms/internal/measurement/Q5;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static synthetic N()Lcom/google/android/gms/internal/measurement/J2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    return-object v0
.end method

.method public static e0()Lcom/google/android/gms/internal/measurement/F2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->p()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/F2;

    return-object v0
.end method

.method public static f0()Lcom/google/android/gms/internal/measurement/J2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    return-object v0
.end method


# virtual methods
.method public final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    return-object v0

    :cond_0
    throw v2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/F2;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/F2;-><init>([B)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/J2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/J2;-><init>()V

    return-object v0

    :cond_3
    sget-object v11, Lcom/google/android/gms/internal/measurement/G2;->a:Lcom/google/android/gms/internal/measurement/P5;

    const-string v12, "zzm"

    sget-object v13, Lcom/google/android/gms/internal/measurement/H2;->a:Lcom/google/android/gms/internal/measurement/P5;

    const-string v1, "zzb"

    const-string v2, "zzd"

    const-string v3, "zze"

    const-string v4, "zzf"

    const-string v5, "zzg"

    const-string v6, "zzh"

    const-string v7, "zzi"

    const-string v8, "zzj"

    const-string v9, "zzk"

    const-string v10, "zzl"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    const-string v2, "\u0004\n\u0000\u0001\u0001\n\n\u0002\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1002\u0007\t2\n2"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/q5;->u(Lcom/google/android/gms/internal/measurement/W5;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/J2;->zzh:Ljava/lang/String;

    return-void
.end method

.method public final synthetic F()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/J2;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzh:Ljava/lang/String;

    return-void
.end method

.method public final synthetic G(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/J2;->zzi:Ljava/lang/String;

    return-void
.end method

.method public final synthetic H()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/J2;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzi:Ljava/lang/String;

    return-void
.end method

.method public final synthetic I(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/J2;->zzj:Ljava/lang/String;

    return-void
.end method

.method public final synthetic J()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/J2;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzj:Ljava/lang/String;

    return-void
.end method

.method public final synthetic K(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/J2;->zzk:J

    return-void
.end method

.method public final synthetic L()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzl:Lcom/google/android/gms/internal/measurement/Q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Q5;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzl:Lcom/google/android/gms/internal/measurement/Q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Q5;->i()Lcom/google/android/gms/internal/measurement/Q5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzl:Lcom/google/android/gms/internal/measurement/Q5;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzl:Lcom/google/android/gms/internal/measurement/Q5;

    return-object v0
.end method

.method public final synthetic M()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzm:Lcom/google/android/gms/internal/measurement/Q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Q5;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzm:Lcom/google/android/gms/internal/measurement/Q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Q5;->i()Lcom/google/android/gms/internal/measurement/Q5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzm:Lcom/google/android/gms/internal/measurement/Q5;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzm:Lcom/google/android/gms/internal/measurement/Q5;

    return-object v0
.end method

.method public final O()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final S()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final T()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final U()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final V()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzg:J

    return-wide v0
.end method

.method public final W()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final Y()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final a0()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final c0()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d0()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzk:J

    return-wide v0
.end method

.method public final synthetic g0(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/J2;->zzd:Ljava/lang/String;

    return-void
.end method

.method public final synthetic h0()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/J2;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzd:Ljava/lang/String;

    return-void
.end method

.method public final synthetic i0(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/J2;->zze:Ljava/lang/String;

    return-void
.end method

.method public final synthetic j0()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/J2;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zze:Ljava/lang/String;

    return-void
.end method

.method public final synthetic k0(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/J2;->zzf:Ljava/lang/String;

    return-void
.end method

.method public final synthetic l0()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/J2;->zzn:Lcom/google/android/gms/internal/measurement/J2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/J2;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzf:Ljava/lang/String;

    return-void
.end method

.method public final synthetic m0(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/J2;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/J2;->zzg:J

    return-void
.end method
