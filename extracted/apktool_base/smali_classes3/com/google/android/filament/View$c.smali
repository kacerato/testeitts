.class public final enum Lcom/google/android/filament/View$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$c;

.field public static final enum FXAA:Lcom/google/android/filament/View$c;

.field public static final enum NONE:Lcom/google/android/filament/View$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/View$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$c;->NONE:Lcom/google/android/filament/View$c;

    new-instance v0, Lcom/google/android/filament/View$c;

    const-string v1, "FXAA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$c;->FXAA:Lcom/google/android/filament/View$c;

    invoke-static {}, Lcom/google/android/filament/View$c;->a()[Lcom/google/android/filament/View$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View$c;->$VALUES:[Lcom/google/android/filament/View$c;

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

.method public static synthetic a()[Lcom/google/android/filament/View$c;
    .locals 2

    sget-object v0, Lcom/google/android/filament/View$c;->NONE:Lcom/google/android/filament/View$c;

    sget-object v1, Lcom/google/android/filament/View$c;->FXAA:Lcom/google/android/filament/View$c;

    filled-new-array {v0, v1}, [Lcom/google/android/filament/View$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/View$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$c;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$c;
    .locals 1

    sget-object v0, Lcom/google/android/filament/View$c;->$VALUES:[Lcom/google/android/filament/View$c;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$c;

    return-object v0
.end method
