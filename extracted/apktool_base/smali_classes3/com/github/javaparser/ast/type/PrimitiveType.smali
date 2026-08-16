.class public Lcom/github/javaparser/ast/type/PrimitiveType;
.super Lcom/github/javaparser/ast/type/Type;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/type/Type;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lcom/github/javaparser/ast/type/PrimitiveType;",
        ">;"
    }
.end annotation


# static fields
.field static final unboxMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private type:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/type/PrimitiveType;->unboxMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->values()[Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/github/javaparser/ast/type/PrimitiveType;->unboxMap:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->nameOfBoxedType:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->INT:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    new-instance v1, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;Lcom/github/javaparser/ast/NodeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "type",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/github/javaparser/ast/type/Type;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/type/PrimitiveType;->setType(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)Lcom/github/javaparser/ast/type/PrimitiveType;

    .line 6
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;Lcom/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "type",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public static booleanType()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->BOOLEAN:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static byteType()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->BYTE:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static charType()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->CHAR:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static doubleType()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->DOUBLE:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static floatType()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->FLOAT:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static intType()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->INT:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static longType()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->LONG:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static shortType()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->SHORT:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)V

    return-void
.end method

.method public asPrimitiveType()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 0

    return-object p0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/PrimitiveType;->type:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/PrimitiveType;->clone()Lcom/github/javaparser/ast/type/PrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/PrimitiveType;->clone()Lcom/github/javaparser/ast/type/PrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/PrimitiveType;->clone()Lcom/github/javaparser/ast/type/PrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public convertToUsage(Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/PrimitiveType;->getType()Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->byName(Ljava/lang/String;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/PrimitiveType;->getMetaModel()Lcom/github/javaparser/metamodel/PrimitiveTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/PrimitiveTypeMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->primitiveTypeMetaModel:Lcom/github/javaparser/metamodel/PrimitiveTypeMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/TypeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/PrimitiveType;->getMetaModel()Lcom/github/javaparser/metamodel/PrimitiveTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/PrimitiveType;->type:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    return-object v0
.end method

.method public ifPrimitiveType(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/ast/type/PrimitiveType;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isPrimitiveType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resolve()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getSymbolResolver()Lcom/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    invoke-interface {v0, p0, v1}, Lcom/github/javaparser/resolution/SymbolResolver;->toResolvedType(Lcom/github/javaparser/ast/type/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    return-object v0
.end method

.method public bridge synthetic resolve()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/PrimitiveType;->resolve()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/PrimitiveType;->resolve()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/PrimitiveType;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/PrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)",
            "Lcom/github/javaparser/ast/type/PrimitiveType;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/type/Type;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/PrimitiveType;

    return-object p1
.end method

.method public bridge synthetic setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/Type;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/PrimitiveType;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/PrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/type/PrimitiveType;->type:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/github/javaparser/ast/type/PrimitiveType;->type:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    return-object p0
.end method

.method public toBoxedType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/PrimitiveType;->type:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->toBoxedType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/PrimitiveType;->type:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->toDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPrimitiveType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/type/PrimitiveType;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
