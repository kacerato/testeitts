.class public final Lcom/google/android/gms/internal/measurement/b3;
.super Lcom/google/android/gms/internal/measurement/q5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/X5;


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/b3;


# instance fields
.field private zzb:I

.field private zzd:Lcom/google/android/gms/internal/measurement/z5;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/b3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/b3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/b3;->zzi:Lcom/google/android/gms/internal/measurement/b3;

    const-class v1, Lcom/google/android/gms/internal/measurement/b3;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q5;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->z()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zze:Ljava/lang/String;

    return-void
.end method

.method public static O()Lcom/google/android/gms/internal/measurement/a3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b3;->zzi:Lcom/google/android/gms/internal/measurement/b3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->p()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/a3;

    return-object v0
.end method

.method public static synthetic X()Lcom/google/android/gms/internal/measurement/b3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b3;->zzi:Lcom/google/android/gms/internal/measurement/b3;

    return-object v0
.end method

.method private final Y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->A(Lcom/google/android/gms/internal/measurement/z5;)Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    :cond_0
    return-void
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/b3;->zzi:Lcom/google/android/gms/internal/measurement/b3;

    return-object p1

    :cond_0
    throw p3

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/a3;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/a3;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/b3;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/b3;-><init>()V

    return-object p1

    :cond_3
    const-string v5, "zzg"

    const-string v6, "zzh"

    const-string v0, "zzb"

    const-string v1, "zzd"

    const-class v2, Lcom/google/android/gms/internal/measurement/f3;

    const-string v3, "zze"

    const-string v4, "zzf"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/b3;->zzi:Lcom/google/android/gms/internal/measurement/b3;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    return-object v0
.end method

.method public final F()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final G(I)Lcom/google/android/gms/internal/measurement/f3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/f3;

    return-object p1
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzf:J

    return-wide v0
.end method

.method public final K()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final L()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzg:J

    return-wide v0
.end method

.method public final M()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final N()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzh:I

    return v0
.end method

.method public final synthetic P(ILcom/google/android/gms/internal/measurement/f3;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b3;->Y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic Q(Lcom/google/android/gms/internal/measurement/f3;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b3;->Y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic R(Ljava/lang/Iterable;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b3;->Y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/C4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic S()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->z()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    return-void
.end method

.method public final synthetic T(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b3;->Y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzd:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic U(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b3;->zze:Ljava/lang/String;

    return-void
.end method

.method public final synthetic V(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b3;->zzf:J

    return-void
.end method

.method public final synthetic W(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b3;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b3;->zzg:J

    return-void
.end method
