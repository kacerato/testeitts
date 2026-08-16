.class public final enum Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

.field public static final enum BiggerOrEqual:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

.field public static final enum BiggerThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

.field public static final enum Equals:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

.field public static final enum LessThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

.field public static final enum LesserOrEqual:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    const-string v1, "Equals"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->Equals:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    const-string v1, "BiggerThan"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->BiggerThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    const-string v1, "LessThan"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->LessThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    const-string v1, "BiggerOrEqual"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->BiggerOrEqual:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    const-string v1, "LesserOrEqual"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->LesserOrEqual:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->a()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;
    .locals 5

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->Equals:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->BiggerThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->LessThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->BiggerOrEqual:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->LesserOrEqual:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    return-object v0
.end method
