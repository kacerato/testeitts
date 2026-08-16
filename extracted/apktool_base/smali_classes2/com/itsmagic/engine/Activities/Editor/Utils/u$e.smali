.class public final enum Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

.field public static final enum CARGO_TRUCK:Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;


# instance fields
.field final focusObject:Ljava/lang/String;

.field final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    const-string v1, "2447"

    const-string v2, "Truck"

    const-string v3, "CARGO_TRUCK"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->CARGO_TRUCK:Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->a()[Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "id",
            "focusObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->focusObject:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->CARGO_TRUCK:Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    filled-new-array {v0}, [Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    return-object v0
.end method
