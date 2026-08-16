.class Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueVisitor"
.end annotation


# instance fields
.field private meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field private returnClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->this$0:Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-void
.end method

.method private typeMismatch(Ljava/lang/reflect/Method;Lorg/openjdk/tools/javac/code/Attribute;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;-><init>(Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;Ljava/lang/reflect/Method;Lorg/openjdk/tools/javac/code/Attribute;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue(Lorg/openjdk/tools/javac/code/Attribute;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->this$0:Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;

    invoke-static {v1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->access$000(Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/code/Attribute;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    instance-of v1, v1, Lsun/reflect/annotation/ExceptionProxy;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    invoke-static {v1}, Lsun/reflect/annotation/AnnotationType;->invocationHandlerReturnType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->typeMismatch(Ljava/lang/reflect/Method;Lorg/openjdk/tools/javac/code/Attribute;)V

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    return-object p1

    :catch_0
    return-object v0
.end method

.method public visitArray(Lorg/openjdk/tools/javac/code/Attribute$Array;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->java_lang_Class:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$Class;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Attribute$Class;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    goto :goto_3

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v0, v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    :try_start_0
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    aget-object v4, v4, v1

    invoke-virtual {v4, p0}, Lorg/openjdk/tools/javac/code/Attribute;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    if-eqz v4, :cond_3

    instance-of v5, v4, Lsun/reflect/annotation/ExceptionProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-static {v3, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    return-void

    :cond_3
    :goto_2
    iput-object v2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    return-void

    :cond_4
    :try_start_3
    iput-object v3, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-object v2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    :goto_3
    return-void

    :goto_4
    iput-object v2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    throw p1
.end method

.method public visitClass(Lorg/openjdk/tools/javac/code/Attribute$Class;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Class;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;-><init>(Lorg/openjdk/javax/lang/model/type/TypeMirror;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    return-void
.end method

.method public visitCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->generateAnnotation(Lorg/openjdk/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public visitConstant(Lorg/openjdk/tools/javac/code/Attribute$Constant;)V
    .locals 0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Attribute$Constant;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    return-void
.end method

.method public visitEnum(Lorg/openjdk/tools/javac/code/Attribute$Enum;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public visitError(Lorg/openjdk/tools/javac/code/Attribute$Error;)V
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Attribute$UnresolvedClass;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;

    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$UnresolvedClass;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$UnresolvedClass;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;-><init>(Lorg/openjdk/javax/lang/model/type/TypeMirror;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method
