.class public final Lcom/google/android/gms/internal/measurement/s3;
.super Lcom/google/android/gms/internal/measurement/q5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/X5;


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/s3;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/measurement/y5;

.field private zzd:Lcom/google/android/gms/internal/measurement/y5;

.field private zze:Lcom/google/android/gms/internal/measurement/z5;

.field private zzf:Lcom/google/android/gms/internal/measurement/z5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/s3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/s3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/s3;->zzg:Lcom/google/android/gms/internal/measurement/s3;

    const-class v1, Lcom/google/android/gms/internal/measurement/s3;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q5;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->x()Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzb:Lcom/google/android/gms/internal/measurement/y5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->x()Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzd:Lcom/google/android/gms/internal/measurement/y5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->z()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zze:Lcom/google/android/gms/internal/measurement/z5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->z()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    return-void
.end method

.method public static M()Lcom/google/android/gms/internal/measurement/r3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->zzg:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->p()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/r3;

    return-object v0
.end method

.method public static N()Lcom/google/android/gms/internal/measurement/s3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->zzg:Lcom/google/android/gms/internal/measurement/s3;

    return-object v0
.end method

.method public static synthetic W()Lcom/google/android/gms/internal/measurement/s3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->zzg:Lcom/google/android/gms/internal/measurement/s3;

    return-object v0
.end method


# virtual methods
.method public final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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

    sget-object p1, Lcom/google/android/gms/internal/measurement/s3;->zzg:Lcom/google/android/gms/internal/measurement/s3;

    return-object p1

    :cond_0
    throw p3

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/r3;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/r3;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/s3;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/s3;-><init>()V

    return-object p1

    :cond_3
    const-string v4, "zzf"

    const-class v5, Lcom/google/android/gms/internal/measurement/u3;

    const-string v0, "zzb"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-class v3, Lcom/google/android/gms/internal/measurement/Z2;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/s3;->zzg:Lcom/google/android/gms/internal/measurement/s3;

    const-string p3, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/q5;->u(Lcom/google/android/gms/internal/measurement/W5;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final E()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzb:Lcom/google/android/gms/internal/measurement/y5;

    return-object v0
.end method

.method public final F()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzb:Lcom/google/android/gms/internal/measurement/y5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final G()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzd:Lcom/google/android/gms/internal/measurement/y5;

    return-object v0
.end method

.method public final H()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzd:Lcom/google/android/gms/internal/measurement/y5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final I()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zze:Lcom/google/android/gms/internal/measurement/z5;

    return-object v0
.end method

.method public final J()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zze:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final K()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    return-object v0
.end method

.method public final L()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic O(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzb:Lcom/google/android/gms/internal/measurement/y5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->y(Lcom/google/android/gms/internal/measurement/y5;)Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzb:Lcom/google/android/gms/internal/measurement/y5;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzb:Lcom/google/android/gms/internal/measurement/y5;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/C4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic P()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->x()Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzb:Lcom/google/android/gms/internal/measurement/y5;

    return-void
.end method

.method public final synthetic Q(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzd:Lcom/google/android/gms/internal/measurement/y5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->y(Lcom/google/android/gms/internal/measurement/y5;)Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzd:Lcom/google/android/gms/internal/measurement/y5;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzd:Lcom/google/android/gms/internal/measurement/y5;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/C4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic R()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->x()Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzd:Lcom/google/android/gms/internal/measurement/y5;

    return-void
.end method

.method public final synthetic S(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zze:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->A(Lcom/google/android/gms/internal/measurement/z5;)Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zze:Lcom/google/android/gms/internal/measurement/z5;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zze:Lcom/google/android/gms/internal/measurement/z5;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/C4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic T()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->z()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zze:Lcom/google/android/gms/internal/measurement/z5;

    return-void
.end method

.method public final synthetic U(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->A(Lcom/google/android/gms/internal/measurement/z5;)Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/C4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic V()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->z()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s3;->zzf:Lcom/google/android/gms/internal/measurement/z5;

    return-void
.end method
