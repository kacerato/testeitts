.class public Lorg/openjdk/tools/javac/jvm/ClassWriter;
.super Lorg/openjdk/tools/javac/jvm/ClassFile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;,
        Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;,
        Lorg/openjdk/tools/javac/jvm/ClassWriter$StringOverflow;,
        Lorg/openjdk/tools/javac/jvm/ClassWriter$PoolOverflow;,
        Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;
    }
.end annotation


# static fields
.field static final DATA_BUF_SIZE:I = 0xfff0

.field static final FULL_FRAME:I = 0xff

.field static final MAX_LOCAL_LENGTH_DIFF:I = 0x4

.field static final POOL_BUF_SIZE:I = 0x1fff0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_FRAME_SIZE:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_EXTENDED:I = 0xf7

.field protected static final classWriterKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/jvm/ClassWriter;",
            ">;"
        }
    .end annotation
.end field

.field private static final flagName:[Ljava/lang/String;


# instance fields
.field awriter:Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;

.field bootstrapMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsKey;",
            "Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;",
            ">;"
        }
    .end annotation
.end field

.field databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

.field private debugstackmap:Z

.field private dumpClassModifiers:Z

.field private dumpFieldModifiers:Z

.field private dumpInnerClassModifiers:Z

.field private dumpMethodModifiers:Z

.field private emitSourceFile:Z

.field private final fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field private genCrt:Z

.field innerClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field innerClassesQueue:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field public multiModuleMode:Z

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private final options:Lorg/openjdk/tools/javac/util/Options;

.field pool:Lorg/openjdk/tools/javac/jvm/Pool;

.field poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

.field private final signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

.field private source:Lorg/openjdk/tools/javac/code/Source;

.field private target:Lorg/openjdk/tools/javac/jvm/Target;

.field private types:Lorg/openjdk/tools/javac/code/Types;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->classWriterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    const-string v11, "ABSTRACT"

    const-string v12, "STRICTFP"

    const-string v1, "PUBLIC"

    const-string v2, "PRIVATE"

    const-string v3, "PROTECTED"

    const-string v4, "STATIC"

    const-string v5, "FINAL"

    const-string v6, "SUPER"

    const-string v7, "VOLATILE"

    const-string v8, "TRANSIENT"

    const-string v9, "NATIVE"

    const-string v10, "INTERFACE"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->flagName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 4

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/ClassFile;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/util/ByteBuffer;

    const v1, 0xfff0

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    new-instance v0, Lorg/openjdk/tools/javac/util/ByteBuffer;

    const v1, 0x1fff0

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;-><init>(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->awriter:Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->classWriterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Target;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    const-class v1, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    new-instance p1, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p1, p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;-><init>(Lorg/openjdk/tools/javac/jvm/ClassWriter;Lorg/openjdk/tools/javac/code/Types;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->VERBOSE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->verbose:Z

    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->XJCOV:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->genCrt:Z

    const-string p1, "debug.stackmap"

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->G_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "source"

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->emitSourceFile:Z

    const-string p1, "debug.dumpmodifiers"

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->dumpClassModifiers:Z

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->dumpFieldModifiers:Z

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->dumpInnerClassModifiers:Z

    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v1, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->dumpMethodModifiers:Z

    :cond_6
    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/jvm/ClassWriter;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->lambda$null$1(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Lorg/openjdk/tools/javac/code/Types;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Lorg/openjdk/tools/javac/util/Names;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    return p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/jvm/ClassWriter;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->lambda$writeModuleAttribute$2(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->lambda$writeModuleAttribute$0(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static flagNames(J)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0xfff

    and-long/2addr p0, v1

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x1

    and-long/2addr v4, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/openjdk/tools/javac/jvm/ClassWriter;->flagName:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x1

    shr-long/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/ClassWriter;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->classWriterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$null$1(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    return-void
.end method

.method private static synthetic lambda$writeModuleAttribute$0(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method private synthetic lambda$writeModuleAttribute$2(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Set;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    new-instance p1, Lorg/openjdk/tools/javac/jvm/a;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/jvm/a;-><init>(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V

    invoke-interface {p2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private needsLocalVariableTypeEntry(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private writeParamAnnotations(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 10
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeParamAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;)V

    return-void
.end method

.method private writeParamAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    .line 2
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getRawAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    .line 4
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Types;->getRetention(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    move-result-object v3

    if-ne v3, p2, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 7
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    .line 8
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeCompoundAttribute(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public adjustFlags(J)I
    .locals 5

    long-to-int v0, p1

    const-wide v1, 0x80000000L

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x40

    :cond_0
    const-wide v1, 0x400000000L

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    const-wide v1, 0x80000000000L

    and-long/2addr p1, v1

    cmp-long p1, p1, v3

    if-eqz p1, :cond_2

    and-int/lit16 v0, v0, -0x401

    :cond_2
    return v0
.end method

.method public beginAttrs()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v0, v0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    return v0
.end method

.method public endAttr(I)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    add-int/lit8 v1, p1, -0x4

    iget v2, v0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    sub-int/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->putInt(Lorg/openjdk/tools/javac/util/ByteBuffer;II)V

    return-void
.end method

.method public endAttrs(II)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->putChar(Lorg/openjdk/tools/javac/util/ByteBuffer;II)V

    return-void
.end method

.method public enterInner(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->enterInner(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClassesQueue:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->InnerClasses:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClassesQueue:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_4
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected intersection type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getLastModified(Lorg/openjdk/javax/tools/FileObject;)J
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->getLastModified()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRT: couldn\'t get source file modification date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public nameType(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->externalType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    return-object v0
.end method

.method public putChar(Lorg/openjdk/tools/javac/util/ByteBuffer;II)V
    .locals 1

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method

.method public putInt(Lorg/openjdk/tools/javac/util/ByteBuffer;II)V
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    shr-int/lit8 v0, p3, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method

.method public typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->access$200(Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;)Z

    move-result v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->access$300(Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->access$400(Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;)V

    return-object p1
.end method

.method public writeAttr(Lorg/openjdk/tools/javac/util/Name;)I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendInt(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget p1, p1, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    return p1
.end method

.method public writeBootstrapMethods()V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->BootstrapMethods:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->bootstrapMethods:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->bootstrapMethods:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsKey;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;->mh:Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->get(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsKey;->getUniqueArgs()[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v7, v5}, Lorg/openjdk/tools/javac/jvm/Pool;->get(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    return-void
.end method

.method public writeClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/openjdk/tools/javac/jvm/ClassWriter$PoolOverflow;,
            Lorg/openjdk/tools/javac/jvm/ClassWriter$StringOverflow;
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->multiModuleMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v1, :cond_1

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v3, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    :goto_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v2, v1, v0, v3, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeClassFile(Ljava/io/OutputStream;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->verbose:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "wrote.file"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_4
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->delete()Z

    :cond_4
    throw p1
.end method

.method public writeClassFile(Ljava/io/OutputStream;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/openjdk/tools/javac/jvm/ClassWriter$PoolOverflow;,
            Lorg/openjdk/tools/javac/jvm/ClassWriter$StringOverflow;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    const-wide/32 v4, 0x1000000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->reset()V

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->reset()V

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->access$400(Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;)V

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iput-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    iput-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClassesQueue:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->bootstrapMethods:Ljava/util/Map;

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v8, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v9, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    iget-object v9, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    iget-object v10, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v10, v10, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v11, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v10, v11, :cond_1

    const v10, 0x8000

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v12

    const-wide v14, -0x80000000001L

    and-long/2addr v12, v14

    invoke-virtual {v0, v12, v13}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->adjustFlags(J)I

    move-result v10

    and-int/lit8 v12, v10, 0x4

    if-eqz v12, :cond_2

    or-int/lit8 v10, v10, 0x1

    :cond_2
    and-int/lit16 v12, v10, 0x7611

    and-int/lit16 v10, v10, 0x200

    if-nez v10, :cond_3

    or-int/lit8 v10, v12, 0x20

    goto :goto_1

    :cond_3
    move v10, v12

    :goto_1
    iget-boolean v12, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->dumpClassModifiers:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v13, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v12, v13}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CLASSFILE  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "---"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v14, v10

    invoke-static {v14, v15}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->flagNames(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget-object v12, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v12, v10}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v10, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v12, v10, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v12, v11, :cond_5

    check-cast v10, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v10, v10, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->unnamedPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v12, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    new-instance v13, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v14, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v14, v14, Lorg/openjdk/tools/javac/util/Names;->module_info:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {v13, v4, v5, v14, v10}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v12, v13}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v11, v10}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_2

    :cond_5
    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v11, v1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    :goto_2
    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    sget-object v11, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v7, v11}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v12, v7, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v11

    goto :goto_3

    :cond_6
    move v11, v3

    :goto_3
    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    move-object v10, v8

    :goto_4
    invoke-virtual {v10}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v12, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v13, v10, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v13, Lorg/openjdk/tools/javac/code/Type;

    iget-object v13, v13, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v12, v13}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v10, v10, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_4

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v10

    sget-object v11, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v3

    move v12, v11

    :cond_8
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/openjdk/tools/javac/code/Symbol;

    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object v15, v13, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    if-eq v14, v6, :cond_b

    const/4 v15, 0x2

    if-eq v14, v15, :cond_a

    const/4 v15, 0x3

    if-eq v14, v15, :cond_9

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    goto :goto_5

    :cond_9
    check-cast v13, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v13}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->enterInner(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v13}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v13

    const-wide v15, 0x2000000000L

    and-long/2addr v13, v15

    cmp-long v13, v13, v4

    if-nez v13, :cond_8

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_c
    iget-object v4, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lorg/openjdk/tools/javac/util/List;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->enterInner(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_6

    :cond_d
    iget-object v4, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v4, v11}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeFields(Lorg/openjdk/tools/javac/code/Scope;)V

    iget-object v4, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v4, v12}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeMethods(Lorg/openjdk/tools/javac/code/Scope;)V

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->beginAttrs()I

    move-result v4

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_e
    move v5, v3

    goto :goto_8

    :cond_f
    :goto_7
    move v5, v6

    :goto_8
    move-object v10, v8

    :goto_9
    if-nez v5, :cond_11

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v5, v10, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v5

    if-eqz v5, :cond_10

    move v5, v6

    goto :goto_a

    :cond_10
    move v5, v3

    :goto_a
    iget-object v10, v10, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_9

    :cond_11
    if-eqz v5, :cond_14

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->Signature:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v5

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleParamsSig(Lorg/openjdk/tools/javac/util/List;)V

    :cond_12
    iget-object v9, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    invoke-virtual {v9, v7}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    :goto_b
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v9}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v8, v8, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_b

    :cond_13
    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v9, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    invoke-static {v9}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->access$300(Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    invoke-static {v7}, Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;->access$400(Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;)V

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    goto :goto_c

    :cond_14
    move v6, v3

    :goto_c
    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v5, :cond_15

    iget-boolean v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->emitSourceFile:Z

    if-eqz v5, :cond_15

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->SourceFile:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v5

    iget-object v7, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-static {v7}, Lorg/openjdk/tools/javac/file/PathFileObject;->getSimpleName(Lorg/openjdk/javax/tools/FileObject;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v9, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v10, v7}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v7

    invoke-virtual {v9, v7}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v8, v7}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v6, v6, 0x1

    :cond_15
    iget-boolean v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->genCrt:Z

    if-eqz v5, :cond_16

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->SourceID:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v5

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v8, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v9, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v10, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v10}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->getLastModified(Lorg/openjdk/javax/tools/FileObject;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->CompilationID:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v5

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v8, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v9, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v6, v6, 0x2

    :cond_16
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeFlagAttrs(J)I

    move-result v5

    add-int/2addr v6, v5

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getRawAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeJavaAnnotations(Lorg/openjdk/tools/javac/util/List;)I

    move-result v5

    add-int/2addr v6, v5

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Z)I

    move-result v5

    add-int/2addr v6, v5

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeEnclosingMethodAttribute(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)I

    move-result v5

    add-int/2addr v6, v5

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v5, v7, :cond_17

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeModuleAttribute(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)I

    move-result v5

    add-int/2addr v6, v5

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v8

    const-wide/32 v10, -0x20001

    and-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeFlagAttrs(J)I

    move-result v5

    add-int/2addr v6, v5

    :cond_17
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeExtraClassAttributes(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)I

    move-result v5

    add-int/2addr v6, v5

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const v8, -0x35014542    # -8346975.0f

    invoke-virtual {v5, v8}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendInt(I)V

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v5, v7, :cond_18

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v7, 0x35

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_d

    :cond_18
    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->target:Lorg/openjdk/tools/javac/jvm/Target;

    iget v7, v7, Lorg/openjdk/tools/javac/jvm/Target;->minorVersion:I

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->target:Lorg/openjdk/tools/javac/jvm/Target;

    iget v7, v7, Lorg/openjdk/tools/javac/jvm/Target;->majorVersion:I

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    :goto_d
    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writePool(Lorg/openjdk/tools/javac/jvm/Pool;)V

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    if-eqz v5, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeInnerClasses()V

    add-int/lit8 v6, v6, 0x1

    :cond_19
    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->bootstrapMethods:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeBootstrapMethods()V

    add-int/lit8 v6, v6, 0x1

    :cond_1a
    invoke-virtual {v0, v4, v6}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttrs(II)V

    iget-object v4, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    iget v5, v5, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    invoke-virtual {v4, v6, v3, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendBytes([BII)V

    iget-object v4, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, v4, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    iget v4, v4, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    move-object/from16 v6, p1

    invoke-virtual {v6, v5, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iput-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    return-void
.end method

.method public writeCode(Lorg/openjdk/tools/javac/jvm/Code;)V
    .locals 14

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/jvm/Code;->max_stack:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/jvm/Code;->max_locals:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendInt(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/Code;->code:[B

    iget v2, p1, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendBytes([BII)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/Code;->catchInfo:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code;->catchInfo:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, [C

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    check-cast v2, [C

    aget-char v2, v2, v1

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->beginAttrs()I

    move-result v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->LineNumberTable:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, p1, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v4, p1, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    :goto_2
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    :goto_3
    iget-object v6, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, [C

    array-length v7, v7

    if-ge v5, v7, :cond_2

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    check-cast v6, [C

    aget-char v6, v6, v5

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    iget-object v4, v4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    iget-boolean v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->genCrt:Z

    if-eqz v4, :cond_5

    iget-object v4, p1, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    if-eqz v4, :cond_5

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->CharacterRangeTable:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->beginAttrs()I

    move-result v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v8, p1, Lorg/openjdk/tools/javac/jvm/Code;->lineMap:Lorg/openjdk/tools/javac/util/Position$LineMap;

    iget-object v9, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v4, v7, v8, v9}, Lorg/openjdk/tools/javac/jvm/CRTable;->writeCRT(Lorg/openjdk/tools/javac/util/ByteBuffer;Lorg/openjdk/tools/javac/util/Position$LineMap;Lorg/openjdk/tools/javac/util/Log;)I

    move-result v4

    invoke-virtual {p0, v6, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttrs(II)V

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget-boolean v4, p1, Lorg/openjdk/tools/javac/jvm/Code;->varDebugInfo:Z

    if-eqz v4, :cond_10

    iget v4, p1, Lorg/openjdk/tools/javac/jvm/Code;->varBufferSize:I

    if-lez v4, :cond_10

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->LocalVariableTable:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code;->getLVTSize()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v5, v3

    move v6, v5

    :goto_5
    iget v7, p1, Lorg/openjdk/tools/javac/jvm/Code;->varBufferSize:I

    if-ge v5, v7, :cond_a

    iget-object v7, p1, Lorg/openjdk/tools/javac/jvm/Code;->varBuffer:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v7, v7, v5

    iget-object v8, v7, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    iget-char v10, v9, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    if-ltz v10, :cond_7

    iget v11, p1, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    if-gt v10, v11, :cond_7

    move v10, v2

    goto :goto_7

    :cond_7
    move v10, v3

    :goto_7
    invoke-static {v10}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v10, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-char v11, v9, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-char v10, v9, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    if-lez v10, :cond_8

    iget-char v11, v9, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    add-int/2addr v11, v10

    iget v10, p1, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    if-gt v11, v10, :cond_8

    move v10, v2

    goto :goto_8

    :cond_8
    move v10, v3

    :goto_8
    invoke-static {v10}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v10, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-char v9, v9, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v9, v7, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v10, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v11, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v12, v9, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v10, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    iget-object v10, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v11, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {p0, v9}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    invoke-virtual {v11, v9}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v9, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-char v10, v7, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->reg:C

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v9, v7, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v9}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->needsLocalVariableTypeEntry(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v4, v1, 0x1

    if-lez v6, :cond_f

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->LocalVariableTypeTable:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v5, v3

    move v7, v5

    :goto_9
    iget v8, p1, Lorg/openjdk/tools/javac/jvm/Code;->varBufferSize:I

    if-ge v5, v8, :cond_d

    iget-object v8, p1, Lorg/openjdk/tools/javac/jvm/Code;->varBuffer:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v8, v8, v5

    iget-object v9, v8, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v10, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v10}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->needsLocalVariableTypeEntry(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_b

    :cond_b
    iget-object v10, v8, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    iget-object v12, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-char v13, v11, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    invoke-virtual {v12, v13}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v12, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-char v11, v11, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    invoke-virtual {v12, v11}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v11, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v12, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v13, v9, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v12, v13}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v11, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v12, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v13, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v13}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v11, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-char v12, v8, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->reg:C

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_c
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    if-ne v7, v6, :cond_e

    move v3, v2

    :cond_e
    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_c

    :cond_f
    move v1, v4

    :cond_10
    :goto_c
    iget v3, p1, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    if-lez v3, :cond_12

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v3, :cond_11

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack map for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lorg/openjdk/tools/javac/jvm/Code;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    iget-object v3, p1, Lorg/openjdk/tools/javac/jvm/Code;->stackMap:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->getAttributeName(Lorg/openjdk/tools/javac/util/Names;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v3

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeStackMap(Lorg/openjdk/tools/javac/jvm/Code;)V

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_12
    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Z)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttrs(II)V

    return-void
.end method

.method public writeCompoundAttribute(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->awriter:Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Attribute;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeEnclosingMethodAttribute(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->EnclosingMethod:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeEnclosingMethodAttribute(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)I

    move-result p1

    return p1
.end method

.method public writeEnclosingMethodAttribute(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)I
    .locals 5

    .line 2
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v3, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result p1

    .line 4
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 5
    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v4, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 6
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->nameType(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 8
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public writeExtraClassAttributes(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeField(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->adjustFlags(J)I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->dumpFieldModifiers:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FIELD  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->flagNames(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->beginAttrs()I

    move-result v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->ConstantValue:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeMemberAttrs(Lorg/openjdk/tools/javac/code/Symbol;)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttrs(II)V

    return-void
.end method

.method public writeFields(Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 4

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeField(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public writeFlagAttrs(J)I
    .locals 2

    const-wide/32 v0, 0x20000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->Deprecated:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeInnerClasses()V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->InnerClasses:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClassesQueue:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->innerClassesQueue:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->markAbstractIfNeeded(Lorg/openjdk/tools/javac/code/Types;)V

    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    invoke-virtual {p0, v3, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->adjustFlags(J)I

    move-result v3

    int-to-char v3, v3

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_0

    or-int/lit16 v3, v3, 0x400

    int-to-char v3, v3

    :cond_0
    and-int/lit16 v3, v3, -0x801

    int-to-char v3, v3

    iget-boolean v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->dumpInnerClassModifiers:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v5, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INNERCLASS  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v6, v3

    invoke-static {v6, v7}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->flagNames(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->get(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v6, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/jvm/Pool;->get(Ljava/lang/Object;)I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->get(Ljava/lang/Object;)I

    move-result v7

    :cond_3
    invoke-virtual {v4, v7}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    return-void
.end method

.method public writeJavaAnnotations(Lorg/openjdk/tools/javac/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    sget-object v4, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy:[I

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/code/Types;->getRetention(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->RuntimeVisibleAnnotations:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeCompoundAttribute(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->RuntimeInvisibleAnnotations:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeCompoundAttribute(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_7
    return v1
.end method

.method public writeMemberAttrs(Lorg/openjdk/tools/javac/code/Symbol;)I
    .locals 7

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeFlagAttrs(J)I

    move-result v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide v3, 0x80001000L    # 1.060999919E-314

    and-long/2addr v3, v1

    const-wide/16 v5, 0x1000

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const-wide/32 v3, 0x20000000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->signatureGen:Lorg/openjdk/tools/javac/jvm/ClassWriter$CWSignatureGenerator;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->hasTypeVar(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->Signature:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeJavaAnnotations(Lorg/openjdk/tools/javac/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public writeMethod(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 7

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->adjustFlags(J)I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->dumpMethodModifiers:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METHOD  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->flagNames(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->externalType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->beginAttrs()I

    move-result v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->code:Lorg/openjdk/tools/javac/jvm/Code;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->Code:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeCode(Lorg/openjdk/tools/javac/jvm/Code;)V

    const/4 v2, 0x0

    iput-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->Exceptions:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    :goto_1
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v6, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lorg/openjdk/tools/javac/code/Attribute;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->AnnotationDefault:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lorg/openjdk/tools/javac/code/Attribute;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->awriter:Lorg/openjdk/tools/javac/jvm/ClassWriter$AttributeWriter;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Attribute;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_4
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->PARAMETERS:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->isLambdaMethod()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeMethodParametersAttr(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeMemberAttrs(Lorg/openjdk/tools/javac/code/Symbol;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->isLambdaMethod()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeParameterAttrs(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)I

    move-result p1

    add-int/2addr v1, p1

    :cond_6
    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttrs(II)V

    return-void
.end method

.method public writeMethodParametersAttr(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)I
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->externalType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->MethodParameters:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->extraParams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const v3, 0x9010

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    long-to-int v4, v4

    and-int/2addr v3, v4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0x1000

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    long-to-int v4, v4

    and-int/2addr v4, v3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0x1000

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->capturedLocals:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    long-to-int v4, v4

    and-int/2addr v4, v3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0x1000

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public writeMethods(Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 6

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x2000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeMethod(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public writeModuleAttribute(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)I
    .locals 7

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->Module:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->flags:Ljava/util/Set;

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->value(Ljava/util/Set;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->version:Lorg/openjdk/tools/javac/util/Name;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    sget-object v6, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->EXTRA:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    invoke-static {v5}, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->value(Ljava/util/Set;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->version:Lorg/openjdk/tools/javac/util/Name;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->flags:Ljava/util/Set;

    invoke-static {v5}, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->value(Ljava/util/Set;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    if-nez v4, :cond_6

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v6, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_5

    :cond_7
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->opens:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->flags:Ljava/util/Set;

    invoke-static {v5}, Lorg/openjdk/tools/javac/code/Directive$OpensFlag;->value(Ljava/util/Set;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    if-nez v4, :cond_9

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v6, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_7

    :cond_a
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Directive$UsesDirective;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Directive$UsesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_8

    :cond_b
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    new-instance v4, Lorg/openjdk/tools/javac/jvm/b;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/jvm/b;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->impls:Lorg/openjdk/tools/javac/util/List;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_c
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    new-instance p1, Lorg/openjdk/tools/javac/jvm/c;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/jvm/c;-><init>(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V

    invoke-interface {v1, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public writeParameterAttrs(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)I
    .locals 9

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    move v4, v3

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->getRawAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    sget-object v7, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy:[I

    iget-object v8, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/code/Types;->getRetention(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0

    :cond_3
    move v3, v2

    move v4, v3

    :cond_4
    if-eqz v3, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->RuntimeVisibleParameterAnnotations:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v0

    sget-object v2, Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;->RUNTIME:Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    invoke-direct {p0, p1, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeParamAnnotations(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    if-eqz v4, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->RuntimeInvisibleParameterAnnotations:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v0

    sget-object v2, Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;->CLASS:Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    invoke-direct {p0, p1, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeParamAnnotations(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_6
    return v1
.end method

.method public writePool(Lorg/openjdk/tools/javac/jvm/Pool;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/jvm/ClassWriter$PoolOverflow;,
            Lorg/openjdk/tools/javac/jvm/ClassWriter$StringOverflow;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, v0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    iget v4, p1, Lorg/openjdk/tools/javac/jvm/Pool;->pp:I

    const v5, 0xffff

    if-ge v3, v4, :cond_18

    iget-object v4, p1, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v6, v4, Lorg/openjdk/tools/javac/jvm/Pool$Method;

    if-nez v6, :cond_0

    instance-of v6, v4, Lorg/openjdk/tools/javac/jvm/Pool$Variable;

    if-eqz v6, :cond_1

    :cond_0
    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->getUnderlyingSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v4

    :cond_1
    instance-of v6, v4, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-eqz v6, :cond_6

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->isDynamic()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, v4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x200

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    const/16 v6, 0xb

    goto :goto_1

    :cond_2
    const/16 v6, 0xa

    :goto_1
    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, v4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->nameType(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_4

    :cond_3
    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;

    new-instance v5, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;

    iget v6, v4, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->bsmKind:I

    iget-object v7, v4, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->bsm:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v8, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v5, v6, v7, v8}, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;-><init>(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)V

    new-instance v6, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsKey;

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v6, v4, v7}, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsKey;-><init>(Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;Lorg/openjdk/tools/javac/code/Types;)V

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->bootstrapMethods:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;

    if-nez v7, :cond_4

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->bootstrapMethods:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    new-instance v8, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;

    invoke-direct {v8, v5, v7}, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;-><init>(Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;I)V

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->bootstrapMethods:Ljava/util/Map;

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v8

    :cond_4
    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/Names;->BootstrapMethods:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    invoke-virtual {p1, v5}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->staticArgs:[Ljava/lang/Object;

    array-length v6, v5

    move v8, v2

    :goto_2
    if-ge v8, v6, :cond_5

    aget-object v9, v5, v8

    invoke-virtual {p1, v9}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v6, v7, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;->index:I

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->nameType(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_4

    :cond_6
    instance-of v6, v4, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-eqz v6, :cond_7

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, v4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->nameType(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_4

    :cond_7
    instance-of v6, v4, Lorg/openjdk/tools/javac/util/Name;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v6, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    move-object v6, v4

    check-cast v6, Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/Name;->toUtf()[B

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    array-length v8, v6

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    array-length v8, v6

    invoke-virtual {v7, v6, v2, v8}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendBytes([BII)V

    array-length v6, v6

    if-gt v6, v5, :cond_8

    goto/16 :goto_4

    :cond_8
    new-instance p1, Lorg/openjdk/tools/javac/jvm/ClassWriter$StringOverflow;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StringOverflow;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    instance-of v5, v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const/4 v6, 0x7

    if-eqz v5, :cond_c

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v7, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v8, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v7, v8, :cond_a

    invoke-virtual {p1, v5}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    :cond_a
    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v6, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_4

    :cond_b
    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v7, v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v7}, Lorg/openjdk/tools/javac/jvm/ClassFile;->externalize(Lorg/openjdk/tools/javac/util/Name;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([B)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->enterInner(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    goto/16 :goto_4

    :cond_c
    instance-of v5, v4, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    if-eqz v5, :cond_d

    check-cast v4, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, v4, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v4, v4, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_4

    :cond_d
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendInt(I)V

    goto/16 :goto_4

    :cond_e
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendLong(J)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_f
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendFloat(F)V

    goto/16 :goto_4

    :cond_10
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendDouble(D)V

    goto :goto_3

    :cond_11
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_4

    :cond_12
    instance-of v5, v4, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    if-eqz v5, :cond_14

    check-cast v4, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v5, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    check-cast v4, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_4

    :cond_13
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v5

    invoke-static {v5}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->xClassName(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_4

    :cond_14
    instance-of v5, v4, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;

    if-eqz v5, :cond_15

    check-cast v4, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v6, v4, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refKind:I

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v4, v4, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refSym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_4

    :cond_15
    instance-of v5, v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eqz v5, :cond_16

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_4

    :cond_16
    instance-of v5, v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-eqz v5, :cond_17

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v4}, Lorg/openjdk/tools/javac/jvm/ClassFile;->externalize(Lorg/openjdk/tools/javac/util/Name;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([B)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_4

    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writePool "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :goto_4
    add-int/2addr v3, v0

    goto/16 :goto_0

    :cond_18
    if-gt v4, v5, :cond_19

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->poolbuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {p0, p1, v1, v4}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->putChar(Lorg/openjdk/tools/javac/util/ByteBuffer;II)V

    return-void

    :cond_19
    new-instance p1, Lorg/openjdk/tools/javac/jvm/ClassWriter$PoolOverflow;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$PoolOverflow;-><init>()V

    throw p1
.end method

.method public writePosition(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/TargetType;->targetTypeValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jvm.ClassWriter: Unknown target type for position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "jvm.ClassWriter: UNKNOWN target type should never occur!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->getExceptionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarLength:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarIndex:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    :cond_0
    :goto_1
    :pswitch_a
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->location:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->location:Lorg/openjdk/tools/javac/util/List;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->getBinaryFromTypePath(Ljava/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_2

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public writeStackMap(Lorg/openjdk/tools/javac/jvm/Code;)V
    .locals 11

    iget v0, p1, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " nframes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    sget-object v1, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I

    iget-object v2, p1, Lorg/openjdk/tools/javac/jvm/Code;->stackMap:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, ":"

    const-string v3, "  "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBuffer:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    :goto_0
    if-ge v5, v0, :cond_10

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/Code;->stackMapTableBuffer:[Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    aget-object v1, v1, v5

    invoke-virtual {v1, p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected stackmap format value"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    move v1, v5

    :goto_1
    if-ge v1, v0, :cond_10

    iget-boolean v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v4, :cond_5

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p1, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBuffer:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    aget-object v4, v4, v1

    iget-boolean v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v6, :cond_6

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " pc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->pc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_6
    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v7, v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->pc:I

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v6, v5

    move v7, v6

    :goto_2
    iget-object v8, v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    array-length v9, v8

    if-ge v6, v9, :cond_7

    add-int/lit8 v7, v7, 0x1

    aget-object v8, v8, v6

    invoke-static {v8}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_2

    :cond_7
    iget-boolean v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v6, :cond_8

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " nlocals="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_8
    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v6, v5

    :goto_3
    iget-object v7, v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    array-length v7, v7

    const-string v8, "]="

    if-ge v6, v7, :cond_a

    iget-boolean v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v7, :cond_9

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " local["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_9
    iget-object v7, v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v7, v7, v6

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeStackMapType(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v7, v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v7, v7, v6

    invoke-static {v7}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_3

    :cond_a
    move v6, v5

    move v7, v6

    :goto_4
    iget-object v9, v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    array-length v10, v9

    if-ge v6, v10, :cond_b

    add-int/lit8 v7, v7, 0x1

    aget-object v9, v9, v6

    invoke-static {v9}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v9

    add-int/2addr v6, v9

    goto :goto_4

    :cond_b
    iget-boolean v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v6, :cond_c

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " nstack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_c
    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v6, v5

    :goto_5
    iget-object v7, v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    array-length v7, v7

    if-ge v6, v7, :cond_e

    iget-boolean v7, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v7, :cond_d

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " stack["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_d
    iget-object v7, v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v7, v7, v6

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeStackMapType(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v7, v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v7, v7, v6

    invoke-static {v7}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_5

    :cond_e
    iget-boolean v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v4, :cond_f

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method public writeStackMapType(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 5

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "empty"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    const-string v2, ")"

    const-string v3, "object("

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz p1, :cond_5

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "float"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    :pswitch_5
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz p1, :cond_7

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "long"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    :pswitch_6
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz p1, :cond_8

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    :pswitch_7
    check-cast p1, Lorg/openjdk/tools/javac/jvm/UninitializedType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninit_object@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/openjdk/tools/javac/jvm/UninitializedType;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget p1, p1, Lorg/openjdk/tools/javac/jvm/UninitializedType;->offset:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_0

    :pswitch_8
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz p1, :cond_a

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "uninit_this"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_a
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public writeTypeAnnotation(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writePosition(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeCompoundAttribute(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V

    return-void
.end method

.method public writeTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;Z)I"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->hasUnknownPosition()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->tryFixPosition()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v5, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassWriter: Position UNKNOWN in type annotation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/TargetType;->isLocal()Z

    move-result v4

    if-eq v4, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emitToClassfile()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    sget-object v4, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy:[I

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/code/Types;->getRetention(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->RuntimeVisibleTypeAnnotations:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeTypeAnnotation(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->RuntimeInvisibleTypeAnnotations:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeAttr(Lorg/openjdk/tools/javac/util/Name;)I

    move-result p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeTypeAnnotation(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->endAttr(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_a
    return v1
.end method

.method public xClassName(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassFile;->externalize(Lorg/openjdk/tools/javac/util/Name;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([B)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xClassName expects class or array type, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
