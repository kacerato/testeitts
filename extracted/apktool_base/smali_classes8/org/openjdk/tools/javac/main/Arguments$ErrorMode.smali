.class final enum Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/Arguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

.field public static final enum ILLEGAL_ARGUMENT:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

.field public static final enum ILLEGAL_STATE:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

.field public static final enum LOG:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    const-string v1, "ILLEGAL_ARGUMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;->ILLEGAL_ARGUMENT:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    new-instance v1, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    const-string v2, "ILLEGAL_STATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;->ILLEGAL_STATE:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    new-instance v2, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    const-string v3, "LOG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;->LOG:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;->$VALUES:[Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;->$VALUES:[Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    return-object v0
.end method
