.class public final enum Lcom/google/android/gms/measurement/internal/j5;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/j5;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/j5;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/j5;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/j5;

.field private static final synthetic zzf:[Lcom/google/android/gms/measurement/internal/j5;


# instance fields
.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/measurement/internal/j5;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/j5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/j5;->zza:Lcom/google/android/gms/measurement/internal/j5;

    new-instance v1, Lcom/google/android/gms/measurement/internal/j5;

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/measurement/internal/j5;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/j5;->zzb:Lcom/google/android/gms/measurement/internal/j5;

    new-instance v2, Lcom/google/android/gms/measurement/internal/j5;

    const-string v3, "FAILURE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/measurement/internal/j5;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/j5;->zzc:Lcom/google/android/gms/measurement/internal/j5;

    new-instance v3, Lcom/google/android/gms/measurement/internal/j5;

    const-string v4, "BACKOFF"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/measurement/internal/j5;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/j5;->zzd:Lcom/google/android/gms/measurement/internal/j5;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/measurement/internal/j5;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/j5;->zzf:[Lcom/google/android/gms/measurement/internal/j5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/measurement/internal/j5;->zze:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/j5;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/j5;->zzf:[Lcom/google/android/gms/measurement/internal/j5;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/j5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/j5;

    return-object v0
.end method


# virtual methods
.method public final N1()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/j5;->zze:I

    return v0
.end method
