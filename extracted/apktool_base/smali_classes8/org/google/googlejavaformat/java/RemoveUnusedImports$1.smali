.class Lorg/google/googlejavaformat/java/RemoveUnusedImports$1;
.super Lorg/openjdk/javax/tools/SimpleJavaFileObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/google/googlejavaformat/java/RemoveUnusedImports;->parse(Lorg/openjdk/tools/javac/util/Context;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$javaInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x1010
        }
        names = {
            "arg0",
            "arg1",
            "val$javaInput"
        }
    .end annotation

    iput-object p3, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$1;->val$javaInput:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/javax/tools/SimpleJavaFileObject;-><init>(Ljava/net/URI;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)V

    return-void
.end method


# virtual methods
.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreEncodingErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$1;->val$javaInput:Ljava/lang/String;

    return-object p1
.end method
