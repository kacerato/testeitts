.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "O"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

.field public static final enum Brush:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

.field public static final enum Data:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

.field public static final enum Impostor:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

.field public static final enum Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

.field public static final enum Physics:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    const-string v1, "Brush"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Brush:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    const-string v1, "Model"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    const-string v1, "Data"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Data:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    const-string v1, "Physics"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Physics:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    const-string v1, "Impostor"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Impostor:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;
    .locals 5

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Brush:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Data:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Physics:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Impostor:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    return-object v0
.end method
