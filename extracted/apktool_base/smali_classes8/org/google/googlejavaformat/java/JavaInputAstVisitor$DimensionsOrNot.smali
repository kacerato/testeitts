.class final enum Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DimensionsOrNot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

.field public static final enum NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

.field public static final enum YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;


# direct methods
.method private static synthetic $values()[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;
    .locals 2

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    filled-new-array {v0, v1}, [Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    const-string v1, "YES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    new-instance v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    const-string v1, "NO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    invoke-static {}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->$values()[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->$VALUES:[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

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

.method public static valueOf(Ljava/lang/String;)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    return-object p0
.end method

.method public static values()[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->$VALUES:[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    invoke-virtual {v0}, [Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    return-object v0
.end method


# virtual methods
.method public isYes()Z
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
