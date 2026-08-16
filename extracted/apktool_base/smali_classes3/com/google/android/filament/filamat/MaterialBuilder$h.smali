.class public final enum Lcom/google/android/filament/filamat/MaterialBuilder$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/filamat/MaterialBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/filamat/MaterialBuilder$h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/filamat/MaterialBuilder$h;

.field public static final enum ALL:Lcom/google/android/filament/filamat/MaterialBuilder$h;

.field public static final enum DESKTOP:Lcom/google/android/filament/filamat/MaterialBuilder$h;

.field public static final enum MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$h;

    const-string v1, "DESKTOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$h;->DESKTOP:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$h;

    const-string v1, "MOBILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    new-instance v0, Lcom/google/android/filament/filamat/MaterialBuilder$h;

    const-string v1, "ALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$h;->ALL:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-static {}, Lcom/google/android/filament/filamat/MaterialBuilder$h;->a()[Lcom/google/android/filament/filamat/MaterialBuilder$h;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$h;->$VALUES:[Lcom/google/android/filament/filamat/MaterialBuilder$h;

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

.method public static synthetic a()[Lcom/google/android/filament/filamat/MaterialBuilder$h;
    .locals 3

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$h;->DESKTOP:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$h;->ALL:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/filament/filamat/MaterialBuilder$h;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/filamat/MaterialBuilder$h;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/filamat/MaterialBuilder$h;
    .locals 1

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$h;->$VALUES:[Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v0}, [Lcom/google/android/filament/filamat/MaterialBuilder$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/filamat/MaterialBuilder$h;

    return-object v0
.end method
