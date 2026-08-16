.class final enum Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComparisonKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

.field public static final enum INVALID:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

.field public static final enum NUMERIC_OR_BOOLEAN:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

.field public static final enum REFERENCE:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    const-string v1, "NUMERIC_OR_BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->NUMERIC_OR_BOOLEAN:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    const-string v2, "REFERENCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->REFERENCE:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    const-string v3, "INVALID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->INVALID:Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->$VALUES:[Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->$VALUES:[Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;

    return-object v0
.end method
