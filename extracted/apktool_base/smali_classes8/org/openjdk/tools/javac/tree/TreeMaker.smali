.class public Lorg/openjdk/tools/javac/tree/TreeMaker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/tree/JCTree$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;
    }
.end annotation


# static fields
.field protected static final treeMakerKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/tree/TreeMaker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field annotationBuilder:Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;

.field names:Lorg/openjdk/tools/javac/util/Names;

.field public pos:I

.field syms:Lorg/openjdk/tools/javac/code/Symtab;

.field public toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

.field types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->treeMakerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/util/Names;Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Symtab;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    .line 12
    new-instance v0, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;-><init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->annotationBuilder:Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    .line 14
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 15
    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    .line 16
    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->types:Lorg/openjdk/tools/javac/code/Types;

    .line 17
    iput-object p4, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    .line 3
    new-instance v1, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;-><init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->annotationBuilder:Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;

    .line 4
    sget-object v1, Lorg/openjdk/tools/javac/tree/TreeMaker;->treeMakerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v1, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 5
    iput v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 7
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    .line 8
    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    .line 9
    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->types:Lorg/openjdk/tools/javac/code/Types;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->lambda$TopLevel$0(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->treeMakerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/TreeMaker;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/tree/TreeMaker;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$TopLevel$0(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Annotation(Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->annotationBuilder:Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;

    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->translate(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public Annotation(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)V

    .line 2
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Annotations(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Annotation(Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public AnonymousClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    return-object p1
.end method

.method public App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    return-object p1
.end method

.method public App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    return-object p1
.end method

.method public Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Assert(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Assignment(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    return-object p1
.end method

.method public Assignop(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Binary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;-><init>(JLorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Break(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Call(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public Case(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCase;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Catch(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;"
        }
    .end annotation

    new-instance v8, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v8, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v8
.end method

.method public ClassLiteral(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    .line 1
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassLiteral(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public ClassLiteral(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 7

    .line 2
    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v1, 0x19

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public Conditional(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Continue(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Create(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object p2

    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p2
.end method

.method public DoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Erroneous()Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;
    .locals 1

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    return-object v0
.end method

.method public Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Exports(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExports;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExports;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public ForLoop(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public ForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Ident(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    .line 7
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    return-object p1
.end method

.method public Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;
    .locals 3

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    .line 5
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setPos(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 6
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    return-object p1
.end method

.method public Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 2
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Idents(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public If(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCIf;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Import(Lorg/openjdk/tools/javac/tree/JCTree;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCImport;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;Z)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Indexed(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;
    .locals 2

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    .line 4
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public Indexed(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    .line 2
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Labelled(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Lambda(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public LetExpr(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;
    .locals 1

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    .line 4
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public LetExpr(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    .line 2
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;
    .locals 2

    .line 3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    .line 5
    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    goto/16 :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    .line 8
    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    goto/16 :goto_0

    .line 9
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->LONG:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    .line 11
    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    goto/16 :goto_0

    .line 12
    :cond_2
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BYTE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->byteType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    .line 14
    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    goto/16 :goto_0

    .line 15
    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 16
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 17
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CHAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->charType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 20
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DOUBLE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    .line 21
    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    goto :goto_0

    .line 22
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 23
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->FLOAT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    .line 24
    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    goto :goto_0

    .line 25
    :cond_6
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_7

    .line 26
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->SHORT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->shortType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    .line 27
    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    goto :goto_0

    .line 28
    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 30
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    :goto_0
    return-object p1

    .line 32
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)V

    .line 2
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;
    .locals 12

    .line 5
    new-instance v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    .line 6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Annotations(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    .line 7
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 8
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeParams(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    .line 9
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Params(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    .line 10
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object v8, p3

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    .line 11
    invoke-virtual {v11, p1}, Lorg/openjdk/tools/javac/tree/JCTree;->setPos(I)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    return-object p1
.end method

.method public MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;
    .locals 1

    .line 4
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object p1

    return-object p1
.end method

.method public MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;"
        }
    .end annotation

    .line 2
    new-instance v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    move-object v0, p0

    .line 3
    iget v1, v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v11, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v11
.end method

.method public MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1
    invoke-virtual/range {v0 .. v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    return-object v0
.end method

.method public Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;
    .locals 1

    .line 3
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object p1

    return-object p1
.end method

.method public Modifiers(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;-><init>(JLorg/openjdk/tools/javac/util/List;)V

    const-wide v1, 0x80000002dffL

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    :goto_0
    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public ModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/source/tree/ModuleTree$ModuleKind;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/source/tree/ModuleTree$ModuleKind;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/source/tree/ModuleTree$ModuleKind;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;"
        }
    .end annotation

    new-instance v6, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v6, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v6
.end method

.method public Opens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public PackageDecl(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Param(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    const-wide v1, 0x200000000L

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v6, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    return-object p1
.end method

.method public Params(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move-object v1, p2

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    if-ne v2, v1, :cond_1

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, p2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->paramName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v3, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v3, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Param(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public Parens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCParens;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Provides(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->isUnqualifiable(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public QualThis(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 8

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v2, 0x10

    move-object v1, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p0, v0, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public ReceiverVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Reference(Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;-><init>(Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Requires(ZZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;-><init>(ZZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setPos(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 2
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Skip()Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;-><init>()V

    iget v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Super(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    const-wide/16 v1, 0x10

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    return-object p1
.end method

.method public Switch(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCase;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Synchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public This(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v1, 0x10

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    return-object p1
.end method

.method public Throw(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public TopLevel(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    instance-of v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    instance-of v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    new-instance v3, Lorg/openjdk/tools/javac/tree/a;

    invoke-direct {v3, v1}, Lorg/openjdk/tools/javac/tree/a;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-static {v2, v3}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/util/function/Supplier;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Try(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTry;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Try(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    move-result-object p1

    return-object p1
.end method

.method public Try(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTry;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/tree/TreeMaker$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeIdent(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_2
    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeMaker$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v0

    goto/16 :goto_4

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;->getExplicitComponents()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeIntersection(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$UnionClassType;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type$UnionClassType;->getAlternativeTypes()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeUnion(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;

    move-result-object v0

    goto :goto_4

    :pswitch_3
    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeBoundKind(Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v2

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    sget-object v4, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    if-ne v3, v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Wildcard(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v0

    goto :goto_4

    :pswitch_4
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    goto :goto_4

    :pswitch_5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeIdent(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    :goto_4
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public TypeAnnotation(Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->annotationBuilder:Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;

    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker$AnnotationBuilder;->translate(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public TypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPE_ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)V

    .line 2
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public TypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public TypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public TypeBoundKind(Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;-><init>(Lorg/openjdk/tools/javac/code/BoundKind;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    return-object p1
.end method

.method public TypeCast(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    .line 2
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public TypeIdent(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public TypeIntersection(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public TypeParam(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->getBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeParameter(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object p1

    iget v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->setPos(I)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    return-object p1
.end method

.method public TypeParameter(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeParameter(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object p1

    return-object p1
.end method

.method public TypeParameter(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public TypeParams(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeParam(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public TypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public TypeUnion(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public Unary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Uses(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUses;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCUses;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCUses;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 7

    .line 3
    new-instance v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Annotations(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 5
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    move-object v0, v6

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    iget p2, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    .line 6
    invoke-virtual {v6, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;->setPos(I)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    return-object p1
.end method

.method public VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 7

    .line 1
    new-instance v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    .line 2
    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v6, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v6
.end method

.method public WhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public Wildcard(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object v0
.end method

.method public at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;
    .locals 0

    .line 1
    iput p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    return-object p0
.end method

.method public at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    return-object p0
.end method

.method public forToplevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/tree/TreeMaker;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/util/Names;Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Symtab;)V

    return-object v0
.end method

.method public isUnqualifiable(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-eq v1, v3, :cond_7

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v3, :cond_7

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v1, p1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    return v2

    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v1, p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    return v2

    :cond_6
    return v4

    :cond_7
    :goto_3
    return v2
.end method

.method public paramName(I)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public typaramName(I)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeMaker;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method
