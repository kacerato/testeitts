.class public final enum Lcom/google/android/filament/View$q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$q;

.field public static final enum DPCF:Lcom/google/android/filament/View$q;

.field public static final enum PCF:Lcom/google/android/filament/View$q;

.field public static final enum PCFd:Lcom/google/android/filament/View$q;

.field public static final enum PCSS:Lcom/google/android/filament/View$q;

.field public static final enum VSM:Lcom/google/android/filament/View$q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/View$q;

    const-string v1, "PCF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$q;->PCF:Lcom/google/android/filament/View$q;

    new-instance v0, Lcom/google/android/filament/View$q;

    const-string v1, "VSM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$q;->VSM:Lcom/google/android/filament/View$q;

    new-instance v0, Lcom/google/android/filament/View$q;

    const-string v1, "DPCF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$q;->DPCF:Lcom/google/android/filament/View$q;

    new-instance v0, Lcom/google/android/filament/View$q;

    const-string v1, "PCSS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$q;->PCSS:Lcom/google/android/filament/View$q;

    new-instance v0, Lcom/google/android/filament/View$q;

    const-string v1, "PCFd"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$q;->PCFd:Lcom/google/android/filament/View$q;

    invoke-static {}, Lcom/google/android/filament/View$q;->a()[Lcom/google/android/filament/View$q;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View$q;->$VALUES:[Lcom/google/android/filament/View$q;

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

.method public static synthetic a()[Lcom/google/android/filament/View$q;
    .locals 5

    sget-object v0, Lcom/google/android/filament/View$q;->PCF:Lcom/google/android/filament/View$q;

    sget-object v1, Lcom/google/android/filament/View$q;->VSM:Lcom/google/android/filament/View$q;

    sget-object v2, Lcom/google/android/filament/View$q;->DPCF:Lcom/google/android/filament/View$q;

    sget-object v3, Lcom/google/android/filament/View$q;->PCSS:Lcom/google/android/filament/View$q;

    sget-object v4, Lcom/google/android/filament/View$q;->PCFd:Lcom/google/android/filament/View$q;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/filament/View$q;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/View$q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$q;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$q;
    .locals 1

    sget-object v0, Lcom/google/android/filament/View$q;->$VALUES:[Lcom/google/android/filament/View$q;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$q;

    return-object v0
.end method
