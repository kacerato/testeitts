.class public final Lcom/google/android/gms/internal/auth/Z2;
.super Lcom/google/android/gms/internal/auth/B1;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/e2;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/auth/Z2;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/auth/F1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/auth/Z2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/Z2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/Z2;->zzb:Lcom/google/android/gms/internal/auth/Z2;

    const-class v1, Lcom/google/android/gms/internal/auth/Z2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/auth/B1;->j(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/B1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/B1;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/auth/B1;->e()Lcom/google/android/gms/internal/auth/F1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/Z2;->zzd:Lcom/google/android/gms/internal/auth/F1;

    return-void
.end method

.method public static synthetic o()Lcom/google/android/gms/internal/auth/Z2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/Z2;->zzb:Lcom/google/android/gms/internal/auth/Z2;

    return-object v0
.end method

.method public static p([B)Lcom/google/android/gms/internal/auth/Z2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/auth/zzfb;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/auth/Z2;->zzb:Lcom/google/android/gms/internal/auth/Z2;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/auth/B1;->d(Lcom/google/android/gms/internal/auth/B1;[B)Lcom/google/android/gms/internal/auth/B1;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/Z2;

    return-object p0
.end method


# virtual methods
.method public final m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/auth/Z2;->zzb:Lcom/google/android/gms/internal/auth/Z2;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/auth/Y2;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/auth/Y2;-><init>(Lcom/google/android/gms/internal/auth/X2;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/auth/Z2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/auth/Z2;-><init>()V

    return-object p1

    :cond_3
    const-string p1, "zzd"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/auth/Z2;->zzb:Lcom/google/android/gms/internal/auth/Z2;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/auth/B1;->g(Lcom/google/android/gms/internal/auth/d2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/Z2;->zzd:Lcom/google/android/gms/internal/auth/F1;

    return-object v0
.end method
