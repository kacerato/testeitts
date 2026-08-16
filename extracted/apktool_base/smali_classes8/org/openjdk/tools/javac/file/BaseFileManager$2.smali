.class Lorg/openjdk/tools/javac/file/BaseFileManager$2;
.super Lorg/openjdk/tools/javac/main/OptionHelper$GrumpyHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/file/BaseFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Lorg/openjdk/tools/javac/util/Log;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$2;->this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/main/OptionHelper$GrumpyHelper;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$2;->this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/BaseFileManager;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleFileManagerOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$2;->this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$2;->this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/BaseFileManager;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$2;->this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/BaseFileManager;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->remove(Ljava/lang/String;)V

    return-void
.end method
