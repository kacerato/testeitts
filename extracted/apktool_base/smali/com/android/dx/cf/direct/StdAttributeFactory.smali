.class public Lcom/android/dx/cf/direct/StdAttributeFactory;
.super Lcom/android/dx/cf/direct/AttributeFactory;
.source "SourceFile"


# static fields
.field public static final THE_ONE:Lcom/android/dx/cf/direct/StdAttributeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dx/cf/direct/StdAttributeFactory;

    invoke-direct {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;-><init>()V

    sput-object v0, Lcom/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/android/dx/cf/direct/StdAttributeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dx/cf/direct/AttributeFactory;-><init>()V

    return-void
.end method

.method private annotationDefault(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    :cond_0
    new-instance v0, Lcom/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)V

    invoke-virtual {v0}, Lcom/android/dx/cf/direct/AnnotationParser;->parseValueAttribute()Lcom/android/dx/rop/cst/Constant;

    move-result-object p1

    new-instance p2, Lcom/android/dx/cf/attrib/AttAnnotationDefault;

    invoke-direct {p2, p1, p3}, Lcom/android/dx/cf/attrib/AttAnnotationDefault;-><init>(Lcom/android/dx/rop/cst/Constant;I)V

    return-object p2
.end method

.method private code(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 22

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v4

    invoke-virtual {v3, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v3, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v7

    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v3, v8}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v9

    const/4 v10, 0x2

    if-eqz v2, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "max_stack: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v3, v0, v10, v11}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "max_locals: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v3, v5, v10, v11}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "code_length: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x4

    invoke-interface {v2, v3, v8, v11, v5}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v5, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v8, v9, 0x4

    if-ge v1, v8, :cond_2

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    :cond_2
    add-int v8, v5, v9

    sub-int/2addr v1, v9

    new-instance v9, Lcom/android/dx/cf/code/BytecodeArray;

    invoke-virtual {v3, v5, v8}, Lcom/android/dx/util/ByteArray;->slice(II)Lcom/android/dx/util/ByteArray;

    move-result-object v5

    invoke-direct {v9, v5, v4}, Lcom/android/dx/cf/code/BytecodeArray;-><init>(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;)V

    if-eqz v2, :cond_3

    new-instance v5, Lcom/android/dx/cf/direct/CodeObserver;

    invoke-virtual {v9}, Lcom/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v11

    invoke-direct {v5, v11, v2}, Lcom/android/dx/cf/direct/CodeObserver;-><init>(Lcom/android/dx/util/ByteArray;Lcom/android/dx/cf/iface/ParseObserver;)V

    invoke-virtual {v9, v5}, Lcom/android/dx/cf/code/BytecodeArray;->forEach(Lcom/android/dx/cf/code/BytecodeArray$Visitor;)V

    :cond_3
    invoke-virtual {v3, v8}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    if-nez v5, :cond_4

    sget-object v11, Lcom/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/android/dx/cf/code/ByteCatchList;

    goto :goto_0

    :cond_4
    new-instance v11, Lcom/android/dx/cf/code/ByteCatchList;

    invoke-direct {v11, v5}, Lcom/android/dx/cf/code/ByteCatchList;-><init>(I)V

    :goto_0
    if-eqz v2, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception_table_length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v3, v8, v10, v12}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_5
    add-int/2addr v8, v10

    add-int/lit8 v1, v1, -0x2

    mul-int/lit8 v12, v5, 0x8

    add-int/2addr v12, v10

    if-ge v1, v12, :cond_6

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_b

    if-eqz v2, :cond_7

    const/4 v12, 0x1

    invoke-interface {v2, v12}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    :cond_7
    invoke-virtual {v3, v8}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v18

    add-int/lit8 v12, v8, 0x2

    invoke-virtual {v3, v12}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v19

    add-int/lit8 v12, v8, 0x4

    invoke-virtual {v3, v12}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v20

    add-int/lit8 v12, v8, 0x6

    invoke-virtual {v3, v12}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v12

    invoke-interface {v4, v12}, Lcom/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v12

    move-object/from16 v21, v12

    check-cast v21, Lcom/android/dx/rop/cst/CstType;

    move-object v12, v11

    move v13, v10

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v16, v20

    move-object/from16 v17, v21

    invoke-virtual/range {v12 .. v17}, Lcom/android/dx/cf/code/ByteCatchList;->set(IIIILcom/android/dx/rop/cst/CstType;)V

    if-eqz v2, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v18}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v21, :cond_8

    const-string v13, "<any>"

    goto :goto_2

    :cond_8
    invoke-virtual/range {v21 .. v21}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x8

    invoke-interface {v2, v3, v8, v13, v12}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_9
    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v1, v1, -0x8

    if-eqz v2, :cond_a

    const/4 v12, -0x1

    invoke-interface {v2, v12}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {v11}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    new-instance v3, Lcom/android/dx/cf/direct/AttributeListParser;

    const/4 v4, 0x3

    move-object/from16 v12, p0

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4, v8, v12}, Lcom/android/dx/cf/direct/AttributeListParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/direct/AttributeFactory;)V

    invoke-virtual {v3, v2}, Lcom/android/dx/cf/direct/AttributeListParser;->setObserver(Lcom/android/dx/cf/iface/ParseObserver;)V

    invoke-virtual {v3}, Lcom/android/dx/cf/direct/AttributeListParser;->getList()Lcom/android/dx/cf/iface/StdAttributeList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    invoke-virtual {v3}, Lcom/android/dx/cf/direct/AttributeListParser;->getEndOffset()I

    move-result v2

    sub-int/2addr v2, v8

    if-eq v2, v1, :cond_c

    sub-int/2addr v8, v0

    add-int/2addr v2, v8

    invoke-static {v2}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Lcom/android/dx/cf/attrib/AttCode;

    move-object v5, v0

    move-object v8, v9

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/dx/cf/attrib/AttCode;-><init>(IILcom/android/dx/cf/code/BytecodeArray;Lcom/android/dx/cf/code/ByteCatchList;Lcom/android/dx/cf/iface/AttributeList;)V

    return-object v0
.end method

.method private constantValue(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-static {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object p1

    invoke-virtual {p3, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/android/dx/rop/cst/TypedConstant;

    new-instance v1, Lcom/android/dx/cf/attrib/AttConstantValue;

    invoke-direct {v1, p1}, Lcom/android/dx/cf/attrib/AttConstantValue;-><init>(Lcom/android/dx/rop/cst/TypedConstant;)V

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private deprecated(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/dx/cf/attrib/AttDeprecated;

    invoke-direct {p1}, Lcom/android/dx/cf/attrib/AttDeprecated;-><init>()V

    return-object p1
.end method

.method private enclosingMethod(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 5

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    invoke-static {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object p1

    invoke-virtual {p3, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/CstType;

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p3, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/android/dx/rop/cst/CstNat;

    new-instance v2, Lcom/android/dx/cf/attrib/AttEnclosingMethod;

    invoke-direct {v2, v0, p1}, Lcom/android/dx/cf/attrib/AttEnclosingMethod;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    if-eqz p4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {p4, p3, p2, v3, v0}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, v1, v3, p1}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method private exceptions(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 5

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    if-eqz p4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number_of_exceptions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v1, p2, v0, v3}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    add-int/2addr p2, v0

    add-int/lit8 p3, p3, -0x2

    mul-int/lit8 p4, v2, 0x2

    if-eq p3, p4, :cond_2

    add-int/2addr p4, v0

    invoke-static {p4}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    :cond_2
    invoke-virtual {p1, p2, v2}, Lcom/android/dx/cf/direct/DirectClassFile;->makeTypeList(II)Lcom/android/dx/rop/type/TypeList;

    move-result-object p1

    new-instance p2, Lcom/android/dx/cf/attrib/AttExceptions;

    invoke-direct {p2, p1}, Lcom/android/dx/cf/attrib/AttExceptions;-><init>(Lcom/android/dx/rop/type/TypeList;)V

    return-object p2
.end method

.method private innerClasses(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 21

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v5

    invoke-virtual {v4, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    if-eqz v2, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "number_of_classes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v0, v3, v7}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    add-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x2

    mul-int/lit8 v7, v6, 0x8

    if-eq v1, v7, :cond_2

    add-int/2addr v7, v3

    invoke-static {v7}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    :cond_2
    new-instance v1, Lcom/android/dx/cf/attrib/InnerClassList;

    invoke-direct {v1, v6}, Lcom/android/dx/cf/attrib/InnerClassList;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    invoke-virtual {v4, v0}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v8

    add-int/lit8 v14, v0, 0x2

    invoke-virtual {v4, v14}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v9

    add-int/lit8 v15, v0, 0x4

    invoke-virtual {v4, v15}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v10

    add-int/lit8 v13, v0, 0x6

    invoke-virtual {v4, v13}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v16

    invoke-interface {v5, v8}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Lcom/android/dx/rop/cst/CstType;

    invoke-interface {v5, v9}, Lcom/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Lcom/android/dx/rop/cst/CstType;

    invoke-interface {v5, v10}, Lcom/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v8

    move-object/from16 v19, v8

    check-cast v19, Lcom/android/dx/rop/cst/CstString;

    move-object v8, v1

    move v9, v7

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move/from16 v20, v13

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lcom/android/dx/cf/attrib/InnerClassList;->set(ILcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstString;I)V

    if-eqz v2, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inner_class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lcom/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v0, v3, v8}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  outer_class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Lcom/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v14, v3, v8}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v15, v3, v8}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  access_flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Lcom/android/dx/rop/code/AccessFlags;->innerClassString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v9, v20

    invoke-interface {v2, v4, v9, v3, v8}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    new-instance v0, Lcom/android/dx/cf/attrib/AttInnerClasses;

    invoke-direct {v0, v1}, Lcom/android/dx/cf/attrib/AttInnerClasses;-><init>(Lcom/android/dx/cf/attrib/InnerClassList;)V

    return-object v0
.end method

.method private lineNumberTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 5

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line_number_table_length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, p1, p2, v0, v2}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    add-int/2addr p2, v0

    add-int/lit8 p3, p3, -0x2

    mul-int/lit8 v2, v1, 0x4

    if-eq p3, v2, :cond_2

    add-int/2addr v2, v0

    invoke-static {v2}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    :cond_2
    new-instance p3, Lcom/android/dx/cf/code/LineNumberList;

    invoke-direct {p3, v1}, Lcom/android/dx/cf/code/LineNumberList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    invoke-virtual {p3, v0, v2, v3}, Lcom/android/dx/cf/code/LineNumberList;->set(III)V

    if-eqz p4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p4, p1, p2, v3, v2}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_3
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    new-instance p1, Lcom/android/dx/cf/attrib/AttLineNumberTable;

    invoke-direct {p1, p3}, Lcom/android/dx/cf/attrib/AttLineNumberTable;-><init>(Lcom/android/dx/cf/code/LineNumberList;)V

    return-object p1
.end method

.method private localVariableTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 8

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_variable_table_length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, p2, v0, v2}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, p2, 0x2

    add-int/2addr p2, p3

    invoke-virtual {v1, v0, p2}, Lcom/android/dx/util/ByteArray;->slice(II)Lcom/android/dx/util/ByteArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/dx/cf/direct/StdAttributeFactory;->parseLocalVariables(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;Lcom/android/dx/cf/iface/ParseObserver;IZ)Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object p1

    new-instance p2, Lcom/android/dx/cf/attrib/AttLocalVariableTable;

    invoke-direct {p2, p1}, Lcom/android/dx/cf/attrib/AttLocalVariableTable;-><init>(Lcom/android/dx/cf/code/LocalVariableList;)V

    return-object p2
.end method

.method private localVariableTypeTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 8

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_variable_type_table_length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, p2, v0, v2}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, p2, 0x2

    add-int/2addr p2, p3

    invoke-virtual {v1, v0, p2}, Lcom/android/dx/util/ByteArray;->slice(II)Lcom/android/dx/util/ByteArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v4

    const/4 v7, 0x1

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/dx/cf/direct/StdAttributeFactory;->parseLocalVariables(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;Lcom/android/dx/cf/iface/ParseObserver;IZ)Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object p1

    new-instance p2, Lcom/android/dx/cf/attrib/AttLocalVariableTypeTable;

    invoke-direct {p2, p1}, Lcom/android/dx/cf/attrib/AttLocalVariableTypeTable;-><init>(Lcom/android/dx/cf/code/LocalVariableList;)V

    return-object p2
.end method

.method private parseLocalVariables(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;Lcom/android/dx/cf/iface/ParseObserver;IZ)Lcom/android/dx/cf/code/LocalVariableList;
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    const-string v3, " "

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v4

    mul-int/lit8 v5, v2, 0xa

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/util/ByteArray;->makeDataInputStream()Lcom/android/dx/util/ByteArray$MyDataInputStream;

    move-result-object v4

    new-instance v13, Lcom/android/dx/cf/code/LocalVariableList;

    invoke-direct {v13, v2}, Lcom/android/dx/cf/code/LocalVariableList;-><init>(I)V

    const/4 v5, 0x0

    move v14, v5

    :goto_0
    if-ge v14, v2, :cond_3

    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v15

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v16

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v17

    invoke-interface {v0, v5}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/android/dx/rop/cst/CstString;

    invoke-interface {v0, v6}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Lcom/android/dx/rop/cst/CstString;

    const/4 v5, 0x0

    if-eqz p5, :cond_1

    move-object v10, v5

    move-object/from16 v11, v19

    goto :goto_1

    :cond_1
    move-object v11, v5

    move-object/from16 v10, v19

    :goto_1
    move-object v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move-object/from16 v9, v18

    move/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Lcom/android/dx/cf/code/LocalVariableList;->set(IIILcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;I)V

    if-eqz v1, :cond_2

    mul-int/lit8 v5, v14, 0xa

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v15, v15, v16

    invoke-static {v15}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    move-object/from16 v8, p1

    invoke-interface {v1, v8, v5, v7, v6}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v8, p1

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-virtual {v13}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    return-object v13
.end method

.method private runtimeInvisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    :cond_0
    new-instance v0, Lcom/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)V

    sget-object p1, Lcom/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/direct/AnnotationParser;->parseAnnotationAttribute(Lcom/android/dx/rop/annotation/AnnotationVisibility;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object p1

    new-instance p2, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;

    invoke-direct {p2, p1, p3}, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;-><init>(Lcom/android/dx/rop/annotation/Annotations;I)V

    return-object p2
.end method

.method private runtimeInvisibleParameterAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    :cond_0
    new-instance v0, Lcom/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)V

    sget-object p1, Lcom/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/direct/AnnotationParser;->parseParameterAttribute(Lcom/android/dx/rop/annotation/AnnotationVisibility;)Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object p1

    new-instance p2, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;

    invoke-direct {p2, p1, p3}, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;-><init>(Lcom/android/dx/rop/annotation/AnnotationsList;I)V

    return-object p2
.end method

.method private runtimeVisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    :cond_0
    new-instance v0, Lcom/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)V

    sget-object p1, Lcom/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/direct/AnnotationParser;->parseAnnotationAttribute(Lcom/android/dx/rop/annotation/AnnotationVisibility;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object p1

    new-instance p2, Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;

    invoke-direct {p2, p1, p3}, Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;-><init>(Lcom/android/dx/rop/annotation/Annotations;I)V

    return-object p2
.end method

.method private runtimeVisibleParameterAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;

    :cond_0
    new-instance v0, Lcom/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)V

    sget-object p1, Lcom/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/direct/AnnotationParser;->parseParameterAttribute(Lcom/android/dx/rop/annotation/AnnotationVisibility;)Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object p1

    new-instance p2, Lcom/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;

    invoke-direct {p2, p1, p3}, Lcom/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;-><init>(Lcom/android/dx/rop/annotation/AnnotationsList;I)V

    return-object p2
.end method

.method private signature(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-static {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object p1

    invoke-virtual {p3, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/android/dx/rop/cst/CstString;

    new-instance v1, Lcom/android/dx/cf/attrib/AttSignature;

    invoke-direct {v1, p1}, Lcom/android/dx/cf/attrib/AttSignature;-><init>(Lcom/android/dx/rop/cst/CstString;)V

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private sourceDebugExtension(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 4

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object p1

    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Lcom/android/dx/util/ByteArray;->slice(II)Lcom/android/dx/util/ByteArray;

    move-result-object p1

    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v0, p1}, Lcom/android/dx/rop/cst/CstString;-><init>(Lcom/android/dx/util/ByteArray;)V

    new-instance v1, Lcom/android/dx/cf/attrib/AttSourceDebugExtension;

    invoke-direct {v1, v0}, Lcom/android/dx/cf/attrib/AttSourceDebugExtension;-><init>(Lcom/android/dx/rop/cst/CstString;)V

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceDebugExtension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private sourceFile(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-static {v0}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object p1

    invoke-virtual {p3, p2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/android/dx/rop/cst/CstString;

    new-instance v1, Lcom/android/dx/cf/attrib/AttSourceFile;

    invoke-direct {v1, p1}, Lcom/android/dx/cf/attrib/AttSourceFile;-><init>(Lcom/android/dx/rop/cst/CstString;)V

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private synthetic(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/dx/cf/attrib/AttSynthetic;

    invoke-direct {p1}, Lcom/android/dx/cf/attrib/AttSynthetic;-><init>()V

    return-object p1
.end method

.method private static throwBadLength(I)Lcom/android/dx/cf/iface/Attribute;
    .locals 3

    new-instance v0, Lcom/android/dx/cf/iface/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad attribute length; expected length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwSeverelyTruncated()Lcom/android/dx/cf/iface/Attribute;
    .locals 2

    new-instance v0, Lcom/android/dx/cf/iface/ParseException;

    const-string v1, "severely truncated attribute"

    invoke-direct {v0, v1}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwTruncated()Lcom/android/dx/cf/iface/Attribute;
    .locals 2

    new-instance v0, Lcom/android/dx/cf/iface/ParseException;

    const-string v1, "truncated attribute"

    invoke-direct {v0, v1}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse0(Lcom/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 6

    const-string v0, "Synthetic"

    const-string v1, "Signature"

    const-string v2, "RuntimeVisibleAnnotations"

    const-string v3, "RuntimeInvisibleAnnotations"

    const-string v4, "Deprecated"

    if-eqz p2, :cond_13

    const/4 v5, 0x1

    if-eq p2, v5, :cond_d

    const/4 v5, 0x2

    if-eq p2, v5, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "LineNumberTable"

    if-ne p3, v0, :cond_1

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->lineNumberTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "LocalVariableTable"

    if-ne p3, v0, :cond_2

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->localVariableTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "LocalVariableTypeTable"

    if-ne p3, v0, :cond_1c

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->localVariableTypeTable(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v5, "AnnotationDefault"

    if-ne p3, v5, :cond_4

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->annotationDefault(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v5, "Code"

    if-ne p3, v5, :cond_5

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->code(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_5
    if-ne p3, v4, :cond_6

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v4, "Exceptions"

    if-ne p3, v4, :cond_7

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->exceptions(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_7
    if-ne p3, v3, :cond_8

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_8
    if-ne p3, v2, :cond_9

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_9
    const-string v2, "RuntimeInvisibleParameterAnnotations"

    if-ne p3, v2, :cond_a

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleParameterAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_a
    const-string v2, "RuntimeVisibleParameterAnnotations"

    if-ne p3, v2, :cond_b

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleParameterAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_b
    if-ne p3, v1, :cond_c

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_c
    if-ne p3, v0, :cond_1c

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v5, "ConstantValue"

    if-ne p3, v5, :cond_e

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->constantValue(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_e
    if-ne p3, v4, :cond_f

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_f
    if-ne p3, v3, :cond_10

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_10
    if-ne p3, v2, :cond_11

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_11
    if-ne p3, v1, :cond_12

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_12
    if-ne p3, v0, :cond_1c

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_13
    if-ne p3, v4, :cond_14

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_14
    const-string v4, "EnclosingMethod"

    if-ne p3, v4, :cond_15

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->enclosingMethod(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_15
    const-string v4, "InnerClasses"

    if-ne p3, v4, :cond_16

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->innerClasses(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_16
    if-ne p3, v3, :cond_17

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_17
    if-ne p3, v2, :cond_18

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_18
    if-ne p3, v0, :cond_19

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_19
    if-ne p3, v1, :cond_1a

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_1a
    const-string v0, "SourceDebugExtension"

    if-ne p3, v0, :cond_1b

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->sourceDebugExtension(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_1b
    const-string v0, "SourceFile"

    if-ne p3, v0, :cond_1c

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/dx/cf/direct/StdAttributeFactory;->sourceFile(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_1c
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/android/dx/cf/direct/AttributeFactory;->parse0(Lcom/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1
.end method
