.class public Lorg/openjdk/tools/javac/code/TypeAnnotations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;,
        Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;
    }
.end annotation


# static fields
.field protected static final typeAnnosKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotations;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field final attr:Lorg/openjdk/tools/javac/comp/Attr;

.field final log:Lorg/openjdk/tools/javac/util/Log;

.field final names:Lorg/openjdk/tools/javac/util/Names;

.field final syms:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->typeAnnosKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->typeAnnosKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->lambda$validateTypeAnnotationsSignatures$1(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->combineAnnotationType(Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->lambda$organizeTypeAnnotationsSignatures$0(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    return-void
.end method

.method private combineAnnotationType(Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->NONE:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    if-ne p1, v0, :cond_0

    return-object p2

    :cond_0
    if-ne p2, v0, :cond_1

    return-object p1

    :cond_1
    if-eq p1, p2, :cond_2

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->BOTH:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    :cond_2
    return-object p1
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/code/Attribute;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->lambda$annotationTargets$2(Lorg/openjdk/tools/javac/code/Attribute;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->lambda$annotationTargetType$3(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/TypeAnnotations;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->typeAnnosKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/TypeAnnotations;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeAnnotations;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/TypeAnnotations;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$annotationTargetType$3(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->targetToAnnotationType(Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$annotationTargets$2(Lorg/openjdk/tools/javac/code/Attribute;)Z
    .locals 0

    instance-of p0, p0, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$organizeTypeAnnotationsSignatures$0(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotations;Z)V

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p2
.end method

.method private synthetic lambda$validateTypeAnnotationsSignatures$1(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/openjdk/tools/javac/comp/Attr;->validateTypeAnnotations(Lorg/openjdk/tools/javac/tree/JCTree;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p2
.end method

.method private targetToAnnotationType(Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;
    .locals 7

    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->TYPE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_0

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, p2, :cond_c

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->FIELD:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_1

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_c

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p1, p2, :cond_c

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_1
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->METHOD:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_2

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_c

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_2
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->PARAMETER:Lorg/openjdk/tools/javac/util/Name;

    const-wide v3, 0x200000000L

    const-wide/16 v5, 0x0

    if-ne v0, v2, :cond_3

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_c

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_c

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide p1

    and-long/2addr p1, v3

    cmp-long p1, p1, v5

    if-eqz p1, :cond_c

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_3
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->CONSTRUCTOR:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_4

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_c

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_4
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->LOCAL_VARIABLE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_5

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_c

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_c

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide p1

    and-long/2addr p1, v3

    cmp-long p1, p1, v5

    if-nez p1, :cond_c

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_5
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->ANNOTATION_TYPE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_6

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_c

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide p1

    const-wide/16 v0, 0x2000

    and-long/2addr p1, v0

    cmp-long p1, p1, v5

    if-eqz p1, :cond_c

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_6
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->PACKAGE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_7

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, p2, :cond_c

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_7
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->TYPE_USE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_a

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p1, v0, :cond_9

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p1, v0, :cond_9

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_8

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_c

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_9
    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_a
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->TYPE_PARAMETER:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_b

    goto :goto_0

    :cond_b
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->MODULE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_d

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, p2, :cond_c

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_c
    :goto_0
    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->NONE:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1

    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "annotationTargetType(): unrecognized Attribute name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p1
.end method


# virtual methods
.method public annotationTargetType(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;
    .locals 1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->annotationTargets(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/code/G;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/code/G;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->NONE:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    new-instance v0, Lorg/openjdk/tools/javac/code/H;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/H;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotations;)V

    invoke-interface {p1, p2, v0}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    :goto_0
    return-object p1
.end method

.method public annotationTargets(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->getTarget()Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->member(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object p1

    instance-of v1, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$Array;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Attribute$Array;->getValue()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/code/K;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/code/K;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method

.method public organizeTypeAnnotationsBodies(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotations;Z)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public organizeTypeAnnotationsSignatures(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    new-instance v1, Lorg/openjdk/tools/javac/code/J;

    invoke-direct {v1, p0, p1, p2}, Lorg/openjdk/tools/javac/code/J;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Annotate;->afterTypes(Ljava/lang/Runnable;)V

    return-void
.end method

.method public validateTypeAnnotationsSignatures(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    new-instance v1, Lorg/openjdk/tools/javac/code/I;

    invoke-direct {v1, p0, p1, p2}, Lorg/openjdk/tools/javac/code/I;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Annotate;->validate(Ljava/lang/Runnable;)V

    return-void
.end method
