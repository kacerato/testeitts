.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

.field public static final enum BACK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

.field public static final enum FORWARD:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

.field public static final enum LEFT:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

.field public static final enum MIDDLE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

.field public static final enum RIGHT:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->LEFT:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->RIGHT:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    const-string v1, "MIDDLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->MIDDLE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    const-string v1, "BACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->BACK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    const-string v1, "FORWARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->FORWARD:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;
    .locals 5

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->LEFT:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->RIGHT:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->MIDDLE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->BACK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->FORWARD:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    return-object v0
.end method
