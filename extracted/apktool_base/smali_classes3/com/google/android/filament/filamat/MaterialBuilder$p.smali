.class public final enum Lcom/google/android/filament/filamat/MaterialBuilder$p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/filamat/MaterialBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/filamat/MaterialBuilder$p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/filamat/MaterialBuilder$p;

.field public static final enum ALL:Lcom/google/android/filament/filamat/MaterialBuilder$p;

.field public static final enum METAL:Lcom/google/android/filament/filamat/MaterialBuilder$p;

.field public static final enum OPENGL:Lcom/google/android/filament/filamat/MaterialBuilder$p;

.field public static final enum VULKAN:Lcom/google/android/filament/filamat/MaterialBuilder$p;

.field public static final enum WEBGPU:Lcom/google/android/filament/filamat/MaterialBuilder$p;


# instance fields
.field final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;

    const-string v1, "OPENGL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder$p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;->OPENGL:Lcom/google/android/filament/filamat/MaterialBuilder$p;

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;

    const-string v1, "VULKAN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder$p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;->VULKAN:Lcom/google/android/filament/filamat/MaterialBuilder$p;

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;

    const-string v1, "METAL"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder$p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;->METAL:Lcom/google/android/filament/filamat/MaterialBuilder$p;

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v4, "WEBGPU"

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder$p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;->WEBGPU:Lcom/google/android/filament/filamat/MaterialBuilder$p;

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;

    const-string v1, "ALL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder$p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;->ALL:Lcom/google/android/filament/filamat/MaterialBuilder$p;

    invoke-static {}, Lcom/google/android/filament/filamat/MaterialBuilder$p;->a()[Lcom/google/android/filament/filamat/MaterialBuilder$p;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;->$VALUES:[Lcom/google/android/filament/filamat/MaterialBuilder$p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/filament/filamat/MaterialBuilder$p;->number:I

    return-void
.end method

.method public static synthetic a()[Lcom/google/android/filament/filamat/MaterialBuilder$p;
    .locals 5

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;->OPENGL:Lcom/google/android/filament/filamat/MaterialBuilder$p;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$p;->VULKAN:Lcom/google/android/filament/filamat/MaterialBuilder$p;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$p;->METAL:Lcom/google/android/filament/filamat/MaterialBuilder$p;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$p;->WEBGPU:Lcom/google/android/filament/filamat/MaterialBuilder$p;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$p;->ALL:Lcom/google/android/filament/filamat/MaterialBuilder$p;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/filament/filamat/MaterialBuilder$p;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/filamat/MaterialBuilder$p;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/filamat/MaterialBuilder$p;
    .locals 1

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$p;->$VALUES:[Lcom/google/android/filament/filamat/MaterialBuilder$p;

    invoke-virtual {v0}, [Lcom/google/android/filament/filamat/MaterialBuilder$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/filamat/MaterialBuilder$p;

    return-object v0
.end method
