.class final Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/file/JavacFileManager$Container;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/JavacFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JRTImageContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/file/JavacFileManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/JavacFileManager;Lorg/openjdk/tools/javac/file/JavacFileManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;-><init>(Lorg/openjdk/tools/javac/file/JavacFileManager;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getFileObject(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->access$200(Lorg/openjdk/tools/javac/file/JavacFileManager;)Lorg/openjdk/tools/javac/file/JRTIndex;

    move-result-object p1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;->dirname()Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/file/JRTIndex;->getEntry(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;)Lorg/openjdk/tools/javac/file/JRTIndex$Entry;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/file/JavacFileManager;->symbolFileEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;->ctSym:Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->hidden:Z

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;->files:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;->basename()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-static {p2, p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->forJRTPath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public list(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject$Kind;",
            ">;Z",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->access$200(Lorg/openjdk/tools/javac/file/JavacFileManager;)Lorg/openjdk/tools/javac/file/JRTIndex;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/file/JRTIndex;->getEntry(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;)Lorg/openjdk/tools/javac/file/JRTIndex$Entry;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/file/JavacFileManager;->symbolFileEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;->ctSym:Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    iget-object v0, p2, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;->files:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getKind(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-static {v2, v1}, Lorg/openjdk/tools/javac/file/PathFileObject;->forJRTPath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object v1

    invoke-virtual {p5, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    iget-object p2, p2, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;->subdirs:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;->list(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLorg/openjdk/tools/javac/util/ListBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object p3, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    iget-object p3, p3, Lorg/openjdk/tools/javac/file/BaseFileManager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "error.reading.file"

    invoke-virtual {p3, p2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
