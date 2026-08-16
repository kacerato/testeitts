.class public Lorg/openjdk/tools/javac/tree/JCTree$JCImport;
.super Lorg/openjdk/tools/javac/tree/JCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/ImportTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCImport"
.end annotation


# instance fields
.field public importScope:Lorg/openjdk/tools/javac/code/Scope;

.field public qualid:Lorg/openjdk/tools/javac/tree/JCTree;

.field public staticImport:Z


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/tree/TreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitImport(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)V

    return-void
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->IMPORT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getQualifiedIdentifier()Lorg/openjdk/source/tree/Tree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->getQualifiedIdentifier()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedIdentifier()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IMPORT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public isStatic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    return v0
.end method
