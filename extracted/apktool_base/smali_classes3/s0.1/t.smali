.class public final enum Ls0/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Ls0/t;

.field public static final enum zzb:Ls0/t;

.field public static final enum zzc:Ls0/t;

.field private static final synthetic zzd:[Ls0/t;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ls0/t;

    const-string v1, "LEGACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls0/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls0/t;->zza:Ls0/t;

    new-instance v1, Ls0/t;

    const-string v2, "AUTH_INSTANTIATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls0/t;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls0/t;->zzb:Ls0/t;

    new-instance v2, Ls0/t;

    const-string v3, "CALLER_INSTANTIATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ls0/t;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ls0/t;->zzc:Ls0/t;

    filled-new-array {v0, v1, v2}, [Ls0/t;

    move-result-object v0

    sput-object v0, Ls0/t;->zzd:[Ls0/t;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ls0/t;
    .locals 1

    sget-object v0, Ls0/t;->zzd:[Ls0/t;

    invoke-virtual {v0}, [Ls0/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls0/t;

    return-object v0
.end method
