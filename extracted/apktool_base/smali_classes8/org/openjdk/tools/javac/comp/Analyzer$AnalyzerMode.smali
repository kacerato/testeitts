.class final enum Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Analyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalyzerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

.field public static final enum DIAMOND:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

.field public static final enum LAMBDA:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

.field public static final enum METHOD:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;


# instance fields
.field final opt:Ljava/lang/String;

.field final sourceFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lorg/openjdk/tools/javac/code/Source;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    new-instance v1, Lorg/openjdk/tools/javac/comp/d;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/d;-><init>()V

    const-string v2, "DIAMOND"

    const/4 v3, 0x0

    const-string v4, "diamond"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Predicate;)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->DIAMOND:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    new-instance v2, Lorg/openjdk/tools/javac/comp/e;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/comp/e;-><init>()V

    const-string v3, "LAMBDA"

    const/4 v4, 0x1

    const-string v5, "lambda"

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Predicate;)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->LAMBDA:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    new-instance v3, Lorg/openjdk/tools/javac/comp/f;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/comp/f;-><init>()V

    const-string v4, "METHOD"

    const/4 v5, 0x2

    const-string v6, "method"

    invoke-direct {v2, v4, v5, v6, v3}, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Predicate;)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->METHOD:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->$VALUES:[Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lorg/openjdk/tools/javac/code/Source;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->opt:Ljava/lang/String;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->sourceFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public static getAnalyzerModes(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Source;)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/code/Source;",
            ")",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/List;->from([Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "all"

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    :cond_1
    invoke-static {}, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->values()[Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    iget-object v5, v4, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->opt:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->opt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->sourceFilter:Ljava/util/function/Predicate;

    invoke-interface {v5, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->$VALUES:[Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    return-object v0
.end method
