.class public Lorg/objectweb/asm/ClassWriter;
.super Lorg/objectweb/asm/ClassVisitor;
.source "SourceFile"


# static fields
.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1


# instance fields
.field private accessFlags:I

.field private compute:I

.field private debugExtension:Lorg/objectweb/asm/ByteVector;

.field private enclosingClassIndex:I

.field private enclosingMethodIndex:I

.field private firstAttribute:Lorg/objectweb/asm/Attribute;

.field private firstField:Lorg/objectweb/asm/FieldWriter;

.field private firstMethod:Lorg/objectweb/asm/MethodWriter;

.field private firstRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

.field private final flags:I

.field private innerClasses:Lorg/objectweb/asm/ByteVector;

.field private interfaceCount:I

.field private interfaces:[I

.field private lastField:Lorg/objectweb/asm/FieldWriter;

.field private lastMethod:Lorg/objectweb/asm/MethodWriter;

.field private lastRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

.field private lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

.field private moduleWriter:Lorg/objectweb/asm/ModuleWriter;

.field private nestHostClassIndex:I

.field private nestMemberClasses:Lorg/objectweb/asm/ByteVector;

.field private numberOfInnerClasses:I

.field private numberOfNestMemberClasses:I

.field private numberOfPermittedSubclasses:I

.field private permittedSubclasses:Lorg/objectweb/asm/ByteVector;

.field private signatureIndex:I

.field private sourceFileIndex:I

.field private superClass:I

.field private final symbolTable:Lorg/objectweb/asm/SymbolTable;

.field private thisClass:I

.field private version:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/ClassWriter;-><init>(Lorg/objectweb/asm/ClassReader;I)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassReader;I)V
    .locals 1

    const/high16 v0, 0x90000

    .line 2
    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassVisitor;-><init>(I)V

    .line 3
    iput p2, p0, Lorg/objectweb/asm/ClassWriter;->flags:I

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lorg/objectweb/asm/SymbolTable;

    invoke-direct {p1, p0}, Lorg/objectweb/asm/SymbolTable;-><init>(Lorg/objectweb/asm/ClassWriter;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/objectweb/asm/SymbolTable;

    invoke-direct {v0, p0, p1}, Lorg/objectweb/asm/SymbolTable;-><init>(Lorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/ClassReader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->compute:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_2

    .line 6
    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->compute:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->compute:I

    :goto_1
    return-void
.end method

.method private getAttributePrototypes()[Lorg/objectweb/asm/Attribute;
    .locals 2

    new-instance v0, Lorg/objectweb/asm/Attribute$Set;

    invoke-direct {v0}, Lorg/objectweb/asm/Attribute$Set;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/Attribute$Set;->addAttributes(Lorg/objectweb/asm/Attribute;)V

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/FieldWriter;->collectAttributePrototypes(Lorg/objectweb/asm/Attribute$Set;)V

    iget-object v1, v1, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    check-cast v1, Lorg/objectweb/asm/FieldWriter;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/MethodWriter;->collectAttributePrototypes(Lorg/objectweb/asm/Attribute$Set;)V

    iget-object v1, v1, Lorg/objectweb/asm/MethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    check-cast v1, Lorg/objectweb/asm/MethodWriter;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->firstRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/RecordComponentWriter;->collectAttributePrototypes(Lorg/objectweb/asm/Attribute$Set;)V

    iget-object v1, v1, Lorg/objectweb/asm/RecordComponentVisitor;->delegate:Lorg/objectweb/asm/RecordComponentVisitor;

    check-cast v1, Lorg/objectweb/asm/RecordComponentWriter;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/objectweb/asm/Attribute$Set;->toArray()[Lorg/objectweb/asm/Attribute;

    move-result-object v0

    return-object v0
.end method

.method private replaceAsmInstructions([BZ)[B
    .locals 3

    invoke-direct {p0}, Lorg/objectweb/asm/ClassWriter;->getAttributePrototypes()[Lorg/objectweb/asm/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->lastField:Lorg/objectweb/asm/FieldWriter;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->lastMethod:Lorg/objectweb/asm/MethodWriter;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->moduleWriter:Lorg/objectweb/asm/ModuleWriter;

    const/4 v2, 0x0

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->nestMemberClasses:Lorg/objectweb/asm/ByteVector;

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->permittedSubclasses:Lorg/objectweb/asm/ByteVector;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->firstRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->lastRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lorg/objectweb/asm/ClassWriter;->compute:I

    new-instance v1, Lorg/objectweb/asm/ClassReader;

    invoke-direct {v1, p1, v2, v2}, Lorg/objectweb/asm/ClassReader;-><init>([BIZ)V

    if-eqz p2, :cond_1

    const/16 v2, 0x8

    :cond_1
    or-int/lit16 p1, v2, 0x100

    invoke-virtual {v1, p0, v0, p1}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;[Lorg/objectweb/asm/Attribute;I)V

    invoke-virtual {p0}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lorg/objectweb/asm/ClassWriter;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "java/lang/Object"

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/TypeNotPresentException;

    invoke-direct {v0, p2, p1}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p2

    new-instance v0, Ljava/lang/TypeNotPresentException;

    invoke-direct {v0, p1, p2}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hasFlags(I)Z
    .locals 1

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public newClass(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newConst(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public varargs newConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/SymbolTable;->addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v1 .. v6}, Lorg/objectweb/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/SymbolTable;->addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/SymbolTable;->addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newMethodType(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantMethodType(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newModule(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public newPackage(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public toByteArray()[B
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->interfaceCount:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Lorg/objectweb/asm/FieldWriter;->computeFieldInfoSize()I

    move-result v6

    add-int/2addr v1, v6

    iget-object v3, v3, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    check-cast v3, Lorg/objectweb/asm/FieldWriter;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3}, Lorg/objectweb/asm/MethodWriter;->computeMethodInfoSize()I

    move-result v7

    add-int/2addr v1, v7

    iget-object v3, v3, Lorg/objectweb/asm/MethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    check-cast v3, Lorg/objectweb/asm/MethodWriter;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->innerClasses:Lorg/objectweb/asm/ByteVector;

    const-string v7, "InnerClasses"

    if-eqz v3, :cond_2

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v3, v7}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget v8, v0, Lorg/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    const-string v9, "EnclosingMethod"

    if-eqz v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0xa

    iget-object v8, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v9}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_3
    iget v8, v0, Lorg/objectweb/asm/ClassWriter;->accessFlags:I

    const/16 v10, 0x1000

    and-int/2addr v8, v10

    const-string v11, "Synthetic"

    const/16 v12, 0x31

    const v13, 0xffff

    if-eqz v8, :cond_4

    iget v8, v0, Lorg/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v8, v13

    if-ge v8, v12, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    iget-object v8, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v11}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_4
    iget v8, v0, Lorg/objectweb/asm/ClassWriter;->signatureIndex:I

    const-string v14, "Signature"

    if-eqz v8, :cond_5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    iget-object v8, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v14}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_5
    iget v8, v0, Lorg/objectweb/asm/ClassWriter;->sourceFileIndex:I

    const-string v15, "SourceFile"

    if-eqz v8, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    iget-object v8, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v15}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_6
    iget-object v8, v0, Lorg/objectweb/asm/ClassWriter;->debugExtension:Lorg/objectweb/asm/ByteVector;

    const-string v10, "SourceDebugExtension"

    if-eqz v8, :cond_7

    add-int/lit8 v3, v3, 0x1

    iget v8, v8, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v8, v8, 0x6

    add-int/2addr v1, v8

    iget-object v8, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v10}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_7
    iget v8, v0, Lorg/objectweb/asm/ClassWriter;->accessFlags:I

    const/high16 v16, 0x20000

    and-int v8, v8, v16

    const-string v4, "Deprecated"

    if-eqz v8, :cond_8

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    iget-object v8, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v4}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_8
    iget-object v8, v0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v8, :cond_9

    add-int/lit8 v3, v3, 0x1

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v8, v2}, Lorg/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_9
    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_a

    add-int/lit8 v3, v3, 0x1

    const-string v8, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v8}, Lorg/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_a
    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    const-string v8, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v8}, Lorg/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_b
    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_c

    add-int/lit8 v3, v3, 0x1

    const-string v8, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v8}, Lorg/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_c
    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lorg/objectweb/asm/SymbolTable;->computeBootstrapMethodsSize()I

    move-result v2

    if-lez v2, :cond_d

    add-int/lit8 v3, v3, 0x1

    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lorg/objectweb/asm/SymbolTable;->computeBootstrapMethodsSize()I

    move-result v2

    add-int/2addr v1, v2

    :cond_d
    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->moduleWriter:Lorg/objectweb/asm/ModuleWriter;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lorg/objectweb/asm/ModuleWriter;->getAttributeCount()I

    move-result v2

    add-int/2addr v3, v2

    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->moduleWriter:Lorg/objectweb/asm/ModuleWriter;

    invoke-virtual {v2}, Lorg/objectweb/asm/ModuleWriter;->computeAttributesSize()I

    move-result v2

    add-int/2addr v1, v2

    :cond_e
    iget v2, v0, Lorg/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    const-string v8, "NestHost"

    if-eqz v2, :cond_f

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v8}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_f
    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->nestMemberClasses:Lorg/objectweb/asm/ByteVector;

    const-string v12, "NestMembers"

    if-eqz v2, :cond_10

    add-int/lit8 v3, v3, 0x1

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v12}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_10
    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->permittedSubclasses:Lorg/objectweb/asm/ByteVector;

    const-string v13, "PermittedSubclasses"

    if-eqz v2, :cond_11

    add-int/lit8 v3, v3, 0x1

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v13}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_11
    iget v2, v0, Lorg/objectweb/asm/ClassWriter;->accessFlags:I

    const/high16 v17, 0x10000

    and-int v2, v2, v17

    move-object/from16 v18, v13

    const-string v13, "Record"

    if-nez v2, :cond_13

    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->firstRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    if-eqz v2, :cond_12

    goto :goto_3

    :cond_12
    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_5

    :cond_13
    :goto_3
    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->firstRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_4
    if-eqz v2, :cond_14

    add-int/lit8 v20, v20, 0x1

    invoke-virtual {v2}, Lorg/objectweb/asm/RecordComponentWriter;->computeRecordComponentInfoSize()I

    move-result v21

    add-int v19, v19, v21

    iget-object v2, v2, Lorg/objectweb/asm/RecordComponentVisitor;->delegate:Lorg/objectweb/asm/RecordComponentVisitor;

    check-cast v2, Lorg/objectweb/asm/RecordComponentWriter;

    goto :goto_4

    :cond_14
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v19, 0x8

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v13}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :goto_5
    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lorg/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v2

    add-int/2addr v3, v2

    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    move/from16 v21, v3

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/Attribute;->computeAttributesSize(Lorg/objectweb/asm/SymbolTable;)I

    move-result v2

    add-int/2addr v1, v2

    move/from16 v3, v21

    :cond_15
    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lorg/objectweb/asm/SymbolTable;->getConstantPoolLength()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lorg/objectweb/asm/SymbolTable;->getConstantPoolCount()I

    move-result v2

    move-object/from16 v21, v13

    const v13, 0xffff

    if-gt v2, v13, :cond_29

    new-instance v2, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v2, v1}, Lorg/objectweb/asm/ByteVector;-><init>(I)V

    const v1, -0x35014542    # -8346975.0f

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v13, v0, Lorg/objectweb/asm/ClassWriter;->version:I

    invoke-virtual {v1, v13}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/SymbolTable;->putConstantPool(Lorg/objectweb/asm/ByteVector;)V

    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->version:I

    const v13, 0xffff

    and-int/2addr v1, v13

    const/16 v13, 0x31

    if-ge v1, v13, :cond_16

    const/16 v1, 0x1000

    goto :goto_6

    :cond_16
    const/4 v1, 0x0

    :goto_6
    iget v13, v0, Lorg/objectweb/asm/ClassWriter;->accessFlags:I

    not-int v1, v1

    and-int/2addr v1, v13

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v13, v0, Lorg/objectweb/asm/ClassWriter;->thisClass:I

    invoke-virtual {v1, v13}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v13, v0, Lorg/objectweb/asm/ClassWriter;->superClass:I

    invoke-virtual {v1, v13}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x0

    :goto_7
    iget v13, v0, Lorg/objectweb/asm/ClassWriter;->interfaceCount:I

    if-ge v1, v13, :cond_17

    iget-object v13, v0, Lorg/objectweb/asm/ClassWriter;->interfaces:[I

    aget v13, v13, v1

    invoke-virtual {v2, v13}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    invoke-virtual {v2, v5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    :goto_8
    if-eqz v1, :cond_18

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/FieldWriter;->putFieldInfo(Lorg/objectweb/asm/ByteVector;)V

    iget-object v1, v1, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    check-cast v1, Lorg/objectweb/asm/FieldWriter;

    goto :goto_8

    :cond_18
    invoke-virtual {v2, v6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_9
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lorg/objectweb/asm/MethodWriter;->hasFrames()Z

    move-result v13

    or-int/2addr v5, v13

    invoke-virtual {v1}, Lorg/objectweb/asm/MethodWriter;->hasAsmInstructions()Z

    move-result v13

    or-int/2addr v6, v13

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/MethodWriter;->putMethodInfo(Lorg/objectweb/asm/ByteVector;)V

    iget-object v1, v1, Lorg/objectweb/asm/MethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    check-cast v1, Lorg/objectweb/asm/MethodWriter;

    goto :goto_9

    :cond_19
    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->innerClasses:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v7}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->innerClasses:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    const/4 v7, 0x2

    add-int/2addr v3, v7

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lorg/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->innerClasses:Lorg/objectweb/asm/ByteVector;

    iget-object v7, v3, Lorg/objectweb/asm/ByteVector;->data:[B

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    const/4 v13, 0x0

    invoke-virtual {v1, v7, v13, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_1a
    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v9}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lorg/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lorg/objectweb/asm/ClassWriter;->enclosingMethodIndex:I

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_1b
    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->accessFlags:I

    const/16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1c

    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->version:I

    const v3, 0xffff

    and-int/2addr v1, v3

    const/16 v3, 0x31

    if-ge v1, v3, :cond_1c

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v11}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_1c
    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->signatureIndex:I

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v14}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v7, v0, Lorg/objectweb/asm/ClassWriter;->signatureIndex:I

    invoke-virtual {v1, v7}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_a

    :cond_1d
    const/4 v3, 0x2

    :goto_a
    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->sourceFileIndex:I

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v15}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lorg/objectweb/asm/ClassWriter;->sourceFileIndex:I

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_1e
    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->debugExtension:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_1f

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v3, v10}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v3

    iget-object v7, v0, Lorg/objectweb/asm/ClassWriter;->debugExtension:Lorg/objectweb/asm/ByteVector;

    iget-object v7, v7, Lorg/objectweb/asm/ByteVector;->data:[B

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    goto :goto_b

    :cond_1f
    const/4 v9, 0x0

    :goto_b
    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->accessFlags:I

    and-int v1, v1, v16

    if-eqz v1, :cond_20

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_20
    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v4, v0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v7, v0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v9, v0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    move-object/from16 v22, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v7

    move-object/from16 v26, v9

    move-object/from16 v27, v2

    invoke-static/range {v22 .. v27}, Lorg/objectweb/asm/AnnotationWriter;->putAnnotations(Lorg/objectweb/asm/SymbolTable;Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/ByteVector;)V

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/SymbolTable;->putBootstrapMethods(Lorg/objectweb/asm/ByteVector;)V

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->moduleWriter:Lorg/objectweb/asm/ModuleWriter;

    if-eqz v1, :cond_21

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ModuleWriter;->putAttributes(Lorg/objectweb/asm/ByteVector;)V

    :cond_21
    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    if-eqz v1, :cond_22

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v8}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lorg/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_22
    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->nestMemberClasses:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v12}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->nestMemberClasses:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lorg/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->nestMemberClasses:Lorg/objectweb/asm/ByteVector;

    iget-object v4, v3, Lorg/objectweb/asm/ByteVector;->data:[B

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_23
    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->permittedSubclasses:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_24

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->permittedSubclasses:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lorg/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->permittedSubclasses:Lorg/objectweb/asm/ByteVector;

    iget-object v4, v3, Lorg/objectweb/asm/ByteVector;->data:[B

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_24
    iget v1, v0, Lorg/objectweb/asm/ClassWriter;->accessFlags:I

    and-int v1, v1, v17

    if-nez v1, :cond_25

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->firstRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    if-eqz v1, :cond_26

    :cond_25
    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v3, 0x2

    add-int/lit8 v3, v19, 0x2

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    move/from16 v3, v20

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->firstRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    :goto_c
    if-eqz v1, :cond_26

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/RecordComponentWriter;->putRecordComponentInfo(Lorg/objectweb/asm/ByteVector;)V

    iget-object v1, v1, Lorg/objectweb/asm/RecordComponentVisitor;->delegate:Lorg/objectweb/asm/RecordComponentVisitor;

    check-cast v1, Lorg/objectweb/asm/RecordComponentWriter;

    goto :goto_c

    :cond_26
    iget-object v1, v0, Lorg/objectweb/asm/ClassWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_27

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v3, v2}, Lorg/objectweb/asm/Attribute;->putAttributes(Lorg/objectweb/asm/SymbolTable;Lorg/objectweb/asm/ByteVector;)V

    :cond_27
    if-eqz v6, :cond_28

    iget-object v1, v2, Lorg/objectweb/asm/ByteVector;->data:[B

    invoke-direct {v0, v1, v5}, Lorg/objectweb/asm/ClassWriter;->replaceAsmInstructions([BZ)[B

    move-result-object v1

    return-object v1

    :cond_28
    iget-object v1, v2, Lorg/objectweb/asm/ByteVector;->data:[B

    return-object v1

    :cond_29
    new-instance v1, Lorg/objectweb/asm/ClassTooLargeException;

    iget-object v3, v0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v3}, Lorg/objectweb/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/objectweb/asm/ClassTooLargeException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->version:I

    iput p2, p0, Lorg/objectweb/asm/ClassWriter;->accessFlags:I

    iget-object p2, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {p2, p1, p3}, Lorg/objectweb/asm/SymbolTable;->setMajorVersionAndClassName(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/objectweb/asm/ClassWriter;->thisClass:I

    if-eqz p4, :cond_0

    iget-object p2, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {p2, p4}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/objectweb/asm/ClassWriter;->signatureIndex:I

    :cond_0
    const/4 p2, 0x0

    if-nez p5, :cond_1

    move p3, p2

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {p3, p5}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p3

    iget p3, p3, Lorg/objectweb/asm/Symbol;->index:I

    :goto_0
    iput p3, p0, Lorg/objectweb/asm/ClassWriter;->superClass:I

    if-eqz p6, :cond_2

    array-length p3, p6

    if-lez p3, :cond_2

    array-length p3, p6

    iput p3, p0, Lorg/objectweb/asm/ClassWriter;->interfaceCount:I

    new-array p3, p3, [I

    iput-object p3, p0, Lorg/objectweb/asm/ClassWriter;->interfaces:[I

    :goto_1
    iget p3, p0, Lorg/objectweb/asm/ClassWriter;->interfaceCount:I

    if-ge p2, p3, :cond_2

    iget-object p3, p0, Lorg/objectweb/asm/ClassWriter;->interfaces:[I

    iget-object p4, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    aget-object p5, p6, p2

    invoke-virtual {p4, p5}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p4

    iget p4, p4, Lorg/objectweb/asm/Symbol;->index:I

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget p2, p0, Lorg/objectweb/asm/ClassWriter;->compute:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    const/16 p2, 0x33

    if-lt p1, p2, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->compute:I

    :cond_3
    return-void
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1
.end method

.method public final visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    return-void
.end method

.method public final visitEnd()V
    .locals 0

    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .locals 8

    new-instance v7, Lorg/objectweb/asm/FieldWriter;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/FieldWriter;-><init>(Lorg/objectweb/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    if-nez p1, :cond_0

    iput-object v7, p0, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/ClassWriter;->lastField:Lorg/objectweb/asm/FieldWriter;

    iput-object v7, p1, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    :goto_0
    iput-object v7, p0, Lorg/objectweb/asm/ClassWriter;->lastField:Lorg/objectweb/asm/FieldWriter;

    return-object v7
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->innerClasses:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->innerClasses:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget v0, p1, Lorg/objectweb/asm/Symbol;->info:I

    if-nez v0, :cond_3

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->innerClasses:Lorg/objectweb/asm/ByteVector;

    iget v1, p1, Lorg/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->innerClasses:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p2}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lorg/objectweb/asm/Symbol;->index:I

    :goto_0
    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object p2, p0, Lorg/objectweb/asm/ClassWriter;->innerClasses:Lorg/objectweb/asm/ByteVector;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-virtual {p2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object p2, p0, Lorg/objectweb/asm/ClassWriter;->innerClasses:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p2, p4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget p2, p0, Lorg/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    iput p2, p1, Lorg/objectweb/asm/Symbol;->info:I

    :cond_3
    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .locals 9

    new-instance v8, Lorg/objectweb/asm/MethodWriter;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget v7, p0, Lorg/objectweb/asm/ClassWriter;->compute:I

    move-object v0, v8

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/MethodWriter;-><init>(Lorg/objectweb/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    if-nez p1, :cond_0

    iput-object v8, p0, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/ClassWriter;->lastMethod:Lorg/objectweb/asm/MethodWriter;

    iput-object v8, p1, Lorg/objectweb/asm/MethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    :goto_0
    iput-object v8, p0, Lorg/objectweb/asm/ClassWriter;->lastMethod:Lorg/objectweb/asm/MethodWriter;

    return-object v8
.end method

.method public final visitModule(Ljava/lang/String;ILjava/lang/String;)Lorg/objectweb/asm/ModuleVisitor;
    .locals 3

    new-instance v0, Lorg/objectweb/asm/ModuleWriter;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p3}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    :goto_0
    invoke-direct {v0, v1, p1, p2, p3}, Lorg/objectweb/asm/ModuleWriter;-><init>(Lorg/objectweb/asm/SymbolTable;III)V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->moduleWriter:Lorg/objectweb/asm/ModuleWriter;

    return-object v0
.end method

.method public final visitNestHost(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    return-void
.end method

.method public final visitNestMember(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->nestMemberClasses:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->nestMemberClasses:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->nestMemberClasses:Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {p1, p2, p3}, Lorg/objectweb/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->enclosingMethodIndex:I

    :cond_0
    return-void
.end method

.method public final visitPermittedSubclass(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->permittedSubclasses:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->permittedSubclasses:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->permittedSubclasses:Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public final visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/RecordComponentVisitor;
    .locals 2

    new-instance v0, Lorg/objectweb/asm/RecordComponentWriter;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/objectweb/asm/RecordComponentWriter;-><init>(Lorg/objectweb/asm/SymbolTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/objectweb/asm/ClassWriter;->firstRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->firstRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/ClassWriter;->lastRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    iput-object v0, p1, Lorg/objectweb/asm/RecordComponentVisitor;->delegate:Lorg/objectweb/asm/RecordComponentVisitor;

    :goto_0
    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->lastRecordComponent:Lorg/objectweb/asm/RecordComponentWriter;

    return-object v0
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->sourceFileIndex:I

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lorg/objectweb/asm/ByteVector;

    invoke-direct {p1}, Lorg/objectweb/asm/ByteVector;-><init>()V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p1, p2, v0, v1}, Lorg/objectweb/asm/ByteVector;->encodeUtf8(Ljava/lang/String;II)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->debugExtension:Lorg/objectweb/asm/ByteVector;

    :cond_1
    return-void
.end method

.method public final visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1

    :cond_0
    iget-object p4, p0, Lorg/objectweb/asm/ClassWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1
.end method
