.class public final enum Lcom/google/android/filament/Texture$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$i;

.field public static final enum SAMPLER_2D:Lcom/google/android/filament/Texture$i;

.field public static final enum SAMPLER_2D_ARRAY:Lcom/google/android/filament/Texture$i;

.field public static final enum SAMPLER_3D:Lcom/google/android/filament/Texture$i;

.field public static final enum SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$i;

.field public static final enum SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Texture$i;

    const-string v1, "SAMPLER_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$i;->SAMPLER_2D:Lcom/google/android/filament/Texture$i;

    new-instance v0, Lcom/google/android/filament/Texture$i;

    const-string v1, "SAMPLER_2D_ARRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$i;->SAMPLER_2D_ARRAY:Lcom/google/android/filament/Texture$i;

    new-instance v0, Lcom/google/android/filament/Texture$i;

    const-string v1, "SAMPLER_CUBEMAP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$i;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$i;

    new-instance v0, Lcom/google/android/filament/Texture$i;

    const-string v1, "SAMPLER_EXTERNAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$i;->SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$i;

    new-instance v0, Lcom/google/android/filament/Texture$i;

    const-string v1, "SAMPLER_3D"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$i;->SAMPLER_3D:Lcom/google/android/filament/Texture$i;

    invoke-static {}, Lcom/google/android/filament/Texture$i;->a()[Lcom/google/android/filament/Texture$i;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Texture$i;->$VALUES:[Lcom/google/android/filament/Texture$i;

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

.method public static synthetic a()[Lcom/google/android/filament/Texture$i;
    .locals 5

    sget-object v0, Lcom/google/android/filament/Texture$i;->SAMPLER_2D:Lcom/google/android/filament/Texture$i;

    sget-object v1, Lcom/google/android/filament/Texture$i;->SAMPLER_2D_ARRAY:Lcom/google/android/filament/Texture$i;

    sget-object v2, Lcom/google/android/filament/Texture$i;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$i;

    sget-object v3, Lcom/google/android/filament/Texture$i;->SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$i;

    sget-object v4, Lcom/google/android/filament/Texture$i;->SAMPLER_3D:Lcom/google/android/filament/Texture$i;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/filament/Texture$i;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Texture$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$i;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$i;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Texture$i;->$VALUES:[Lcom/google/android/filament/Texture$i;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$i;

    return-object v0
.end method
