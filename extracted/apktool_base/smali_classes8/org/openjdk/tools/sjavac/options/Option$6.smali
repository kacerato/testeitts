.class final enum Lorg/openjdk/tools/sjavac/options/Option$6;
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
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/sjavac/options/Option;->getFileListArg(Lorg/openjdk/tools/sjavac/options/ArgumentIterator;Lorg/openjdk/tools/sjavac/options/OptionHelper;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->classpath(Ljava/util/List;)V

    :cond_0
    return-void
.end method
