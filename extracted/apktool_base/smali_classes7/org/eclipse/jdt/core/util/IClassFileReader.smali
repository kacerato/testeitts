.class public interface abstract Lorg/eclipse/jdt/core/util/IClassFileReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:I = 0xffff

.field public static final ALL_BUT_METHOD_BODIES:I = 0xffdf

.field public static final CLASSFILE_ATTRIBUTES:I = 0x11

.field public static final CONSTANT_POOL:I = 0x1

.field public static final FIELD_INFOS:I = 0x5

.field public static final METHOD_BODIES:I = 0x20

.field public static final METHOD_INFOS:I = 0x3

.field public static final SUPER_INTERFACES:I = 0x9


# virtual methods
.method public abstract getAccessFlags()I
.end method

.method public abstract getAttributeCount()I
.end method

.method public abstract getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;
.end method

.method public abstract getClassIndex()I
.end method

.method public abstract getClassName()[C
.end method

.method public abstract getConstantPool()Lorg/eclipse/jdt/core/util/IConstantPool;
.end method

.method public abstract getFieldInfos()[Lorg/eclipse/jdt/core/util/IFieldInfo;
.end method

.method public abstract getFieldsCount()I
.end method

.method public abstract getInnerClassesAttribute()Lorg/eclipse/jdt/core/util/IInnerClassesAttribute;
.end method

.method public abstract getInterfaceIndexes()[I
.end method

.method public abstract getInterfaceNames()[[C
.end method

.method public abstract getMagic()I
.end method

.method public abstract getMajorVersion()I
.end method

.method public abstract getMethodInfos()[Lorg/eclipse/jdt/core/util/IMethodInfo;
.end method

.method public abstract getMethodsCount()I
.end method

.method public abstract getMinorVersion()I
.end method

.method public getNestMembersAttribute()Lorg/eclipse/jdt/core/util/INestMembersAttribute;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSourceFileAttribute()Lorg/eclipse/jdt/core/util/ISourceAttribute;
.end method

.method public abstract getSuperclassIndex()I
.end method

.method public abstract getSuperclassName()[C
.end method

.method public abstract isClass()Z
.end method

.method public abstract isInterface()Z
.end method
