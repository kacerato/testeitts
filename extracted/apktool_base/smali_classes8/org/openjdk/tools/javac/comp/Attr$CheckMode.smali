.class enum Lorg/openjdk/tools/javac/comp/Attr$CheckMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "CheckMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Attr$CheckMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

.field public static final enum NORMAL:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

.field public static final enum NO_INFERENCE_HOOK:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

.field public static final enum NO_TREE_UPDATE:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NORMAL:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Attr$CheckMode$1;

    const-string v3, "NO_TREE_UPDATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/openjdk/tools/javac/comp/Attr$CheckMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NO_TREE_UPDATE:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Attr$CheckMode$2;

    const-string v5, "NO_INFERENCE_HOOK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/openjdk/tools/javac/comp/Attr$CheckMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NO_INFERENCE_HOOK:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->$VALUES:[Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/comp/Attr$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Attr$CheckMode;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Attr$CheckMode;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->$VALUES:[Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    return-object v0
.end method


# virtual methods
.method public installPostInferenceHook()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateTreeType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
