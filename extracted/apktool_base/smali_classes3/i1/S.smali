.class public final enum Li1/S;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li1/S;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Li1/S;

.field public static final enum zzb:Li1/S;

.field public static final enum zzc:Li1/S;

.field public static final enum zzd:Li1/S;

.field public static final enum zze:Li1/S;

.field private static final synthetic zzf:[Li1/S;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Li1/S;

    const-string v1, "DEBUG_PARAM_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li1/S;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li1/S;->zza:Li1/S;

    new-instance v1, Li1/S;

    const-string v2, "ALWAYS_SHOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Li1/S;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li1/S;->zzb:Li1/S;

    new-instance v2, Li1/S;

    const-string v3, "GEO_OVERRIDE_EEA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Li1/S;-><init>(Ljava/lang/String;I)V

    sput-object v2, Li1/S;->zzc:Li1/S;

    new-instance v3, Li1/S;

    const-string v4, "GEO_OVERRIDE_NON_EEA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Li1/S;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li1/S;->zzd:Li1/S;

    new-instance v4, Li1/S;

    const-string v5, "PREVIEWING_DEBUG_MESSAGES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Li1/S;-><init>(Ljava/lang/String;I)V

    sput-object v4, Li1/S;->zze:Li1/S;

    filled-new-array {v0, v1, v2, v3, v4}, [Li1/S;

    move-result-object v0

    sput-object v0, Li1/S;->zzf:[Li1/S;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Li1/S;
    .locals 1

    sget-object v0, Li1/S;->zzf:[Li1/S;

    invoke-virtual {v0}, [Li1/S;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li1/S;

    return-object v0
.end method
