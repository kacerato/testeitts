.class Lorg/openjdk/tools/javac/main/Arguments$1;
.super Lorg/openjdk/tools/javac/main/OptionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/Arguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/main/Arguments;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/main/Arguments;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments$1;->this$0:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/main/OptionHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public addClassName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments$1;->this$0:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/Arguments;->access$500(Lorg/openjdk/tools/javac/main/Arguments;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFile(Ljava/nio/file/Path;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments$1;->this$0:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/Arguments;->access$400(Lorg/openjdk/tools/javac/main/Arguments;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments$1;->this$0:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/Arguments;->access$000(Lorg/openjdk/tools/javac/main/Arguments;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLog()Lorg/openjdk/tools/javac/util/Log;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments$1;->this$0:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/Arguments;->access$200(Lorg/openjdk/tools/javac/main/Arguments;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    return-object v0
.end method

.method public getOwnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments$1;->this$0:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/Arguments;->access$300(Lorg/openjdk/tools/javac/main/Arguments;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleFileManagerOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments$1;->this$0:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/Arguments;->access$000(Lorg/openjdk/tools/javac/main/Arguments;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/Options;->put(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments$1;->this$0:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/Arguments;->access$100(Lorg/openjdk/tools/javac/main/Arguments;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments$1;->this$0:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/Arguments;->access$000(Lorg/openjdk/tools/javac/main/Arguments;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments$1;->this$0:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/Arguments;->access$000(Lorg/openjdk/tools/javac/main/Arguments;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->remove(Ljava/lang/String;)V

    return-void
.end method
