.class final enum Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/javadoc/JavadocWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestedWhitespace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

.field public static final enum BLANK_LINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

.field public static final enum NEWLINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

.field public static final enum NONE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

.field public static final enum WHITESPACE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;


# direct methods
.method private static synthetic $values()[Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;
    .locals 4

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    sget-object v1, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->WHITESPACE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    sget-object v2, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NEWLINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    sget-object v3, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->BLANK_LINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    filled-new-array {v0, v1, v2, v3}, [Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    const-string v1, "WHITESPACE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->WHITESPACE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    const-string v1, "NEWLINE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NEWLINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    new-instance v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    const-string v1, "BLANK_LINE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->BLANK_LINE:Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-static {}, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->$values()[Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->$VALUES:[Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

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

.method public static valueOf(Ljava/lang/String;)Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    return-object p0
.end method

.method public static values()[Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->$VALUES:[Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-virtual {v0}, [Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    return-object v0
.end method
