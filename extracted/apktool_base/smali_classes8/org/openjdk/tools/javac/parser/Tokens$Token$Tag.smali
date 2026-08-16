.class final enum Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/Tokens$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

.field public static final enum DEFAULT:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

.field public static final enum NAMED:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

.field public static final enum NUMERIC:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

.field public static final enum STRING:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->DEFAULT:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    new-instance v1, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    const-string v2, "NAMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->NAMED:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    new-instance v2, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    const-string v3, "STRING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->STRING:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    new-instance v3, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    const-string v4, "NUMERIC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->NUMERIC:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->$VALUES:[Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->$VALUES:[Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    return-object v0
.end method
