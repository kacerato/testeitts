.class public Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Annotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnnotationTypeVisitor"
.end annotation


# instance fields
.field private final attr:Lorg/openjdk/tools/javac/comp/Attr;

.field private final check:Lorg/openjdk/tools/javac/comp/Check;

.field private env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private repeatable:Lorg/openjdk/tools/javac/code/Attribute$Compound;

.field private final tab:Lorg/openjdk/tools/javac/code/Symtab;

.field private target:Lorg/openjdk/tools/javac/code/Attribute$Compound;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Annotate;

.field private final typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/comp/TypeEnvs;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->check:Lorg/openjdk/tools/javac/comp/Check;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->tab:Lorg/openjdk/tools/javac/code/Symtab;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    return-void
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;)Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->repeatable:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;)Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->target:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object p0
.end method


# virtual methods
.method public getRepeatable()Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->repeatable:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object v0
.end method

.method public getTarget()Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->target:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object v0
.end method

.method public scanAnnotationType(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    return-void
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->check:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->tab:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->annotationType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3, v0, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object v1, v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->tab:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symtab;->annotationTargetType:Lorg/openjdk/tools/javac/code/Type;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, p1, v2, v1}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->target:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->repeatableType:Lorg/openjdk/tools/javac/code/Type;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, p1, v0, v2}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->repeatable:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    :cond_2
    :goto_0
    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    :try_start_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    throw p1
.end method
