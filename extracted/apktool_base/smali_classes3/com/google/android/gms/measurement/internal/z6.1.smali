.class public final enum Lcom/google/android/gms/measurement/internal/z6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/z6;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/z6;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/z6;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/z6;

.field private static final synthetic zze:[Lcom/google/android/gms/measurement/internal/z6;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/measurement/internal/z6;

    const-string v1, "CONSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/z6;->zza:Lcom/google/android/gms/measurement/internal/z6;

    new-instance v1, Lcom/google/android/gms/measurement/internal/z6;

    const-string v2, "LEGITIMATE_INTEREST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/z6;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/z6;->zzb:Lcom/google/android/gms/measurement/internal/z6;

    new-instance v2, Lcom/google/android/gms/measurement/internal/z6;

    const-string v3, "FLEXIBLE_CONSENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/z6;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/z6;->zzc:Lcom/google/android/gms/measurement/internal/z6;

    new-instance v3, Lcom/google/android/gms/measurement/internal/z6;

    const-string v4, "FLEXIBLE_LEGITIMATE_INTEREST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z6;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/z6;->zzd:Lcom/google/android/gms/measurement/internal/z6;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/measurement/internal/z6;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/z6;->zze:[Lcom/google/android/gms/measurement/internal/z6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/z6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/z6;->zze:[Lcom/google/android/gms/measurement/internal/z6;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/z6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/z6;

    return-object v0
.end method
