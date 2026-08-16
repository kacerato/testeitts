.class enum Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "MethodResolutionPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

.field public static final enum BASIC:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

.field public static final enum BOX:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

.field public static final enum VARARITY:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;


# instance fields
.field final isBoxingRequired:Z

.field final isVarargsRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    const-string v1, "BASIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->BASIC:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    const-string v3, "BOX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->BOX:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase$1;

    const-string v5, "VARARITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4, v4}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase$1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->VARARITY:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->$VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired:Z

    .line 4
    iput-boolean p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZZLorg/openjdk/tools/javac/comp/Resolve$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->$VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    return-object v0
.end method


# virtual methods
.method public isBoxingRequired()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired:Z

    return v0
.end method

.method public isVarargsRequired()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired:Z

    return v0
.end method

.method public mergeResults(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    return-object p2
.end method
