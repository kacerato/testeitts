.class Lorg/google/googlejavaformat/java/Formatter$1;
.super Lorg/openjdk/javax/tools/SimpleJavaFileObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/google/googlejavaformat/java/Formatter;->format(Lorg/google/googlejavaformat/java/JavaInput;Lorg/google/googlejavaformat/java/JavaOutput;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$javaInput:Lorg/google/googlejavaformat/java/JavaInput;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/google/googlejavaformat/java/JavaInput;)V
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

    iput-object p3, p0, Lorg/google/googlejavaformat/java/Formatter$1;->val$javaInput:Lorg/google/googlejavaformat/java/JavaInput;

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

    iget-object p1, p0, Lorg/google/googlejavaformat/java/Formatter$1;->val$javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
