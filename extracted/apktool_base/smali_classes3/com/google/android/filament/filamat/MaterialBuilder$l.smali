.class public final enum Lcom/google/android/filament/filamat/MaterialBuilder$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/filamat/MaterialBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/filamat/MaterialBuilder$l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/filamat/MaterialBuilder$l;

.field public static final enum FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

.field public static final enum INT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

.field public static final enum SHADOW:Lcom/google/android/filament/filamat/MaterialBuilder$l;

.field public static final enum UINT:Lcom/google/android/filament/filamat/MaterialBuilder$l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;->INT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;

    const-string v1, "UINT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;->UINT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;

    const-string v1, "FLOAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;

    const-string v1, "SHADOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;->SHADOW:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    invoke-static {}, Lcom/google/android/filament/filamat/MaterialBuilder$l;->a()[Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;->$VALUES:[Lcom/google/android/filament/filamat/MaterialBuilder$l;

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

.method public static synthetic a()[Lcom/google/android/filament/filamat/MaterialBuilder$l;
    .locals 4

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;->INT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$l;->UINT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$l;->SHADOW:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/filamat/MaterialBuilder$l;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/filamat/MaterialBuilder$l;
    .locals 1

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$l;->$VALUES:[Lcom/google/android/filament/filamat/MaterialBuilder$l;

    invoke-virtual {v0}, [Lcom/google/android/filament/filamat/MaterialBuilder$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/filamat/MaterialBuilder$l;

    return-object v0
.end method
