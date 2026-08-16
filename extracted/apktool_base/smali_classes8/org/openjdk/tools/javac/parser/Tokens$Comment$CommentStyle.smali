.class public final enum Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/Tokens$Comment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommentStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

.field public static final enum BLOCK:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

.field public static final enum JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

.field public static final enum LINE:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    const-string v1, "LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->LINE:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    new-instance v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    const-string v2, "BLOCK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->BLOCK:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    new-instance v2, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    const-string v3, "JAVADOC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->$VALUES:[Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->$VALUES:[Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    return-object v0
.end method
