.class final enum Lorg/openjdk/tools/javac/main/Option$21;
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
.method public process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/main/Option$InvalidValueException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/main/OptionHelper;->getLog()Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/main/Option$OptionKind;->EXTENDED:Lorg/openjdk/tools/javac/main/Option$OptionKind;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/main/Option;->access$300(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/main/Option$OptionKind;)V

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDOUT:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->printNewline(Lorg/openjdk/tools/javac/util/Log$WriterKind;)V

    sget-object v2, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "msg.usage.nonstandard.footer"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$WriterKind;Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/main/Option;->process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;)V

    return-void
.end method
