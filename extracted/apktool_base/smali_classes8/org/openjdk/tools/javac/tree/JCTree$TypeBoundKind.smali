.class public Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;
.super Lorg/openjdk/tools/javac/tree/JCTree;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeBoundKind"
.end annotation


# instance fields
.field public kind:Lorg/openjdk/tools/javac/code/BoundKind;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/BoundKind;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

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
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "TypeBoundKind is not part of a public API"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTypeBoundKind(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;)V

    return-void
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TypeBoundKind is not part of a public API"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEBOUNDKIND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method
