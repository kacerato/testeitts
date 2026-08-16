.class final enum Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DependenciesMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

.field public static final enum CLASS:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

.field public static final enum REDUNDANT:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

.field public static final enum SOURCE:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;


# instance fields
.field final opt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    const/4 v1, 0x0

    const-string v2, "source"

    const-string v3, "SOURCE"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->SOURCE:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    new-instance v1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    const/4 v2, 0x1

    const-string v3, "class"

    const-string v4, "CLASS"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->CLASS:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    new-instance v2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    const/4 v3, 0x2

    const-string v4, "redundant"

    const-string v5, "REDUNDANT"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->REDUNDANT:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->$VALUES:[Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->opt:Ljava/lang/String;

    return-void
.end method

.method public static getDependenciesModes([Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "all"

    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    :cond_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->values()[Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    iget-object v5, v4, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->opt:Ljava/lang/String;

    invoke-interface {p0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->opt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->$VALUES:[Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    return-object v0
.end method
