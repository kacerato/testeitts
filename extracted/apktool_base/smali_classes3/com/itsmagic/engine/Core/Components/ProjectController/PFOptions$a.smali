.class public final enum Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

.field public static final enum Alphabetical:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

.field public static final enum CreationDate:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    const-string v1, "CreationDate"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;->CreationDate:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    new-instance v0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    const-string v1, "Alphabetical"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;->Alphabetical:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;->a()[Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;->$VALUES:[Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;->CreationDate:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    sget-object v1, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;->Alphabetical:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;->$VALUES:[Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    return-object v0
.end method
