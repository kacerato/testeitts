.class Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;
.super Lorg/eclipse/jdt/internal/core/Annotation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/LocalVariable;->getAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalVarAnnotation"
.end annotation


# instance fields
.field memberValuePairs:[Lorg/eclipse/jdt/core/IMemberValuePair;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/LocalVariable;

.field private final synthetic val$sourceEnd:I

.field private final synthetic val$sourceStart:I

.field private final synthetic val$typeEnd:I

.field private final synthetic val$typeStart:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/LocalVariable;Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIII)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->this$0:Lorg/eclipse/jdt/internal/core/LocalVariable;

    iput p4, p0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->val$typeStart:I

    iput p5, p0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->val$typeEnd:I

    iput p6, p0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->val$sourceStart:I

    iput p7, p0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->val$sourceEnd:I

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/Annotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->exists()Z

    move-result v0

    return v0
.end method

.method public getMemberValuePairs()[Lorg/eclipse/jdt/core/IMemberValuePair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/core/IMemberValuePair;

    return-object v0
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/core/SourceRange;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->val$typeStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->val$typeEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v0
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/core/SourceRange;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->val$sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/LocalVariable$1LocalVarAnnotation;->val$sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v0
.end method
