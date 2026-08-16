.class Lorg/openjdk/tools/javac/api/JavacTrees$HtmlFileObject;
.super Lorg/openjdk/javax/tools/ForwardingFileObject;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/JavacTrees;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtmlFileObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/javax/tools/ForwardingFileObject<",
        "Lorg/openjdk/javax/tools/FileObject;",
        ">;",
        "Lorg/openjdk/javax/tools/JavaFileObject;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/tools/FileObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/javax/tools/ForwardingFileObject;-><init>(Lorg/openjdk/javax/tools/FileObject;)V

    return-void
.end method


# virtual methods
.method public getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getKind(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
