.class public final enum Lcom/google/android/filament/utils/Manipulator$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/Manipulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/Manipulator$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/Manipulator$d;

.field public static final enum FREE_FLIGHT:Lcom/google/android/filament/utils/Manipulator$d;

.field public static final enum MAP:Lcom/google/android/filament/utils/Manipulator$d;

.field public static final enum ORBIT:Lcom/google/android/filament/utils/Manipulator$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$d;

    const-string v1, "ORBIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$d;->ORBIT:Lcom/google/android/filament/utils/Manipulator$d;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$d;

    const-string v1, "MAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$d;->MAP:Lcom/google/android/filament/utils/Manipulator$d;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$d;

    const-string v1, "FREE_FLIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$d;->FREE_FLIGHT:Lcom/google/android/filament/utils/Manipulator$d;

    invoke-static {}, Lcom/google/android/filament/utils/Manipulator$d;->a()[Lcom/google/android/filament/utils/Manipulator$d;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$d;->$VALUES:[Lcom/google/android/filament/utils/Manipulator$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/android/filament/utils/Manipulator$d;
    .locals 3

    sget-object v0, Lcom/google/android/filament/utils/Manipulator$d;->ORBIT:Lcom/google/android/filament/utils/Manipulator$d;

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$d;->MAP:Lcom/google/android/filament/utils/Manipulator$d;

    sget-object v2, Lcom/google/android/filament/utils/Manipulator$d;->FREE_FLIGHT:Lcom/google/android/filament/utils/Manipulator$d;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/filament/utils/Manipulator$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/Manipulator$d;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/Manipulator$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/Manipulator$d;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/Manipulator$d;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/Manipulator$d;->$VALUES:[Lcom/google/android/filament/utils/Manipulator$d;

    invoke-virtual {v0}, [Lcom/google/android/filament/utils/Manipulator$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/Manipulator$d;

    return-object v0
.end method
