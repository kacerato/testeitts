.class final Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;
.super Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReferenceTranslationContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;",
        ">;"
    }
.end annotation


# instance fields
.field final isSuper:Z

.field final sigPolySym:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 7

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->SUPER:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->hasKind(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->isSuper:Z

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->isSignaturePolymorphic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->bridgedRefSig()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->sigPolySym:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public bridgedRefSig()Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public generatedRefSig()Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public interfaceParameterIsIntersectionType()Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->getDescriptorType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/lang/model/type/TypeKind;->TYPEVAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/lang/model/type/TypeKind;->INTERSECTION:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isArrayOp()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivateInOtherClass()Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProtectedInSuperClassOfEnclosingClassInOtherPackage()Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSignaturePolymorphic()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->isSignaturePolymorphic(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final needsConversionToLambda()Z
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->interfaceParameterIsIntersectionType()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->isSuper:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->needsVarArgsConversion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->isArrayOp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->isPrivateInOtherClass()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->isProtectedInSuperClassOfEnclosingClassInOtherPackage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->receiverAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ARRAY_CTOR:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    if-eq v1, v2, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isInner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public needsVarArgsConversion()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public receiverAccessible()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->ownerAccessible:Z

    return v0
.end method

.method public referenceKind()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$3800(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/code/Symbol;)I

    move-result v0

    return v0
.end method
