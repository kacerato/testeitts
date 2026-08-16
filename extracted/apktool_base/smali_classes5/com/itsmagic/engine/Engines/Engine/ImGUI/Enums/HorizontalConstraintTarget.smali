.class public final enum Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

.field public static final enum ToLeftOf:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

.field public static final enum ToRightOf:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

.field public static final enum Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;


# direct methods
.method private static synthetic $values()[Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->ToLeftOf:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->ToRightOf:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    const-string v1, "Unfixed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    const-string v1, "ToLeftOf"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->ToLeftOf:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    const-string v1, "ToRightOf"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->ToRightOf:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->$values()[Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    return-object v0
.end method
