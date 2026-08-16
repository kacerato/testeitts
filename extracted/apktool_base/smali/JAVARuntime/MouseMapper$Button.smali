.class public final enum LJAVARuntime/MouseMapper$Button;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/MouseMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Button"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/MouseMapper$Button;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/MouseMapper$Button;

.field public static final enum BACK:LJAVARuntime/MouseMapper$Button;

.field public static final enum FORWARD:LJAVARuntime/MouseMapper$Button;

.field public static final enum LEFT:LJAVARuntime/MouseMapper$Button;

.field public static final enum MIDDLE:LJAVARuntime/MouseMapper$Button;

.field public static final enum RIGHT:LJAVARuntime/MouseMapper$Button;


# direct methods
.method private static synthetic $values()[LJAVARuntime/MouseMapper$Button;
    .locals 5

    sget-object v0, LJAVARuntime/MouseMapper$Button;->LEFT:LJAVARuntime/MouseMapper$Button;

    sget-object v1, LJAVARuntime/MouseMapper$Button;->RIGHT:LJAVARuntime/MouseMapper$Button;

    sget-object v2, LJAVARuntime/MouseMapper$Button;->MIDDLE:LJAVARuntime/MouseMapper$Button;

    sget-object v3, LJAVARuntime/MouseMapper$Button;->BACK:LJAVARuntime/MouseMapper$Button;

    sget-object v4, LJAVARuntime/MouseMapper$Button;->FORWARD:LJAVARuntime/MouseMapper$Button;

    filled-new-array {v0, v1, v2, v3, v4}, [LJAVARuntime/MouseMapper$Button;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/MouseMapper$Button;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/MouseMapper$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MouseMapper$Button;->LEFT:LJAVARuntime/MouseMapper$Button;

    new-instance v0, LJAVARuntime/MouseMapper$Button;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/MouseMapper$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MouseMapper$Button;->RIGHT:LJAVARuntime/MouseMapper$Button;

    new-instance v0, LJAVARuntime/MouseMapper$Button;

    const-string v1, "MIDDLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/MouseMapper$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MouseMapper$Button;->MIDDLE:LJAVARuntime/MouseMapper$Button;

    new-instance v0, LJAVARuntime/MouseMapper$Button;

    const-string v1, "BACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/MouseMapper$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MouseMapper$Button;->BACK:LJAVARuntime/MouseMapper$Button;

    new-instance v0, LJAVARuntime/MouseMapper$Button;

    const-string v1, "FORWARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/MouseMapper$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MouseMapper$Button;->FORWARD:LJAVARuntime/MouseMapper$Button;

    invoke-static {}, LJAVARuntime/MouseMapper$Button;->$values()[LJAVARuntime/MouseMapper$Button;

    move-result-object v0

    sput-object v0, LJAVARuntime/MouseMapper$Button;->$VALUES:[LJAVARuntime/MouseMapper$Button;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/MouseMapper$Button;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/MouseMapper$Button;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/MouseMapper$Button;

    return-object p0
.end method

.method public static values()[LJAVARuntime/MouseMapper$Button;
    .locals 1

    sget-object v0, LJAVARuntime/MouseMapper$Button;->$VALUES:[LJAVARuntime/MouseMapper$Button;

    invoke-virtual {v0}, [LJAVARuntime/MouseMapper$Button;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/MouseMapper$Button;

    return-object v0
.end method
