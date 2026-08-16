.class public Lorg/openjdk/tools/javah/LLNI;
.super Lorg/openjdk/tools/javah/Gen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;
    }
.end annotation


# static fields
.field private static final isWindows:Z


# instance fields
.field protected doneHandleTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private doubleAlign:Z

.field fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation
.end field

.field protected final innerDelim:C

.field methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation
.end field

.field private padFieldNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/openjdk/tools/javah/LLNI;->isWindows:Z

    return-void
.end method

.method public constructor <init>(ZLorg/openjdk/tools/javah/Util;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javah/Gen;-><init>(Lorg/openjdk/tools/javah/Util;)V

    const/16 p2, 0x24

    iput-char p2, p0, Lorg/openjdk/tools/javah/LLNI;->innerDelim:C

    const/4 p2, 0x0

    iput p2, p0, Lorg/openjdk/tools/javah/LLNI;->padFieldNum:I

    iput-boolean p1, p0, Lorg/openjdk/tools/javah/LLNI;->doubleAlign:Z

    return-void
.end method

.method private doField(Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Lorg/openjdk/tools/javah/LLNI;->addStructMember(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-boolean p3, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->printedOne:Z

    const/4 p4, 0x1

    if-nez p3, :cond_2

    iget-boolean p3, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->bottomMost:Z

    if-eqz p3, :cond_0

    iget-object p3, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    /* local members: */"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    /* inherited members from "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->className:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": */"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    :cond_1
    :goto_0
    iput-boolean p4, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->printedOne:Z

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    return p4

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private doTwoWordFields(Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;Lorg/openjdk/javax/lang/model/element/TypeElement;ILjava/lang/String;Z)I
    .locals 5

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/lang/model/element/VariableElement;

    invoke-interface {v2}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v3}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/lang/model/type/TypeKind;->LONG:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v3, v4, :cond_1

    sget-object v4, Lorg/openjdk/javax/lang/model/type/TypeKind;->DOUBLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_0

    :cond_1
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz p5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-direct {p0, p1, v2, p4, v4}, Lorg/openjdk/tools/javah/LLNI;->doField(Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 p3, p3, 0x8

    move v1, v3

    goto :goto_0

    :cond_3
    return p3
.end method


# virtual methods
.method public addStaticStructMember(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->FINAL:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    instance-of p2, v0, Ljava/lang/Byte;

    const-string v2, "LL"

    const-string v3, "L"

    if-nez p2, :cond_8

    instance-of p2, v0, Ljava/lang/Short;

    if-nez p2, :cond_8

    instance-of p2, v0, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    instance-of p2, v0, Ljava/lang/Long;

    if-eqz p2, :cond_4

    sget-boolean p2, Lorg/openjdk/tools/javah/LLNI;->isWindows:Z

    if-eqz p2, :cond_3

    const-string p2, "i64"

    goto :goto_0

    :cond_3
    move-object p2, v2

    :goto_0
    move-object v4, v0

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3

    :cond_4
    instance-of p2, v0, Ljava/lang/Float;

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_5

    const-string p2, "f"

    goto :goto_3

    :cond_5
    instance-of p2, v0, Ljava/lang/Double;

    if-eqz p2, :cond_6

    const-string p2, ""

    goto :goto_3

    :cond_6
    instance-of p2, v0, Ljava/lang/Character;

    if-eqz p2, :cond_7

    move-object p2, v0

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    const v4, 0xffff

    and-int/2addr p2, v4

    :goto_1
    int-to-long v4, p2

    move-object p2, v3

    goto :goto_3

    :cond_7
    move-object p2, v1

    goto :goto_3

    :cond_8
    :goto_2
    move-object p2, v0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_1

    :goto_3
    if-eqz p2, :cond_e

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "    #define "

    const-string v7, "    #undef  "

    if-eqz v1, :cond_9

    const-wide/32 v8, -0x80000000

    cmp-long v1, v4, v8

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v4, v8

    if-nez v1, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x1

    add-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-1)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_b
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " "

    if-nez v1, :cond_d

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_d
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    :goto_5
    return-object v1
.end method

.method public addStructMember(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/LLNI;->addStaticStructMember(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object p2

    if-eqz p3, :cond_1

    iget p3, p0, Lorg/openjdk/tools/javah/LLNI;->padFieldNum:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/openjdk/tools/javah/LLNI;->padFieldNum:I

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0}, Lorg/openjdk/tools/javah/LLNI;->llniType(Lorg/openjdk/javax/lang/model/type/TypeMirror;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/LLNI;->llniFieldName(Lorg/openjdk/javax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javah/LLNI;->isLongOrDouble(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[2]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final cRcvrDecl(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object p1

    sget-object p2, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "jclass"

    goto :goto_0

    :cond_0
    const-string p1, "jobject"

    :goto_0
    return-object p1
.end method

.method public fieldDefs(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javah/LLNI;->fieldDefs(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;Z)Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    return-object p1
.end method

.method public fieldDefs(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;Z)Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;
    .locals 11

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getSuperclass()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openjdk/javax/lang/model/util/Types;->asElement(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/TypeElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5
    new-instance v2, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;

    .line 6
    invoke-virtual {p0, v0, p2, v1}, Lorg/openjdk/tools/javah/LLNI;->fieldDefs(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;Z)Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;

    move-result-object v0

    invoke-direct {v2, p1, v0, p3}, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;-><init>(Lorg/openjdk/javax/lang/model/element/TypeElement;Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;Z)V

    .line 7
    iget-object p3, v2, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->parent:Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;

    iget p3, p3, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->byteSize:I

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 8
    :cond_0
    new-instance v2, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0, p3}, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;-><init>(Lorg/openjdk/javax/lang/model/element/TypeElement;Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;Z)V

    move p3, v1

    goto :goto_0

    .line 9
    :goto_1
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, p3

    move p3, v1

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/openjdk/javax/lang/model/element/VariableElement;

    .line 11
    iget-boolean v2, p0, Lorg/openjdk/tools/javah/LLNI;->doubleAlign:Z

    const/4 v10, 0x1

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    rem-int/lit8 v2, v5, 0x8

    if-nez v2, :cond_2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v6, p2

    .line 12
    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javah/LLNI;->doTwoWordFields(Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;Lorg/openjdk/javax/lang/model/element/TypeElement;ILjava/lang/String;Z)I

    move-result v5

    move p3, v10

    .line 13
    :cond_2
    invoke-interface {v9}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v2

    .line 14
    sget-object v3, Lorg/openjdk/javax/lang/model/type/TypeKind;->LONG:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_4

    sget-object v3, Lorg/openjdk/javax/lang/model/type/TypeKind;->DOUBLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    move v10, v1

    .line 15
    :cond_4
    :goto_3
    iget-boolean v2, p0, Lorg/openjdk/tools/javah/LLNI;->doubleAlign:Z

    if-eqz v2, :cond_5

    if-nez v10, :cond_1

    .line 16
    :cond_5
    invoke-direct {p0, v0, v9, p2, v1}, Lorg/openjdk/tools/javah/LLNI;->doField(Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 17
    :cond_6
    iget-boolean v1, p0, Lorg/openjdk/tools/javah/LLNI;->doubleAlign:Z

    if-eqz v1, :cond_8

    if-nez p3, :cond_8

    .line 18
    rem-int/lit8 p3, v5, 0x8

    if-eqz p3, :cond_7

    add-int/lit8 v5, v5, 0x4

    :cond_7
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v6, p2

    .line 19
    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javah/LLNI;->doTwoWordFields(Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;Lorg/openjdk/javax/lang/model/element/TypeElement;ILjava/lang/String;Z)I

    move-result v5

    .line 20
    :cond_8
    iput v5, v0, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->byteSize:I

    return-object v0
.end method

.method public forwardDecls(Ljava/io/PrintWriter;Lorg/openjdk/javax/lang/model/element/TypeElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/TypeSignature$SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v1, "java.lang.Object"

    invoke-interface {v0, v1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javah/LLNI;->genHandleType(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getSuperclass()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/openjdk/javax/lang/model/util/Types;->asElement(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p2

    check-cast p2, Lorg/openjdk/javax/lang/model/element/TypeElement;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/LLNI;->forwardDecls(Ljava/io/PrintWriter;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javah/LLNI;->fields:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x5b

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/VariableElement;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    new-instance v3, Lorg/openjdk/tools/javah/TypeSignature;

    iget-object v4, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javah/TypeSignature;-><init>(Lorg/openjdk/javax/lang/model/util/Elements;)V

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javah/TypeSignature;->qualifiedTypeName(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javah/TypeSignature;->getTypeSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javah/LLNI;->forwardDeclsFromSig(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/openjdk/tools/javah/LLNI;->methods:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/lang/model/element/Modifier;->NATIVE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javah/Gen;->signature(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/openjdk/tools/javah/TypeSignature;

    iget-object v5, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-direct {v4, v5}, Lorg/openjdk/tools/javah/TypeSignature;-><init>(Lorg/openjdk/javax/lang/model/util/Elements;)V

    invoke-virtual {v4, v0, v3}, Lorg/openjdk/tools/javah/TypeSignature;->getTypeSignature(Ljava/lang/String;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_4

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javah/LLNI;->forwardDeclsFromSig(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public forwardDeclsFromSig(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javah/LLNI;->genHandleType(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public genHandleType(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javah/LLNI;->mangleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javah/LLNI;->doneHandleTypes:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javah/LLNI;->doneHandleTypes:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ifndef DEFINED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    #define DEFINED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    GEN_HANDLE_TYPES("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#endif"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public generateDeclsForClass(Ljava/io/PrintWriter;Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/TypeSignature$SignatureException;,
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javah/LLNI;->doneHandleTypes:Ljava/util/Set;

    const-string v0, "java.lang.Class"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javah/LLNI;->genHandleType(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "java.lang.ClassLoader"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javah/LLNI;->genHandleType(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "java.lang.Object"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javah/LLNI;->genHandleType(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "java.lang.String"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javah/LLNI;->genHandleType(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "java.lang.Thread"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javah/LLNI;->genHandleType(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "java.lang.ThreadGroup"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javah/LLNI;->genHandleType(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "java.lang.Throwable"

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javah/LLNI;->genHandleType(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/* LLNI Header for class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ifndef _Included_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#define _Included_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "#include \"typedefs.h\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "#include \"llni.h\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#include \"jni.h\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/LLNI;->forwardDecls(Ljava/io/PrintWriter;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javah/LLNI;->structSectionForClass(Ljava/io/PrintWriter;Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javah/LLNI;->methodSectionForClass(Ljava/io/PrintWriter;Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)V

    const-string p2, "#endif"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getIncludes()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final isASCIILetterOrDigit(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p1, v0, :cond_3

    const/16 v0, 0x39

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final isLongOrDouble(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javah/LLNI$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javah/LLNI$1;-><init>(Lorg/openjdk/tools/javah/LLNI;)V

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/openjdk/javax/lang/model/type/TypeVisitor;->visit(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final jniMethodName(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/TypeSignature$SignatureException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/VariableElement;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "__"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/javax/lang/model/type/TypeMirror;

    invoke-interface {p3}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/openjdk/tools/javah/TypeSignature;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javah/TypeSignature;-><init>(Lorg/openjdk/javax/lang/model/util/Elements;)V

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javah/TypeSignature;->getTypeSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javah/LLNI;->nameToIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public final jniType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v1, "java.lang.Throwable"

    invoke-interface {v0, v1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v2, "java.lang.Class"

    invoke-interface {v1, v2}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v3, "java.lang.String"

    invoke-interface {v2, v3}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v3, p1}, Lorg/openjdk/javax/lang/model/util/Types;->asElement(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v3

    sget-object v4, Lorg/openjdk/tools/javah/LLNI$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v4, v5

    packed-switch v5, :pswitch_data_0

    iget-object p1, p0, Lorg/openjdk/tools/javah/Gen;->util:Lorg/openjdk/tools/javah/Util;

    const-string v0, "jni.unknown.type"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javah/Util;->bug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "void"

    return-object p1

    :pswitch_1
    invoke-interface {v3, v2}, Lorg/openjdk/javax/lang/model/element/Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "jstring"

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lorg/openjdk/javax/lang/model/util/Types;->isAssignable(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "jthrowable"

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/openjdk/javax/lang/model/util/Types;->isAssignable(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "jclass"

    return-object p1

    :cond_2
    const-string p1, "jobject"

    return-object p1

    :pswitch_2
    check-cast p1, Lorg/openjdk/javax/lang/model/type/ArrayType;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/ArrayType;->getComponentType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/Error;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

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
    const-string p1, "jlongArray"

    return-object p1

    :pswitch_7
    const-string p1, "jintArray"

    return-object p1

    :pswitch_8
    const-string p1, "jshortArray"

    return-object p1

    :pswitch_9
    const-string p1, "jcharArray"

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
    const-string p1, "jlong"

    return-object p1

    :pswitch_f
    const-string p1, "jint"

    return-object p1

    :pswitch_10
    const-string p1, "jshort"

    return-object p1

    :pswitch_11
    const-string p1, "jchar"

    return-object p1

    :pswitch_12
    const-string p1, "jbyte"

    return-object p1

    :pswitch_13
    const-string p1, "jboolean"

    return-object p1

    nop

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

.method public llniFieldName(Lorg/openjdk/javax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/LLNI;->maskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public llniType(Lorg/openjdk/javax/lang/model/type/TypeMirror;ZZ)Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javah/LLNI$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const-string v2, "DEREFERENCED_"

    const-string v3, " "

    packed-switch v1, :pswitch_data_0

    new-instance p2, Ljava/lang/Error;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "void"

    goto/16 :goto_1

    :pswitch_1
    iget-object p3, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {p3, p1}, Lorg/openjdk/javax/lang/model/util/Types;->asElement(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/lang/model/element/TypeElement;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "I"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/LLNI;->mangleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_2
    check-cast p1, Lorg/openjdk/javax/lang/model/type/ArrayType;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/ArrayType;->getComponentType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_1

    new-instance p2, Ljava/lang/Error;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_3
    const-string p1, "IArrayOfRef"

    goto :goto_0

    :pswitch_4
    const-string p1, "IArrayOfDouble"

    goto :goto_0

    :pswitch_5
    const-string p1, "IArrayOfFloat"

    goto :goto_0

    :pswitch_6
    const-string p1, "IArrayOfLong"

    goto :goto_0

    :pswitch_7
    const-string p1, "IArrayOfInt"

    goto :goto_0

    :pswitch_8
    const-string p1, "IArrayOfShort"

    goto :goto_0

    :pswitch_9
    const-string p1, "IArrayOfChar"

    goto :goto_0

    :pswitch_a
    const-string p1, "IArrayOfByte"

    goto :goto_0

    :pswitch_b
    const-string p1, "IArrayOfBoolean"

    :goto_0
    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_c
    if-eqz p3, :cond_0

    const-string p1, "java_double"

    goto :goto_1

    :cond_0
    const-string p1, "val32 /* java_double */"

    goto :goto_1

    :pswitch_d
    const-string p1, "java_float"

    goto :goto_1

    :pswitch_e
    if-eqz p3, :cond_1

    const-string p1, "java_long"

    goto :goto_1

    :cond_1
    const-string p1, "val32 /* java_long */"

    goto :goto_1

    :pswitch_f
    const-string p1, "java_int"

    :cond_2
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
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

.method public mangleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x24

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public maskName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LLNI_mask("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public methodDecl(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/TypeSignature$SignatureException;,
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/Gen;->signature(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javah/TypeSignature;

    iget-object v3, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javah/TypeSignature;-><init>(Lorg/openjdk/javax/lang/model/util/Elements;)V

    invoke-virtual {v2, v1, v0}, Lorg/openjdk/tools/javah/TypeSignature;->getTypeSignature(Ljava/lang/String;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javah/LLNI;->needLongName(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/TypeElement;)Z

    move-result p2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javah/Gen;->util:Lorg/openjdk/tools/javah/Util;

    const-string v3, "invalid.method.signature"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javah/Util;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JNIEXPORT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javah/LLNI;->jniType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " JNICALL"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3, p2}, Lorg/openjdk/tools/javah/LLNI;->jniMethodName(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(JNIEnv *, "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3}, Lorg/openjdk/tools/javah/LLNI;->cRcvrDecl(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/VariableElement;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/javax/lang/model/type/TypeMirror;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javah/LLNI;->jniType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public methodDecls(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/TypeSignature$SignatureException;,
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javah/LLNI;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/lang/model/element/Modifier;->NATIVE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, p1, p2}, Lorg/openjdk/tools/javah/LLNI;->methodDecl(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public methodSectionForClass(Ljava/io/PrintWriter;Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/TypeSignature$SignatureException;,
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javah/LLNI;->methodDecls(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/* Native method declarations: */"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "#ifdef __cplusplus"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "extern \"C\" {"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#endif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final nameToIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javah/LLNI;->isASCIILetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v4, 0x2f

    const/16 v5, 0x5f

    if-ne v3, v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-ne v3, v5, :cond_3

    const-string v3, "_1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v4, 0x3b

    if-ne v3, v4, :cond_4

    const-string v3, "_2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_5

    const-string v3, "_3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object p1
.end method

.method public final needLongName(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/TypeElement;)Z
    .locals 4

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javah/LLNI;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    if-eq v1, p1, :cond_0

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/lang/model/element/Modifier;->NATIVE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/openjdk/javax/lang/model/element/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public structSectionForClass(Ljava/io/PrintWriter;Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)V
    .locals 3

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java_lang_Object"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "/* struct java_lang_Object is defined in typedefs.h. */"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_0
    const-string v1, "#if !defined(__i386)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "#pragma pack(4)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "#endif"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "struct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    ObjHeader h;"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javah/LLNI;->fieldDefs(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "java.lang.Class"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "    Class *LLNI_mask(cClass);  /* Fake field; don\'t access (see oobj.h) */"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "};"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "#pragma pack()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public write(Ljava/io/OutputStream;Lorg/openjdk/javax/lang/model/element/TypeElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javah/LLNI;->mangleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/Gen;->wrapWriter(Ljava/io/OutputStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javah/LLNI;->fields:Ljava/util/List;

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javah/LLNI;->methods:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javah/LLNI;->generateDeclsForClass(Ljava/io/PrintWriter;Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javah/TypeSignature$SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javah/Gen;->util:Lorg/openjdk/tools/javah/Util;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "llni.sigerror"

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javah/Util;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
