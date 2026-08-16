.class final enum Lorg/openjdk/tools/javac/main/Option$OptionGroup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/main/Option$OptionGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/main/Option$OptionGroup;

.field public static final enum BASIC:Lorg/openjdk/tools/javac/main/Option$OptionGroup;

.field public static final enum FILEMANAGER:Lorg/openjdk/tools/javac/main/Option$OptionGroup;

.field public static final enum INFO:Lorg/openjdk/tools/javac/main/Option$OptionGroup;

.field public static final enum OPERAND:Lorg/openjdk/tools/javac/main/Option$OptionGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    const-string v1, "BASIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/main/Option$OptionGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/main/Option$OptionGroup;->BASIC:Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    new-instance v1, Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    const-string v2, "FILEMANAGER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/main/Option$OptionGroup;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/main/Option$OptionGroup;->FILEMANAGER:Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    new-instance v2, Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/main/Option$OptionGroup;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/main/Option$OptionGroup;->INFO:Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    new-instance v3, Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    const-string v4, "OPERAND"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/main/Option$OptionGroup;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/main/Option$OptionGroup;->OPERAND:Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/main/Option$OptionGroup;->$VALUES:[Lorg/openjdk/tools/javac/main/Option$OptionGroup;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Option$OptionGroup;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/main/Option$OptionGroup;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/Option$OptionGroup;->$VALUES:[Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/main/Option$OptionGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/main/Option$OptionGroup;

    return-object v0
.end method
