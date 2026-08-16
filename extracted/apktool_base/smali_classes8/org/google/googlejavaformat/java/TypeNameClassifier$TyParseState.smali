.class abstract enum Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/TypeNameClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "TyParseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

.field public static final enum AMBIGUOUS:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

.field public static final enum FIRST_STATIC_MEMBER:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

.field public static final enum REJECT:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

.field public static final enum START:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

.field public static final enum TYPE:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;


# instance fields
.field private final isSingleUnit:Z


# direct methods
.method private static synthetic $values()[Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
    .locals 5

    sget-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->START:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    sget-object v1, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->TYPE:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    sget-object v2, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->FIRST_STATIC_MEMBER:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    sget-object v3, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->REJECT:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    sget-object v4, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->AMBIGUOUS:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$1;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->START:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    new-instance v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$2;

    const-string v1, "TYPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->TYPE:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    new-instance v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$3;

    const-string v1, "FIRST_STATIC_MEMBER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->FIRST_STATIC_MEMBER:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    new-instance v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$4;

    const-string v1, "REJECT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->REJECT:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    new-instance v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$5;

    const-string v1, "AMBIGUOUS"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->AMBIGUOUS:Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    invoke-static {}, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->$values()[Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->$VALUES:[Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
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
            "isSingleUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->isSingleUnit:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZLorg/google/googlejavaformat/java/TypeNameClassifier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-object p0
.end method

.method public static values()[Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->$VALUES:[Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    invoke-virtual {v0}, [Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-object v0
.end method


# virtual methods
.method public isSingleUnit()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->isSingleUnit:Z

    return v0
.end method

.method public abstract next(Lorg/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;)Lorg/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation
.end method
