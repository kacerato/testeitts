.class Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field final comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

.field tree:Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    return-void
.end method
