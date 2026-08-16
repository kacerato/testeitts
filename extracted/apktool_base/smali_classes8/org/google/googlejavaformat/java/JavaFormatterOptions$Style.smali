.class public final enum Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavaFormatterOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

.field public static final enum AOSP:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

.field public static final enum GOOGLE:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;


# instance fields
.field private final indentationMultiplier:I


# direct methods
.method private static synthetic $values()[Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;
    .locals 2

    sget-object v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->GOOGLE:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->AOSP:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    filled-new-array {v0, v1}, [Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    const-string v1, "GOOGLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->GOOGLE:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    new-instance v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    const-string v1, "AOSP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->AOSP:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    invoke-static {}, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->$values()[Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->$VALUES:[Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "indentationMultiplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->indentationMultiplier:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    return-object p0
.end method

.method public static values()[Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->$VALUES:[Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    invoke-virtual {v0}, [Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    return-object v0
.end method


# virtual methods
.method public indentationMultiplier()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->indentationMultiplier:I

    return v0
.end method
