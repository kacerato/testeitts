.class public final enum Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

.field public static final enum NEGATIVE_X:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

.field public static final enum NEGATIVE_Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

.field public static final enum NEGATIVE_Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

.field public static final enum POSITIVE_X:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

.field public static final enum POSITIVE_Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

.field public static final enum POSITIVE_Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    const-string v1, "POSITIVE_X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->POSITIVE_X:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    const-string v1, "NEGATIVE_X"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->NEGATIVE_X:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    const-string v1, "POSITIVE_Y"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->POSITIVE_Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    const-string v1, "NEGATIVE_Y"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->NEGATIVE_Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    const-string v1, "POSITIVE_Z"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->POSITIVE_Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    const-string v1, "NEGATIVE_Z"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->NEGATIVE_Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->a()[Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;
    .locals 6

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->POSITIVE_X:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->NEGATIVE_X:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->POSITIVE_Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->NEGATIVE_Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->POSITIVE_Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->NEGATIVE_Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    filled-new-array/range {v0 .. v5}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    return-object v0
.end method
