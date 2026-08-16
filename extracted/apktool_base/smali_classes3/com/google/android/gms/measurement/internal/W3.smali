.class public final enum Lcom/google/android/gms/measurement/internal/W3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/W3;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/W3;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/W3;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/W3;

.field private static final synthetic zzf:[Lcom/google/android/gms/measurement/internal/W3;


# instance fields
.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/measurement/internal/W3;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    const-string v3, "uninitialized"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/W3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/W3;->zza:Lcom/google/android/gms/measurement/internal/W3;

    new-instance v1, Lcom/google/android/gms/measurement/internal/W3;

    const-string v2, "POLICY"

    const/4 v3, 0x1

    const-string v4, "eu_consent_policy"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/W3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/W3;->zzb:Lcom/google/android/gms/measurement/internal/W3;

    new-instance v2, Lcom/google/android/gms/measurement/internal/W3;

    const-string v3, "DENIED"

    const/4 v4, 0x2

    const-string v5, "denied"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/W3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/W3;->zzc:Lcom/google/android/gms/measurement/internal/W3;

    new-instance v3, Lcom/google/android/gms/measurement/internal/W3;

    const-string v4, "GRANTED"

    const/4 v5, 0x3

    const-string v6, "granted"

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/W3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/W3;->zzd:Lcom/google/android/gms/measurement/internal/W3;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/measurement/internal/W3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/W3;->zzf:[Lcom/google/android/gms/measurement/internal/W3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/W3;->zze:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/W3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/W3;->zzf:[Lcom/google/android/gms/measurement/internal/W3;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/W3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/W3;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/W3;->zze:Ljava/lang/String;

    return-object v0
.end method
