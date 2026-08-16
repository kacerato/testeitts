.class public final enum Lcom/google/android/filament/View$n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$n;

.field public static final enum HIGH:Lcom/google/android/filament/View$n;

.field public static final enum LOW:Lcom/google/android/filament/View$n;

.field public static final enum MEDIUM:Lcom/google/android/filament/View$n;

.field public static final enum ULTRA:Lcom/google/android/filament/View$n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/View$n;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$n;->LOW:Lcom/google/android/filament/View$n;

    new-instance v0, Lcom/google/android/filament/View$n;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$n;->MEDIUM:Lcom/google/android/filament/View$n;

    new-instance v0, Lcom/google/android/filament/View$n;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$n;->HIGH:Lcom/google/android/filament/View$n;

    new-instance v0, Lcom/google/android/filament/View$n;

    const-string v1, "ULTRA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$n;->ULTRA:Lcom/google/android/filament/View$n;

    invoke-static {}, Lcom/google/android/filament/View$n;->a()[Lcom/google/android/filament/View$n;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View$n;->$VALUES:[Lcom/google/android/filament/View$n;

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

.method public static synthetic a()[Lcom/google/android/filament/View$n;
    .locals 4

    sget-object v0, Lcom/google/android/filament/View$n;->LOW:Lcom/google/android/filament/View$n;

    sget-object v1, Lcom/google/android/filament/View$n;->MEDIUM:Lcom/google/android/filament/View$n;

    sget-object v2, Lcom/google/android/filament/View$n;->HIGH:Lcom/google/android/filament/View$n;

    sget-object v3, Lcom/google/android/filament/View$n;->ULTRA:Lcom/google/android/filament/View$n;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/filament/View$n;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/View$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$n;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$n;
    .locals 1

    sget-object v0, Lcom/google/android/filament/View$n;->$VALUES:[Lcom/google/android/filament/View$n;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$n;

    return-object v0
.end method
