.class final enum Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type$UndetVar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

.field public static final enum CAPTURED:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

.field public static final enum NORMAL:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

.field public static final enum THROWS:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->NORMAL:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    new-instance v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    const-string v2, "CAPTURED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->CAPTURED:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    new-instance v2, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    const-string v3, "THROWS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->THROWS:Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->$VALUES:[Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->$VALUES:[Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Type$UndetVar$Kind;

    return-object v0
.end method
