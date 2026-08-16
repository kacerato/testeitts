.class final enum Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

.field public static final enum BLOCK:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

.field public static final enum INLINE:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    const-string v1, "INLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;->INLINE:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    new-instance v1, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    const-string v2, "BLOCK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;->BLOCK:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;->$VALUES:[Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;->$VALUES:[Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    return-object v0
.end method
