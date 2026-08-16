.class public final enum Lcom/google/android/filament/MaterialInstance$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/MaterialInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/MaterialInstance$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/MaterialInstance$b;

.field public static final enum FLOAT:Lcom/google/android/filament/MaterialInstance$b;

.field public static final enum FLOAT2:Lcom/google/android/filament/MaterialInstance$b;

.field public static final enum FLOAT3:Lcom/google/android/filament/MaterialInstance$b;

.field public static final enum FLOAT4:Lcom/google/android/filament/MaterialInstance$b;

.field public static final enum MAT3:Lcom/google/android/filament/MaterialInstance$b;

.field public static final enum MAT4:Lcom/google/android/filament/MaterialInstance$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/MaterialInstance$b;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$b;->FLOAT:Lcom/google/android/filament/MaterialInstance$b;

    new-instance v0, Lcom/google/android/filament/MaterialInstance$b;

    const-string v1, "FLOAT2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$b;->FLOAT2:Lcom/google/android/filament/MaterialInstance$b;

    new-instance v0, Lcom/google/android/filament/MaterialInstance$b;

    const-string v1, "FLOAT3"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$b;->FLOAT3:Lcom/google/android/filament/MaterialInstance$b;

    new-instance v0, Lcom/google/android/filament/MaterialInstance$b;

    const-string v1, "FLOAT4"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$b;->FLOAT4:Lcom/google/android/filament/MaterialInstance$b;

    new-instance v0, Lcom/google/android/filament/MaterialInstance$b;

    const-string v1, "MAT3"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$b;->MAT3:Lcom/google/android/filament/MaterialInstance$b;

    new-instance v0, Lcom/google/android/filament/MaterialInstance$b;

    const-string v1, "MAT4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$b;->MAT4:Lcom/google/android/filament/MaterialInstance$b;

    invoke-static {}, Lcom/google/android/filament/MaterialInstance$b;->a()[Lcom/google/android/filament/MaterialInstance$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/MaterialInstance$b;->$VALUES:[Lcom/google/android/filament/MaterialInstance$b;

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

.method public static synthetic a()[Lcom/google/android/filament/MaterialInstance$b;
    .locals 6

    sget-object v0, Lcom/google/android/filament/MaterialInstance$b;->FLOAT:Lcom/google/android/filament/MaterialInstance$b;

    sget-object v1, Lcom/google/android/filament/MaterialInstance$b;->FLOAT2:Lcom/google/android/filament/MaterialInstance$b;

    sget-object v2, Lcom/google/android/filament/MaterialInstance$b;->FLOAT3:Lcom/google/android/filament/MaterialInstance$b;

    sget-object v3, Lcom/google/android/filament/MaterialInstance$b;->FLOAT4:Lcom/google/android/filament/MaterialInstance$b;

    sget-object v4, Lcom/google/android/filament/MaterialInstance$b;->MAT3:Lcom/google/android/filament/MaterialInstance$b;

    sget-object v5, Lcom/google/android/filament/MaterialInstance$b;->MAT4:Lcom/google/android/filament/MaterialInstance$b;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/filament/MaterialInstance$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/MaterialInstance$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/MaterialInstance$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/MaterialInstance$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/MaterialInstance$b;
    .locals 1

    sget-object v0, Lcom/google/android/filament/MaterialInstance$b;->$VALUES:[Lcom/google/android/filament/MaterialInstance$b;

    invoke-virtual {v0}, [Lcom/google/android/filament/MaterialInstance$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/MaterialInstance$b;

    return-object v0
.end method
