.class public Lorg/openjdk/tools/sjavac/comp/FileObjectWithLocation;
.super Lorg/openjdk/javax/tools/ForwardingFileObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lorg/openjdk/javax/tools/FileObject;",
        ">",
        "Lorg/openjdk/javax/tools/ForwardingFileObject<",
        "TF;>;"
    }
.end annotation

.annotation runtime Lorg/openjdk/tools/javac/api/ClientCodeWrapper$Trusted;
.end annotation


# instance fields
.field private final loc:Lorg/openjdk/javax/tools/JavaFileManager$Location;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/javax/tools/ForwardingFileObject;-><init>(Lorg/openjdk/javax/tools/FileObject;)V

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/comp/FileObjectWithLocation;->loc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/openjdk/javax/tools/FileObject;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    return-object v0
.end method

.method public getLocation()Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/FileObjectWithLocation;->loc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileObjectWithLocation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
