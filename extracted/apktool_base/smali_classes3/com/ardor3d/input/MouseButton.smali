.class public final enum Lcom/ardor3d/input/MouseButton;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/input/MouseButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/input/MouseButton;

.field public static final enum LEFT:Lcom/ardor3d/input/MouseButton;

.field public static final enum MIDDLE:Lcom/ardor3d/input/MouseButton;

.field public static final enum RIGHT:Lcom/ardor3d/input/MouseButton;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ardor3d/input/MouseButton;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/input/MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/input/MouseButton;->LEFT:Lcom/ardor3d/input/MouseButton;

    new-instance v1, Lcom/ardor3d/input/MouseButton;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/input/MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/input/MouseButton;->RIGHT:Lcom/ardor3d/input/MouseButton;

    new-instance v2, Lcom/ardor3d/input/MouseButton;

    const-string v3, "MIDDLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/input/MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/input/MouseButton;->MIDDLE:Lcom/ardor3d/input/MouseButton;

    filled-new-array {v0, v1, v2}, [Lcom/ardor3d/input/MouseButton;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/input/MouseButton;->$VALUES:[Lcom/ardor3d/input/MouseButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static makeMap(Lcom/ardor3d/input/ButtonState;Lcom/ardor3d/input/ButtonState;Lcom/ardor3d/input/ButtonState;)Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/input/ButtonState;",
            "Lcom/ardor3d/input/ButtonState;",
            "Lcom/ardor3d/input/ButtonState;",
            ")",
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/input/MouseButton;",
            "Lcom/ardor3d/input/ButtonState;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-class v0, Lcom/ardor3d/input/MouseButton;

    invoke-static {v0}, Lcom/google/common/collect/Q1;->W(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/input/MouseButton;->LEFT:Lcom/ardor3d/input/MouseButton;

    invoke-virtual {v0, v1, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/ardor3d/input/MouseButton;->RIGHT:Lcom/ardor3d/input/MouseButton;

    invoke-virtual {v0, p0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/ardor3d/input/MouseButton;->MIDDLE:Lcom/ardor3d/input/MouseButton;

    invoke-virtual {v0, p0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "middle"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "right"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "left"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/input/MouseButton;
    .locals 1

    const-class v0, Lcom/ardor3d/input/MouseButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/input/MouseButton;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/input/MouseButton;
    .locals 1

    sget-object v0, Lcom/ardor3d/input/MouseButton;->$VALUES:[Lcom/ardor3d/input/MouseButton;

    invoke-virtual {v0}, [Lcom/ardor3d/input/MouseButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/input/MouseButton;

    return-object v0
.end method
