.class final enum Lorg/openjdk/tools/javac/main/Option$HiddenGroup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HiddenGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/main/Option$HiddenGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

.field public static final enum DEBUG:Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

.field public static final enum DIAGS:Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

.field public static final enum SHOULDSTOP:Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

.field static final skipSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    const/4 v1, 0x0

    const-string v2, "diags"

    const-string v3, "DIAGS"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;->DIAGS:Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    new-instance v1, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    const/4 v2, 0x1

    const-string v3, "debug"

    const-string v4, "DEBUG"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;->DEBUG:Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    new-instance v2, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    const/4 v3, 0x2

    const-string v4, "should-stop"

    const-string v5, "SHOULDSTOP"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;->SHOULDSTOP:Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;->$VALUES:[Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "--debug:"

    const-string v2, "--should-stop:"

    const-string v3, "--diags:"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;->skipSet:Ljava/util/Set;

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

    iput-object p3, p0, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;->text:Ljava/lang/String;

    return-void
.end method

.method public static skip(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;->skipSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Option$HiddenGroup;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/main/Option$HiddenGroup;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;->$VALUES:[Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/main/Option$HiddenGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/main/Option$HiddenGroup;

    return-object v0
.end method


# virtual methods
.method public process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/main/Option$InvalidValueException;
        }
    .end annotation

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/openjdk/tools/javac/main/Option$HiddenGroup;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->XD:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v3, p1, v2, v2}, Lorg/openjdk/tools/javac/main/Option;->process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
