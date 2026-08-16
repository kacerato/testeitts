.class final enum Lorg/openjdk/tools/javac/main/Option$30;
.super Lorg/openjdk/tools/javac/main/Option;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/main/Option;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;Lorg/openjdk/tools/javac/main/Option$1;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/main/Option$30;->process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 p2, 0x3d

    .line 2
    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 5
    :goto_1
    invoke-virtual {p1, v0, p3}, Lorg/openjdk/tools/javac/main/OptionHelper;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
