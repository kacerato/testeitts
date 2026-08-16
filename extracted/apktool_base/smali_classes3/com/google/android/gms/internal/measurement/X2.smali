.class public final Lcom/google/android/gms/internal/measurement/X2;
.super Lcom/google/android/gms/internal/measurement/q5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/X5;


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/measurement/X2;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/measurement/z5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/X2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/X2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/X2;->zzd:Lcom/google/android/gms/internal/measurement/X2;

    const-class v1, Lcom/google/android/gms/internal/measurement/X2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q5;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->z()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/X2;->zzb:Lcom/google/android/gms/internal/measurement/z5;

    return-void
.end method

.method public static F()Lcom/google/android/gms/internal/measurement/Q2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/X2;->zzd:Lcom/google/android/gms/internal/measurement/X2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->p()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Q2;

    return-object v0
.end method

.method public static G()Lcom/google/android/gms/internal/measurement/X2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/X2;->zzd:Lcom/google/android/gms/internal/measurement/X2;

    return-object v0
.end method

.method public static synthetic I()Lcom/google/android/gms/internal/measurement/X2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/X2;->zzd:Lcom/google/android/gms/internal/measurement/X2;

    return-object v0
.end method


# virtual methods
.method public final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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

    sget-object p1, Lcom/google/android/gms/internal/measurement/X2;->zzd:Lcom/google/android/gms/internal/measurement/X2;

    return-object p1

    :cond_0
    throw p3

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/Q2;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/Q2;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/X2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/X2;-><init>()V

    return-object p1

    :cond_3
    const-string p1, "zzb"

    const-class p2, Lcom/google/android/gms/internal/measurement/U2;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/X2;->zzd:Lcom/google/android/gms/internal/measurement/X2;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/X2;->zzb:Lcom/google/android/gms/internal/measurement/z5;

    return-object v0
.end method

.method public final synthetic H(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/X2;->zzb:Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->A(Lcom/google/android/gms/internal/measurement/z5;)Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/X2;->zzb:Lcom/google/android/gms/internal/measurement/z5;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/X2;->zzb:Lcom/google/android/gms/internal/measurement/z5;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/C4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method
