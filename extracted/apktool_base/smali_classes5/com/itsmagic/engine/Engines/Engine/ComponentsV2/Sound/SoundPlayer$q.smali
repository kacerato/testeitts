.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

.field public static final enum Play_2D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

.field public static final enum Play_3D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    const-string v1, "Play_3D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_3D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    const-string v1, "Play_2D"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_2D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_3D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_2D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    return-object v0
.end method
