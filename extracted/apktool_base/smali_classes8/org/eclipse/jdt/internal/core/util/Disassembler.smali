.class public Lorg/eclipse/jdt/internal/core/util/Disassembler;
.super Lorg/eclipse/jdt/core/util/ClassFileBytesDisassembler;
.source "SourceFile"


# static fields
.field private static final ANY_EXCEPTION:[C

.field private static final VERSION_UNKNOWN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_anyexceptionhandler:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Disassembler;->ANY_EXCEPTION:[C

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_versionUnknown:Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Disassembler;->VERSION_UNKNOWN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/util/ClassFileBytesDisassembler;-><init>()V

    return-void
.end method

.method private appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z
    .locals 0

    and-int/2addr p2, p3

    if-eqz p2, :cond_2

    if-nez p5, :cond_0

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p5, :cond_1

    const/4 p5, 0x0

    :cond_1
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    return p5
.end method

.method private bootstrapArgumentsDescription(Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;Lorg/eclipse/jdt/core/util/IConstantPool;)[Ljava/lang/String;
    .locals 7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;->getBootstrapArguments()[I

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;->getBootstrapArguments()[I

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-object v0

    :cond_1
    aget v3, p1, v2

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getKind()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    const/16 v5, 0xf

    if-eq v4, v5, :cond_3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/String;

    check-cast v3, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getMethodDescriptor()[C

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    aput-object v4, v0, v2

    goto :goto_1

    :cond_3
    check-cast v3, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->getReferenceKind()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_4

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5

    goto :goto_1

    :cond_4
    const-string v5, "invokestatic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->getReferenceIndex()I

    move-result v3

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    const-string v5, "{0}.{1}:{2}"

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->methodDescription(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getIntegerValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private bootstrapMethodDescription(Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;Lorg/eclipse/jdt/core/util/IConstantPool;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;->getBootstrapMethodReference()I

    move-result p1

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->getReferenceKind()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->getReferenceIndex()I

    move-result p1

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invokestatic {0}.{1}:{2}"

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->methodDescription(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkMode(II)Z
    .locals 0

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private convertModuleNames(Ljava/lang/StringBuffer;[C)V
    .locals 2

    const/16 v0, 0x24

    const/16 v1, 0x2e

    invoke-static {p2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p2

    const/16 v0, 0x2f

    invoke-static {p2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private decodeModifiers(Ljava/lang/StringBuffer;IZZ[I)V
    .locals 9

    if-nez p5, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p5

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v8, v1

    :goto_0
    if-lt v2, v0, :cond_3

    if-nez v8, :cond_1

    if-nez p3, :cond_2

    .line 3
    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    const-string p2, "default"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    return-void

    .line 5
    :cond_3
    aget v3, p5, v2

    if-eq v3, v1, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const v6, 0x8000

    .line 6
    const-string v7, "mandated"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto/16 :goto_2

    :sswitch_1
    const/16 v6, 0x4000

    .line 7
    const-string v7, "enum"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto/16 :goto_2

    :sswitch_2
    const/16 v6, 0x1000

    .line 8
    const-string v7, "synthetic"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto/16 :goto_2

    :sswitch_3
    const/16 v6, 0x800

    .line 9
    const-string v7, "strictfp"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto/16 :goto_2

    :sswitch_4
    const/16 v6, 0x400

    .line 10
    const-string v7, "abstract"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto/16 :goto_2

    :sswitch_5
    const/16 v6, 0x100

    .line 11
    const-string v7, "native"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto/16 :goto_2

    :sswitch_6
    const/16 v6, 0x80

    .line 12
    const-string v7, "transient"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto/16 :goto_2

    :sswitch_7
    if-eqz p4, :cond_4

    const/16 v6, 0x40

    .line 13
    const-string v7, "bridge"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto/16 :goto_2

    :cond_4
    const/16 v6, 0x40

    .line 14
    const-string v7, "volatile"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto :goto_2

    :sswitch_8
    const/16 v6, 0x20

    .line 15
    const-string v7, "synchronized"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto :goto_2

    :sswitch_9
    const/16 v6, 0x10

    .line 16
    const-string v7, "final"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto :goto_2

    :sswitch_a
    const/16 v6, 0x8

    .line 17
    const-string v7, "static"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto :goto_2

    :sswitch_b
    const/4 v6, 0x4

    .line 18
    const-string v7, "protected"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto :goto_2

    :cond_5
    const/4 v6, 0x2

    .line 19
    const-string v7, "private"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    .line 20
    const-string v7, "public"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v8

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_5
        0x400 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method private decodeModifiers(Ljava/lang/StringBuffer;I[I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiers(Ljava/lang/StringBuffer;IZZ[I)V

    return-void
.end method

.method private decodeModifiersForField(Ljava/lang/StringBuffer;I)V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiers(Ljava/lang/StringBuffer;I[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x2
        0x8
        0x10
        0x80
        0x40
        0x4000
    .end array-data
.end method

.method private decodeModifiersForFieldForWorkingCopy(Ljava/lang/StringBuffer;I)V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiers(Ljava/lang/StringBuffer;I[I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0x2
        0x8
        0x10
        0x80
        0x40
    .end array-data
.end method

.method private final decodeModifiersForInnerClasses(Ljava/lang/StringBuffer;IZ)V
    .locals 7

    const/4 v0, 0x6

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiers(Ljava/lang/StringBuffer;IZZ[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x2
        0x400
        0x8
        0x10
    .end array-data
.end method

.method private final decodeModifiersForMethod(Ljava/lang/StringBuffer;I)V
    .locals 7

    const/16 v0, 0xa

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiers(Ljava/lang/StringBuffer;IZZ[I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0x2
        0x400
        0x8
        0x10
        0x20
        0x100
        0x800
        0x40
    .end array-data
.end method

.method private final decodeModifiersForMethodParameters(Ljava/lang/StringBuffer;I)V
    .locals 9

    const v0, 0x8000

    const/16 v1, 0x1000

    const/16 v2, 0x10

    filled-new-array {v2, v0, v1}, [I

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiers(Ljava/lang/StringBuffer;IZZ[I)V

    return-void
.end method

.method private final decodeModifiersForModule(Ljava/lang/StringBuffer;I)V
    .locals 6

    const-string v4, "open"

    const/4 v5, 0x1

    const/16 v3, 0x20

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private final decodeModifiersForModuleRequires(Ljava/lang/StringBuffer;I)V
    .locals 11

    const/16 v0, 0x20

    const/16 v1, 0x40

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v10, v3

    :goto_0
    const/4 v3, 0x2

    if-lt v4, v3, :cond_1

    if-nez v10, :cond_0

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    :cond_1
    aget v3, v2, v4

    if-eq v3, v0, :cond_3

    if-eq v3, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v8, 0x40

    const-string v9, "protected"

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v3

    :goto_1
    move v10, v3

    goto :goto_2

    :cond_3
    const/16 v8, 0x20

    const-string v9, "transitive"

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->appendModifier(Ljava/lang/StringBuffer;IILjava/lang/String;Z)Z

    move-result v3

    goto :goto_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private final decodeModifiersForType(Ljava/lang/StringBuffer;I)V
    .locals 3

    const/16 v0, 0x400

    const/16 v1, 0x10

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiers(Ljava/lang/StringBuffer;I[I)V

    return-void
.end method

.method public static decodeStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeStringValue([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStringValue([C)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    aget-char v3, p0, v2

    const/4 v4, 0x1

    .line 5
    invoke-static {v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->appendEscapedChar(Ljava/lang/StringBuffer;CZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private disassemble([Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;I)Ljava/lang/String;
    .locals 8

    .line 877
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x7b

    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 879
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    const/16 p1, 0x7d

    .line 880
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 881
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v3, :cond_1

    .line 882
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    :cond_1
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;->getTag()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 885
    :pswitch_0
    const-string v4, "uninitialized("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 886
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;->getOffset()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0x29

    .line 887
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 888
    :pswitch_1
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;->getClassTypeName()[C

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    .line 889
    invoke-static {v4, v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 890
    array-length v5, v4

    if-lez v5, :cond_2

    aget-char v5, v4, v2

    const/16 v7, 0x5b

    if-ne v5, v7, :cond_2

    .line 891
    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v4

    .line 892
    :cond_2
    invoke-direct {p0, v4, v6, p2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 893
    :pswitch_2
    const-string v4, "uninitialized_this"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 894
    :pswitch_3
    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 895
    :pswitch_4
    const-string v4, "long"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 896
    :pswitch_5
    const-string v4, "double"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 897
    :pswitch_6
    const-string v4, "float"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 898
    :pswitch_7
    const-string v4, "int"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 899
    :pswitch_8
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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

.method private disassemble(ILorg/eclipse/jdt/core/util/IParameterAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 7

    .line 841
    invoke-interface {p2}, Lorg/eclipse/jdt/core/util/IParameterAnnotation;->getAnnotations()[Lorg/eclipse/jdt/core/util/IAnnotation;

    move-result-object p2

    add-int/lit8 p5, p5, 0x1

    .line 842
    invoke-direct {p0, p3, p4, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 843
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_parameterannotationentrystart:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 844
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 845
    array-length p1, p2

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-lt v6, p1, :cond_0

    return-void

    .line 846
    :cond_0
    aget-object v1, p2, v6

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 8

    add-int/lit8 p4, p4, 0x1

    .line 5
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 6
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotation;->getTypeIndex()I

    move-result v0

    .line 7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotation;->getTypeName()[C

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v1

    .line 8
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_annotationentrystart:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v4, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v1

    invoke-direct {p0, v1, v3, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotation;->getComponents()[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    move-result-object p1

    .line 14
    array-length v6, p1

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v6, :cond_0

    .line 15
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 16
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_annotationentryend:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 17
    :cond_0
    aget-object v1, p1, v7

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IAnnotationComponent;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IAnnotationComponent;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 6

    add-int/lit8 v4, p4, 0x1

    .line 41
    invoke-direct {p0, p2, p3, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 42
    sget-object p4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_annotationcomponent:Ljava/lang/String;

    .line 43
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponent;->getComponentNameIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponent;->getComponentName()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {p4, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 46
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponent;->getComponentValue()Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    return-void
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 9

    .line 48
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getTag()I

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, 0x46

    const/16 v3, 0x5a

    const/16 v4, 0x49

    const/16 v5, 0x53

    if-eq v0, v1, :cond_4

    if-eq v0, v5, :cond_4

    const/16 v1, 0x63

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0x73

    if-eq v0, v1, :cond_4

    if-eq v0, v4, :cond_4

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_4

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 49
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_annotationarrayvaluestart:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getAnnotationComponentValues()[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    move-result-object v0

    .line 51
    array-length v1, v0

    const/4 p1, 0x0

    :goto_0
    if-lt p1, v1, :cond_1

    add-int/2addr p4, v2

    .line 52
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 53
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_annotationarrayvalueend:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v7, p4, 0x1

    .line 54
    invoke-direct {p0, p2, p3, v7}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 55
    aget-object v4, v0, p1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getEnumConstantTypeNameIndex()I

    move-result p3

    .line 57
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getEnumConstantTypeName()[C

    move-result-object p4

    invoke-static {p4, v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p4

    .line 58
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getEnumConstantNameIndex()I

    move-result v0

    .line 59
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getEnumConstantName()[C

    move-result-object p1

    .line 60
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_annotationenumvalue:Ljava/lang/String;

    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v2, Ljava/lang/String;

    invoke-static {p4}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p4

    invoke-direct {p0, p4, v7, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object p4

    invoke-direct {v2, p4}, Ljava/lang/String;-><init>([C)V

    .line 64
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p1}, Ljava/lang/String;-><init>([C)V

    filled-new-array {p3, v0, v2, p4}, [Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 66
    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getClassInfoIndex()I

    move-result p3

    .line 67
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getClassInfo()Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p1

    invoke-static {p1, v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    .line 69
    sget-object p4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_annotationclassvalue:Ljava/lang/String;

    .line 70
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p1

    invoke-direct {p0, p1, v7, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p4, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 73
    :cond_4
    :pswitch_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getConstantValue()Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p3

    .line 74
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p4

    if-eq p4, v2, :cond_f

    const/4 p5, 0x3

    if-eq p4, p5, :cond_8

    const/4 p1, 0x4

    if-eq p4, p1, :cond_7

    const/4 p1, 0x5

    if-eq p4, p1, :cond_6

    const/4 p1, 0x6

    if-eq p4, p1, :cond_5

    const/4 p1, 0x0

    goto/16 :goto_3

    .line 75
    :cond_5
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getDoubleValue()D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 76
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getLongValue()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "L"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 77
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFloatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "f"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 78
    :cond_8
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getTag()I

    move-result p1

    const/16 p5, 0x42

    if-eq p1, p5, :cond_e

    const/16 p5, 0x43

    if-eq p1, p5, :cond_d

    if-eq p1, v4, :cond_c

    if-eq p1, v5, :cond_b

    if-eq p1, v3, :cond_9

    goto :goto_2

    .line 80
    :cond_9
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p1

    if-ne p1, v2, :cond_a

    const-string p1, "true"

    goto :goto_1

    :cond_a
    const-string p1, "false"

    :goto_1
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 81
    :cond_b
    const-string p1, "(short) "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 82
    :cond_c
    const-string p1, "(int) "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_d
    const/16 p1, 0x27

    .line 83
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p3

    int-to-char p3, p3

    invoke-static {p4, p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->escapeChar(Ljava/lang/StringBuffer;C)V

    .line 85
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 86
    :cond_e
    const-string p1, "(byte) "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 87
    :goto_2
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 88
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "\""

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeStringValue([C)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    :goto_3
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_annotationdefaultvalue:Ljava/lang/String;

    invoke-static {p3, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 90
    :cond_10
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_annotationannotationvalue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getAnnotationValue()Lorg/eclipse/jdt/core/util/IAnnotation;

    move-result-object v4

    add-int/lit8 v7, p4, 0x1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    .line 92
    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 6

    add-int/lit8 v4, p4, 0x1

    .line 93
    invoke-direct {p0, p2, p3, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_annotationdefaultheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;->getMemberValue()Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    move-result-object v1

    add-int/lit8 p4, p4, 0x2

    .line 96
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 97
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    return-void
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IBootstrapMethodsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;ILorg/eclipse/jdt/core/util/IConstantPool;)V
    .locals 8

    .line 825
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 826
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_bootstrapmethodattributesheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    .line 827
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 828
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IBootstrapMethodsAttribute;->getBootstrapMethods()[Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;

    move-result-object p1

    .line 829
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 830
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 832
    :cond_1
    aget-object v2, p1, v1

    .line 833
    invoke-direct {p0, v2, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->bootstrapArgumentsDescription(Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;Lorg/eclipse/jdt/core/util/IConstantPool;)[Ljava/lang/String;

    move-result-object v3

    .line 834
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_bootstrapmethodentry:Ljava/lang/String;

    .line 835
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 836
    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;->getBootstrapMethodReference()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 837
    invoke-direct {p0, v2, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->bootstrapMethodDescription(Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;Lorg/eclipse/jdt/core/util/IConstantPool;)Ljava/lang/String;

    move-result-object v7

    .line 838
    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IBootstrapMethodsEntry;->getBootstrapArguments()[I

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getArguments([I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v5, v6, v7, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 839
    invoke-static {v4, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 840
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IClassFileAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 2

    add-int/lit8 p4, p4, 0x1

    .line 98
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 99
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_genericattributeheader:Ljava/lang/String;

    .line 100
    new-instance p4, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/lang/String;-><init>([C)V

    .line 101
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p4, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p3, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IClassFileReader;[CLorg/eclipse/jdt/core/util/IMethodInfo;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 38

    move-object/from16 v9, p0

    move-object/from16 v6, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    .line 112
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 113
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getCodeAttribute()Lorg/eclipse/jdt/core/util/ICodeAttribute;

    move-result-object v15

    .line 114
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getDescriptor()[C

    move-result-object v7

    .line 115
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SIGNATURE:[C

    invoke-static {v10, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/eclipse/jdt/core/util/ISignatureAttribute;

    .line 116
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_ANNOTATIONS:[C

    invoke-static {v10, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v5

    .line 117
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_ANNOTATIONS:[C

    invoke-static {v10, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v4

    .line 118
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:[C

    invoke-static {v10, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v3

    .line 119
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:[C

    invoke-static {v10, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v2

    .line 120
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS:[C

    invoke-static {v10, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v1

    .line 121
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS:[C

    invoke-static {v10, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    move-object/from16 p1, v0

    .line 122
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->METHOD_PARAMETERS:[C

    invoke-static {v10, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    move-object/from16 v16, v0

    .line 123
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->ANNOTATION_DEFAULT:[C

    invoke-static {v10, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    const/4 v6, 0x5

    .line 124
    invoke-direct {v9, v14, v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 125
    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_methoddescriptor:Ljava/lang/String;

    .line 126
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getDescriptorIndex()I

    move-result v18

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v1

    .line 127
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v6, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->isDeprecated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_deprecated:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_0
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    if-eqz v8, :cond_1

    .line 132
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_signatureattributeheader:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/ISignatureAttribute;->getSignature()[C

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_1
    if-eqz v15, :cond_3

    .line 134
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_stacksAndLocals:Ljava/lang/String;

    .line 135
    invoke-interface {v15}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getMaxStack()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-interface {v15}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getMaxLocals()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move-object/from16 v19, v0

    move-object/from16 v18, v1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    .line 139
    invoke-direct {v9, v14, v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v4, :cond_4

    .line 140
    move-object v1, v4

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;

    move-object/from16 v20, p1

    move-object/from16 v6, v16

    move-object/from16 v21, v19

    move-object/from16 v0, p0

    move-object/from16 v22, v18

    move-object/from16 v23, v2

    move-object/from16 v2, p4

    move-object/from16 v24, v3

    move-object/from16 v3, p5

    move-object/from16 v25, v4

    move/from16 v4, p6

    move-object/from16 v16, v8

    move-object v8, v5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    .line 141
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    move-object/from16 v20, p1

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v6, v16

    move-object/from16 v22, v18

    move-object/from16 v21, v19

    move-object/from16 v16, v8

    move-object v8, v5

    :goto_1
    if-eqz v8, :cond_6

    .line 142
    move-object v1, v8

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    .line 143
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    move-object/from16 v20, p1

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v6, v16

    move-object/from16 v22, v18

    move-object/from16 v21, v19

    move-object/from16 v16, v8

    move-object v8, v5

    .line 144
    :cond_6
    :goto_2
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getAccessFlags()I

    move-result v5

    .line 145
    invoke-direct {v9, v11, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForMethod(Ljava/lang/StringBuffer;I)V

    .line 146
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->isSynthetic()Z

    move-result v0

    const/16 v4, 0x10

    if-eqz v0, :cond_7

    invoke-direct {v9, v14, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 147
    const-string v0, "synthetic"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const/16 v3, 0x2f

    const/16 v2, 0x2e

    .line 149
    invoke-static {v7, v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 150
    invoke-direct {v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->isVarArgs(Lorg/eclipse/jdt/core/util/IMethodInfo;)Z

    move-result v31

    .line 151
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->isClinit()Z

    move-result v0

    const/16 v18, 0x0

    if-nez v0, :cond_8

    .line 152
    move-object v0, v6

    check-cast v0, Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;

    invoke-direct {v9, v7, v15, v0, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getParameterNames([CLorg/eclipse/jdt/core/util/ICodeAttribute;Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;I)[[C

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_8
    move-object/from16 v1, v18

    .line 153
    :goto_3
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->isConstructor()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_a

    .line 154
    invoke-direct {v9, v14, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v16, :cond_9

    .line 155
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/util/ISignatureAttribute;->getSignature()[C

    move-result-object v0

    const/16 v4, 0x2e

    .line 156
    invoke-static {v0, v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 157
    invoke-direct {v9, v14, v11, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleGenericSignature(ILjava/lang/StringBuffer;[C)V

    const/16 v3, 0x20

    .line 158
    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v3, p2

    const/4 v10, 0x5

    .line 159
    invoke-direct {v9, v3, v4, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v27

    invoke-direct {v9, v14, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/lit8 v29, v3, 0x1

    const/16 v30, 0x0

    move-object/from16 v26, v0

    move-object/from16 v28, v1

    invoke-static/range {v26 .. v31}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C[C[[CZZZ)[C

    move-result-object v0

    move-object/from16 p2, v1

    move/from16 v32, v5

    const/4 v10, 0x1

    :goto_4
    move-object v5, v0

    goto/16 :goto_6

    :cond_9
    move-object/from16 v3, p2

    const/4 v10, 0x5

    const/16 v4, 0x2e

    .line 160
    invoke-direct {v9, v3, v4, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v3

    invoke-direct {v9, v14, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    const/16 v17, 0x1

    xor-int/lit8 v19, v0, 0x1

    const/16 v17, 0x0

    move-object v0, v7

    move-object/from16 p2, v1

    move-object v1, v3

    move v10, v2

    const/16 v3, 0x20

    move-object/from16 v2, p2

    const/16 v10, 0x2f

    move/from16 v3, v19

    const/16 v10, 0x10

    move/from16 v4, v17

    move/from16 v32, v5

    move/from16 v5, v31

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C[C[[CZZZ)[C

    move-result-object v0

    :goto_5
    move-object v5, v0

    const/4 v10, 0x1

    goto/16 :goto_6

    :cond_a
    move-object/from16 p2, v1

    move v10, v4

    move/from16 v32, v5

    .line 161
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->isClinit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_clinitname:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_5

    .line 163
    :cond_b
    invoke-direct {v9, v14, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v16, :cond_c

    .line 164
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/util/ISignatureAttribute;->getSignature()[C

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v5, 0x2e

    .line 165
    invoke-static {v0, v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 166
    invoke-direct {v9, v14, v11, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleGenericSignature(ILjava/lang/StringBuffer;[C)V

    const/16 v4, 0x20

    .line 167
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getName()[C

    move-result-object v27

    const/16 v1, 0x8

    invoke-direct {v9, v14, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v2

    const/4 v1, 0x1

    xor-int/lit8 v29, v2, 0x1

    const/16 v30, 0x1

    move-object/from16 v26, v0

    move-object/from16 v28, p2

    invoke-static/range {v26 .. v31}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C[C[[CZZZ)[C

    move-result-object v0

    goto :goto_5

    :cond_c
    const/16 v4, 0x20

    const/16 v5, 0x2e

    .line 169
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getName()[C

    move-result-object v1

    const/16 v0, 0x8

    invoke-direct {v9, v14, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/lit8 v17, v2, 0x1

    const/16 v19, 0x1

    move-object v0, v7

    move-object/from16 v2, p2

    move v10, v3

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v5, v31

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C[C[[CZZZ)[C

    move-result-object v0

    goto/16 :goto_4

    .line 170
    :goto_6
    invoke-direct {v9, v14, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object/from16 v4, v20

    move-object/from16 v3, v22

    if-nez v4, :cond_e

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_d
    move-object/from16 v22, p2

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-object v4, v5

    move-object/from16 v37, v6

    move-object/from16 v19, v8

    move-object/from16 v26, v15

    const/4 v6, 0x1

    goto/16 :goto_11

    :cond_e
    :goto_7
    if-eqz v4, :cond_11

    .line 171
    move-object v0, v4

    check-cast v0, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleParameterAnnotationsAttribute;

    .line 172
    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleParameterAnnotationsAttribute;->getParameterAnnotations()[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    move-result-object v0

    .line 173
    array-length v1, v0

    move-object/from16 v2, p2

    if-lez v1, :cond_10

    .line 174
    array-length v10, v2

    move-object/from16 v20, v4

    if-ge v1, v10, :cond_f

    .line 175
    new-array v4, v10, [Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    move-object/from16 v17, v6

    move-object/from16 v19, v8

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static {v0, v8, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v4

    move v1, v10

    goto :goto_a

    :cond_f
    :goto_8
    move-object/from16 v17, v6

    move-object/from16 v19, v8

    goto :goto_9

    :cond_10
    move-object/from16 v20, v4

    goto :goto_8

    :goto_9
    move-object v8, v0

    goto :goto_a

    :cond_11
    move-object/from16 v2, p2

    move-object/from16 v20, v4

    move-object/from16 v17, v6

    move-object/from16 v19, v8

    const/4 v1, -0x1

    move-object/from16 v8, v18

    :goto_a
    if-eqz v3, :cond_13

    .line 176
    move-object v1, v3

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleParameterAnnotationsAttribute;

    .line 177
    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IRuntimeVisibleParameterAnnotationsAttribute;->getParameterAnnotations()[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    move-result-object v0

    .line 178
    array-length v1, v0

    if-lez v1, :cond_12

    .line 179
    array-length v4, v2

    if-ge v1, v4, :cond_12

    .line 180
    new-array v6, v4, [Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/4 v10, 0x1

    invoke-static {v0, v2, v6, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v18, v6

    move v6, v4

    goto :goto_c

    :cond_12
    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/4 v10, 0x1

    move-object/from16 v18, v0

    :goto_b
    move v6, v1

    goto :goto_c

    :cond_13
    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_b

    :goto_c
    const/16 v0, 0x28

    .line 181
    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    add-int/2addr v0, v10

    .line 182
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    invoke-virtual {v4, v5, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move v2, v0

    const/4 v1, 0x0

    :goto_d
    if-lt v1, v6, :cond_14

    .line 184
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-object/from16 v34, v3

    move v6, v10

    move-object/from16 v26, v15

    move-object/from16 v37, v17

    move-object/from16 v35, v20

    goto/16 :goto_12

    :cond_14
    const/16 v0, 0x20

    if-lez v1, :cond_15

    .line 185
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    :cond_15
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v18, :cond_16

    move-object/from16 v26, v15

    move v15, v0

    move-object/from16 v0, p0

    move/from16 v27, v1

    move-object/from16 v1, v18

    move/from16 v33, v2

    move-object v2, v4

    move-object/from16 v34, v3

    move/from16 v3, v27

    move-object/from16 v35, v20

    move-object/from16 v20, v4

    move-object/from16 v4, p5

    move-object/from16 v36, v5

    move/from16 v5, p6

    move-object/from16 v37, v17

    move/from16 v17, v6

    move/from16 v6, p7

    .line 187
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier([Lorg/eclipse/jdt/core/util/IParameterAnnotation;Ljava/lang/StringBuffer;ILjava/lang/String;II)V

    goto :goto_e

    :cond_16
    move/from16 v27, v1

    move/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v36, v5

    move-object/from16 v26, v15

    move-object/from16 v37, v17

    move-object/from16 v35, v20

    move v15, v0

    move-object/from16 v20, v4

    move/from16 v17, v6

    :goto_e
    if-eqz v8, :cond_18

    .line 188
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    move-object/from16 v6, v20

    if-eq v0, v10, :cond_17

    .line 189
    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    :cond_17
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v6

    move/from16 v3, v27

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v20, v6

    move/from16 v6, p7

    .line 191
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier([Lorg/eclipse/jdt/core/util/IParameterAnnotation;Ljava/lang/StringBuffer;ILjava/lang/String;II)V

    :cond_18
    if-nez v27, :cond_19

    .line 192
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eq v0, v10, :cond_19

    move-object/from16 v0, v20

    .line 193
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_19
    move-object/from16 v0, v20

    :goto_f
    move/from16 v1, v33

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x2c

    move-object/from16 v4, v36

    .line 194
    invoke-static {v3, v4, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    const/4 v6, 0x1

    add-int/2addr v2, v6

    if-nez v2, :cond_1a

    .line 195
    array-length v3, v4

    sub-int/2addr v3, v1

    invoke-virtual {v0, v4, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_1a
    sub-int v3, v2, v1

    .line 196
    invoke-virtual {v0, v4, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_10
    add-int/lit8 v1, v27, 0x1

    move-object v5, v4

    move v10, v6

    move/from16 v6, v17

    move-object/from16 v15, v26

    move-object/from16 v3, v34

    move-object/from16 v20, v35

    move-object/from16 v17, v37

    move-object v4, v0

    goto/16 :goto_d

    :cond_1b
    move-object v4, v5

    move-object/from16 v37, v6

    move-object/from16 v19, v8

    move-object/from16 v26, v15

    move-object/from16 v35, v20

    move-object/from16 v34, v22

    const/4 v6, 0x1

    move-object/from16 v22, p2

    .line 197
    :goto_11
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 198
    :goto_12
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getExceptionAttribute()Lorg/eclipse/jdt/core/util/IExceptionAttribute;

    move-result-object v10

    if-eqz v10, :cond_1e

    .line 199
    const-string v0, " throws "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IExceptionAttribute;->getExceptionNames()[[C

    move-result-object v0

    .line 201
    array-length v1, v0

    const/4 v8, 0x0

    :goto_13
    if-lt v8, v1, :cond_1c

    goto :goto_14

    :cond_1c
    if-eqz v8, :cond_1d

    .line 202
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :cond_1d
    aget-object v2, v0, v8

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    .line 205
    invoke-static {v2, v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 206
    invoke-direct {v9, v2, v4, v14}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 207
    :cond_1e
    :goto_14
    invoke-direct {v9, v14, v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    const-string v8, " default "

    move-object/from16 v15, v21

    if-eqz v0, :cond_1f

    if-eqz v15, :cond_1f

    .line 208
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    move-object v1, v15

    check-cast v1, Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_1f
    const/16 v0, 0x10

    .line 210
    invoke-direct {v9, v14, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz v15, :cond_20

    .line 211
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    move-object v1, v15

    check-cast v1, Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_20
    move/from16 v0, v32

    and-int/lit16 v1, v0, 0x100

    if-nez v1, :cond_24

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_24

    .line 213
    const-string v1, " {"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-static {v7}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object v1

    .line 215
    array-length v2, v1

    if-ne v2, v6, :cond_23

    const/16 v17, 0x0

    .line 216
    aget-char v1, v1, v17

    const/16 v2, 0x46

    if-eq v1, v2, :cond_22

    const/16 v2, 0x53

    if-eq v1, v2, :cond_22

    const/16 v2, 0x56

    if-eq v1, v2, :cond_21

    const/16 v2, 0x49

    if-eq v1, v2, :cond_22

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_22

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v1, v13, 0x1

    .line 217
    invoke-direct {v9, v11, v12, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 218
    const-string v1, "return false;"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_15

    .line 220
    :cond_21
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_15

    :cond_22
    :pswitch_0
    add-int/lit8 v1, v13, 0x1

    .line 221
    invoke-direct {v9, v11, v12, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 222
    const-string v1, "return 0;"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_15

    :cond_23
    const/16 v17, 0x0

    add-int/lit8 v1, v13, 0x1

    .line 224
    invoke-direct {v9, v11, v12, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 225
    const-string v1, "return null;"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :goto_15
    const/16 v1, 0x7d

    .line 227
    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_16
    const/4 v1, 0x5

    goto :goto_17

    :cond_24
    const/16 v17, 0x0

    const/16 v1, 0x3b

    .line 228
    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_16

    :cond_25
    move/from16 v0, v32

    const/16 v17, 0x0

    .line 229
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_endofmethodheader:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 230
    :goto_17
    invoke-direct {v9, v14, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz v26, :cond_27

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_26

    move v4, v6

    goto :goto_18

    :cond_26
    move/from16 v4, v17

    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object v3, v7

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v11, v16

    move-object/from16 v12, v19

    move/from16 v8, p7

    .line 231
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/ICodeAttribute;[[C[CZLjava/lang/StringBuffer;Ljava/lang/String;II)V

    :goto_19
    const/4 v0, 0x5

    goto :goto_1a

    :cond_27
    move-object/from16 v11, v16

    move-object/from16 v12, v19

    goto :goto_19

    .line 232
    :goto_1a
    invoke-direct {v9, v14, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    move-object/from16 v6, v37

    if-eqz v0, :cond_28

    if-eqz v6, :cond_28

    .line 233
    move-object v1, v6

    check-cast v1, Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_28
    const/4 v0, 0x4

    .line 234
    invoke-direct {v9, v14, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 235
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v7

    .line 236
    array-length v8, v7

    if-eqz v8, :cond_29

    move/from16 v5, v17

    :goto_1b
    if-lt v5, v8, :cond_2a

    :cond_29
    move-object/from16 v11, p4

    move-object/from16 v22, v12

    move-object/from16 v18, v23

    move-object/from16 v17, v24

    move-object/from16 v19, v25

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v12, p5

    goto/16 :goto_20

    .line 237
    :cond_2a
    aget-object v1, v7, v5

    move-object/from16 v4, v26

    if-eq v1, v4, :cond_31

    if-eq v1, v10, :cond_31

    if-eq v1, v11, :cond_31

    if-eq v1, v15, :cond_31

    move-object/from16 v3, v25

    if-eq v1, v3, :cond_30

    if-eq v1, v12, :cond_30

    move-object/from16 v2, v23

    if-eq v1, v2, :cond_2f

    move-object/from16 v0, v24

    if-eq v1, v0, :cond_2e

    move-object/from16 p1, v7

    move-object/from16 v7, v35

    if-eq v1, v7, :cond_2d

    move/from16 v16, v8

    move-object/from16 v8, v34

    if-eq v1, v8, :cond_2c

    if-eq v1, v6, :cond_2c

    move-object/from16 v24, v0

    .line 238
    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v0

    move-object/from16 v23, v2

    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->DEPRECATED:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 239
    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SYNTHETIC:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_2b

    move-object/from16 v17, v24

    move-object/from16 v0, p0

    move-object/from16 v18, v23

    move-object/from16 v2, p4

    move-object/from16 v19, v3

    move-object/from16 v3, p5

    move-object/from16 v20, v4

    move/from16 v4, p6

    move/from16 v21, v5

    move/from16 v5, p7

    .line 240
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IClassFileAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    move-object v0, v11

    move-object/from16 v22, v12

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 241
    invoke-direct {v9, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_2b
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object v0, v11

    move-object/from16 v22, v12

    move-object/from16 v18, v23

    move-object/from16 v17, v24

    :goto_1c
    move-object/from16 v11, p4

    move-object/from16 v12, p5

    goto/16 :goto_1f

    :cond_2c
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object v0, v11

    move-object/from16 v22, v12

    goto :goto_1c

    :cond_2d
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v16, v8

    move-object v0, v11

    move-object/from16 v22, v12

    move-object/from16 v8, v34

    goto :goto_1c

    :cond_2e
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 p1, v7

    move/from16 v16, v8

    move-object v0, v11

    move-object/from16 v22, v12

    :goto_1d
    move-object/from16 v8, v34

    move-object/from16 v7, v35

    goto :goto_1c

    :cond_2f
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 p1, v7

    move/from16 v16, v8

    move-object v0, v11

    move-object/from16 v22, v12

    :goto_1e
    move-object/from16 v17, v24

    goto :goto_1d

    :cond_30
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 p1, v7

    move/from16 v16, v8

    move-object v0, v11

    move-object/from16 v22, v12

    move-object/from16 v18, v23

    goto :goto_1e

    :cond_31
    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 p1, v7

    move/from16 v16, v8

    move-object v0, v11

    move-object/from16 v22, v12

    move-object/from16 v18, v23

    move-object/from16 v17, v24

    move-object/from16 v19, v25

    goto :goto_1d

    :goto_1f
    add-int/lit8 v5, v21, 0x1

    move-object v11, v0

    move-object/from16 v35, v7

    move-object/from16 v34, v8

    move/from16 v8, v16

    move-object/from16 v24, v17

    move-object/from16 v23, v18

    move-object/from16 v25, v19

    move-object/from16 v26, v20

    move-object/from16 v12, v22

    move-object/from16 v7, p1

    goto/16 :goto_1b

    :goto_20
    if-eqz v15, :cond_32

    .line 242
    move-object v1, v15

    check-cast v1, Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_32
    if-eqz v22, :cond_33

    .line 243
    move-object/from16 v1, v22

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_33
    if-eqz v19, :cond_34

    .line 244
    move-object/from16 v1, v19

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_34
    if-eqz v8, :cond_35

    .line 245
    move-object v1, v8

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleParameterAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleParameterAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_35
    if-eqz v7, :cond_36

    .line 246
    move-object v1, v7

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleParameterAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleParameterAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_36
    if-eqz v17, :cond_37

    .line 247
    move-object/from16 v1, v17

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_37
    if-eqz v18, :cond_38

    .line 248
    move-object/from16 v1, v18

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleTypeAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleTypeAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_38
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/ICodeAttribute;[[C[CZLjava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p5

    move-object/from16 v4, p6

    move/from16 v3, p8

    add-int/lit8 v1, p7, -0x1

    .line 430
    invoke-direct {v6, v5, v4, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 431
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;

    move-object v7, v2

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    invoke-direct/range {v7 .. v15}, Lorg/eclipse/jdt/internal/core/util/DefaultBytecodeVisitor;-><init>(Lorg/eclipse/jdt/core/util/ICodeAttribute;[[C[CZLjava/lang/StringBuffer;Ljava/lang/String;II)V

    .line 432
    :try_start_0
    invoke-interface {v0, v2}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->traverse(Lorg/eclipse/jdt/core/util/IBytecodeVisitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/util/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    add-int/lit8 v2, p7, 0x3

    .line 433
    invoke-direct {v6, v2, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpTab(ILjava/lang/StringBuffer;)V

    .line 434
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classformat_classformatexception:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-direct {v6, v5, v4, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 436
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getExceptionTableLength()I

    move-result v1

    const/16 v2, 0x2f

    const/16 v7, 0x2e

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    add-int/lit8 v10, p7, 0x2

    .line 437
    invoke-direct {v6, v10, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpTab(ILjava/lang/StringBuffer;)V

    .line 438
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getExceptionTable()[Lorg/eclipse/jdt/core/util/IExceptionTableEntry;

    move-result-object v10

    .line 439
    sget-object v11, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_exceptiontableheader:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, p7, 0x3

    .line 440
    invoke-direct {v6, v5, v4, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    move v12, v8

    :goto_1
    if-lt v12, v1, :cond_0

    move v1, v8

    goto :goto_3

    :cond_0
    if-eqz v12, :cond_1

    .line 441
    invoke-direct {v6, v5, v4, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 442
    :cond_1
    aget-object v13, v10, v12

    .line 443
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/IExceptionTableEntry;->getCatchTypeIndex()I

    move-result v14

    if-eqz v14, :cond_2

    .line 444
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/IExceptionTableEntry;->getCatchType()[C

    move-result-object v14

    .line 445
    invoke-static {v14, v2, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 446
    invoke-direct {v6, v14, v7, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v14

    goto :goto_2

    .line 447
    :cond_2
    sget-object v14, Lorg/eclipse/jdt/internal/core/util/Disassembler;->ANY_EXCEPTION:[C

    .line 448
    :goto_2
    sget-object v15, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_exceptiontableentry:Ljava/lang/String;

    .line 449
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/IExceptionTableEntry;->getStartPC()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/IExceptionTableEntry;->getEndPC()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 451
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/IExceptionTableEntry;->getHandlerPC()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 452
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v14}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v2, v7, v13, v9}, [Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-static {v15, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0x2f

    const/16 v7, 0x2e

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 454
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getLineNumberAttribute()Lorg/eclipse/jdt/core/util/ILineNumberAttribute;

    move-result-object v7

    if-nez v7, :cond_4

    move v2, v8

    goto :goto_4

    .line 455
    :cond_4
    invoke-interface {v7}, Lorg/eclipse/jdt/core/util/ILineNumberAttribute;->getLineNumberTableLength()I

    move-result v2

    :goto_4
    if-eqz v2, :cond_8

    add-int/lit8 v9, p7, 0x2

    if-nez v1, :cond_5

    .line 456
    invoke-direct {v6, v5, v4, v9}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    move v9, v1

    goto :goto_5

    .line 457
    :cond_5
    invoke-direct {v6, v9, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpTab(ILjava/lang/StringBuffer;)V

    move v9, v8

    .line 458
    :goto_5
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_linenumberattributeheader:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v10, p7, 0x3

    .line 459
    invoke-direct {v6, v5, v4, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 460
    invoke-interface {v7}, Lorg/eclipse/jdt/core/util/ILineNumberAttribute;->getLineNumberTable()[[I

    move-result-object v11

    move v1, v8

    :goto_6
    if-lt v1, v2, :cond_6

    move v1, v9

    goto :goto_7

    :cond_6
    if-eqz v1, :cond_7

    .line 461
    invoke-direct {v6, v5, v4, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 462
    :cond_7
    sget-object v12, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_linenumbertableentry:Ljava/lang/String;

    .line 463
    aget-object v13, v11, v1

    aget v13, v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 464
    aget-object v14, v11, v1

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    .line 465
    invoke-static {v12, v13}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 466
    :cond_8
    :goto_7
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getLocalVariableAttribute()Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;

    move-result-object v9

    if-nez v9, :cond_9

    move v2, v8

    goto :goto_8

    .line 467
    :cond_9
    invoke-interface {v9}, Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;->getLocalVariableTableLength()I

    move-result v2

    :goto_8
    if-eqz v2, :cond_d

    add-int/lit8 v10, p7, 0x2

    if-nez v1, :cond_a

    .line 468
    invoke-direct {v6, v5, v4, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    move v10, v1

    goto :goto_9

    .line 469
    :cond_a
    invoke-direct {v6, v10, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpTab(ILjava/lang/StringBuffer;)V

    move v10, v8

    .line 470
    :goto_9
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_localvariabletableattributeheader:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, p7, 0x3

    .line 471
    invoke-direct {v6, v5, v4, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 472
    invoke-interface {v9}, Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;->getLocalVariableTable()[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    move-result-object v12

    move v1, v8

    :goto_a
    if-lt v1, v2, :cond_b

    move v1, v10

    goto :goto_b

    :cond_b
    if-eqz v1, :cond_c

    .line 473
    invoke-direct {v6, v5, v4, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 474
    :cond_c
    aget-object v13, v12, v1

    .line 475
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getIndex()I

    move-result v14

    .line 476
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getStartPC()I

    move-result v15

    .line 477
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getLength()I

    move-result v16

    .line 478
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getDescriptor()[C

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v8

    move/from16 v17, v2

    move/from16 v18, v10

    const/16 v2, 0x2f

    const/16 v10, 0x2e

    .line 479
    invoke-static {v8, v2, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 480
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_localvariabletableentry:Ljava/lang/String;

    .line 481
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    add-int v15, v15, v16

    .line 482
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v11

    .line 483
    new-instance v11, Ljava/lang/String;

    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getName()[C

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/String;-><init>([C)V

    .line 484
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 485
    new-instance v14, Ljava/lang/String;

    move-object/from16 v19, v12

    const/16 v12, 0x2e

    invoke-direct {v6, v8, v12, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v8

    invoke-direct {v14, v8}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v10, v15, v11, v13, v14}, [Ljava/lang/String;

    move-result-object v8

    .line 486
    invoke-static {v2, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v16

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v12, v19

    const/4 v8, 0x0

    goto :goto_a

    .line 487
    :cond_d
    :goto_b
    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->LOCAL_VARIABLE_TYPE_TABLE:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/ICodeAttribute;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableAttribute;

    if-nez v8, :cond_e

    const/4 v2, 0x0

    goto :goto_c

    .line 488
    :cond_e
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableAttribute;->getLocalVariableTypeTableLength()I

    move-result v2

    :goto_c
    if-eqz v2, :cond_12

    add-int/lit8 v10, p7, 0x2

    if-nez v1, :cond_f

    .line 489
    invoke-direct {v6, v5, v4, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    move v10, v1

    goto :goto_d

    .line 490
    :cond_f
    invoke-direct {v6, v10, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpTab(ILjava/lang/StringBuffer;)V

    const/4 v10, 0x0

    .line 491
    :goto_d
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_localvariabletypetableattributeheader:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, p7, 0x3

    .line 492
    invoke-direct {v6, v5, v4, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 493
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableAttribute;->getLocalVariableTypeTable()[Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;

    move-result-object v12

    const/4 v1, 0x0

    :goto_e
    if-lt v1, v2, :cond_10

    move v1, v10

    goto :goto_f

    :cond_10
    if-eqz v1, :cond_11

    .line 494
    invoke-direct {v6, v5, v4, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 495
    :cond_11
    aget-object v13, v12, v1

    .line 496
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;->getIndex()I

    move-result v14

    .line 497
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;->getStartPC()I

    move-result v15

    .line 498
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;->getLength()I

    move-result v16

    .line 499
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;->getSignature()[C

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v0

    move/from16 v17, v2

    move/from16 p2, v10

    const/16 v2, 0x2f

    const/16 v10, 0x2e

    .line 500
    invoke-static {v0, v2, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 501
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_localvariabletableentry:Ljava/lang/String;

    .line 502
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    add-int v15, v15, v16

    .line 503
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v11

    .line 504
    new-instance v11, Ljava/lang/String;

    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;->getName()[C

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/String;-><init>([C)V

    .line 505
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 506
    new-instance v14, Ljava/lang/String;

    move-object/from16 v19, v12

    const/16 v12, 0x2e

    invoke-direct {v6, v0, v12, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v10, v15, v11, v13, v14}, [Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p1

    move/from16 v10, p2

    move/from16 v11, v16

    move/from16 v2, v17

    move-object/from16 v12, v19

    goto :goto_e

    .line 508
    :cond_12
    :goto_f
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getAttributesCount()I

    move-result v10

    if-eqz v10, :cond_1d

    .line 509
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v11

    move v12, v1

    const/4 v13, 0x0

    :goto_10
    if-lt v13, v10, :cond_13

    goto/16 :goto_15

    .line 510
    :cond_13
    aget-object v0, v11, v13

    .line 511
    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->STACK_MAP_TABLE:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 512
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/util/IStackMapTableAttribute;

    if-nez v12, :cond_14

    add-int/lit8 v0, p7, 0x2

    .line 513
    invoke-direct {v6, v5, v4, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_11

    :cond_14
    add-int/lit8 v0, p7, 0x1

    .line 514
    invoke-direct {v6, v0, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpTab(ILjava/lang/StringBuffer;)V

    const/4 v12, 0x0

    .line 515
    :goto_11
    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IStackMapTableAttribute;->getNumberOfEntries()I

    move-result v0

    .line 516
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_stackmaptableattributeheader:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v14, v4

    move/from16 v4, p7

    move-object v15, v5

    move/from16 v5, p8

    .line 517
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IStackMapTableAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    goto/16 :goto_14

    :cond_15
    move-object v14, v4

    move-object v15, v5

    goto/16 :goto_14

    :cond_16
    move-object v14, v4

    move-object v15, v5

    .line 518
    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->STACK_MAP:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 519
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/util/IStackMapAttribute;

    if-nez v12, :cond_17

    add-int/lit8 v0, p7, 0x2

    .line 520
    invoke-direct {v6, v15, v14, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_12

    :cond_17
    add-int/lit8 v0, p7, 0x1

    .line 521
    invoke-direct {v6, v0, v15}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpTab(ILjava/lang/StringBuffer;)V

    const/4 v12, 0x0

    .line 522
    :goto_12
    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IStackMapAttribute;->getNumberOfEntries()I

    move-result v0

    .line 523
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_stackmapattributeheader:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    .line 524
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IStackMapAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    goto/16 :goto_14

    .line 525
    :cond_18
    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 526
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    goto :goto_14

    .line 527
    :cond_19
    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 528
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleTypeAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleTypeAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    goto :goto_14

    :cond_1a
    if-eq v0, v7, :cond_1c

    if-eq v0, v9, :cond_1c

    if-eq v0, v8, :cond_1c

    if-nez v12, :cond_1b

    add-int/lit8 v1, p7, 0x2

    .line 529
    invoke-direct {v6, v15, v14, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_13

    :cond_1b
    add-int/lit8 v1, p7, 0x1

    .line 530
    invoke-direct {v6, v1, v15}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpTab(ILjava/lang/StringBuffer;)V

    const/4 v12, 0x0

    .line 531
    :goto_13
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_genericattributeheader:Ljava/lang/String;

    .line 532
    new-instance v2, Ljava/lang/String;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 533
    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1c
    :goto_14
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p8

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_10

    :cond_1d
    :goto_15
    return-void
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IConstantPool;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 593
    invoke-direct {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 594
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->getConstantPoolCount()I

    move-result v5

    .line 595
    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpoolheader:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 596
    invoke-direct {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    move v7, v6

    :goto_0
    if-lt v7, v5, :cond_0

    return-void

    :cond_0
    if-eq v7, v6, :cond_1

    .line 597
    invoke-direct {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 598
    :cond_1
    invoke-interface {v1, v7}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v8

    .line 599
    invoke-interface {v1, v7}, Lorg/eclipse/jdt/core/util/IConstantPool;->getEntryKind(I)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 600
    :pswitch_1
    move-object v9, v8

    check-cast v9, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;

    .line 601
    sget-object v10, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_invokedynamic:Ljava/lang/String;

    .line 602
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 603
    invoke-interface {v9}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;->getBootstrapMethodAttributeIndex()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 604
    invoke-interface {v9}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getNameAndTypeIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 605
    new-instance v13, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodName()[C

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    .line 606
    new-instance v14, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodDescriptor()[C

    move-result-object v8

    invoke-direct {v14, v8}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v11, v12, v9, v13, v14}, [Ljava/lang/String;

    move-result-object v8

    .line 607
    invoke-static {v10, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 608
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 609
    :pswitch_2
    move-object v9, v8

    check-cast v9, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;

    .line 610
    sget-object v10, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_dynamic:Ljava/lang/String;

    .line 611
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 612
    invoke-interface {v9}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;->getBootstrapMethodAttributeIndex()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 613
    invoke-interface {v9}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getNameAndTypeIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 614
    new-instance v13, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldName()[C

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    .line 615
    new-instance v14, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldDescriptor()[C

    move-result-object v8

    invoke-direct {v14, v8}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v11, v12, v9, v13, v14}, [Ljava/lang/String;

    move-result-object v8

    .line 616
    invoke-static {v10, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 617
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 618
    :pswitch_3
    check-cast v8, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;

    .line 619
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_methodtype:Ljava/lang/String;

    .line 620
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 621
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;->getDescriptorIndex()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 622
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodDescriptor()[C

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v10, v11, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 623
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 624
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 625
    :pswitch_4
    check-cast v8, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;

    .line 626
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_methodhandle:Ljava/lang/String;

    .line 627
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 628
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;->getReferenceKind()I

    move-result v11

    invoke-direct {v0, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getReferenceKind(I)Ljava/lang/String;

    move-result-object v11

    .line 629
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry2;->getReferenceIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v10, v11, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 630
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 631
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 632
    :pswitch_5
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getNameAndTypeInfoNameIndex()I

    move-result v9

    .line 633
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getNameAndTypeInfoDescriptorIndex()I

    move-result v8

    .line 634
    invoke-interface {v1, v9}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v10

    .line 635
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v10

    .line 636
    invoke-interface {v1, v8}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v11

    .line 637
    invoke-interface {v11}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v11

    .line 638
    sget-object v12, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_name_and_type:Ljava/lang/String;

    .line 639
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 640
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 641
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 642
    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v10

    .line 643
    invoke-static {v11}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v13, v9, v8, v10, v11}, [Ljava/lang/String;

    move-result-object v8

    .line 644
    invoke-static {v12, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 645
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 646
    :pswitch_6
    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->methodDescription(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)[Ljava/lang/String;

    move-result-object v9

    .line 647
    sget-object v12, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_interfacemethodref:Ljava/lang/String;

    .line 648
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 649
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassIndex()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 650
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getNameAndTypeIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 651
    aget-object v16, v9, v11

    aget-object v17, v9, v6

    aget-object v18, v9, v10

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v8

    .line 652
    invoke-static {v12, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 653
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 654
    :pswitch_7
    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->methodDescription(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)[Ljava/lang/String;

    move-result-object v9

    .line 655
    sget-object v12, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_methodref:Ljava/lang/String;

    .line 656
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 657
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassIndex()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 658
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getNameAndTypeIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 659
    aget-object v16, v9, v11

    aget-object v17, v9, v6

    aget-object v18, v9, v10

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v8

    .line 660
    invoke-static {v12, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 661
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 662
    :pswitch_8
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_fieldref:Ljava/lang/String;

    .line 663
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 664
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassIndex()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 665
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getNameAndTypeIndex()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 666
    new-instance v13, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassName()[C

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    .line 667
    new-instance v14, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldName()[C

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([C)V

    .line 668
    new-instance v15, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFieldDescriptor()[C

    move-result-object v8

    invoke-direct {v15, v8}, Ljava/lang/String;-><init>([C)V

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v8

    .line 669
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 670
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 671
    :pswitch_9
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_string:Ljava/lang/String;

    .line 672
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 673
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getStringIndex()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 674
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getStringValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v10, v11, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 675
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 676
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 677
    :pswitch_a
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_class:Ljava/lang/String;

    .line 678
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 679
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoNameIndex()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 680
    new-instance v12, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v8

    .line 681
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 682
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 683
    :pswitch_b
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_double:Ljava/lang/String;

    .line 684
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 685
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getDoubleValue()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 686
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 687
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 688
    :pswitch_c
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_long:Ljava/lang/String;

    .line 689
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 690
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getLongValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 691
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 692
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 693
    :pswitch_d
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_float:Ljava/lang/String;

    .line 694
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 695
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFloatValue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 696
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 697
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 698
    :pswitch_e
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_integer:Ljava/lang/String;

    .line 699
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 700
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 701
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 702
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 703
    :pswitch_f
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpool_utf8:Ljava/lang/String;

    .line 704
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 705
    new-instance v11, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>([C)V

    invoke-static {v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 706
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 707
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IEnclosingMethodAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    add-int/lit8 p4, p4, 0x1

    .line 708
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 709
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_enclosingmethodheader:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 710
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpoolindex:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IEnclosingMethodAttribute;->getEnclosingClassIndex()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 712
    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
    sget-object p4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpoolindex:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IEnclosingMethodAttribute;->getMethodNameAndTypeIndex()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 715
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 716
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IEnclosingMethodAttribute;->getEnclosingClass()[C

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 717
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IEnclosingMethodAttribute;->getMethodNameAndTypeIndex()I

    move-result p3

    if-eqz p3, :cond_0

    .line 718
    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 719
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IEnclosingMethodAttribute;->getMethodName()[C

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 720
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IEnclosingMethodAttribute;->getMethodDescriptor()[C

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IExtendedAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 14

    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    add-int/lit8 v11, p4, 0x1

    .line 18
    invoke-direct {p0, v9, v10, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 19
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotation;->getTypeIndex()I

    move-result v0

    .line 20
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotation;->getTypeName()[C

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v1

    .line 21
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotationentrystart:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v4, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v1

    move/from16 v12, p5

    invoke-direct {p0, v1, v3, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotation;->getComponents()[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    move-result-object v6

    .line 27
    array-length v7, v6

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    if-lt v13, v7, :cond_0

    add-int/lit8 v0, p4, 0x2

    .line 28
    invoke-direct {p0, v9, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 29
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getTargetType()I

    move-result v13

    .line 30
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_targetType:Ljava/lang/String;

    .line 31
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-direct {p0, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getTargetType(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    packed-switch v13, :pswitch_data_0

    .line 35
    invoke-direct {p0, v9, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v13

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 36
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleTargetTypeContents(ZILorg/eclipse/jdt/core/util/IExtendedAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :pswitch_0
    move-object v0, p0

    move v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 37
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleTypePathContents(ILorg/eclipse/jdt/core/util/IExtendedAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    .line 38
    invoke-direct {p0, v9, v10, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotationentryend:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 40
    :cond_0
    aget-object v1, v6, v13

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v11

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IAnnotationComponent;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IFieldInfo;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 721
    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 722
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getDescriptor()[C

    move-result-object v12

    .line 723
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SIGNATURE:[C

    invoke-static {v7, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IFieldInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/eclipse/jdt/core/util/ISignatureAttribute;

    const/4 v14, 0x5

    .line 724
    invoke-direct {v6, v11, v14}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_fieldddescriptor:Ljava/lang/String;

    .line 726
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getDescriptorIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 727
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->isDeprecated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_deprecated:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    :cond_0
    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    if-eqz v13, :cond_1

    .line 732
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_signatureattributeheader:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ISignatureAttribute;->getSignature()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 734
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_ANNOTATIONS:[C

    invoke-static {v7, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IFieldInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v15

    .line 735
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_ANNOTATIONS:[C

    invoke-static {v7, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IFieldInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v5

    .line 736
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:[C

    invoke-static {v7, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IFieldInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v4

    .line 737
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:[C

    invoke-static {v7, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IFieldInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v3

    const/4 v2, 0x1

    .line 738
    invoke-direct {v6, v11, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_2

    .line 739
    move-object v1, v5

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v17, v3

    move-object/from16 v3, p3

    move-object/from16 v18, v4

    move/from16 v4, p4

    move-object/from16 v19, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    .line 740
    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    :goto_0
    if-eqz v15, :cond_4

    .line 741
    move-object v1, v15

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    .line 742
    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    :cond_4
    :goto_1
    const/16 v0, 0x10

    .line 743
    invoke-direct {v6, v11, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v1

    const/16 v2, 0x2e

    if-eqz v1, :cond_6

    .line 744
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getAccessFlags()I

    move-result v1

    invoke-direct {v6, v8, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForFieldForWorkingCopy(Ljava/lang/StringBuffer;I)V

    if-eqz v13, :cond_5

    .line 745
    invoke-interface {v13}, Lorg/eclipse/jdt/core/util/ISignatureAttribute;->getSignature()[C

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getSignatureForField([C)[C

    move-result-object v1

    invoke-direct {v6, v1, v2, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 746
    :cond_5
    invoke-direct {v6, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getSignatureForField([C)[C

    move-result-object v1

    invoke-direct {v6, v1, v2, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 747
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getAccessFlags()I

    move-result v1

    invoke-direct {v6, v8, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForField(Ljava/lang/StringBuffer;I)V

    .line 748
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 749
    const-string v1, "synthetic"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    :cond_7
    invoke-direct {v6, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getSignatureForField([C)[C

    move-result-object v1

    invoke-direct {v6, v1, v2, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_2
    const/16 v1, 0x20

    .line 752
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 753
    new-instance v1, Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getName()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getConstantValueAttribute()Lorg/eclipse/jdt/core/util/IConstantValueAttribute;

    move-result-object v5

    const/4 v2, 0x4

    if-eqz v5, :cond_8

    .line 755
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_fieldhasconstant:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    invoke-interface {v5}, Lorg/eclipse/jdt/core/util/IConstantValueAttribute;->getConstantValue()Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v3

    .line 757
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v4

    const/4 v1, 0x3

    if-eq v4, v1, :cond_10

    if-eq v4, v2, :cond_f

    if-eq v4, v14, :cond_e

    const/4 v1, 0x6

    if-eq v4, v1, :cond_a

    const/16 v0, 0x8

    if-eq v4, v0, :cond_9

    :cond_8
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 758
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 759
    :cond_a
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getDoubleValue()D

    move-result-wide v20

    .line 760
    invoke-direct {v6, v11, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, v20, v0

    if-nez v0, :cond_b

    .line 761
    const-string v0, "1.0 / 0.0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_b
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, v20, v0

    if-nez v0, :cond_c

    .line 762
    const-string v0, "-1.0 / 0.0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 763
    :cond_c
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 764
    :cond_d
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 765
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getLongValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 766
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFloatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    .line 767
    aget-char v1, v12, v0

    const/16 v4, 0x42

    if-eq v1, v4, :cond_16

    const/16 v4, 0x43

    if-eq v1, v4, :cond_15

    const/16 v4, 0x49

    if-eq v1, v4, :cond_14

    const/16 v4, 0x53

    if-eq v1, v4, :cond_13

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_11

    goto :goto_5

    .line 768
    :cond_11
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    const-string v1, "true"

    goto :goto_4

    :cond_12
    const-string v1, "false"

    :goto_4
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 769
    :cond_13
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 770
    :cond_14
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 771
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 772
    :cond_16
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 773
    :goto_5
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_endoffieldheader:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    invoke-direct {v6, v11, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 775
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v7

    .line 776
    array-length v12, v7

    if-eqz v12, :cond_17

    move v14, v0

    :goto_6
    if-lt v14, v12, :cond_18

    :cond_17
    move-object/from16 v16, v18

    move-object/from16 v18, v19

    goto/16 :goto_9

    .line 777
    :cond_18
    aget-object v1, v7, v14

    if-eq v1, v5, :cond_1c

    if-eq v1, v13, :cond_1c

    move-object/from16 v4, v19

    if-eq v1, v4, :cond_1a

    if-eq v1, v15, :cond_1a

    move-object/from16 v3, v17

    if-eq v1, v3, :cond_19

    move-object/from16 v2, v18

    if-eq v1, v2, :cond_1b

    .line 778
    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v0

    move-object/from16 v18, v2

    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->DEPRECATED:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_19

    .line 779
    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SYNTHETIC:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v16, v18

    move-object/from16 v2, p2

    move-object/from16 v17, v3

    move-object/from16 v3, p3

    move-object/from16 v18, v4

    move/from16 v4, p4

    move-object/from16 v19, v5

    move/from16 v5, p5

    .line 780
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IClassFileAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    goto :goto_8

    :cond_19
    move-object/from16 v17, v3

    :cond_1a
    move-object/from16 v19, v5

    move-object/from16 v16, v18

    move-object/from16 v18, v4

    goto :goto_8

    :cond_1b
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_7
    move-object/from16 v19, v5

    goto :goto_8

    :cond_1c
    move-object/from16 v16, v18

    move-object/from16 v18, v19

    goto :goto_7

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v16

    goto :goto_6

    :goto_9
    if-eqz v15, :cond_1d

    .line 781
    move-object v1, v15

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_1d
    if-eqz v18, :cond_1e

    .line 782
    move-object/from16 v1, v18

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_1e
    if-eqz v16, :cond_1f

    .line 783
    move-object/from16 v1, v16

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_1f
    if-eqz v17, :cond_20

    .line 784
    move-object/from16 v1, v17

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleTypeAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleTypeAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_20
    return-void
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IInnerClassesAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 9

    .line 785
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 786
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_innerattributesheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, p4, 0x1

    .line 787
    invoke-direct {p0, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 788
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IInnerClassesAttribute;->getInnerClassAttributesEntries()[Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;

    move-result-object p1

    .line 789
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    if-eqz v2, :cond_1

    .line 790
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    invoke-direct {p0, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 792
    :cond_1
    aget-object v3, p1, v2

    .line 793
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;->getInnerClassNameIndex()I

    move-result v4

    .line 794
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;->getOuterClassNameIndex()I

    move-result v5

    .line 795
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;->getInnerNameIndex()I

    move-result v6

    .line 796
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;->getAccessFlags()I

    move-result v7

    .line 797
    sget-object v8, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_openinnerclassentry:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    sget-object v8, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_inner_class_info_name:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    sget-object v8, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpoolindex:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_2

    .line 801
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;->getInnerClassName()[C

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 803
    :cond_2
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 805
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_outer_class_info_name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpoolindex:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 807
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_3

    .line 808
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 809
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;->getOuterClassName()[C

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 810
    :cond_3
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 811
    invoke-direct {p0, p4, p2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpTab(ILjava/lang/StringBuffer;)V

    .line 812
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 813
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_inner_name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 814
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpoolindex:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 815
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz v6, :cond_4

    .line 816
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;->getInnerName()[C

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 818
    :cond_4
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_inner_accessflags:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 821
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 822
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    .line 823
    invoke-direct {p0, p2, v7, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForInnerClasses(Ljava/lang/StringBuffer;IZ)V

    .line 824
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_closeinnerclassentry:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 2

    add-int/lit8 p5, p4, 0x2

    .line 103
    invoke-direct {p0, p2, p3, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 104
    sget-object p5, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_methodparametersheader:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;->getMethodParameterLength()I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p5, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, p4, 0x3

    .line 106
    invoke-direct {p0, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 107
    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;->getAccessFlags(I)S

    move-result v1

    .line 108
    invoke-direct {p0, p2, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForMethodParameters(Ljava/lang/StringBuffer;I)V

    .line 109
    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;->getParameterName(I)[C

    move-result-object v1

    if-nez v1, :cond_1

    .line 110
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_anonymousparametername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 111
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/INestHostAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 392
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 393
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 394
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_nesthost:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpoolindex:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/INestHostAttribute;->getNestHostIndex()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 397
    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/INestHostAttribute;->getNestHostName()[C

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/INestMembersAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 5

    .line 399
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 400
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 401
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_nestmembers:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    .line 402
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 403
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/INestMembersAttribute;->getNestMemberAttributesEntries()[Lorg/eclipse/jdt/core/util/INestMemberAttributeEntry;

    move-result-object p1

    .line 404
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 405
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 407
    :cond_1
    aget-object v2, p1, v1

    .line 408
    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/INestMemberAttributeEntry;->getNestMemberIndex()I

    move-result v3

    .line 409
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_constantpoolindex:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_2

    .line 411
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/INestMemberAttributeEntry;->getNestMemberName()[C

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;Ljava/lang/StringBuffer;Ljava/lang/String;IZ)V
    .locals 0

    if-eqz p5, :cond_0

    .line 413
    const-string p3, "exports"

    goto :goto_0

    :cond_0
    const-string p3, "opens"

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;->getPackageName()[C

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->convertModuleNames(Ljava/lang/StringBuffer;[C)V

    .line 416
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;->getTargetModuleNames()[[C

    move-result-object p1

    .line 417
    array-length p3, p1

    if-lez p3, :cond_3

    .line 418
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const-string p3, "to"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    array-length p3, p1

    const/4 p4, 0x0

    :goto_1
    if-lt p4, p3, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    .line 422
    sget-object p5, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    sget-object p5, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    :cond_2
    aget-object p5, p1, p4

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/16 p1, 0x3b

    .line 425
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IProvidesInfo;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 1

    .line 379
    const-string p3, "provides"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IProvidesInfo;->getServiceName()[C

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->convertModuleNames(Ljava/lang/StringBuffer;[C)V

    .line 382
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IProvidesInfo;->getImplementationNames()[[C

    move-result-object p1

    .line 384
    array-length p3, p1

    if-lez p3, :cond_2

    .line 385
    const-string p3, "with"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    array-length p3, p1

    const/4 p4, 0x0

    :goto_0
    if-lt p4, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 388
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    :cond_1
    aget-object v0, p1, p4

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->convertModuleNames(Ljava/lang/StringBuffer;[C)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 p1, 0x3b

    .line 391
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IRequiresInfo;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 426
    const-string p3, "requires "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IRequiresInfo;->getRequiresFlags()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForModuleRequires(Ljava/lang/StringBuffer;I)V

    .line 428
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IRequiresInfo;->getRequiresModuleName()[C

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x3b

    .line 429
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 8

    add-int/lit8 p4, p4, 0x1

    .line 847
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 848
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_runtimeinvisibleannotationsattributeheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 849
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;->getAnnotations()[Lorg/eclipse/jdt/core/util/IAnnotation;

    move-result-object p1

    .line 850
    array-length v6, p1

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v6, :cond_0

    return-void

    .line 851
    :cond_0
    aget-object v1, p1, v7

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleParameterAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 9

    add-int/lit8 p4, p4, 0x1

    .line 852
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 853
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_runtimeinvisibleparameterannotationsattributeheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleParameterAnnotationsAttribute;->getParameterAnnotations()[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    move-result-object p1

    .line 855
    array-length v7, p1

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-lt v8, v7, :cond_0

    return-void

    .line 856
    :cond_0
    aget-object v2, p1, v8

    move-object v0, p0

    move v1, v8

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(ILorg/eclipse/jdt/core/util/IParameterAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleTypeAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 8

    add-int/lit8 p4, p4, 0x1

    .line 857
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 858
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_runtimeinvisibletypeannotationsattributeheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 859
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleTypeAnnotationsAttribute;->getExtendedAnnotations()[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

    move-result-object p1

    .line 860
    array-length v6, p1

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v6, :cond_0

    return-void

    .line 861
    :cond_0
    aget-object v1, p1, v7

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IExtendedAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 8

    add-int/lit8 p4, p4, 0x1

    .line 862
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 863
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_runtimevisibleannotationsattributeheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;->getAnnotations()[Lorg/eclipse/jdt/core/util/IAnnotation;

    move-result-object p1

    .line 865
    array-length v6, p1

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v6, :cond_0

    return-void

    .line 866
    :cond_0
    aget-object v1, p1, v7

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleParameterAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 9

    add-int/lit8 p4, p4, 0x1

    .line 867
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 868
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_runtimevisibleparameterannotationsattributeheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IRuntimeVisibleParameterAnnotationsAttribute;->getParameterAnnotations()[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    move-result-object p1

    .line 870
    array-length v7, p1

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-lt v8, v7, :cond_0

    return-void

    .line 871
    :cond_0
    aget-object v2, p1, v8

    move-object v0, p0

    move v1, v8

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(ILorg/eclipse/jdt/core/util/IParameterAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 8

    add-int/lit8 p4, p4, 0x1

    .line 872
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 873
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_runtimevisibletypeannotationsattributeheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 874
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;->getExtendedAnnotations()[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

    move-result-object p1

    .line 875
    array-length v6, p1

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v6, :cond_0

    return-void

    .line 876
    :cond_0
    aget-object v1, p1, v7

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IExtendedAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IStackMapAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    add-int/lit8 v4, p4, 0x3

    .line 579
    invoke-direct {v0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 580
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IStackMapAttribute;->getNumberOfEntries()I

    move-result v5

    .line 581
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IStackMapAttribute;->getStackMapFrame()[Lorg/eclipse/jdt/core/util/IStackMapFrame;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v5, :cond_0

    return-void

    :cond_0
    if-lez v7, :cond_1

    .line 582
    invoke-direct {v0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 583
    :cond_1
    aget-object v8, v6, v7

    .line 584
    sget-object v9, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_frame_full_frame:Ljava/lang/String;

    .line 585
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getOffsetDelta()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 586
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getNumberOfLocals()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 587
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getLocals()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    move-result-object v10

    invoke-direct {v0, v10, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble([Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;I)Ljava/lang/String;

    move-result-object v13

    .line 588
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getNumberOfStackItems()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 589
    invoke-interface {v8}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getStackItems()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    move-result-object v8

    invoke-direct {v0, v8, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble([Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;I)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v8, p4, 0x5

    .line 590
    invoke-direct {v0, v2, v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpNewLineWithTabs(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v8

    .line 591
    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 592
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private disassemble(Lorg/eclipse/jdt/core/util/IStackMapTableAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    add-int/lit8 v4, p4, 0x3

    .line 535
    invoke-direct {v0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 536
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IStackMapTableAttribute;->getNumberOfEntries()I

    move-result v5

    .line 537
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IStackMapTableAttribute;->getStackMapFrame()[Lorg/eclipse/jdt/core/util/IStackMapFrame;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    move v9, v7

    :goto_0
    if-lt v8, v5, :cond_0

    return-void

    :cond_0
    if-lez v8, :cond_1

    .line 538
    invoke-direct {v0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 539
    :cond_1
    aget-object v10, v6, v8

    .line 540
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getFrameType()I

    move-result v11

    .line 541
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getOffsetDelta()I

    move-result v12

    if-ne v9, v7, :cond_2

    move v9, v12

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    add-int/2addr v9, v12

    :goto_1
    packed-switch v11, :pswitch_data_0

    const/16 v12, 0x3f

    if-gt v11, v12, :cond_3

    .line 542
    sget-object v10, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_frame_same_frame:Ljava/lang/String;

    .line 543
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 544
    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 545
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_3
    const/16 v12, 0x7f

    if-gt v11, v12, :cond_4

    .line 546
    sget-object v11, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_frame_same_locals_1_stack_item:Ljava/lang/String;

    .line 547
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 548
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getStackItems()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    move-result-object v10

    invoke-direct {v0, v10, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble([Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;I)Ljava/lang/String;

    move-result-object v10

    .line 549
    invoke-static {v11, v12, v10}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 550
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 551
    :pswitch_0
    sget-object v11, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_frame_full_frame:Ljava/lang/String;

    .line 552
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 553
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getNumberOfLocals()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 554
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getLocals()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    move-result-object v14

    invoke-direct {v0, v14, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble([Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;I)Ljava/lang/String;

    move-result-object v14

    .line 555
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getNumberOfStackItems()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 556
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getStackItems()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    move-result-object v10

    invoke-direct {v0, v10, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble([Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;I)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v10, p4, 0x5

    .line 557
    invoke-direct {v0, v2, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpNewLineWithTabs(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v10

    .line 558
    invoke-static {v11, v10}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 559
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 560
    :pswitch_1
    sget-object v11, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_frame_append:Ljava/lang/String;

    .line 561
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 562
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getLocals()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    move-result-object v10

    invoke-direct {v0, v10, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble([Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;I)Ljava/lang/String;

    move-result-object v10

    .line 563
    invoke-static {v11, v12, v10}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 564
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 565
    :pswitch_2
    sget-object v10, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_frame_same_frame_extended:Ljava/lang/String;

    .line 566
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 567
    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 568
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 569
    :pswitch_3
    sget-object v10, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_frame_chop:Ljava/lang/String;

    .line 570
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    rsub-int v11, v11, 0xfb

    .line 571
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 572
    invoke-static {v10, v12, v11}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 573
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 574
    :pswitch_4
    sget-object v11, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_frame_same_locals_1_stack_item_extended:Ljava/lang/String;

    .line 575
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 576
    invoke-interface {v10}, Lorg/eclipse/jdt/core/util/IStackMapFrame;->getStackItems()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    move-result-object v10

    invoke-direct {v0, v10, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble([Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;I)Ljava/lang/String;

    move-result-object v10

    .line 577
    invoke-static {v11, v12, v10}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 578
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xf7
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotation;->getTypeName()[C

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v0

    const/16 v1, 0x40

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v0

    invoke-direct {p0, v0, v2, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotation;->getComponents()[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    move-result-object p1

    .line 4
    array-length v0, p1

    if-eqz v0, :cond_2

    const/16 v1, 0x28

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/16 p1, 0x29

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    const/16 v2, 0x2c

    .line 7
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 9
    :cond_1
    aget-object v4, p1, v1

    add-int/lit8 v7, p4, 0x1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotationComponent;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotationComponent;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 7

    .line 10
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponent;->getComponentName()[C

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 11
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponent;->getComponentValue()Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    move-result-object v2

    add-int/lit8 v5, p4, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    return-void
.end method

.method private disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 10

    .line 12
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getTag()I

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x46

    const/16 v3, 0x5a

    const/16 v4, 0x49

    const/16 v5, 0x53

    if-eq v0, v1, :cond_5

    if-eq v0, v5, :cond_5

    const/16 v1, 0x63

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    const/16 v1, 0x73

    if-eq v0, v1, :cond_5

    if-eq v0, v4, :cond_5

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_5

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 13
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getAnnotationComponentValues()[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    move-result-object v0

    const/16 p1, 0x7b

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 15
    array-length v1, v0

    const/4 p1, 0x0

    :goto_0
    if-lt p1, v1, :cond_1

    const/16 p1, 0x7d

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :cond_1
    if-lez p1, :cond_2

    const/16 v3, 0x2c

    .line 17
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 18
    :cond_2
    aget-object v5, v0, p1

    add-int/lit8 v8, p4, 0x1

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getEnumConstantTypeName()[C

    move-result-object p3

    invoke-static {p3, v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p3

    .line 20
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getEnumConstantName()[C

    move-result-object p1

    .line 21
    invoke-static {p3}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p3

    invoke-direct {p0, p3, v7, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 22
    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getClassInfo()Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p1

    invoke-static {p1, v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    .line 24
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p1

    invoke-direct {p0, p1, v7, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 25
    :cond_5
    :pswitch_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getConstantValue()Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p3

    .line 26
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p4

    if-eq p4, v2, :cond_10

    const/4 p5, 0x3

    if-eq p4, p5, :cond_9

    const/4 p1, 0x4

    if-eq p4, p1, :cond_8

    const/4 p1, 0x5

    if-eq p4, p1, :cond_7

    const/4 p1, 0x6

    if-eq p4, p1, :cond_6

    const/4 p1, 0x0

    goto/16 :goto_3

    .line 27
    :cond_6
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getDoubleValue()D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 28
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getLongValue()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "L"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 29
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getFloatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "f"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 30
    :cond_9
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getTag()I

    move-result p1

    const/16 p5, 0x42

    if-eq p1, p5, :cond_f

    const/16 p5, 0x43

    if-eq p1, p5, :cond_e

    if-eq p1, v4, :cond_d

    if-eq p1, v5, :cond_c

    if-eq p1, v3, :cond_a

    goto :goto_2

    .line 32
    :cond_a
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p1

    if-ne p1, v2, :cond_b

    const-string p1, "true"

    goto :goto_1

    :cond_b
    const-string p1, "false"

    :goto_1
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 33
    :cond_c
    const-string p1, "(short) "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 34
    :cond_d
    const-string p1, "(int) "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_e
    const/16 p1, 0x27

    .line 35
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p3

    int-to-char p3, p3

    invoke-static {p4, p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->escapeChar(Ljava/lang/StringBuffer;C)V

    .line 37
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 38
    :cond_f
    const-string p1, "(byte) "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getIntegerValue()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 39
    :goto_2
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 40
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "\""

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeStringValue([C)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 42
    :cond_11
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;->getAnnotationValue()Lorg/eclipse/jdt/core/util/IAnnotation;

    move-result-object v1

    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 43
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 6

    .line 44
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;->getMemberValue()Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    move-result-object v1

    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 45
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    return-void
.end method

.method private disassembleAsModifier(Lorg/eclipse/jdt/core/util/IParameterAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IParameterAnnotation;->getAnnotations()[Lorg/eclipse/jdt/core/util/IAnnotation;

    move-result-object p1

    .line 52
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    if-lez v1, :cond_2

    const/16 v2, 0x20

    .line 53
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    :cond_2
    aget-object v4, p1, v1

    add-int/lit8 v7, p4, 0x1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 8

    .line 46
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;->getAnnotations()[Lorg/eclipse/jdt/core/util/IAnnotation;

    move-result-object p1

    .line 47
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    .line 48
    :cond_0
    aget-object v3, p1, v1

    add-int/lit8 v6, p4, 0x1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 8

    .line 55
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;->getAnnotations()[Lorg/eclipse/jdt/core/util/IAnnotation;

    move-result-object p1

    .line 56
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    if-lez v1, :cond_1

    .line 57
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 58
    :cond_1
    aget-object v3, p1, v1

    add-int/lit8 v6, p4, 0x1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private disassembleAsModifier([Lorg/eclipse/jdt/core/util/IParameterAnnotation;Ljava/lang/StringBuffer;ILjava/lang/String;II)V
    .locals 7

    .line 49
    array-length v0, p1

    if-le v0, p3, :cond_0

    .line 50
    aget-object v2, p1, p3

    add-int/lit8 v5, p5, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IParameterAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method private disassembleEnumConstants(Lorg/eclipse/jdt/core/util/IFieldInfo;Ljava/lang/StringBuffer;Ljava/lang/String;I[[CI)V
    .locals 13

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct {p0, p2, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_ANNOTATIONS:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IFieldInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v12

    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_ANNOTATIONS:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IFieldInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    invoke-direct {p0, p2, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_0
    if-eqz v12, :cond_1

    move-object v1, v12

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    invoke-direct {p0, p2, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v0, v11

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    aget-object v3, v11, v2

    array-length v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    aget-char v3, v3, v1

    const/16 v4, 0x46

    if-eq v3, v4, :cond_6

    const/16 v4, 0x53

    if-eq v3, v4, :cond_6

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_5

    const/16 v4, 0x49

    if-eq v3, v4, :cond_6

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_6

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v3, "\' \'"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string v3, "false"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    :pswitch_1
    const/16 v3, 0x30

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private disassembleEnumConstructor(Lorg/eclipse/jdt/core/util/IClassFileReader;[CLorg/eclipse/jdt/core/util/IMethodInfo;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getCodeAttribute()Lorg/eclipse/jdt/core/util/ICodeAttribute;

    move-result-object v12

    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->METHOD_PARAMETERS:[C

    invoke-static {v7, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getDescriptor()[C

    move-result-object v14

    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_ANNOTATIONS:[C

    invoke-static {v7, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v15

    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_ANNOTATIONS:[C

    invoke-static {v7, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_0
    if-eqz v15, :cond_1

    move-object v1, v15

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_1
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getAccessFlags()I

    move-result v15

    and-int/lit8 v0, v15, 0x2

    invoke-direct {v6, v8, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForMethod(Ljava/lang/StringBuffer;I)V

    const/16 v5, 0x2f

    const/16 v4, 0x2e

    invoke-static {v14, v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    and-int/lit16 v0, v15, 0x80

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move/from16 v16, v2

    goto :goto_0

    :cond_2
    move/from16 v16, v3

    :goto_0
    const/16 v0, 0x8

    move-object/from16 v1, p2

    invoke-direct {v6, v1, v4, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v1

    invoke-direct {v6, v14, v12, v13, v15}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getParameterNames([CLorg/eclipse/jdt/core/util/ICodeAttribute;Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;I)[[C

    move-result-object v12

    invoke-direct {v6, v11, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    xor-int/lit8 v13, v0, 0x1

    const/16 v17, 0x0

    move-object v0, v14

    move-object v2, v12

    move v12, v3

    move v3, v13

    move v13, v4

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C[C[[CZZZ)[C

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    const/16 v2, 0x28

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v8, v0, v12, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v1, 0x2

    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v8, v0, v2, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getExceptionAttribute()Lorg/eclipse/jdt/core/util/IExceptionAttribute;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, " throws "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IExceptionAttribute;->getExceptionNames()[[C

    move-result-object v0

    array-length v1, v0

    move v2, v12

    :goto_1
    if-lt v2, v1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    aget-object v4, v0, v2

    const/16 v5, 0x2f

    invoke-static {v4, v5, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-direct {v6, v4, v13, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    and-int/lit16 v0, v15, 0x100

    if-nez v0, :cond_9

    and-int/lit16 v0, v15, 0x400

    if-nez v0, :cond_9

    const-string v0, " {"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v14}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object v0

    array-length v1, v0

    if-ne v1, v3, :cond_8

    aget-char v0, v0, v12

    const/16 v1, 0x46

    if-eq v0, v1, :cond_7

    const/16 v1, 0x53

    if-eq v0, v1, :cond_7

    const/16 v1, 0x56

    if-eq v0, v1, :cond_6

    const/16 v1, 0x49

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v10, 0x1

    invoke-direct {v6, v8, v9, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    const-string v0, "return false;"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_3

    :cond_7
    :pswitch_0
    add-int/lit8 v0, v10, 0x1

    invoke-direct {v6, v8, v9, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    const-string v0, "return 0;"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v10, 0x1

    invoke-direct {v6, v8, v9, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    const-string v0, "return null;"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :goto_3
    const/16 v0, 0x7d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_9
    const/16 v0, 0x3b

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private disassembleGenericSignature(ILjava/lang/StringBuffer;[C)V
    .locals 8

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p3, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-static {p3}, Lorg/eclipse/jdt/core/Signature;->getTypeParameters([C)[[C

    move-result-object p3

    array-length v0, p3

    if-eqz v0, :cond_6

    const/16 v2, 0x3c

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_0
    if-eqz v3, :cond_1

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v4, p3, v3

    const/16 v5, 0x3a

    invoke-static {v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v5

    invoke-virtual {p2, v4, v2, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    aget-object v4, p3, v3

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->getTypeParameterBounds([C)[[C

    move-result-object v4

    array-length v5, v4

    if-eqz v5, :cond_5

    const-string v6, " extends "

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->isJavaLangObject([C)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v4

    invoke-direct {p0, v4, v1, p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v6, v2

    :goto_1
    if-lt v6, v5, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    const-string v7, " & "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    aget-object v7, v4, v6

    invoke-static {v7}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v7

    invoke-direct {p0, v7, v1, p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private disassembleModule(Lorg/eclipse/jdt/core/util/IModuleAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 10

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IModuleAttribute;->getModuleVersionValue()[C

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_module_version_none:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 4
    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_module_version:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IModuleAttribute;->getRequiresInfo()[Lorg/eclipse/jdt/core/util/IRequiresInfo;

    move-result-object v0

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 7
    invoke-direct {p0, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 8
    array-length v1, v0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 10
    aget-object v4, v0, v3

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRequiresInfo;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IModuleAttribute;->getExportsInfo()[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    move-result-object v0

    .line 12
    array-length v1, v0

    if-lez v1, :cond_4

    .line 13
    invoke-direct {p0, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 14
    array-length v1, v0

    move v3, v2

    :goto_2
    if-lt v3, v1, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 16
    aget-object v5, v0, v3

    const/4 v9, 0x1

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;Ljava/lang/StringBuffer;Ljava/lang/String;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 17
    :cond_4
    :goto_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IModuleAttribute;->getOpensInfo()[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    move-result-object v0

    .line 18
    array-length v1, v0

    if-lez v1, :cond_6

    .line 19
    invoke-direct {p0, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 20
    array-length v1, v0

    move v3, v2

    :goto_4
    if-lt v3, v1, :cond_5

    goto :goto_5

    .line 21
    :cond_5
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 22
    aget-object v5, v0, v3

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;Ljava/lang/StringBuffer;Ljava/lang/String;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 23
    :cond_6
    :goto_5
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IModuleAttribute;->getUsesClassNames()[[C

    move-result-object v0

    .line 24
    array-length v1, v0

    if-lez v1, :cond_8

    .line 25
    invoke-direct {p0, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 26
    array-length v1, v0

    move v3, v2

    :goto_6
    if-lt v3, v1, :cond_7

    goto :goto_7

    .line 27
    :cond_7
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uses "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v3

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    invoke-static {v5, v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 29
    :cond_8
    :goto_7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IModuleAttribute;->getProvidesInfo()[Lorg/eclipse/jdt/core/util/IProvidesInfo;

    move-result-object p1

    .line 30
    array-length v0, p1

    if-lez v0, :cond_a

    .line 31
    invoke-direct {p0, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 32
    array-length v0, p1

    :goto_8
    if-lt v2, v0, :cond_9

    goto :goto_9

    .line 33
    :cond_9
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 34
    aget-object v1, p1, v2

    invoke-direct {p0, v1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IProvidesInfo;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    return-void
.end method

.method private disassembleModule(Lorg/eclipse/jdt/core/util/IModuleMainClassAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_modulemainclassattributeheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    .line 45
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 46
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IModuleMainClassAttribute;->getMainClassName()[C

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->convertModuleNames(Ljava/lang/StringBuffer;[C)V

    const/4 p1, 0x0

    .line 47
    invoke-direct {p0, p2, p3, p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method private disassembleModule(Lorg/eclipse/jdt/core/util/IModulePackagesAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 36
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_modulepackagesattributeheader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IModulePackagesAttribute;->getPackageNames()[[C

    move-result-object v0

    .line 39
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IModulePackagesAttribute;->getPackagesCount()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, p1, :cond_1

    .line 40
    invoke-direct {p0, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void

    :cond_1
    add-int/lit8 v3, p4, 0x1

    .line 41
    invoke-direct {p0, p2, p3, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 42
    aget-object v3, v0, v2

    invoke-direct {p0, p2, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->convertModuleNames(Ljava/lang/StringBuffer;[C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private disassembleTargetTypeContents(ZILorg/eclipse/jdt/core/util/IExtendedAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 4

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/16 p1, 0x16

    if-eq p2, p1, :cond_3

    const/16 p1, 0x17

    if-eq p2, p1, :cond_2

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_offset:Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getOffset()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p6, p6, 0x2

    invoke-direct {p0, p4, p5, p6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_type_argument:Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getAnnotationTypeIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_offset:Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getOffset()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_exception_table_index:Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getExceptionTableIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_3
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_localvariabletargetheader:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p6, p6, 0x3

    invoke-direct {p0, p4, p5, p6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getLocalVariableRefenceInfoLength()I

    move-result p1

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getLocalVariableTable()[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    if-lt p3, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p4, p5, p6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_1
    aget-object p7, p2, p3

    invoke-interface {p7}, Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;->getIndex()I

    move-result v0

    invoke-interface {p7}, Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;->getStartPC()I

    move-result v1

    invoke-interface {p7}, Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;->getLength()I

    move-result p7

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_localvariablereferenceinfoentry:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v1, p7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, p7, v0}, [Ljava/lang/String;

    move-result-object p7

    invoke-static {v2, p7}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p4, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :pswitch_4
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_type_parameter_with_bound:Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getTypeParameterIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getTypeParameterBoundIndex()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_5
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_classextendsimplements:Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getAnnotationTypeIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_throws:Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getAnnotationTypeIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_method_parameter:Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getParameterIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_type_parameter:Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getTypeParameterIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private disassembleTypeMembers(Lorg/eclipse/jdt/core/util/IClassFileReader;[CLjava/lang/StringBuffer;Ljava/lang/String;IIZ)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    const/4 v14, 0x1

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getFieldInfos()[Lorg/eclipse/jdt/core/util/IFieldInfo;

    move-result-object v7

    if-eqz p7, :cond_b

    const/16 v0, 0x10

    invoke-direct {v8, v13, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_b

    array-length v6, v7

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getMethodInfos()[Lorg/eclipse/jdt/core/util/IMethodInfo;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getConstructorArgumentsForEnum([Lorg/eclipse/jdt/core/util/IMethodInfo;)[[C

    move-result-object v16

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_1

    :cond_0
    move/from16 v17, v4

    move-object v15, v5

    move/from16 v19, v6

    goto :goto_1

    :cond_1
    aget-object v0, v7, v4

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    invoke-direct {v8, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    aget-object v1, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v17, v4

    move/from16 v4, p5

    move-object v15, v5

    move-object/from16 v5, v16

    move/from16 v19, v6

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleEnumConstants(Lorg/eclipse/jdt/core/util/IFieldInfo;Ljava/lang/StringBuffer;Ljava/lang/String;I[[CI)V

    add-int/lit8 v4, v17, 0x1

    move-object v5, v15

    move/from16 v6, v19

    goto :goto_0

    :goto_1
    const/16 v6, 0x3b

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v5, v17

    move/from16 v4, v19

    const/16 v16, 0x0

    :goto_2
    if-lt v5, v4, :cond_9

    array-length v7, v15

    const/4 v5, 0x0

    :goto_3
    if-lt v5, v7, :cond_2

    goto/16 :goto_9

    :cond_2
    aget-object v3, v15, v5

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getName()[C

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUES:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    const/16 v2, 0x2f

    const/16 v4, 0x2e

    if-eqz v0, :cond_4

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getDescriptor()[C

    move-result-object v0

    invoke-static {v0, v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getParameterCount([C)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object v0

    invoke-direct {v8, v0, v4, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    new-array v2, v14, [C

    const/4 v3, 0x0

    aput-char v6, v2, v3

    invoke-static {v1, v9, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    :cond_3
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_4
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getName()[C

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUEOF:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getDescriptor()[C

    move-result-object v0

    invoke-static {v0, v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v1

    array-length v2, v1

    const/16 v17, 0x0

    if-ne v2, v14, :cond_5

    aget-object v1, v1, v17

    const-string v2, "Ljava.lang.String;"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object v0

    invoke-direct {v8, v0, v4, v13}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v0

    const/16 v1, 0x4c

    invoke-static {v1, v9, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat(C[CC)[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    :cond_5
    :goto_4
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    goto :goto_5

    :cond_6
    const/16 v17, 0x0

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->isClinit()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IMethodInfo;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {v8, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v18, v5

    move-object/from16 v5, p4

    move/from16 v19, v6

    move/from16 v6, p5

    move/from16 v20, v7

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleEnumConstructor(Lorg/eclipse/jdt/core/util/IClassFileReader;[CLorg/eclipse/jdt/core/util/IMethodInfo;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    goto :goto_5

    :cond_8
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-direct {v8, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IClassFileReader;[CLorg/eclipse/jdt/core/util/IMethodInfo;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :goto_5
    add-int/lit8 v5, v18, 0x1

    move/from16 v6, v19

    move/from16 v7, v20

    goto/16 :goto_3

    :cond_9
    move/from16 v19, v6

    const/16 v17, 0x0

    if-nez v16, :cond_a

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ENUM_VALUES:[C

    aget-object v1, v7, v5

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getName()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_a

    move v6, v4

    move/from16 v18, v5

    move/from16 v16, v14

    goto :goto_6

    :cond_a
    invoke-direct {v8, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    aget-object v1, v7, v5

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v6, v4

    move/from16 v4, p5

    move/from16 v18, v5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IFieldInfo;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :goto_6
    add-int/lit8 v5, v18, 0x1

    move v4, v6

    move/from16 v6, v19

    goto/16 :goto_2

    :cond_b
    const/16 v17, 0x0

    array-length v6, v7

    move/from16 v15, v17

    :goto_7
    if-lt v15, v6, :cond_d

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getMethodInfos()[Lorg/eclipse/jdt/core/util/IMethodInfo;

    move-result-object v15

    array-length v7, v15

    move/from16 v6, v17

    :goto_8
    if-lt v6, v7, :cond_c

    :goto_9
    return-void

    :cond_c
    invoke-direct {v8, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    aget-object v3, v15, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v17, v6

    move/from16 v6, p5

    move/from16 v16, v7

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IClassFileReader;[CLorg/eclipse/jdt/core/util/IMethodInfo;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/lit8 v6, v17, 0x1

    move/from16 v7, v16

    goto :goto_8

    :cond_d
    invoke-direct {v8, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    aget-object v1, v7, v15

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IFieldInfo;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    add-int/2addr v15, v14

    goto :goto_7

    :array_0
    .array-data 2
        0x5bs
        0x4cs
    .end array-data
.end method

.method private disassembleTypePathContents(ILorg/eclipse/jdt/core/util/IExtendedAnnotation;Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 0

    invoke-interface {p2}, Lorg/eclipse/jdt/core/util/IExtendedAnnotation;->getTypePath()[[I

    move-result-object p1

    array-length p2, p1

    if-eqz p2, :cond_0

    add-int/lit8 p5, p5, 0x2

    invoke-direct {p0, p3, p4, p5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_typepath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->toTypePathString([[I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private final dumpNewLineWithTabs(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final dumpTab(ILjava/lang/StringBuffer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_indentation:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static escapeChar(Ljava/lang/StringBuffer;C)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->appendEscapedChar(Ljava/lang/StringBuffer;CZ)V

    return-void
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getArguments([I[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_bootstrapmethodentry_argument:Ljava/lang/String;

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v2

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, "\n\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getConstructorArgumentsForEnum([Lorg/eclipse/jdt/core/util/IMethodInfo;)[[C
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IMethodInfo;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getDescriptor()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    invoke-static {v2, v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getEntryFor(I[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;)Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v2, p2, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getIndex()I

    move-result v3

    if-ne p1, v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLocalIndex(II[C)I
    .locals 5

    invoke-static {p3}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_0

    return p1

    :cond_0
    aget-object v2, p3, v1

    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_1
    aget-char v2, v2, v0

    const/16 v3, 0x44

    if-eq v2, v3, :cond_2

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getParameterNames([CLorg/eclipse/jdt/core/util/ICodeAttribute;Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;I)[[C
    .locals 4

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getParameterCount([C)I

    move-result v0

    new-array v1, v0, [[C

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;->getMethodParameterLength()I

    move-result v3

    :goto_0
    if-lt v2, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-ge v2, v3, :cond_1

    invoke-interface {p3, v2}, Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;->getParameterName(I)[C

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3, v2}, Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;->getParameterName(I)[C

    move-result-object p1

    aput-object p1, v1, v2

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_anonymousparametername:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    aput-object p1, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_8

    invoke-interface {p2}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getLocalVariableAttribute()Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;->getLocalVariableTable()[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    move-result-object p2

    and-int/lit8 p3, p4, 0x8

    if-eqz p3, :cond_3

    move p3, v2

    goto :goto_2

    :cond_3
    const/4 p3, 0x1

    :goto_2
    if-lt v2, v0, :cond_4

    goto :goto_6

    :cond_4
    invoke-direct {p0, p3, v2, p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getLocalIndex(II[C)I

    move-result p4

    invoke-direct {p0, p4, p2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->getEntryFor(I[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;)Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-interface {p4}, Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;->getName()[C

    move-result-object p4

    aput-object p4, v1, v2

    goto :goto_3

    :cond_5
    sget-object p4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_parametername:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {p4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p4

    aput-object p4, v1, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    if-lt v2, v0, :cond_7

    goto :goto_6

    :cond_7
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_parametername:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p1

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-lt v2, v0, :cond_9

    :goto_6
    return-object v1

    :cond_9
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_parametername:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p1

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private getReferenceKind(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_method_type_ref_newinvokespecial:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_method_type_ref_invokeinterface:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_method_type_ref_invokespecial:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_method_type_ref_invokestatic:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_method_type_ref_invokevirtual:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_method_type_ref_putstatic:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_method_type_ref_putfield:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_method_type_ref_getstatic:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_method_type_ref_getfield:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSignatureForField([C)[C
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    const/16 v0, 0x24

    const/16 v1, 0x25

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p1

    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    return-object p1
.end method

.method private getTargetType(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "METHOD_REFERENCE_TYPE_ARGUMENT"

    return-object p1

    :pswitch_1
    const-string p1, "CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT"

    return-object p1

    :pswitch_2
    const-string p1, "METHOD_INVOCATION_TYPE_ARGUMENT"

    return-object p1

    :pswitch_3
    const-string p1, "CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT"

    return-object p1

    :pswitch_4
    const-string p1, "CAST"

    return-object p1

    :pswitch_5
    const-string p1, "METHOD_REFERENCE"

    return-object p1

    :pswitch_6
    const-string p1, "CONSTRUCTOR_REFERENCE"

    return-object p1

    :pswitch_7
    const-string p1, "NEW"

    return-object p1

    :pswitch_8
    const-string p1, "INSTANCEOF"

    return-object p1

    :pswitch_9
    const-string p1, "EXCEPTION_PARAMETER"

    return-object p1

    :pswitch_a
    const-string p1, "RESOURCE_VARIABLE"

    return-object p1

    :pswitch_b
    const-string p1, "LOCAL_VARIABLE"

    return-object p1

    :pswitch_c
    const-string p1, "THROWS"

    return-object p1

    :pswitch_d
    const-string p1, "METHOD_FORMAL_PARAMETER"

    return-object p1

    :pswitch_e
    const-string p1, "METHOD_RECEIVER"

    return-object p1

    :pswitch_f
    const-string p1, "METHOD_RETURN"

    return-object p1

    :pswitch_10
    const-string p1, "FIELD"

    return-object p1

    :pswitch_11
    const-string p1, "METHOD_TYPE_PARAMETER_BOUND"

    return-object p1

    :pswitch_12
    const-string p1, "CLASS_TYPE_PARAMETER_BOUND"

    return-object p1

    :pswitch_13
    const-string p1, "CLASS_EXTENDS"

    return-object p1

    :cond_0
    const-string p1, "METHOD_TYPE_PARAMETER"

    return-object p1

    :cond_1
    const-string p1, "CLASS_TYPE_PARAMETER"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
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

.method private isCompact(I)Z
    .locals 0

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isDeprecated(Lorg/eclipse/jdt/core/util/IClassFileReader;)Z
    .locals 5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->DEPRECATED:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isJavaLangObject([C)Z
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    const/16 v1, 0x2e

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result p1

    return p1
.end method

.method private isSynthetic(Lorg/eclipse/jdt/core/util/IClassFileReader;)Z
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_1

    return v2

    :cond_1
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SYNTHETIC:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isVarArgs(Lorg/eclipse/jdt/core/util/IMethodInfo;)Z
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->VarargsName:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private methodDescription(Lorg/eclipse/jdt/core/util/IConstantPoolEntry;)[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v1, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodName()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    new-instance v2, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getMethodDescriptor()[C

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private returnClassName([CCI)[C
    .locals 1

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object p1

    :cond_0
    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->isCompact(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    array-length p3, p1

    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private toTypePathString([[I)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    aget-object v4, p1, v3

    if-lez v3, :cond_1

    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    aget v5, v4, v2

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_typepath_typeargument:Ljava/lang/String;

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized type_path_kind: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_typepath_wildcard:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_typepath_innertype:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_extendedannotation_typepath_array:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p3, p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->dumpTab(ILjava/lang/StringBuffer;)V

    return-void
.end method


# virtual methods
.method public disassemble(Lorg/eclipse/jdt/core/util/IClassFileReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 249
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IClassFileReader;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public disassemble(Lorg/eclipse/jdt/core/util/IClassFileReader;Ljava/lang/String;I)Ljava/lang/String;
    .locals 37

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    if-nez v9, :cond_0

    .line 250
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    return-object v0

    .line 251
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getClassName()[C

    move-result-object v0

    if-nez v0, :cond_1

    .line 252
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    return-object v0

    :cond_1
    const/16 v6, 0x2f

    const/16 v7, 0x2e

    .line 253
    invoke-static {v0, v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v12

    .line 254
    array-length v13, v12

    .line 255
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getAccessFlags()I

    move-result v14

    and-int/lit16 v0, v14, 0x4000

    if-eqz v0, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    .line 256
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getSourceFileAttribute()Lorg/eclipse/jdt/core/util/ISourceAttribute;

    move-result-object v3

    .line 258
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SIGNATURE:[C

    invoke-static {v9, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    .line 259
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/util/ISignatureAttribute;

    const/4 v1, 0x5

    .line 260
    invoke-direct {v8, v11, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 261
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getMinorVersion()I

    move-result v0

    .line 262
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getMajorVersion()I

    move-result v1

    .line 263
    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_begincommentline:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_3

    .line 264
    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_sourceattributeheader:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/ISourceAttribute;->getSourceFileName()[C

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_3
    const/4 v6, 0x3

    if-ne v0, v6, :cond_4

    const/16 v6, 0x2d

    if-ne v1, v6, :cond_4

    .line 266
    const-string v6, "1.1"

    goto :goto_1

    :cond_4
    shl-int/lit8 v6, v1, 0x10

    add-int/2addr v6, v0

    int-to-long v5, v6

    .line 267
    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object v6

    .line 268
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 269
    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Disassembler;->VERSION_UNKNOWN:Ljava/lang/String;

    .line 270
    :cond_5
    :goto_1
    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_versiondetails:Ljava/lang/String;

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v15, Ljava/lang/StringBuilder;

    and-int/lit8 v20, v14, 0x20

    if-eqz v20, :cond_6

    .line 274
    sget-object v20, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_superflagisset:Ljava/lang/String;

    goto :goto_2

    .line 275
    :cond_6
    sget-object v20, Lorg/eclipse/jdt/internal/core/util/Messages;->classfileformat_superflagisnotset:Ljava/lang/String;

    :goto_2
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->isDeprecated(Lorg/eclipse/jdt/core/util/IClassFileReader;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, ", deprecated"

    goto :goto_3

    :cond_7
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_3
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v1, v0, v7}, [Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v5, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 280
    invoke-direct {v8, v4, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    if-eqz v2, :cond_8

    .line 281
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_signatureattributeheader:Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/ISignatureAttribute;->getSignature()[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    invoke-direct {v8, v4, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_8
    const/16 v0, 0x2e

    goto :goto_4

    :cond_9
    move v0, v7

    .line 283
    :goto_4
    invoke-static {v0, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v6

    const/16 v7, 0x10

    .line 284
    invoke-direct {v8, v11, v7}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    if-eq v6, v0, :cond_a

    .line 285
    const-string v0, "package "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    .line 286
    invoke-virtual {v4, v12, v5, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    .line 287
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    invoke-direct {v8, v4, v10, v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    .line 289
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getNestMembersAttribute()Lorg/eclipse/jdt/core/util/INestMembersAttribute;

    move-result-object v15

    .line 290
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getInnerClassesAttribute()Lorg/eclipse/jdt/core/util/IInnerClassesAttribute;

    move-result-object v1

    .line 291
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_ANNOTATIONS:[C

    invoke-static {v9, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    .line 292
    sget-object v5, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_ANNOTATIONS:[C

    invoke-static {v9, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v5

    .line 293
    sget-object v7, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:[C

    invoke-static {v9, v7}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v7

    move-object/from16 v22, v0

    .line 294
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:[C

    invoke-static {v9, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    move-object/from16 v23, v0

    .line 295
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->BOOTSTRAP_METHODS:[C

    invoke-static {v9, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    move-object/from16 v24, v0

    .line 296
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->MODULE:[C

    invoke-static {v9, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/util/IModuleAttribute;

    move-object/from16 v25, v0

    const/4 v0, 0x1

    .line 297
    invoke-direct {v8, v11, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v26

    if-eqz v26, :cond_c

    if-eqz v5, :cond_b

    .line 298
    move-object/from16 v26, v5

    check-cast v26, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;

    const/16 v27, 0x0

    move-object/from16 v28, v15

    move-object/from16 v15, v22

    move-object/from16 v29, v23

    move-object/from16 v30, v24

    move-object/from16 v22, v7

    move-object/from16 v7, v25

    move-object/from16 v0, p0

    move-object v9, v1

    move-object/from16 v1, v26

    move-object v7, v2

    move-object v2, v4

    move-object/from16 v31, v3

    move-object/from16 v3, p2

    move-object/from16 v17, v7

    move-object v7, v4

    move/from16 v4, v27

    move-object/from16 v32, v5

    move-object/from16 v23, v12

    const/4 v12, 0x0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    .line 299
    invoke-direct {v8, v7, v10, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_6

    :cond_b
    move-object v9, v1

    move-object/from16 v17, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    move-object/from16 v28, v15

    move-object/from16 v15, v22

    move-object/from16 v29, v23

    move-object/from16 v30, v24

    move-object/from16 v22, v7

    move-object/from16 v23, v12

    const/4 v12, 0x0

    move-object v7, v4

    :goto_6
    if-eqz v15, :cond_d

    .line 300
    move-object v1, v15

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleAsModifier(Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    .line 301
    invoke-direct {v8, v7, v10, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_7

    :cond_c
    move-object v9, v1

    move-object/from16 v17, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    move-object/from16 v28, v15

    move-object/from16 v15, v22

    move-object/from16 v29, v23

    move-object/from16 v30, v24

    move-object/from16 v22, v7

    move-object/from16 v23, v12

    const/4 v12, 0x0

    move-object v7, v4

    :cond_d
    :goto_7
    if-eqz v16, :cond_e

    const/16 v0, 0x10

    .line 302
    invoke-direct {v8, v11, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v1

    if-eqz v1, :cond_e

    and-int/lit8 v0, v14, 0x1

    .line 303
    invoke-direct {v8, v7, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForType(Ljava/lang/StringBuffer;I)V

    goto :goto_a

    :cond_e
    if-eqz v9, :cond_11

    .line 304
    invoke-interface {v9}, Lorg/eclipse/jdt/core/util/IInnerClassesAttribute;->getInnerClassAttributesEntries()[Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;

    move-result-object v0

    .line 305
    array-length v1, v0

    move v2, v12

    move v5, v2

    :goto_8
    if-lt v5, v1, :cond_f

    move v5, v2

    goto :goto_9

    .line 306
    :cond_f
    aget-object v3, v0, v5

    .line 307
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;->getInnerClassName()[C

    move-result-object v4

    if-eqz v4, :cond_10

    .line 308
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getClassName()[C

    move-result-object v12

    invoke-static {v12, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 309
    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;->getAccessFlags()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v8, v7, v2, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForInnerClasses(Ljava/lang/StringBuffer;IZ)V

    const/4 v2, 0x1

    :cond_10
    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x0

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_9
    if-nez v5, :cond_12

    .line 310
    invoke-direct {v8, v7, v14}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForType(Ljava/lang/StringBuffer;I)V

    .line 311
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->isSynthetic(Lorg/eclipse/jdt/core/util/IClassFileReader;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 312
    const-string v0, "synthetic"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    :goto_a
    and-int/lit16 v0, v14, 0x2000

    if-eqz v0, :cond_13

    const/4 v5, 0x1

    goto :goto_b

    :cond_13
    const/4 v5, 0x0

    :goto_b
    const v0, 0x8000

    and-int/2addr v0, v14

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_c

    :cond_14
    const/4 v0, 0x0

    :goto_c
    if-eqz v16, :cond_15

    .line 314
    const-string v1, "enum "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_15
    if-nez v0, :cond_18

    .line 315
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->isClass()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 316
    const-string v1, "class "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_16
    if-eqz v5, :cond_17

    .line 317
    const-string v1, "@"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    :cond_17
    const-string v1, "interface "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_d
    const/16 v2, 0x10

    goto :goto_f

    :cond_18
    :goto_e
    const/4 v1, 0x0

    goto :goto_d

    .line 319
    :goto_f
    invoke-direct {v8, v11, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v2, 0x1

    add-int/2addr v6, v2

    sub-int v2, v13, v6

    move-object/from16 v3, v23

    .line 320
    invoke-virtual {v7, v3, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 321
    invoke-static {v3, v6, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    if-eqz v17, :cond_1b

    .line 322
    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jdt/core/util/ISignatureAttribute;->getSignature()[C

    move-result-object v3

    invoke-direct {v8, v11, v7, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleGenericSignature(ILjava/lang/StringBuffer;[C)V

    goto :goto_10

    :cond_19
    move-object/from16 v3, v23

    if-nez v0, :cond_1a

    .line 323
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_1a
    move-object v2, v3

    .line 324
    :cond_1b
    :goto_10
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getSuperclassName()[C

    move-result-object v3

    .line 325
    const-string v4, " extends "

    if-eqz v3, :cond_1c

    const/16 v6, 0x2f

    const/16 v12, 0x2e

    .line 326
    invoke-static {v3, v6, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 327
    invoke-direct {v8, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->isJavaLangObject([C)Z

    move-result v6

    if-nez v6, :cond_1c

    if-nez v16, :cond_1c

    .line 328
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-direct {v8, v3, v12, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_1c
    if-eqz v5, :cond_1d

    const/16 v3, 0x10

    .line 330
    invoke-direct {v8, v11, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v3

    if-nez v3, :cond_21

    .line 331
    :cond_1d
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getInterfaceNames()[[C

    move-result-object v3

    .line 332
    array-length v5, v3

    if-eqz v5, :cond_21

    if-eqz v1, :cond_1e

    .line 333
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 334
    :cond_1e
    const-string v1, " implements "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_11
    const/4 v1, 0x0

    :goto_12
    if-lt v1, v5, :cond_1f

    goto :goto_13

    :cond_1f
    if-eqz v1, :cond_20

    .line 335
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_comma:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    :cond_20
    aget-object v4, v3, v1

    const/16 v6, 0x2f

    const/16 v12, 0x2e

    .line 338
    invoke-static {v4, v6, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 339
    invoke-direct {v8, v4, v12, v11}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->returnClassName([CCI)[C

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_21
    :goto_13
    if-nez v0, :cond_22

    .line 340
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_opentypedeclaration:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_22
    const/4 v12, 0x4

    .line 341
    invoke-direct {v8, v11, v12}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 342
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getConstantPool()Lorg/eclipse/jdt/core/util/IConstantPool;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v8, v1, v7, v10, v3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IConstantPool;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_23
    if-eqz v0, :cond_24

    if-eqz v25, :cond_24

    .line 343
    invoke-direct {v8, v7, v14}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->decodeModifiersForModule(Ljava/lang/StringBuffer;I)V

    .line 344
    const-string v0, "module"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    invoke-interface/range {v25 .. v25}, Lorg/eclipse/jdt/core/util/IModuleAttribute;->getModuleName()[C

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 347
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_space:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_opentypedeclaration:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v13, v25

    const/4 v0, 0x1

    .line 349
    invoke-direct {v8, v13, v7, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleModule(Lorg/eclipse/jdt/core/util/IModuleAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 350
    sget-object v1, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->MODULE_PACKAGES:[C

    move-object v14, v9

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/util/IModulePackagesAttribute;

    .line 351
    invoke-direct {v8, v1, v7, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleModule(Lorg/eclipse/jdt/core/util/IModulePackagesAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 352
    sget-object v1, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->MODULE_MAIN_CLASS:[C

    invoke-static {v9, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/util/IModuleMainClassAttribute;

    .line 353
    invoke-direct {v8, v1, v7, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleModule(Lorg/eclipse/jdt/core/util/IModuleMainClassAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_14

    :cond_24
    move-object v14, v9

    move-object/from16 v13, v25

    move-object/from16 v9, p1

    :goto_14
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v7

    move-object/from16 v4, p2

    move/from16 v6, p3

    move-object/from16 v12, v17

    move-object/from16 v33, v22

    move-object/from16 v22, v15

    move-object v15, v13

    move-object v13, v7

    move/from16 v7, v16

    .line 354
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassembleTypeMembers(Lorg/eclipse/jdt/core/util/IClassFileReader;[CLjava/lang/StringBuffer;Ljava/lang/String;IIZ)V

    const/4 v0, 0x5

    .line 355
    invoke-direct {v8, v11, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 356
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v6

    .line 357
    array-length v7, v6

    .line 358
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->ENCLOSING_METHOD:[C

    invoke-static {v9, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/eclipse/jdt/core/util/IEnclosingMethodAttribute;

    .line 359
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->NEST_HOST:[C

    invoke-static {v9, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/eclipse/jdt/core/util/INestHostAttribute;

    if-eqz v14, :cond_25

    add-int/lit8 v0, v7, -0x1

    goto :goto_15

    :cond_25
    move v0, v7

    :goto_15
    if-eqz v5, :cond_26

    add-int/lit8 v0, v0, -0x1

    :cond_26
    move-object/from16 v3, v31

    if-eqz v3, :cond_27

    add-int/lit8 v0, v0, -0x1

    :cond_27
    if-eqz v12, :cond_28

    add-int/lit8 v0, v0, -0x1

    :cond_28
    move-object/from16 v2, v30

    if-eqz v2, :cond_29

    add-int/lit8 v0, v0, -0x1

    :cond_29
    if-eqz v15, :cond_2a

    add-int/lit8 v0, v0, -0x1

    :cond_2a
    if-eqz v4, :cond_2b

    add-int/lit8 v0, v0, -0x1

    :cond_2b
    if-eqz v28, :cond_2c

    add-int/lit8 v0, v0, -0x1

    :cond_2c
    if-nez v14, :cond_2e

    if-nez v5, :cond_2e

    if-nez v4, :cond_2e

    if-nez v28, :cond_2e

    if-nez v2, :cond_2e

    if-nez v15, :cond_2e

    if-eqz v0, :cond_2d

    goto :goto_16

    :cond_2d
    const/4 v0, 0x0

    goto :goto_17

    .line 360
    :cond_2e
    :goto_16
    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v1, v1, v16

    if-eq v0, v1, :cond_2d

    const/4 v0, 0x0

    .line 361
    invoke-direct {v8, v13, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :goto_17
    if-eqz v14, :cond_2f

    const/4 v1, 0x1

    .line 362
    invoke-direct {v8, v14, v13, v10, v1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IInnerClassesAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_2f
    if-eqz v5, :cond_30

    .line 363
    invoke-direct {v8, v5, v13, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IEnclosingMethodAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_30
    if-eqz v4, :cond_31

    .line 364
    invoke-direct {v8, v4, v13, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/INestHostAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_31
    move-object/from16 v1, v28

    if-eqz v28, :cond_32

    .line 365
    invoke-direct {v8, v1, v13, v10, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/INestMembersAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    :cond_32
    if-eqz v2, :cond_33

    .line 366
    move-object/from16 v16, v2

    check-cast v16, Lorg/eclipse/jdt/core/util/IBootstrapMethodsAttribute;

    const/16 v18, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getConstantPool()Lorg/eclipse/jdt/core/util/IConstantPool;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v34, v1

    move-object/from16 v1, v16

    move-object/from16 v35, v2

    move-object v2, v13

    move-object v10, v3

    move-object/from16 v3, p2

    move-object/from16 v25, v15

    move-object v15, v4

    move/from16 v4, v18

    move-object/from16 v36, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IBootstrapMethodsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;ILorg/eclipse/jdt/core/util/IConstantPool;)V

    :goto_18
    const/4 v0, 0x4

    goto :goto_19

    :cond_33
    move-object/from16 v34, v1

    move-object/from16 v35, v2

    move-object v10, v3

    move-object/from16 v36, v5

    move-object/from16 v25, v15

    move-object v15, v4

    goto :goto_18

    .line 367
    :goto_19
    invoke-direct {v8, v11, v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->checkMode(II)Z

    move-result v0

    if-eqz v0, :cond_38

    if-eqz v22, :cond_34

    .line 368
    move-object/from16 v1, v22

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v13

    move-object/from16 v3, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_34
    move-object/from16 v9, v32

    if-eqz v9, :cond_35

    .line 369
    move-object v1, v9

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v13

    move-object/from16 v3, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :cond_35
    move-object/from16 v5, v33

    if-eqz v5, :cond_36

    .line 370
    move-object v1, v5

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v13

    move-object/from16 v3, p2

    move-object v11, v5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    :goto_1a
    move-object/from16 v5, v29

    goto :goto_1b

    :cond_36
    move-object v11, v5

    goto :goto_1a

    :goto_1b
    if-eqz v5, :cond_37

    .line 371
    move-object v1, v5

    check-cast v1, Lorg/eclipse/jdt/core/util/IRuntimeInvisibleTypeAnnotationsAttribute;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v13

    move-object/from16 v3, p2

    move-object v8, v5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IRuntimeInvisibleTypeAnnotationsAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    goto :goto_1c

    :cond_37
    move-object v8, v5

    :goto_1c
    if-eqz v7, :cond_38

    const/4 v5, 0x0

    :goto_1d
    if-lt v5, v7, :cond_39

    :cond_38
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto/16 :goto_21

    .line 372
    :cond_39
    aget-object v1, v6, v5

    if-eq v1, v14, :cond_3f

    if-eq v1, v15, :cond_3f

    move-object/from16 v4, v34

    if-eq v1, v4, :cond_3e

    if-eq v1, v10, :cond_3e

    if-eq v1, v12, :cond_3e

    move-object/from16 v3, v36

    if-eq v1, v3, :cond_3c

    if-eq v1, v9, :cond_3c

    move-object/from16 v2, v22

    if-eq v1, v2, :cond_3d

    if-eq v1, v8, :cond_3d

    if-eq v1, v11, :cond_3d

    .line 373
    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v0

    move-object/from16 v22, v2

    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->DEPRECATED:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 374
    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SYNTHETIC:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_3c

    move-object/from16 v2, v35

    if-eq v1, v2, :cond_3b

    move-object/from16 v0, v25

    if-eq v1, v0, :cond_3a

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v19, v2

    move-object/from16 v18, v22

    move-object v2, v13

    move-object/from16 v20, v3

    move-object/from16 v3, p2

    move-object/from16 v21, v4

    move/from16 v4, v16

    move/from16 v16, v5

    move/from16 v5, p3

    .line 375
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IClassFileAttribute;Ljava/lang/StringBuffer;Ljava/lang/String;II)V

    goto :goto_20

    :cond_3a
    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v16, v5

    move-object/from16 v18, v22

    goto :goto_20

    :cond_3b
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v16, v5

    move-object/from16 v18, v22

    move-object/from16 v17, v25

    goto :goto_20

    :cond_3c
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v16, v5

    move-object/from16 v18, v22

    :goto_1e
    move-object/from16 v17, v25

    move-object/from16 v19, v35

    goto :goto_20

    :cond_3d
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v16, v5

    goto :goto_1e

    :cond_3e
    move-object/from16 v21, v4

    move/from16 v16, v5

    move-object/from16 v18, v22

    move-object/from16 v17, v25

    :goto_1f
    move-object/from16 v19, v35

    move-object/from16 v20, v36

    goto :goto_20

    :cond_3f
    move/from16 v16, v5

    move-object/from16 v18, v22

    move-object/from16 v17, v25

    move-object/from16 v21, v34

    goto :goto_1f

    :goto_20
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v25, v17

    move-object/from16 v22, v18

    move-object/from16 v35, v19

    move-object/from16 v36, v20

    move-object/from16 v34, v21

    goto/16 :goto_1d

    .line 376
    :goto_21
    invoke-direct {v0, v13, v1, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->writeNewLine(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 377
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_closetypedeclaration:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public disassemble([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;

    const v1, 0xffff

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;-><init>([BI)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p2, p1}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IClassFileReader;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public disassemble([BLjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    .line 3
    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;

    const v1, 0xffff

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;-><init>([BI)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IClassFileReader;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->disassembler_description:Ljava/lang/String;

    return-object v0
.end method
