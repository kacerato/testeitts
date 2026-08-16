.class public final enum LJAVARuntime/BlendingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Utils"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/BlendingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/BlendingMode;

.field public static final enum ADD:LJAVARuntime/BlendingMode;

.field public static final enum FADE:LJAVARuntime/BlendingMode;

.field public static final enum MASKED:LJAVARuntime/BlendingMode;

.field public static final enum MULTIPLY:LJAVARuntime/BlendingMode;

.field public static final enum OPAQUE:LJAVARuntime/BlendingMode;

.field public static final enum TRANSPARENT:LJAVARuntime/BlendingMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/BlendingMode;
    .locals 6

    sget-object v0, LJAVARuntime/BlendingMode;->OPAQUE:LJAVARuntime/BlendingMode;

    sget-object v1, LJAVARuntime/BlendingMode;->TRANSPARENT:LJAVARuntime/BlendingMode;

    sget-object v2, LJAVARuntime/BlendingMode;->ADD:LJAVARuntime/BlendingMode;

    sget-object v3, LJAVARuntime/BlendingMode;->MASKED:LJAVARuntime/BlendingMode;

    sget-object v4, LJAVARuntime/BlendingMode;->FADE:LJAVARuntime/BlendingMode;

    sget-object v5, LJAVARuntime/BlendingMode;->MULTIPLY:LJAVARuntime/BlendingMode;

    filled-new-array/range {v0 .. v5}, [LJAVARuntime/BlendingMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/BlendingMode;

    const-string v1, "OPAQUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/BlendingMode;->OPAQUE:LJAVARuntime/BlendingMode;

    new-instance v0, LJAVARuntime/BlendingMode;

    const-string v1, "TRANSPARENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/BlendingMode;->TRANSPARENT:LJAVARuntime/BlendingMode;

    new-instance v0, LJAVARuntime/BlendingMode;

    const-string v1, "ADD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/BlendingMode;->ADD:LJAVARuntime/BlendingMode;

    new-instance v0, LJAVARuntime/BlendingMode;

    const-string v1, "MASKED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/BlendingMode;->MASKED:LJAVARuntime/BlendingMode;

    new-instance v0, LJAVARuntime/BlendingMode;

    const-string v1, "FADE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/BlendingMode;->FADE:LJAVARuntime/BlendingMode;

    new-instance v0, LJAVARuntime/BlendingMode;

    const-string v1, "MULTIPLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/BlendingMode;->MULTIPLY:LJAVARuntime/BlendingMode;

    invoke-static {}, LJAVARuntime/BlendingMode;->$values()[LJAVARuntime/BlendingMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/BlendingMode;->$VALUES:[LJAVARuntime/BlendingMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/BlendingMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/BlendingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/BlendingMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/BlendingMode;
    .locals 1

    sget-object v0, LJAVARuntime/BlendingMode;->$VALUES:[LJAVARuntime/BlendingMode;

    invoke-virtual {v0}, [LJAVARuntime/BlendingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/BlendingMode;

    return-object v0
.end method
