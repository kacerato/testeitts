.class Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;
.super Lorg/openjdk/tools/javac/file/Locations$LocationHandler;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileManager$Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleLocationHandler"
.end annotation


# instance fields
.field private final moduleName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final output:Z

.field private final parent:Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

.field searchPath:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/file/Locations$LocationHandler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->parent:Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    iput-object p3, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->name:Ljava/lang/String;

    iput-object p4, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->moduleName:Ljava/lang/String;

    iput-object p5, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->searchPath:Ljava/util/Collection;

    iput-boolean p6, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->output:Z

    return-void
.end method

.method public static synthetic access$900(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->moduleName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/nio/file/Path;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->searchPath:Ljava/util/Collection;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/file/Locations;->access$800(Lorg/openjdk/tools/javac/file/Locations;Ljava/util/Collection;Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPaths()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->searchPath:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public inferModuleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public isOutputLocation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->output:Z

    return v0
.end method

.method public setPaths(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->parent:Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->setPathsForModule(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method public setPathsForModule(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not supported for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->name:Ljava/lang/String;

    return-object v0
.end method
