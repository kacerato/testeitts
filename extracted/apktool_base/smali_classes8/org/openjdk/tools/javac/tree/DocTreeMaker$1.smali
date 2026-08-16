.class Lorg/openjdk/tools/javac/tree/DocTreeMaker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/parser/Tokens$Comment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newDocCommentTree(Ljava/util/List;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/tree/DocTreeMaker;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/DocTreeMaker;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker$1;->this$0:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSourcePos(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getStyle()Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeprecated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
