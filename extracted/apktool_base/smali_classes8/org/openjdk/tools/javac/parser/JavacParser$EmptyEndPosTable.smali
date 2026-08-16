.class public Lorg/openjdk/tools/javac/parser/JavacParser$EmptyEndPosTable;
.super Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/JavacParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyEndPosTable"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/JavacParser;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;-><init>(Lorg/openjdk/tools/javac/parser/JavacParser;)V

    return-void
.end method


# virtual methods
.method public getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public replaceTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V
    .locals 0

    return-void
.end method

.method public to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method
