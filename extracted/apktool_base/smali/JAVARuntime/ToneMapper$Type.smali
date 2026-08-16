.class public final enum LJAVARuntime/ToneMapper$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/ToneMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/ToneMapper$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/ToneMapper$Type;

.field public static final enum ACES:LJAVARuntime/ToneMapper$Type;

.field public static final enum AGX:LJAVARuntime/ToneMapper$Type;

.field public static final enum Filmic:LJAVARuntime/ToneMapper$Type;

.field public static final enum Generic:LJAVARuntime/ToneMapper$Type;

.field public static final enum Linear:LJAVARuntime/ToneMapper$Type;


# direct methods
.method private static synthetic $values()[LJAVARuntime/ToneMapper$Type;
    .locals 5

    sget-object v0, LJAVARuntime/ToneMapper$Type;->Generic:LJAVARuntime/ToneMapper$Type;

    sget-object v1, LJAVARuntime/ToneMapper$Type;->Linear:LJAVARuntime/ToneMapper$Type;

    sget-object v2, LJAVARuntime/ToneMapper$Type;->Filmic:LJAVARuntime/ToneMapper$Type;

    sget-object v3, LJAVARuntime/ToneMapper$Type;->ACES:LJAVARuntime/ToneMapper$Type;

    sget-object v4, LJAVARuntime/ToneMapper$Type;->AGX:LJAVARuntime/ToneMapper$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [LJAVARuntime/ToneMapper$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/ToneMapper$Type;

    const-string v1, "Generic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/ToneMapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ToneMapper$Type;->Generic:LJAVARuntime/ToneMapper$Type;

    new-instance v0, LJAVARuntime/ToneMapper$Type;

    const-string v1, "Linear"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/ToneMapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ToneMapper$Type;->Linear:LJAVARuntime/ToneMapper$Type;

    new-instance v0, LJAVARuntime/ToneMapper$Type;

    const-string v1, "Filmic"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/ToneMapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ToneMapper$Type;->Filmic:LJAVARuntime/ToneMapper$Type;

    new-instance v0, LJAVARuntime/ToneMapper$Type;

    const-string v1, "ACES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/ToneMapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ToneMapper$Type;->ACES:LJAVARuntime/ToneMapper$Type;

    new-instance v0, LJAVARuntime/ToneMapper$Type;

    const-string v1, "AGX"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/ToneMapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ToneMapper$Type;->AGX:LJAVARuntime/ToneMapper$Type;

    invoke-static {}, LJAVARuntime/ToneMapper$Type;->$values()[LJAVARuntime/ToneMapper$Type;

    move-result-object v0

    sput-object v0, LJAVARuntime/ToneMapper$Type;->$VALUES:[LJAVARuntime/ToneMapper$Type;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/ToneMapper$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/ToneMapper$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/ToneMapper$Type;

    return-object p0
.end method

.method public static values()[LJAVARuntime/ToneMapper$Type;
    .locals 1

    sget-object v0, LJAVARuntime/ToneMapper$Type;->$VALUES:[LJAVARuntime/ToneMapper$Type;

    invoke-virtual {v0}, [LJAVARuntime/ToneMapper$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/ToneMapper$Type;

    return-object v0
.end method
