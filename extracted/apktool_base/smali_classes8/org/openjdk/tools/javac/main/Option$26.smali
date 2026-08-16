.class final enum Lorg/openjdk/tools/javac/main/Option$26;
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
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/openjdk/tools/javac/main/Option;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;Lorg/openjdk/tools/javac/main/Option$1;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->PLUGIN:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/main/OptionHelper;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/main/OptionHelper;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
