.class public Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;
.super Lorg/openjdk/javax/tools/ForwardingJavaFileObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lorg/openjdk/javax/tools/JavaFileObject;",
        ">",
        "Lorg/openjdk/javax/tools/ForwardingJavaFileObject<",
        "TF;>;"
    }
.end annotation

.annotation runtime Lorg/openjdk/tools/javac/api/ClientCodeWrapper$Trusted;
.end annotation


# instance fields
.field private final loc:Lorg/openjdk/javax/tools/JavaFileManager$Location;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/javax/tools/ForwardingJavaFileObject;-><init>(Lorg/openjdk/javax/tools/JavaFileObject;)V

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;->loc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;->loc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    iget-object v2, p1, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;->loc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p1, p1, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDelegate()Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    return-object v0
.end method

.method public getLocation()Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;->loc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;->loc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v1, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavaFileObjectWithLocation[loc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;->loc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
