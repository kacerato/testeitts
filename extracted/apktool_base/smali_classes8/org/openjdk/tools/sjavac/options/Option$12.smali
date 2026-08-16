.class final enum Lorg/openjdk/tools/sjavac/options/Option$12;
.super Lorg/openjdk/tools/sjavac/options/Option;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/sjavac/options/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/sjavac/options/Option;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/sjavac/options/Option$1;)V

    return-void
.end method


# virtual methods
.method public processMatching(Lorg/openjdk/tools/sjavac/options/ArgumentIterator;Lorg/openjdk/tools/sjavac/options/OptionHelper;)V
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be followed by a resource type"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->reportError(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->next()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\.[a-zA-Z_][a-zA-Z0-9_]*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The string \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not a valid resource type."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->reportError(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/openjdk/tools/sjavac/CopyFile;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/CopyFile;-><init>()V

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->addTransformer(Ljava/lang/String;Lorg/openjdk/tools/sjavac/Transformer;)V

    return-void
.end method
