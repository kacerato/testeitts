.class public interface abstract Lorg/openjdk/tools/javac/tree/DocCommentTable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getComment(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;
.end method

.method public abstract getCommentText(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;
.end method

.method public abstract getCommentTree(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;
.end method

.method public abstract hasComment(Lorg/openjdk/tools/javac/tree/JCTree;)Z
.end method

.method public abstract putComment(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V
.end method
