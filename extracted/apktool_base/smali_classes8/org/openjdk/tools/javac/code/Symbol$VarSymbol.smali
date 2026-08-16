.class public Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
.super Lorg/openjdk/tools/javac/code/Symbol;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/VariableElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarSymbol"
.end annotation


# instance fields
.field public adr:I

.field private data:Ljava/lang/Object;

.field public pos:I


# direct methods
.method public constructor <init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 7

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Symbol;-><init>(Lorg/openjdk/tools/javac/code/Kinds$Kind;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    iput p1, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->lambda$setLazyConstValue$0(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setLazyConstValue$0(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2, p3, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribLazyConstantValue(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/ElementVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/ElementVisitor;->visitVariable(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Symbol$Visitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitVarSymbol(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asMemberOf(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-wide v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2, p1, p0}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v6
.end method

.method public bridge synthetic asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 8

    .line 2
    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol$1;

    iget-wide v2, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol$1;-><init>(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    iput p1, v7, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    .line 4
    iget p1, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    iput p1, v7, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 5
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    iput-object p1, v7, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    return-object v7
.end method

.method public bridge synthetic clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConstValue()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/concurrent/Callable;

    iput-object v2, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public getConstantValue()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Constants;->decode(Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getEnclosingElement()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;
    .locals 6

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x200000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->isExceptionParameter()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0

    :cond_0
    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0

    :cond_1
    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM_CONSTANT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_5

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->isResourceVariable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0

    :cond_4
    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0

    :cond_5
    :goto_0
    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->FIELD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0
.end method

.method public bridge synthetic getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public isExceptionParameter()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResourceVariable()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/javac/comp/Env;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0, p0}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/Object;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    return-void
.end method

.method public setLazyConstValue(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/code/t;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/openjdk/tools/javac/code/t;-><init>(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
