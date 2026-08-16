.class public Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/MemberReferenceTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCMemberReference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;
    }
.end annotation


# instance fields
.field public expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

.field public mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

.field public name:Lorg/openjdk/tools/javac/util/Name;

.field private overloadKind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

.field public ownerAccessible:Z

.field public refPolyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

.field public referentType:Lorg/openjdk/tools/javac/code/Type;

.field public sym:Lorg/openjdk/tools/javac/code/Symbol;

.field public typeargs:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public varargsElement:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p4, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V

    return-void
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->MEMBER_REFERENCE:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    return-object v0
.end method

.method public bridge synthetic getName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    return-object v0
.end method

.method public getOverloadKind()Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->overloadKind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    return-object v0
.end method

.method public bridge synthetic getQualifierExpression()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->REFERENCE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public hasKind(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setOverloadKind(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->overloadKind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    return-void
.end method
