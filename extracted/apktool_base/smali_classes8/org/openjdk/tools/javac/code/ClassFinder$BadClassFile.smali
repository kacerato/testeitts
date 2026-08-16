.class public Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;
.super Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/ClassFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadClassFile"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V
    .locals 0

    invoke-static {p2, p3, p4}, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;->createBadClassFileDiagnostic(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method private static createBadClassFileDiagnostic(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 2

    invoke-interface {p0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne v0, v1, :cond_0

    const-string v0, "bad.source.file.header"

    goto :goto_0

    :cond_0
    const-string v0, "bad.class.file.header"

    :goto_0
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p0

    return-object p0
.end method
