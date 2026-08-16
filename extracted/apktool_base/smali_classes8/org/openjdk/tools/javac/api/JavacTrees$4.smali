.class Lorg/openjdk/tools/javac/api/JavacTrees$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/parser/Tokens$Comment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/api/JavacTrees;->getDocCommentTree(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/source/doctree/DocCommentTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

.field final synthetic val$fileObject:Lorg/openjdk/javax/tools/FileObject;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/openjdk/javax/tools/FileObject;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$4;->this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

    iput-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees$4;->val$fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$4;->offset:I

    return-void
.end method


# virtual methods
.method public getSourcePos(I)I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees$4;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getStyle()Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$4;->val$fileObject:Lorg/openjdk/javax/tools/FileObject;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/openjdk/javax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v3, "(?is).*?<body\\b[^>]*>(.*)</body\\b.*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    iput v3, p0, Lorg/openjdk/tools/javac/api/JavacTrees$4;->offset:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public isDeprecated()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
