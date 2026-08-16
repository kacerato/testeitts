.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

.field public static final enum Boolean:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

.field public static final enum Float:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

.field public static final enum Int:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

.field public static final enum String:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    const-string v1, "Float"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Float:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    const-string v1, "Int"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Int:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    const-string v1, "String"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->String:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    const-string v1, "Boolean"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Boolean:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Float:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Int:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->String:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Boolean:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    filled-new-array {v0, v1, v2, v3}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    return-object v0
.end method
