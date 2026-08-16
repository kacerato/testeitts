.class public Lorg/openjdk/tools/javac/api/JavacTrees$Copier;
.super Lorg/openjdk/tools/javac/tree/TreeCopier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/JavacTrees;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Copier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/tree/TreeCopier<",
        "Lorg/openjdk/tools/javac/tree/JCTree;",
        ">;"
    }
.end annotation


# instance fields
.field leafCopy:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeCopier;-><init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;->leafCopy:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    if-ne p1, p2, :cond_0

    .line 3
    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;->leafCopy:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_0
    return-object v0
.end method
