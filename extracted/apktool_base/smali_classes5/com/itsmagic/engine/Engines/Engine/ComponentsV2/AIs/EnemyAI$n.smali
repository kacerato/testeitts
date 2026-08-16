.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

.field public static final enum ATTACK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

.field public static final enum CHASE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

.field public static final enum IDLE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

.field public static final enum PATROL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->IDLE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    const-string v1, "PATROL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->PATROL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    const-string v1, "CHASE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->CHASE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    const-string v1, "ATTACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->ATTACK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->IDLE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->PATROL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->CHASE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->ATTACK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    filled-new-array {v0, v1, v2, v3}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    return-object v0
.end method
