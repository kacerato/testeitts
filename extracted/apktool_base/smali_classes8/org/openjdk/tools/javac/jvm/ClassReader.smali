.class public Lorg/openjdk/tools/javac/jvm/ClassReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$InterimUsesDirective;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$ArrayAttributeProxy;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$ClassAttributeProxy;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyVisitor;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;,
        Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;
    }
.end annotation


# static fields
.field public static final INITIAL_BUFFER_SIZE:I = 0xfff0

.field protected static final classReaderKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected CLASS_ATTRIBUTE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;",
            ">;"
        }
    .end annotation
.end field

.field protected CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;",
            ">;"
        }
    .end annotation
.end field

.field protected MEMBER_ATTRIBUTE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;",
            ">;"
        }
    .end annotation
.end field

.field allowModules:Z

.field allowSimplifiedVarargs:Z

.field private final annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field protected attributeReaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;",
            ">;"
        }
    .end annotation
.end field

.field protected bp:I

.field buf:[B

.field protected currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

.field protected currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field protected currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

.field diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field private final fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field public filling:Z

.field private foundTypeVariables:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field haveParameterNameIndices:Z

.field private interimProvides:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;",
            ">;"
        }
    .end annotation
.end field

.field private interimUses:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$InterimUsesDirective;",
            ">;"
        }
    .end annotation
.end field

.field lintClassfile:Z

.field final log:Lorg/openjdk/tools/javac/util/Log;

.field majorVersion:I

.field minorVersion:I

.field private missingTypeVariables:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final names:Lorg/openjdk/tools/javac/util/Names;

.field parameterAnnotations:[Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;

.field parameterNameIndices:[I

.field poolIdx:[I

.field poolObj:[Ljava/lang/Object;

.field public final profile:Lorg/openjdk/tools/javac/jvm/Profile;

.field public readAllOfClassFile:Z

.field private readingClassAttr:Z

.field repeatable:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

.field public saveParameterNames:Z

.field sawMethodParameters:Z

.field sbp:I

.field sigEnterPhase:Z

.field siglimit:I

.field signature:[B

.field signatureBuffer:[B

.field sigp:I

.field syms:Lorg/openjdk/tools/javac/code/Symtab;

.field target:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

.field types:Lorg/openjdk/tools/javac/code/Types;

.field protected typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

.field verbose:Z

.field warnedAttrs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->classReaderKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->readAllOfClassFile:Z

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimUses:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimProvides:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    const v1, 0xfff0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->warnedAttrs:Ljava/util/Set;

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    sget-object v1, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;->CLASS:Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_ATTRIBUTE:Ljava/util/Set;

    sget-object v2, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;->MEMBER:Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->attributeReaders:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->readingClassAttr:Z

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->foundTypeVariables:Lorg/openjdk/tools/javac/util/List;

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->filling:Z

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->classReaderKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    const-class v0, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->VERBOSE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->verbose:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Source;->allowSimplifiedVarargs()Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->allowSimplifiedVarargs:Z

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Source;->allowModules()Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->allowModules:Z

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->PARAMETERS:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Profile;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Profile;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->profile:Lorg/openjdk/tools/javac/jvm/Profile;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Lint;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->CLASSFILE:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->lintClassfile:Z

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->initAttributeReaders()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "FileManager initialization error"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic access$002(Lorg/openjdk/tools/javac/jvm/ClassReader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->readingClassAttr:Z

    return p1
.end method

.method public static synthetic access$102(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimUses:Lorg/openjdk/tools/javac/util/List;

    return-object p1
.end method

.method public static synthetic access$202(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimProvides:Lorg/openjdk/tools/javac/util/List;

    return-object p1
.end method

.method private adjustMethodParams(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x400000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    new-instance p2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type$ArrayType;->makeVarargs()Lorg/openjdk/tools/javac/code/Type$ArrayType;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    :cond_2
    iget-object p1, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    return-object p1
.end method

.method private static ensureCapacity([BI)[B
    .locals 2

    array-length v0, p0

    if-gt v0, p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    new-array p1, p1, [B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private enterMember(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4

    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v2, 0x80001000L    # 1.060999919E-314

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->lambda:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Name;->startsWith(Lorg/openjdk/tools/javac/util/Name;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_1
    return-void
.end method

.method private findMethod(Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;Lorg/openjdk/tools/javac/code/Scope;J)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_1

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->isSameBinaryType(Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/code/Type$MethodType;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object v3

    :cond_2
    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v2, :cond_3

    return-object v0

    :cond_3
    const-wide/16 v1, 0x200

    and-long/2addr v1, p3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->setType(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/jvm/ClassReader;->findMethod(Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;Lorg/openjdk/tools/javac/code/Scope;J)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    return-object p1
.end method

.method private initAttributeReaders()V
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Lorg/openjdk/tools/javac/jvm/ClassReader$2;

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->Code:Lorg/openjdk/tools/javac/util/Name;

    sget-object v3, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V45_3:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    iget-object v4, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/openjdk/tools/javac/jvm/ClassReader$2;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v2, Lorg/openjdk/tools/javac/jvm/ClassReader$3;

    iget-object v4, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->ConstantValue:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v2, v0, v4, v3, v5}, Lorg/openjdk/tools/javac/jvm/ClassReader$3;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v4, Lorg/openjdk/tools/javac/jvm/ClassReader$4;

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->Deprecated:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v4, v0, v5, v3, v6}, Lorg/openjdk/tools/javac/jvm/ClassReader$4;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v5, Lorg/openjdk/tools/javac/jvm/ClassReader$5;

    iget-object v6, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/Names;->Exceptions:Lorg/openjdk/tools/javac/util/Name;

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v5, v0, v6, v3, v7}, Lorg/openjdk/tools/javac/jvm/ClassReader$5;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v6, Lorg/openjdk/tools/javac/jvm/ClassReader$6;

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v7, v7, Lorg/openjdk/tools/javac/util/Names;->InnerClasses:Lorg/openjdk/tools/javac/util/Name;

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v6, v0, v7, v3, v8}, Lorg/openjdk/tools/javac/jvm/ClassReader$6;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v7, Lorg/openjdk/tools/javac/jvm/ClassReader$7;

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v8, v8, Lorg/openjdk/tools/javac/util/Names;->LocalVariableTable:Lorg/openjdk/tools/javac/util/Name;

    iget-object v9, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v7, v0, v8, v3, v9}, Lorg/openjdk/tools/javac/jvm/ClassReader$7;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v8, Lorg/openjdk/tools/javac/jvm/ClassReader$8;

    iget-object v9, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->SourceFile:Lorg/openjdk/tools/javac/util/Name;

    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v8, v0, v9, v3, v10}, Lorg/openjdk/tools/javac/jvm/ClassReader$8;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v9, Lorg/openjdk/tools/javac/jvm/ClassReader$9;

    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v10, v10, Lorg/openjdk/tools/javac/util/Names;->Synthetic:Lorg/openjdk/tools/javac/util/Name;

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v9, v0, v10, v3, v11}, Lorg/openjdk/tools/javac/jvm/ClassReader$9;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v3, Lorg/openjdk/tools/javac/jvm/ClassReader$10;

    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v10, v10, Lorg/openjdk/tools/javac/util/Names;->EnclosingMethod:Lorg/openjdk/tools/javac/util/Name;

    sget-object v11, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V49:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    iget-object v12, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, v0, v10, v11, v12}, Lorg/openjdk/tools/javac/jvm/ClassReader$10;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v10, Lorg/openjdk/tools/javac/jvm/ClassReader$11;

    iget-object v12, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v12, v12, Lorg/openjdk/tools/javac/util/Names;->Signature:Lorg/openjdk/tools/javac/util/Name;

    iget-object v13, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v10, v0, v12, v11, v13}, Lorg/openjdk/tools/javac/jvm/ClassReader$11;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v12, Lorg/openjdk/tools/javac/jvm/ClassReader$12;

    iget-object v13, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v13, v13, Lorg/openjdk/tools/javac/util/Names;->AnnotationDefault:Lorg/openjdk/tools/javac/util/Name;

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v12, v0, v13, v11, v14}, Lorg/openjdk/tools/javac/jvm/ClassReader$12;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v13, Lorg/openjdk/tools/javac/jvm/ClassReader$13;

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v14, v14, Lorg/openjdk/tools/javac/util/Names;->RuntimeInvisibleAnnotations:Lorg/openjdk/tools/javac/util/Name;

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v13, v0, v14, v11, v15}, Lorg/openjdk/tools/javac/jvm/ClassReader$13;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v14, Lorg/openjdk/tools/javac/jvm/ClassReader$14;

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v15, v15, Lorg/openjdk/tools/javac/util/Names;->RuntimeInvisibleParameterAnnotations:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v16, v13

    iget-object v13, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v14, v0, v15, v11, v13}, Lorg/openjdk/tools/javac/jvm/ClassReader$14;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v13, Lorg/openjdk/tools/javac/jvm/ClassReader$15;

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v15, v15, Lorg/openjdk/tools/javac/util/Names;->RuntimeVisibleAnnotations:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v17, v14

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v13, v0, v15, v11, v14}, Lorg/openjdk/tools/javac/jvm/ClassReader$15;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v14, Lorg/openjdk/tools/javac/jvm/ClassReader$16;

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v15, v15, Lorg/openjdk/tools/javac/util/Names;->RuntimeVisibleParameterAnnotations:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v18, v13

    iget-object v13, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v14, v0, v15, v11, v13}, Lorg/openjdk/tools/javac/jvm/ClassReader$16;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v13, Lorg/openjdk/tools/javac/jvm/ClassReader$17;

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v15, v15, Lorg/openjdk/tools/javac/util/Names;->Annotation:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v19, v14

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v13, v0, v15, v11, v14}, Lorg/openjdk/tools/javac/jvm/ClassReader$17;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v14, Lorg/openjdk/tools/javac/jvm/ClassReader$18;

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v15, v15, Lorg/openjdk/tools/javac/util/Names;->Bridge:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v20, v13

    iget-object v13, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v14, v0, v15, v11, v13}, Lorg/openjdk/tools/javac/jvm/ClassReader$18;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v13, Lorg/openjdk/tools/javac/jvm/ClassReader$19;

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v15, v15, Lorg/openjdk/tools/javac/util/Names;->Enum:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v21, v14

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v13, v0, v15, v11, v14}, Lorg/openjdk/tools/javac/jvm/ClassReader$19;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v14, Lorg/openjdk/tools/javac/jvm/ClassReader$20;

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v15, v15, Lorg/openjdk/tools/javac/util/Names;->Varargs:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v22, v13

    iget-object v13, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v14, v0, v15, v11, v13}, Lorg/openjdk/tools/javac/jvm/ClassReader$20;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v11, Lorg/openjdk/tools/javac/jvm/ClassReader$21;

    iget-object v13, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v13, v13, Lorg/openjdk/tools/javac/util/Names;->RuntimeVisibleTypeAnnotations:Lorg/openjdk/tools/javac/util/Name;

    sget-object v15, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V52:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    move-object/from16 v23, v14

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v11, v0, v13, v15, v14}, Lorg/openjdk/tools/javac/jvm/ClassReader$21;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v13, Lorg/openjdk/tools/javac/jvm/ClassReader$22;

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v14, v14, Lorg/openjdk/tools/javac/util/Names;->RuntimeInvisibleTypeAnnotations:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v24, v11

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v13, v0, v14, v15, v11}, Lorg/openjdk/tools/javac/jvm/ClassReader$22;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v11, Lorg/openjdk/tools/javac/jvm/ClassReader$23;

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v14, v14, Lorg/openjdk/tools/javac/util/Names;->MethodParameters:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v25, v13

    iget-object v13, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v11, v0, v14, v15, v13}, Lorg/openjdk/tools/javac/jvm/ClassReader$23;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v13, Lorg/openjdk/tools/javac/jvm/ClassReader$24;

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v14, v14, Lorg/openjdk/tools/javac/util/Names;->Module:Lorg/openjdk/tools/javac/util/Name;

    sget-object v15, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V53:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    move-object/from16 v26, v11

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v13, v0, v14, v15, v11}, Lorg/openjdk/tools/javac/jvm/ClassReader$24;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    new-instance v11, Lorg/openjdk/tools/javac/jvm/ClassReader$25;

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v14, v14, Lorg/openjdk/tools/javac/util/Names;->ModuleResolution:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v27, v13

    iget-object v13, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->CLASS_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v11, v0, v14, v15, v13}, Lorg/openjdk/tools/javac/jvm/ClassReader$25;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    const/16 v13, 0x18

    new-array v14, v13, [Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v1, 0x1

    aput-object v2, v14, v1

    const/4 v2, 0x2

    aput-object v4, v14, v2

    const/4 v2, 0x3

    aput-object v5, v14, v2

    const/4 v2, 0x4

    aput-object v6, v14, v2

    const/4 v2, 0x5

    aput-object v7, v14, v2

    const/4 v2, 0x6

    aput-object v8, v14, v2

    const/4 v2, 0x7

    aput-object v9, v14, v2

    const/16 v2, 0x8

    aput-object v3, v14, v2

    const/16 v2, 0x9

    aput-object v10, v14, v2

    const/16 v2, 0xa

    aput-object v12, v14, v2

    const/16 v2, 0xb

    aput-object v16, v14, v2

    const/16 v2, 0xc

    aput-object v17, v14, v2

    const/16 v2, 0xd

    aput-object v18, v14, v2

    const/16 v2, 0xe

    aput-object v19, v14, v2

    const/16 v2, 0xf

    aput-object v20, v14, v2

    const/16 v2, 0x10

    aput-object v21, v14, v2

    const/16 v2, 0x11

    aput-object v22, v14, v2

    const/16 v2, 0x12

    aput-object v23, v14, v2

    const/16 v2, 0x13

    aput-object v24, v14, v2

    const/16 v2, 0x14

    aput-object v25, v14, v2

    const/16 v2, 0x15

    aput-object v26, v14, v2

    const/16 v2, 0x16

    aput-object v27, v14, v2

    const/16 v2, 0x17

    aput-object v11, v14, v2

    :goto_0
    if-ge v15, v13, :cond_0

    aget-object v2, v14, v15

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->attributeReaders:Ljava/util/Map;

    iget-object v4, v2, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v15, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/ClassReader;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->classReaderKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/ClassReader;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private static isAsciiDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSameBinaryType(Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/code/Type$MethodType;)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private parameterName(ILorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/Name;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/Name;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "arg"

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private readClassBuffer(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextInt()I

    move-result v0

    const v1, -0x35014542    # -8346975.0f

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->minorVersion:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->majorVersion:I

    invoke-static {}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->MAX()Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    move-result-object v0

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->minor:I

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->majorVersion:I

    const/16 v2, 0x35

    if-gt v1, v2, :cond_0

    mul-int/lit16 v1, v1, 0x3e8

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->minorVersion:I

    add-int/2addr v1, v3

    invoke-static {}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->MIN()Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    move-result-object v3

    iget v3, v3, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->major:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->MIN()Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    move-result-object v4

    iget v4, v4, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->minor:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_1

    :cond_0
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->majorVersion:I

    const/16 v3, 0x36

    if-ne v1, v3, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "big.major.version"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->indexPool()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    if-ge v0, v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    :cond_2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->minorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v1, v2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "wrong.version"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "illegal.start.of.class.file"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1
.end method

.method private static readInputStream([BLjava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->ensureCapacity([BI)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->ensureCapacity([BI)[B

    move-result-object p0

    array-length v0, p0

    sub-int/2addr v0, v1

    invoke-virtual {p1, p0, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw p0
.end method

.method private simpleBinaryName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x24

    if-ne v0, v2, :cond_1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v1, p1, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->isAsciiDigit(C)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, "bad.enclosing.method"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public adjustClassFlags(J)J
    .locals 4

    const-wide/32 v0, 0x8000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/32 v0, -0x8001

    and-long/2addr p1, v0

    const-wide/high16 v0, 0x8000000000000L

    or-long/2addr p1, v0

    :cond_0
    const-wide/16 v0, -0x21

    and-long/2addr p1, v0

    return-wide p1
.end method

.method public adjustFieldFlags(J)J
    .locals 0

    return-wide p1
.end method

.method public adjustMethodFlags(J)J
    .locals 4

    const-wide/16 v0, 0x40

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x41

    and-long/2addr p1, v0

    const-wide v0, 0x80000000L

    or-long/2addr p1, v0

    :cond_0
    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x81

    and-long/2addr p1, v0

    const-wide v0, 0x400000000L

    or-long/2addr p1, v0

    :cond_1
    return-wide p1
.end method

.method public attachAnnotationDefault(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 3

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readAttributeValue()Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lorg/openjdk/tools/javac/code/Attribute;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    new-instance v2, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;

    invoke-direct {v2, p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Attribute;)V

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/Annotate;->normal(Ljava/lang/Runnable;)V

    return-void
.end method

.method public attachAnnotations(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->attachAnnotations(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public attachAnnotations(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 4
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    .line 5
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symtab;->proprietaryType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, v4, :cond_2

    .line 6
    iget-wide v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v3, 0x4000000000L

    or-long/2addr v1, v3

    iput-wide v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto :goto_0

    .line 7
    :cond_2
    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symtab;->profileType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, v4, :cond_4

    .line 8
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->profile:Lorg/openjdk/tools/javac/jvm/Profile;

    sget-object v3, Lorg/openjdk/tools/javac/jvm/Profile;->DEFAULT:Lorg/openjdk/tools/javac/jvm/Profile;

    if-eq v2, v3, :cond_1

    .line 9
    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/Pair;

    .line 10
    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_3

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    instance-of v3, v2, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    if-eqz v3, :cond_3

    .line 11
    check-cast v2, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    .line 12
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    if-ne v3, v4, :cond_3

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->profile:Lorg/openjdk/tools/javac/jvm/Profile;

    iget v3, v3, Lorg/openjdk/tools/javac/jvm/Profile;->value:I

    if-le v2, v3, :cond_3

    .line 13
    iget-wide v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v4, 0x200000000000L

    or-long/2addr v2, v4

    iput-wide v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto :goto_1

    .line 14
    :cond_4
    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symtab;->annotationTargetType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, v4, :cond_5

    .line 15
    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->target:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    goto :goto_3

    .line 16
    :cond_5
    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symtab;->repeatableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, v4, :cond_6

    .line 17
    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->repeatable:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    goto :goto_3

    .line 18
    :cond_6
    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->deprecatedType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, v3, :cond_8

    .line 19
    iget-wide v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v4, 0x40000000020000L

    or-long/2addr v2, v4

    iput-wide v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    .line 20
    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/util/Pair;

    .line 21
    iget-object v4, v3, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->forRemoval:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v5, :cond_7

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    instance-of v4, v3, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    if-eqz v4, :cond_7

    .line 22
    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    .line 23
    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    if-ne v4, v5, :cond_7

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    .line 24
    iget-wide v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v5, 0x80000000000000L

    or-long/2addr v3, v5

    iput-wide v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto :goto_2

    .line 25
    :cond_8
    :goto_3
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto/16 :goto_0

    .line 26
    :cond_9
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/comp/Annotate;->normal(Ljava/lang/Runnable;)V

    return-void
.end method

.method public attachTypeAnnotations(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypeAnnotation()Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    new-instance v2, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v2, p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/comp/Annotate;->normal(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public varargs badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v3, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    return-object v0
.end method

.method public varargs badEnclosingMethod([Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadEnclosingMethodAttr;
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/code/ClassFinder$BadEnclosingMethodAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v4, "bad.enclosing.method"

    invoke-virtual {v3, v4, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/openjdk/tools/javac/code/ClassFinder$BadEnclosingMethodAttr;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    return-object v0
.end method

.method public classSigToType()Lorg/openjdk/tools/javac/code/Type;
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v2, v0, v1

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_9

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v1, v1, v3

    const/16 v3, 0x24

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_7

    const/16 v5, 0x2f

    if-eq v1, v5, :cond_6

    const/16 v5, 0x3b

    if-eq v1, v5, :cond_4

    const/16 v6, 0x3c

    if-eq v1, v6, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    aput-byte v1, v3, v4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    sub-int/2addr v7, v2

    invoke-virtual {v1, v6, v2, v7}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterClass(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    new-instance v6, Lorg/openjdk/tools/javac/jvm/ClassReader$1;

    const/16 v7, 0x3e

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToTypes(C)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-direct {v6, p0, v0, v7, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader$1;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v1, v0, v1

    if-eq v1, v4, :cond_3

    if-ne v1, v5, :cond_2

    array-length v1, v0

    if-ge v7, v1, :cond_1

    aget-byte v0, v0, v7

    if-ne v0, v4, :cond_1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    sub-int v1, v0, v2

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v7, v1

    iput v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    aput-byte v3, v1, v0

    goto :goto_1

    :cond_1
    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    return-object v6

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    aput-byte v3, v0, v1

    :goto_1
    move-object v0, v6

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterClass(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    :try_start_0
    sget-object v3, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    new-instance v3, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    :goto_2
    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    return-object v0

    :goto_3
    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    throw v0

    :cond_6
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    aput-byte v4, v1, v3

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    sub-int/2addr v5, v2

    invoke-virtual {v1, v4, v2, v5}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterClass(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    new-instance v4, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-direct {v4, v0, v5, v1}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v0, v4

    :cond_8
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sbp:I

    aput-byte v3, v1, v4

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Convert;->utf2string([BII)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bad.class.signature"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object v0

    throw v0
.end method

.method public enterClass(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    return-object p1
.end method

.method public enterClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    return-object p1
.end method

.method public enterTypevars(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterTypevars(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterTypevars(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public findTypeVar(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->readingClassAttr:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/code/Type$TypeVar;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    return-object v0

    :cond_1
    const-string v0, "undecl.type.var"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1
.end method

.method public getChar(I)C
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    int-to-char p1, v1

    return p1
.end method

.method public getDouble(I)D
    .locals 4

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    const/16 v3, 0x8

    invoke-direct {v1, v2, p1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getFloat(I)F
    .locals 4

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    const/4 v3, 0x4

    invoke-direct {v1, v2, p1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getInt(I)I
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    return v1
.end method

.method public getLong(I)J
    .locals 4

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    const/16 v3, 0x8

    invoke-direct {v1, v2, p1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public indexPool()V
    .locals 6

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aput v4, v2, v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bad.const.pool.tag.at"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object v0

    throw v0

    :pswitch_1
    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    goto :goto_1

    :pswitch_2
    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    goto :goto_1

    :pswitch_3
    add-int/lit8 v4, v4, 0x9

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :pswitch_4
    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public initParameterNames(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 3

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/util/List;)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    :goto_1
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->haveParameterNameIndices:Z

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sawMethodParameters:Z

    return-void
.end method

.method public nextByte()I
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public nextChar()C
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    int-to-char v0, v3

    return v0
.end method

.method public nextInt()I
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    return v3
.end method

.method public readAnnotations()Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readCompoundAnnotation()Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readAttributeValue()Lorg/openjdk/tools/javac/code/Attribute;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_a

    const/16 v1, 0x46

    if-eq v0, v1, :cond_9

    const/16 v1, 0x53

    if-eq v0, v1, :cond_8

    const/16 v1, 0x63

    if-eq v0, v1, :cond_7

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    const/16 v1, 0x73

    if-eq v0, v1, :cond_5

    const/16 v1, 0x49

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown annotation tag \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Attribute$Constant;-><init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->charType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Attribute$Constant;-><init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->byteType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Attribute$Constant;-><init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readAttributeValue()Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassReader$ArrayAttributeProxy;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader$ArrayAttributeProxy;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Attribute$Constant;-><init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Attribute$Constant;-><init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Attribute$Constant;-><init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Attribute$Constant;-><init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0

    :cond_6
    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readEnumType(I)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;)V

    return-object v0

    :cond_7
    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassReader$ClassAttributeProxy;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypeOrClassSymbol(I)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader$ClassAttributeProxy;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    return-object v0

    :cond_8
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->shortType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Attribute$Constant;-><init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0

    :cond_9
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Attribute$Constant;-><init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0

    :cond_a
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readCompoundAnnotation()Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readAttrs(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;)V
    .locals 5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextInt()I

    move-result v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->attributeReaders:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->accepts(Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, p1, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->read(Lorg/openjdk/tools/javac/code/Symbol;I)V

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 11

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterTypevars(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->adjustClassFlags(J)J

    move-result-wide v1

    const-wide/high16 v3, 0x8000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_1

    iput-wide v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "class.file.wrong.class"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_3
    iget v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->majorVersion:I

    sget-object v5, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V53:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    iget v5, v5, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->major:I

    if-lt v4, v5, :cond_12

    iput-wide v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    iget v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->skipMember()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v5

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->skipMember()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassAttrs(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-boolean v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->readAllOfClassFile:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    move v6, v7

    :goto_3
    iget-object v8, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    array-length v9, v8

    if-ge v6, v9, :cond_6

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    new-instance v6, Lorg/openjdk/tools/javac/jvm/Pool;

    array-length v9, v8

    iget-object v10, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v6, v9, v8, v10}, Lorg/openjdk/tools/javac/jvm/Pool;-><init>(I[Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Types;)V

    iput-object v6, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    :cond_7
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    if-eqz v3, :cond_9

    if-gtz v1, :cond_8

    goto :goto_4

    :cond_8
    const-string p1, "module.info.invalid.super.class"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_9
    :goto_4
    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    if-nez v3, :cond_b

    if-nez v1, :cond_a

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    goto :goto_5

    :cond_a
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :goto_5
    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    :cond_b
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    move v6, v4

    :goto_6
    if-ge v6, v1, :cond_c

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v8

    invoke-virtual {p0, v8}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v8

    iget-object v9, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    if-nez v1, :cond_d

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    :cond_d
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    if-ne v2, v0, :cond_e

    move v0, v7

    goto :goto_7

    :cond_e
    move v0, v4

    :goto_7
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    move v0, v4

    :goto_8
    if-ge v0, v2, :cond_f

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readField()Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterMember(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    if-ne v5, v0, :cond_10

    goto :goto_9

    :cond_10
    move v7, v4

    :goto_9
    invoke-static {v7}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    :goto_a
    if-ge v4, v5, :cond_11

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readMethod()Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterMember(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-void

    :cond_12
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->minorVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "anachronistic.module.info"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1
.end method

.method public readClassAttrs(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;->CLASS:Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readAttrs(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;)V

    return-void
.end method

.method public readClassFile(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 6

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->warnedAttrs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->filling:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->target:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->repeatable:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v2}, Lorg/openjdk/javax/tools/FileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readInputStream([BLjava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassBuffer(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->foundTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->foundTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->foundTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimUses:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimProvides:Lorg/openjdk/tools/javac/util/List;

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->filling:Z

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4, v5, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v3, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v5, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, v3, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v5, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->substBounds(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v3, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->foundTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-ne v1, v2, :cond_6

    :cond_1
    iget-wide v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v3, 0x2000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    new-instance v1, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    new-instance v2, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->target:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->repeatable:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    invoke-direct {v2, p0, p1, v3, v4}, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)V

    invoke-direct {v1, p1, v2}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;)V

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->setAnnotationTypeMetadata(Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->notAnAnnotationType()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->setAnnotationTypeMetadata(Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;)V

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimUses:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimProvides:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isCompleted()Z

    move-result v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    new-instance v2, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimUses:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimProvides:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {v2, p0, v3, v4, v5}, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->usesProvidesCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/file/ClosedFileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_3
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimUses:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimProvides:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->foundTypeVariables:Lorg/openjdk/tools/javac/util/List;

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->filling:Z

    return-void

    :cond_6
    :try_start_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    const-string v2, "undecl.type.var"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/file/ClosedFileSystemException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_2
    :try_start_2
    const-string v1, "bad.class.file"

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :goto_4
    const-string v1, "unable.to.access.file"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimUses:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->interimProvides:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->foundTypeVariables:Lorg/openjdk/tools/javac/util/List;

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->filling:Z

    throw p1
.end method

.method public readClassName(I)Lorg/openjdk/tools/javac/util/Name;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget v1, v0, p1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v2, v2, v1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result p1

    aget p1, v0, p1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x3

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v2, v1, p1

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    add-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {v1, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassFile;->internalize([BII)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([B)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "wrong class name"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CONSTANT_Class_info"

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "bad.const.pool.entry"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1
.end method

.method public readClassOrType(I)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget p1, v0, p1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x3

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v2, v1, p1

    const/16 v3, 0x3b

    const/4 v4, 0x1

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_1

    add-int v2, p1, v0

    sub-int/2addr v2, v4

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v2, v1, p1

    if-eq v2, v5, :cond_3

    add-int v2, p1, v0

    sub-int/2addr v2, v4

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {v1, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassFile;->internalize([BII)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([B)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterClass(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0, v1, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType([BII)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public readClassSymbol(I)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CONSTANT_Class_info"

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "bad.const.pool.entry"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0
.end method

.method public readCode(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/Code;
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextInt()I

    move-result v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readMemberAttrs(Lorg/openjdk/tools/javac/code/Symbol;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public readCompoundAnnotation()Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    aget v0, v0, v1

    new-instance v1, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypeOrClassSymbol(I)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v4

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readAttributeValue()Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v5

    new-instance v6, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v6, v4, v5}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)V

    return-object v0
.end method

.method public readEnclosingMethodAttr(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->remove(Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readNameAndType(I)Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    move-result-object v2

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/openjdk/tools/javac/jvm/ClassReader;->findMethod(Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;Lorg/openjdk/tools/javac/code/Scope;J)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badEnclosingMethod([Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadEnclosingMethodAttr;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0, v2, v4}, Lorg/openjdk/tools/javac/jvm/ClassReader;->simpleBinaryName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iput-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-eqz v3, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    iput-object v4, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    iput-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v2, v4}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->formFullName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iput-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    :goto_2
    if-eqz v3, :cond_4

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v1, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_3

    :cond_4
    iget-wide v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_3

    :cond_5
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V

    :goto_3
    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterTypevars(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->missingTypeVariables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->findTypeVar(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->foundTypeVariables:Lorg/openjdk/tools/javac/util/List;

    goto :goto_5

    :cond_7
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->foundTypeVariables:Lorg/openjdk/tools/javac/util/List;

    :goto_5
    return-void

    :cond_8
    const-string p1, "bad.enclosing.class"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1
.end method

.method public readEnumType(I)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget v0, v0, p1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v2, v0

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterClass(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypeToProxy(I)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public readExportsFlags(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->values()[Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->value:I

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readField()Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 8

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->adjustFieldFlags(J)J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readType(I)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readMemberAttrs(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0
.end method

.method public readInnerClasses(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 10

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lorg/openjdk/tools/javac/jvm/ClassReader;->adjustClassFlags(J)J

    move-result-wide v4

    if-eqz v2, :cond_3

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v7, v6, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v7, :cond_1

    iget-object v3, v6, Lorg/openjdk/tools/javac/util/Names;->one:Lorg/openjdk/tools/javac/util/Name;

    :cond_1
    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    const-wide/16 v6, 0x8

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    iget-object v6, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v6, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v7, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Type$ClassType;->setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v6, v3, Lorg/openjdk/tools/javac/code/Symbol;->erasure_field:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v6, :cond_2

    check-cast v6, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v8, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Type$ClassType;->setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V

    :cond_2
    if-ne p1, v2, :cond_3

    iput-wide v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    invoke-direct {p0, p1, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->enterMember(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public readMemberAttrs(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;->MEMBER:Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readAttrs(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;)V

    return-void
.end method

.method public readMethod()Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 12

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->adjustMethodFlags(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readType(I)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v3

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x400

    and-long/2addr v3, v0

    cmp-long v3, v3, v9

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->clinit:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->majorVersion:I

    sget-object v4, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V52:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    iget v5, v4, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->major:I

    if-gt v3, v5, :cond_2

    if-ne v3, v5, :cond_0

    iget v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->minorVersion:I

    iget v4, v4, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->minor:I

    if-lt v5, v4, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v9

    if-nez v0, :cond_1

    const-string v0, "invalid.default.interface"

    goto :goto_0

    :cond_1
    const-string v0, "invalid.static.interface"

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->minorVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    const-wide/16 v3, 0xa

    and-long/2addr v3, v0

    cmp-long v3, v3, v9

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v7, 0x80000000000L

    or-long/2addr v4, v7

    iput-wide v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v3, 0x80000000400L

    or-long/2addr v0, v3

    :cond_3
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v6, v3, :cond_4

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    sget-object v5, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/code/Scope;->includes(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Z

    move-result v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    new-instance v3, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lorg/openjdk/tools/javac/jvm/ClassReader;->adjustMethodParams(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v3, v4, v5, v2, v7}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v2, v3

    :cond_4
    new-instance v11, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v8, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v3, v11

    move-wide v4, v0

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v11}, Lorg/openjdk/tools/javac/code/Types;->isSignaturePolymorphic(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v3, v11, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v5, 0x400000000000L

    or-long/2addr v3, v5

    iput-wide v3, v11, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_5
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0, v11}, Lorg/openjdk/tools/javac/jvm/ClassReader;->initParameterNames(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    :cond_6
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object v11, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    :try_start_0
    invoke-virtual {p0, v11}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readMemberAttrs(Lorg/openjdk/tools/javac/code/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, v11, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->setParameters(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)V

    const-wide v3, 0x400000000L

    and-long/2addr v0, v3

    cmp-long v0, v0, v9

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_7

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget-wide v0, v11, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v2, -0x400000001L

    and-long/2addr v0, v2

    iput-wide v0, v11, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-string v0, "malformed.vararg.method"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object v0

    throw v0

    :cond_8
    :goto_2
    return-object v11

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    throw v0
.end method

.method public readModuleFlags(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->values()[Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->value:I

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readModuleName(I)Lorg/openjdk/tools/javac/util/Name;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public readModuleResolutionFlags(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->values()[Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->value:I

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readName(I)Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/openjdk/tools/javac/util/Name;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CONSTANT_Utf8_info or CONSTANT_String_info"

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "bad.const.pool.entry"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    check-cast v0, Lorg/openjdk/tools/javac/util/Name;

    return-object v0
.end method

.method public readNameAndType(I)Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CONSTANT_NameAndType_info"

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "bad.const.pool.entry"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    check-cast v0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    return-object v0
.end method

.method public readOpensFlags(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Directive$OpensFlag;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/tools/javac/code/Directive$OpensFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/code/Directive$OpensFlag;->values()[Lorg/openjdk/tools/javac/code/Directive$OpensFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lorg/openjdk/tools/javac/code/Directive$OpensFlag;->value:I

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readParameterAnnotations(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterAnnotations:[Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;

    if-nez v1, :cond_0

    new-array p1, v0, [Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterAnnotations:[Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;

    goto :goto_0

    :cond_0
    array-length v1, v1

    if-ne v1, v0, :cond_3

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterAnnotations:[Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;

    aget-object v2, v1, p1

    if-nez v2, :cond_1

    new-instance v2, Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;-><init>()V

    aput-object v2, v1, p1

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterAnnotations:[Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;

    aget-object v1, v1, p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;->add(Lorg/openjdk/tools/javac/util/List;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const-string v0, "bad.runtime.invisible.param.annotations"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1
.end method

.method public readPool(I)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget v1, v1, p1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v3, v2, v1

    const/4 v4, 0x3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "bad.const.pool.tag"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->skipBytes(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassReader;->skipBytes(I)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->skipBytes(I)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v2, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readType(I)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v2, v3, v1, v4}, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    aput-object v2, v0, p1

    goto/16 :goto_0

    :pswitch_6
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v10

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readNameAndType(I)Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v9, v0, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    const-wide/16 v6, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    aput-object v2, v1, p1

    goto/16 :goto_0

    :pswitch_7
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v10

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readNameAndType(I)Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v9, v0, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    const-wide/16 v6, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    aput-object v2, v1, p1

    goto :goto_0

    :pswitch_8
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    :pswitch_9
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassOrType(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    :pswitch_a
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    :pswitch_b
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    :pswitch_c
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    :pswitch_d
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    :pswitch_e
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "unicode.str.not.supported"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :pswitch_f
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v1

    invoke-virtual {v3, v2, v4, v1}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    aput-object v1, v0, p1

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public readPosition()Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 6

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TargetType;->isValidTargetTypeValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TargetType;->fromTargetTypeValue(I)Lorg/openjdk/tools/javac/code/TargetType;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/jvm/ClassReader$26;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jvm.ClassReader: Unknown target type for position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "jvm.ClassReader: UNKNOWN target type should never occur!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->field(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReturn(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodRefTypeArg(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    iput v0, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    return-object v1

    :pswitch_4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->constructorRefTypeArg(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    iput v0, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    return-object v1

    :pswitch_5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    iput v0, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    return-object v1

    :pswitch_6
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->constructorInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    iput v0, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    return-object v1

    :pswitch_7
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->typeCast(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    iput v0, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    return-object v1

    :pswitch_8
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodParameter(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodThrows(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodTypeParameterBound(Lorg/openjdk/tools/javac/util/List;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->typeParameterBound(Lorg/openjdk/tools/javac/util/List;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodTypeParameter(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->typeParameter(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0

    :pswitch_f
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReceiver(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exceptionParameter(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->setExceptionIndex(I)V

    return-object v1

    :pswitch_11
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    new-array v1, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v5

    aput v5, v1, v2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v5

    aput v5, v3, v2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->resourceVariable(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    iput-object v3, v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarLength:[I

    iput-object v4, v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarIndex:[I

    return-object v0

    :pswitch_12
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    new-array v1, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v5

    aput v5, v1, v2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v5

    aput v5, v3, v2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->localVariable(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    iput-object v3, v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarLength:[I

    iput-object v4, v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarIndex:[I

    return-object v0

    :pswitch_13
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodRef(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    iput v0, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    return-object v1

    :pswitch_14
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->constructorRef(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    iput v0, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    return-object v1

    :pswitch_15
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->newObj(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    iput v0, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    return-object v1

    :pswitch_16
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypePath()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->instanceOf(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    iput v0, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    return-object v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bad.type.annotation.value"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readRequiresFlags(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->values()[Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->value:I

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readType(I)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget p1, v0, p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    add-int/lit8 v1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType([BII)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public readTypeAnnotation()Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPosition()Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readCompoundAnnotation()Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;

    invoke-direct {v2, v1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    return-object v2
.end method

.method public readTypeOrClassSymbol(I)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget v1, v1, p1

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypeToProxy(I)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public readTypeParams(I)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget p1, v0, p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    add-int/lit8 v1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToTypeParams([BII)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public readTypePath()Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v0

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->getTypePathFromBinary(Ljava/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readTypeToProxy(I)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget p1, v0, p1

    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->buf:[B

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result p1

    add-int/2addr p1, v2

    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;[B)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readType(I)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public setParameters(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 13

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sawMethodParameters:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eq v3, p2, :cond_3

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/util/List;)I

    move-result p2

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/util/List;)I

    move-result v3

    sub-int/2addr p2, v3

    add-int/2addr v0, p2

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    :goto_1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterName(ILorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    invoke-virtual {p2, v9}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    new-instance v12, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    const-wide v7, 0x200000000L

    move-object v6, v12

    move-object v10, v5

    move-object v11, p1

    invoke-direct/range {v6 .. v11}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v3, v12}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterAnnotations:[Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;

    if-eqz v6, :cond_4

    aget-object v6, v6, v2

    if-eqz v6, :cond_4

    iget-object v7, v6, Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;->proxies:Lorg/openjdk/tools/javac/util/List;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    new-instance v8, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;

    iget-object v6, v6, Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;->proxies:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {v8, p0, v12, v6}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/comp/Annotate;->normal(Ljava/lang/Runnable;)V

    :cond_4
    iget-boolean v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sawMethodParameters:Z

    if-eqz v6, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    invoke-static {v5}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v5

    :goto_3
    add-int/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterAnnotations:[Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;

    if-eqz p2, :cond_8

    array-length p2, p2

    if-ne p2, v2, :cond_7

    goto :goto_4

    :cond_7
    const-string p2, "bad.runtime.invisible.param.annotations"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_8
    :goto_4
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterAnnotations:[Lorg/openjdk/tools/javac/jvm/ClassReader$ParameterAnnotations;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    return-void
.end method

.method public sigToType()Lorg/openjdk/tools/javac/code/Type;
    .locals 9

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v2, v0, v1

    int-to-char v2, v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_11

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_10

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_f

    const/16 v3, 0x46

    if-eq v2, v3, :cond_e

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_b

    const/16 v3, 0x56

    if-eq v2, v3, :cond_a

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_9

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_8

    const/16 v3, 0x49

    if-eq v2, v3, :cond_7

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_6

    const/16 v3, 0x53

    if-eq v2, v3, :cond_5

    const/16 v3, 0x54

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    const/16 v2, 0xa

    .line 6
    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Convert;->utf2string([BII)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 7
    const-string v1, "bad.signature"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object v0

    throw v0

    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 8
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object v0

    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 10
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 11
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->charType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object v0

    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 12
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 13
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->byteType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 14
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 15
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 16
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 17
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 18
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 19
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v3, v0, v2

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 20
    iput v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 21
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    if-eqz v3, :cond_4

    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    sub-int/2addr v2, v1

    .line 22
    invoke-virtual {v3, v0, v1, v2}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->findTypeVar(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 23
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 24
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->shortType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 25
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 26
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object v0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 27
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 28
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 29
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 30
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 31
    new-instance v1, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    sget-object v2, Lorg/openjdk/tools/javac/code/BoundKind;->EXTENDS:Lorg/openjdk/tools/javac/code/BoundKind;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->boundClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v0, v2, v3}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 32
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 33
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->boundClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v2, v3, v1}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 34
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 35
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    return-object v0

    .line 36
    :cond_b
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->classSigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 37
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->siglimit:I

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    aget-byte v1, v2, v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "deprecated inner class signature syntax (please recompile from source)"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object v0

    throw v0

    :cond_d
    :goto_2
    return-object v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 39
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 40
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object v0

    .line 41
    :cond_f
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    .line 42
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ForAll;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToTypeParams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Type$ForAll;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    .line 43
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-object v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 44
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 45
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 46
    new-instance v1, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    sget-object v2, Lorg/openjdk/tools/javac/code/BoundKind;->SUPER:Lorg/openjdk/tools/javac/code/BoundKind;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->boundClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v0, v2, v3}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 47
    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    const/16 v0, 0x29

    .line 48
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToTypes(C)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    .line 50
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    .line 51
    :goto_3
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v3, v3, v4

    const/16 v5, 0x5e

    if-ne v3, v5, :cond_12

    add-int/lit8 v4, v4, 0x1

    .line 52
    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 53
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_3

    :cond_12
    move-object v3, v2

    .line 54
    :goto_4
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 55
    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    sget-object v5, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 56
    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v5, v4, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v7, 0x800000000000L

    or-long/2addr v5, v7

    iput-wide v5, v4, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    .line 57
    :cond_13
    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_4

    .line 58
    :cond_14
    new-instance v3, Lorg/openjdk/tools/javac/code/Type$MethodType;

    .line 59
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v3, v0, v1, v2, v4}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sigToType([BII)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    .line 2
    iput p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    add-int/2addr p2, p3

    .line 3
    iput p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->siglimit:I

    .line 4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public sigToTypeParam()Lorg/openjdk/tools/javac/code/Type;
    .locals 6

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v3, v1, v2

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    sub-int/2addr v2, v0

    invoke-virtual {v3, v1, v0, v2}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    if-eqz v1, :cond_1

    new-instance v1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v1, v0, v2, v3}, Lorg/openjdk/tools/javac/code/Type$TypeVar;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->typevars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->findTypeVar(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    :goto_1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v5, v2, v3

    if-ne v5, v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    aget-byte v2, v2, v5

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    add-int/2addr v3, v2

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v3, v3, v5

    if-ne v3, v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v3, v1, v0, v2}, Lorg/openjdk/tools/javac/code/Types;->setBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/util/List;Z)V

    :cond_4
    return-object v1
.end method

.method public sigToTypeParams()Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v1, v1, v2

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 7
    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 8
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    .line 9
    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v3, v3, v4

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_0

    .line 10
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToTypeParam()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 11
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    .line 12
    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 13
    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v2, v2, v3

    if-eq v2, v4, :cond_1

    .line 14
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToTypeParam()Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_1
    add-int/2addr v3, v1

    .line 15
    iput v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    .line 16
    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sigToTypeParams([BII)Lorg/openjdk/tools/javac/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    .line 2
    iput p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    add-int/2addr p2, p3

    .line 3
    iput p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->siglimit:I

    .line 4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToTypeParams()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public sigToTypes(C)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->signature:[B

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v2, v2, v3

    if-eq v2, p1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->setTail(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    iget-object p1, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    return-object p1
.end method

.method public skipBytes(I)V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    return-void
.end method

.method public skipInnerClasses()V
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public skipMember()V
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextInt()I

    move-result v2

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
