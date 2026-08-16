.class public Lorg/openjdk/tools/javac/tree/DCTree$DCReference;
.super Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/ReferenceTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree<",
        "Lorg/openjdk/tools/javac/tree/DCTree$DCReference;",
        ">;",
        "Lorg/openjdk/source/doctree/ReferenceTree;"
    }
.end annotation


# instance fields
.field public final memberName:Lorg/openjdk/javax/lang/model/element/Name;

.field public final paramTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field public final qualifierExpression:Lorg/openjdk/tools/javac/tree/JCTree;

.field public final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->signature:Ljava/lang/String;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->qualifierExpression:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->memberName:Lorg/openjdk/javax/lang/model/element/Name;

    iput-object p4, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->paramTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/doctree/DocTreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/doctree/DocTreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->REFERENCE:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->signature:Ljava/lang/String;

    return-object v0
.end method
