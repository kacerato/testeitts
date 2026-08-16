.class public final enum Lcom/google/android/filament/utils/Manipulator$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/Manipulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/Manipulator$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/Manipulator$c;

.field public static final enum BACKWARD:Lcom/google/android/filament/utils/Manipulator$c;

.field public static final enum DOWN:Lcom/google/android/filament/utils/Manipulator$c;

.field public static final enum FORWARD:Lcom/google/android/filament/utils/Manipulator$c;

.field public static final enum LEFT:Lcom/google/android/filament/utils/Manipulator$c;

.field public static final enum RIGHT:Lcom/google/android/filament/utils/Manipulator$c;

.field public static final enum UP:Lcom/google/android/filament/utils/Manipulator$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$c;

    const-string v1, "FORWARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$c;->FORWARD:Lcom/google/android/filament/utils/Manipulator$c;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$c;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$c;->LEFT:Lcom/google/android/filament/utils/Manipulator$c;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$c;

    const-string v1, "BACKWARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$c;->BACKWARD:Lcom/google/android/filament/utils/Manipulator$c;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$c;

    const-string v1, "RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$c;->RIGHT:Lcom/google/android/filament/utils/Manipulator$c;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$c;

    const-string v1, "UP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$c;->UP:Lcom/google/android/filament/utils/Manipulator$c;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$c;

    const-string v1, "DOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$c;->DOWN:Lcom/google/android/filament/utils/Manipulator$c;

    invoke-static {}, Lcom/google/android/filament/utils/Manipulator$c;->a()[Lcom/google/android/filament/utils/Manipulator$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$c;->$VALUES:[Lcom/google/android/filament/utils/Manipulator$c;

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

.method public static synthetic a()[Lcom/google/android/filament/utils/Manipulator$c;
    .locals 6

    sget-object v0, Lcom/google/android/filament/utils/Manipulator$c;->FORWARD:Lcom/google/android/filament/utils/Manipulator$c;

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$c;->LEFT:Lcom/google/android/filament/utils/Manipulator$c;

    sget-object v2, Lcom/google/android/filament/utils/Manipulator$c;->BACKWARD:Lcom/google/android/filament/utils/Manipulator$c;

    sget-object v3, Lcom/google/android/filament/utils/Manipulator$c;->RIGHT:Lcom/google/android/filament/utils/Manipulator$c;

    sget-object v4, Lcom/google/android/filament/utils/Manipulator$c;->UP:Lcom/google/android/filament/utils/Manipulator$c;

    sget-object v5, Lcom/google/android/filament/utils/Manipulator$c;->DOWN:Lcom/google/android/filament/utils/Manipulator$c;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/filament/utils/Manipulator$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/Manipulator$c;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/Manipulator$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/Manipulator$c;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/Manipulator$c;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/Manipulator$c;->$VALUES:[Lcom/google/android/filament/utils/Manipulator$c;

    invoke-virtual {v0}, [Lcom/google/android/filament/utils/Manipulator$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/Manipulator$c;

    return-object v0
.end method
