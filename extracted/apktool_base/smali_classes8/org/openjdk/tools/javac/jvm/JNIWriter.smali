.class public Lorg/openjdk/tools/javac/jvm/JNIWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/JNIWriter$SimpleTypeVisitor;,
        Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;,
        Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;
    }
.end annotation


# static fields
.field private static final isWindows:Z

.field protected static final jniWriterKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/jvm/JNIWriter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkAll:Z

.field private context:Lorg/openjdk/tools/javac/util/Context;

.field private final fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field public multiModuleMode:Z

.field syms:Lorg/openjdk/tools/javac/code/Symtab;

.field types:Lorg/openjdk/tools/javac/code/Types;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->jniWriterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->isWindows:Z

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->jniWriterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    const-class v0, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->VERBOSE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->verbose:Z

    const-string v1, "javah:full"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->checkAll:Z

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->context:Lorg/openjdk/tools/javac/util/Context;

    return-void
.end method

.method public static encode(Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_d

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->isalnum(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    sget-object v4, Lorg/openjdk/tools/javac/jvm/JNIWriter$1;->$SwitchMap$com$sun$tools$javac$jvm$JNIWriter$EncoderType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "_"

    const/16 v6, 0x2e

    const/4 v7, 0x1

    const/16 v8, 0x5f

    if-eq v4, v7, :cond_a

    const/4 v7, 0x2

    if-eq v4, v7, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encodeChar(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1
    if-ne v3, v8, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encodeChar(C)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->isprint(C)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encodeChar(C)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    if-eq v3, v6, :cond_9

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_9

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_8

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_7

    if-eq v3, v8, :cond_6

    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encodeChar(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v3, "_1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string v3, "_3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string v3, "_2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    const/16 v4, 0x24

    if-eq v3, v4, :cond_c

    if-eq v3, v6, :cond_b

    if-eq v3, v8, :cond_b

    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encodeChar(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    const-string v3, "__"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeChar(C)Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v1, v0, 0x5

    const/4 v2, 0x6

    new-array v3, v2, [C

    const/16 v4, 0x5f

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/4 v4, 0x1

    move v6, v4

    :goto_0
    if-gt v6, v1, :cond_0

    const/16 v7, 0x30

    aput-char v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v0, 0x6

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v5, v4

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static hasFlag(Lorg/openjdk/tools/javac/code/Symbol;I)Z
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    int-to-long p0, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/JNIWriter;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->jniWriterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/JNIWriter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/jvm/JNIWriter;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/jvm/JNIWriter;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method public static isFinal(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->hasFlag(Lorg/openjdk/tools/javac/code/Symbol;I)Z

    move-result p0

    return p0
.end method

.method public static isNative(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    const/16 v0, 0x100

    invoke-static {p0, v0}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->hasFlag(Lorg/openjdk/tools/javac/code/Symbol;I)Z

    move-result p0

    return p0
.end method

.method public static isStatic(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->hasFlag(Lorg/openjdk/tools/javac/code/Symbol;I)Z

    move-result p0

    return p0
.end method

.method public static isSynthetic(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->hasFlag(Lorg/openjdk/tools/javac/code/Symbol;I)Z

    move-result p0

    return p0
.end method

.method private static isalnum(C)Z
    .locals 1

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_3

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isprint(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lazyInit()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    :cond_1
    return-void
.end method

.method private needsHeader(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Z)Z
    .locals 6

    .line 6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->isSynthetic(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    sget-object v2, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    .line 8
    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_2

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->isNative(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    .line 9
    :cond_2
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->getDeclarationAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    .line 10
    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->nativeHeaderType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v4, v5, :cond_3

    return v3

    :cond_4
    if-eqz p2, :cond_6

    .line 11
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    sget-object p2, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    .line 12
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v2, :cond_5

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, p2, v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->needsHeader(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    return v3

    :cond_6
    :goto_0
    return v1
.end method

.method public static printStaticDefines(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstantValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/jvm/JNIWriter$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "L"

    const-string v4, ""

    const-string v5, "-"

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :pswitch_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_0

    move-object v4, v5

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InfD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_1
    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move-object v4, v5

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Inff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "f"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    check-cast v1, Ljava/lang/Character;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const v4, 0xffff

    and-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lorg/openjdk/tools/javac/jvm/JNIWriter;->isWindows:Z

    if-eqz v1, :cond_4

    const-string v1, "i64"

    goto :goto_0

    :cond_4
    const-string v1, "LL"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1L"

    goto :goto_1

    :cond_5
    const-string v1, "0L"

    :goto_1
    if-eqz v1, :cond_6

    const-string v2, "#undef "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->CLASS:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encode(Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    sget-object v2, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->FIELDSTUB:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    invoke-static {p1, v2}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encode(Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#define "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cppGuardBegin(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "#ifdef __cplusplus"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "extern \"C\" {"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "#endif"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public cppGuardEnd(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "#ifdef __cplusplus"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "#endif"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public encodeMethod(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$SignatureException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Java_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->JNI:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    invoke-static {p2, v1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encode(Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5f

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encode(Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;

    iget-object p3, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p2, p3}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;-><init>(Lorg/openjdk/tools/javac/code/Types;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;->getParameterSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "__"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encode(Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fileTop(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "/* DO NOT EDIT THIS FILE - it is machine generated */"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public guardBegin(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/* Header for class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ifndef _Included_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#define _Included_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public guardEnd(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "#endif"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public includes(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "#include <jni.h>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final jniType(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/jvm/JNIWriter$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    const-string v0, "jni unknown type"

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "void"

    return-object p1

    :pswitch_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    if-ne v0, v2, :cond_0

    const-string p1, "jstring"

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isAssignable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "jthrowable"

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isAssignable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "jclass"

    return-object p1

    :cond_2
    const-string p1, "jobject"

    return-object p1

    :pswitch_2
    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;->getComponentType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const-string p1, "jobjectArray"

    return-object p1

    :pswitch_4
    const-string p1, "jdoubleArray"

    return-object p1

    :pswitch_5
    const-string p1, "jfloatArray"

    return-object p1

    :pswitch_6
    const-string p1, "jcharArray"

    return-object p1

    :pswitch_7
    const-string p1, "jlongArray"

    return-object p1

    :pswitch_8
    const-string p1, "jintArray"

    return-object p1

    :pswitch_9
    const-string p1, "jshortArray"

    return-object p1

    :pswitch_a
    const-string p1, "jbyteArray"

    return-object p1

    :pswitch_b
    const-string p1, "jbooleanArray"

    return-object p1

    :pswitch_c
    const-string p1, "jdouble"

    return-object p1

    :pswitch_d
    const-string p1, "jfloat"

    return-object p1

    :pswitch_e
    const-string p1, "jchar"

    return-object p1

    :pswitch_f
    const-string p1, "jlong"

    return-object p1

    :pswitch_10
    const-string p1, "jint"

    return-object p1

    :pswitch_11
    const-string p1, "jshort"

    return-object p1

    :pswitch_12
    const-string p1, "jbyte"

    return-object p1

    :pswitch_13
    const-string p1, "jboolean"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public needsHeader(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->lazyInit()V

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->isSynthetic(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->checkAll:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->needsHeader(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Z)Z

    move-result p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->needsHeader(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Z)Z

    move-result p1

    :goto_0
    return p1

    :cond_2
    :goto_1
    return v1
.end method

.method public write(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/javax/tools/FileObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->multiModuleMode:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    .line 4
    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v3, Lorg/openjdk/javax/tools/StandardLocation;->NATIVE_HEADER_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->NATIVE_HEADER_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    .line 6
    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[.$]"

    const-string v5, "_"

    .line 7
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".h"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 8
    const-string v4, ""

    invoke-interface {v2, v1, v4, v0, v3}, Lorg/openjdk/javax/tools/JavaFileManager;->getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/PrintWriter;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openWriter()Ljava/io/Writer;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 10
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->write(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 11
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->verbose:Z

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "wrote.file"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 13
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 14
    :goto_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 15
    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->delete()Z

    .line 16
    throw p1
.end method

.method public write(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->lazyInit()V

    .line 18
    :try_start_0
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    sget-object v1, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->CLASS:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encode(Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->fileTop(Ljava/io/PrintWriter;)V

    .line 20
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->includes(Ljava/io/PrintWriter;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->guardBegin(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->cppGuardBegin(Ljava/io/PrintWriter;)V

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->writeStatics(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 24
    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->writeMethods(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->cppGuardEnd(Ljava/io/PrintWriter;)V

    .line 26
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->guardEnd(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeMethods(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$SignatureException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->isNative(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;-><init>(Lorg/openjdk/tools/javac/code/Types;)V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v7, v2, :cond_1

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v7}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->isNative(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "/*"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " * Class:     "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " * Method:    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->FIELDSTUB:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    invoke-static {v4, v7}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encode(Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " * Signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;->getSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, " */"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JNIEXPORT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->jniType(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " JNICALL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, p2, v6}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->encodeMethod(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  (JNIEnv *, "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "jclass"

    goto :goto_2

    :cond_3
    const-string v3, "jobject"

    :goto_2
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->jniType(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v2, ");"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public writeStatics(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->isFinal(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstantValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v3, p2, v2}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->printStaticDefines(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/util/Pair;)V

    goto :goto_1

    :cond_3
    return-void
.end method
