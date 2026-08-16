.class Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;
.super Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputFileObject;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilerInputJavaFileObject"
.end annotation


# instance fields
.field private final javaFileObject:Lorg/openjdk/javax/tools/JavaFileObject;

.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/javax/tools/JavaFileObject;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputFileObject;-><init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/javax/tools/FileObject;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->javaFileObject:Lorg/openjdk/javax/tools/JavaFileObject;

    return-void
.end method


# virtual methods
.method public getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->javaFileObject:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->javaFileObject:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->javaFileObject:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;

    move-result-object v0

    return-object v0
.end method

.method public isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->javaFileObject:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p1

    return p1
.end method
