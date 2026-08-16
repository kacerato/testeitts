.class public final enum Lcom/google/android/filament/TextureSampler$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/TextureSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/TextureSampler$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/TextureSampler$e;

.field public static final enum LINEAR:Lcom/google/android/filament/TextureSampler$e;

.field public static final enum LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$e;

.field public static final enum LINEAR_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$e;

.field public static final enum NEAREST:Lcom/google/android/filament/TextureSampler$e;

.field public static final enum NEAREST_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$e;

.field public static final enum NEAREST_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/TextureSampler$e;

    const-string v1, "NEAREST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$e;->NEAREST:Lcom/google/android/filament/TextureSampler$e;

    new-instance v0, Lcom/google/android/filament/TextureSampler$e;

    const-string v1, "LINEAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    new-instance v0, Lcom/google/android/filament/TextureSampler$e;

    const-string v1, "NEAREST_MIPMAP_NEAREST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$e;->NEAREST_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$e;

    new-instance v0, Lcom/google/android/filament/TextureSampler$e;

    const-string v1, "LINEAR_MIPMAP_NEAREST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$e;->LINEAR_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$e;

    new-instance v0, Lcom/google/android/filament/TextureSampler$e;

    const-string v1, "NEAREST_MIPMAP_LINEAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$e;->NEAREST_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$e;

    new-instance v0, Lcom/google/android/filament/TextureSampler$e;

    const-string v1, "LINEAR_MIPMAP_LINEAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$e;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$e;

    invoke-static {}, Lcom/google/android/filament/TextureSampler$e;->a()[Lcom/google/android/filament/TextureSampler$e;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/TextureSampler$e;->$VALUES:[Lcom/google/android/filament/TextureSampler$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/android/filament/TextureSampler$e;
    .locals 6

    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->NEAREST:Lcom/google/android/filament/TextureSampler$e;

    sget-object v1, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v2, Lcom/google/android/filament/TextureSampler$e;->NEAREST_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$e;

    sget-object v3, Lcom/google/android/filament/TextureSampler$e;->LINEAR_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$e;

    sget-object v4, Lcom/google/android/filament/TextureSampler$e;->NEAREST_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v5, Lcom/google/android/filament/TextureSampler$e;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$e;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/filament/TextureSampler$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/TextureSampler$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/TextureSampler$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/TextureSampler$e;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/TextureSampler$e;
    .locals 1

    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->$VALUES:[Lcom/google/android/filament/TextureSampler$e;

    invoke-virtual {v0}, [Lcom/google/android/filament/TextureSampler$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/TextureSampler$e;

    return-object v0
.end method
