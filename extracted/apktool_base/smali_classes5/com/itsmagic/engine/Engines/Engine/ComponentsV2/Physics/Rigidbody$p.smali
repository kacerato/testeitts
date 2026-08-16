.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

.field public static final enum Continuous:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

.field public static final enum Discrete:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    const-string v1, "Discrete"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;->Discrete:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    const-string v1, "Continuous"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;->Continuous:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;->Discrete:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;->Continuous:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$p;

    return-object v0
.end method
