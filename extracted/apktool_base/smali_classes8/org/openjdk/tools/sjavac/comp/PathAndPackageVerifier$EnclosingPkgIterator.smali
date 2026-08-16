.class Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$EnclosingPkgIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnclosingPkgIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field next:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$EnclosingPkgIterator;->next:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$EnclosingPkgIterator;->next:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$EnclosingPkgIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$EnclosingPkgIterator;->next:Lorg/openjdk/tools/javac/tree/JCTree;

    instance-of v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$EnclosingPkgIterator;->next:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    .line 5
    :cond_0
    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    .line 6
    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    .line 7
    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$EnclosingPkgIterator;->next:Lorg/openjdk/tools/javac/tree/JCTree;

    move-object v0, v1

    .line 8
    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
