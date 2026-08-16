.class public Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IConstantPoolEntry;


# instance fields
.field private classIndex:I

.field private classInfoName:[C

.field private classInfoNameIndex:I

.field private className:[C

.field private doubleValue:D

.field private fieldDescriptor:[C

.field private fieldName:[C

.field private floatValue:F

.field private integerValue:I

.field private kind:I

.field private longValue:J

.field private methodDescriptor:[C

.field private methodName:[C

.field private nameAndTypeDescriptorIndex:I

.field private nameAndTypeIndex:I

.field private nameAndTypeNameIndex:I

.field private stringIndex:I

.field private stringValue:[C

.field private utf8Length:I

.field private utf8Value:[C


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classInfoNameIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->stringIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->stringValue:[C

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->integerValue:I

    const/high16 v2, -0x80000000

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->floatValue:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->doubleValue:D

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->longValue:J

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeDescriptorIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeNameIndex:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->className:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->fieldName:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->methodName:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->fieldDescriptor:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->methodDescriptor:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->utf8Value:[C

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->utf8Length:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classInfoName:[C

    return-void
.end method


# virtual methods
.method public getClassIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classIndex:I

    return v0
.end method

.method public getClassInfoName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classInfoName:[C

    return-object v0
.end method

.method public getClassInfoNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classInfoNameIndex:I

    return v0
.end method

.method public getClassName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->className:[C

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->doubleValue:D

    return-wide v0
.end method

.method public getFieldDescriptor()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->fieldDescriptor:[C

    return-object v0
.end method

.method public getFieldName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->fieldName:[C

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->floatValue:F

    return v0
.end method

.method public getIntegerValue()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->integerValue:I

    return v0
.end method

.method public getKind()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->kind:I

    return v0
.end method

.method public getLongValue()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->longValue:J

    return-wide v0
.end method

.method public getMethodDescriptor()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->methodDescriptor:[C

    return-object v0
.end method

.method public getMethodName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->methodName:[C

    return-object v0
.end method

.method public getNameAndTypeDescriptorIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeDescriptorIndex:I

    return v0
.end method

.method public getNameAndTypeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeIndex:I

    return v0
.end method

.method public getNameAndTypeInfoDescriptorIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeDescriptorIndex:I

    return v0
.end method

.method public getNameAndTypeInfoNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeNameIndex:I

    return v0
.end method

.method public getNameAndTypeNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeNameIndex:I

    return v0
.end method

.method public getStringIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->stringIndex:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->stringValue:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getUtf8Length()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->utf8Length:I

    return v0
.end method

.method public getUtf8Value()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->utf8Value:[C

    return-object v0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->kind:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classInfoNameIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->stringIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->stringValue:[C

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->integerValue:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->floatValue:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->doubleValue:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->longValue:J

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeDescriptorIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeNameIndex:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->className:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->fieldName:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->methodName:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->fieldDescriptor:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->methodDescriptor:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->utf8Value:[C

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->utf8Length:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classInfoName:[C

    return-void
.end method

.method public setClassIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classIndex:I

    return-void
.end method

.method public setClassInfoName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classInfoName:[C

    return-void
.end method

.method public setClassInfoNameIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->classInfoNameIndex:I

    return-void
.end method

.method public setClassName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->className:[C

    return-void
.end method

.method public setDoubleValue(D)V
    .locals 0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->doubleValue:D

    return-void
.end method

.method public setFieldDescriptor([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->fieldDescriptor:[C

    return-void
.end method

.method public setFieldName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->fieldName:[C

    return-void
.end method

.method public setFloatValue(F)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->floatValue:F

    return-void
.end method

.method public setIntegerValue(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->integerValue:I

    return-void
.end method

.method public setKind(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->kind:I

    return-void
.end method

.method public setLongValue(J)V
    .locals 0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->longValue:J

    return-void
.end method

.method public setMethodDescriptor([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->methodDescriptor:[C

    return-void
.end method

.method public setMethodName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->methodName:[C

    return-void
.end method

.method public setNameAndTypeDescriptorIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeDescriptorIndex:I

    return-void
.end method

.method public setNameAndTypeIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeIndex:I

    return-void
.end method

.method public setNameAndTypeNameIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->nameAndTypeNameIndex:I

    return-void
.end method

.method public setStringIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->stringIndex:I

    return-void
.end method

.method public setStringValue([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->stringValue:[C

    return-void
.end method

.method public setUtf8Length(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->utf8Length:I

    return-void
.end method

.method public setUtf8Value([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->utf8Value:[C

    return-void
.end method
