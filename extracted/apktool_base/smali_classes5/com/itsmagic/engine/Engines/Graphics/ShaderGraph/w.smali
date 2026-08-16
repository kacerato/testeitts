.class public final enum Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

.field public static final enum BOTH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

.field public static final enum FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

.field public static final enum VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    const-string v1, "VERTEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    const-string v1, "FRAGMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    const-string v1, "BOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->BOTH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->a()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->$VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->BOTH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->$VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    return-object v0
.end method
