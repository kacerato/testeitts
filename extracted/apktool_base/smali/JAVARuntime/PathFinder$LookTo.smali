.class public final enum LJAVARuntime/PathFinder$LookTo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/PathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LookTo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/PathFinder$LookTo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/PathFinder$LookTo;

.field public static final enum Disabled:LJAVARuntime/PathFinder$LookTo;

.field public static final enum Path:LJAVARuntime/PathFinder$LookTo;

.field public static final enum Target:LJAVARuntime/PathFinder$LookTo;


# direct methods
.method private static synthetic $values()[LJAVARuntime/PathFinder$LookTo;
    .locals 3

    sget-object v0, LJAVARuntime/PathFinder$LookTo;->Disabled:LJAVARuntime/PathFinder$LookTo;

    sget-object v1, LJAVARuntime/PathFinder$LookTo;->Path:LJAVARuntime/PathFinder$LookTo;

    sget-object v2, LJAVARuntime/PathFinder$LookTo;->Target:LJAVARuntime/PathFinder$LookTo;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/PathFinder$LookTo;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/PathFinder$LookTo;

    const-string v1, "Disabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/PathFinder$LookTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/PathFinder$LookTo;->Disabled:LJAVARuntime/PathFinder$LookTo;

    new-instance v0, LJAVARuntime/PathFinder$LookTo;

    const-string v1, "Path"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/PathFinder$LookTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/PathFinder$LookTo;->Path:LJAVARuntime/PathFinder$LookTo;

    new-instance v0, LJAVARuntime/PathFinder$LookTo;

    const-string v1, "Target"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/PathFinder$LookTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/PathFinder$LookTo;->Target:LJAVARuntime/PathFinder$LookTo;

    invoke-static {}, LJAVARuntime/PathFinder$LookTo;->$values()[LJAVARuntime/PathFinder$LookTo;

    move-result-object v0

    sput-object v0, LJAVARuntime/PathFinder$LookTo;->$VALUES:[LJAVARuntime/PathFinder$LookTo;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/PathFinder$LookTo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/PathFinder$LookTo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/PathFinder$LookTo;

    return-object p0
.end method

.method public static values()[LJAVARuntime/PathFinder$LookTo;
    .locals 1

    sget-object v0, LJAVARuntime/PathFinder$LookTo;->$VALUES:[LJAVARuntime/PathFinder$LookTo;

    invoke-virtual {v0}, [LJAVARuntime/PathFinder$LookTo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/PathFinder$LookTo;

    return-object v0
.end method
