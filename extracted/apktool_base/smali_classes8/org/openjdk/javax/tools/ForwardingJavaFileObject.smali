.class public Lorg/openjdk/javax/tools/ForwardingJavaFileObject;
.super Lorg/openjdk/javax/tools/ForwardingFileObject;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lorg/openjdk/javax/tools/JavaFileObject;",
        ">",
        "Lorg/openjdk/javax/tools/ForwardingFileObject<",
        "TF;>;",
        "Lorg/openjdk/javax/tools/JavaFileObject;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/tools/JavaFileObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/javax/tools/ForwardingFileObject;-><init>(Lorg/openjdk/javax/tools/FileObject;)V

    return-void
.end method


# virtual methods
.method public getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;

    move-result-object v0

    return-object v0
.end method

.method public isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p1

    return p1
.end method
