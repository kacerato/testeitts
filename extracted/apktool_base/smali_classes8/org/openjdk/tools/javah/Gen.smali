.class public abstract Lorg/openjdk/tools/javah/Gen;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final isWindows:Z


# instance fields
.field protected classes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation
.end field

.field protected elems:Lorg/openjdk/javax/lang/model/util/Elements;

.field protected fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field protected force:Z

.field protected lineSep:Ljava/lang/String;

.field protected mangler:Lorg/openjdk/tools/javah/Mangle;

.field protected outFile:Lorg/openjdk/javax/tools/JavaFileObject;

.field protected processingEnvironment:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

.field protected types:Lorg/openjdk/javax/lang/model/util/Types;

.field protected util:Lorg/openjdk/tools/javah/Util;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/openjdk/tools/javah/Gen;->isWindows:Z

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javah/Util;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javah/Gen;->force:Z

    iput-object p1, p0, Lorg/openjdk/tools/javah/Gen;->util:Lorg/openjdk/tools/javah/Util;

    return-void
.end method

.method private writeIfChanged([BLorg/openjdk/javax/tools/FileObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/javah/Gen;->force:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "[Forcefully writing file "

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lorg/openjdk/javax/tools/FileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javah/Gen;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[Overwriting file "
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const-string v0, "[No need to update file "

    goto :goto_0

    :catch_0
    const-string v0, "[Creating file "

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javah/Gen;->util:Lorg/openjdk/tools/javah/Util;

    iget-boolean v3, v2, Lorg/openjdk/tools/javah/Util;->verbose:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javah/Util;->log(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {p2}, Lorg/openjdk/javax/tools/FileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_3
    return-void
.end method


# virtual methods
.method public baseFileName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->mangler:Lorg/openjdk/tools/javah/Mangle;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javah/Mangle;->mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cppGuardBegin()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ifdef __cplusplus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "extern \"C\" {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#endif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cppGuardEnd()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ifdef __cplusplus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#endif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defineForStatic(Lorg/openjdk/javax/lang/model/element/TypeElement;Lorg/openjdk/javax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->mangler:Lorg/openjdk/tools/javah/Mangle;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/openjdk/tools/javah/Mangle;->mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->mangler:Lorg/openjdk/tools/javah/Mangle;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javah/Mangle;->mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->util:Lorg/openjdk/tools/javah/Util;

    const-string v2, "tried.to.define.non.static"

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javah/Util;->bug(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->FINAL:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_e

    instance-of v1, p2, Ljava/lang/Integer;

    const-string v3, "L"

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/Byte;

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "1L"

    goto/16 :goto_1

    :cond_2
    const-string p2, "0L"

    goto/16 :goto_1

    :cond_3
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Character;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    const v4, 0xffff

    and-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :cond_4
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_6

    sget-boolean v1, Lorg/openjdk/tools/javah/Gen;->isWindows:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "i64"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "LL"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    const-string v3, ""

    const-string v4, "-"

    if-eqz v1, :cond_9

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    cmpg-float v1, v1, v5

    if-gez v1, :cond_7

    move-object v3, v4

    :cond_7
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Inff"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "f"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_9
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_c

    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v7, 0x0

    cmpg-double v1, v5, v7

    if-gez v1, :cond_a

    move-object v3, v4

    :cond_a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "InfD"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_c
    move-object p2, v2

    goto :goto_1

    :cond_d
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#undef "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    return-object v2
.end method

.method public getAllFields(Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getSuperclass()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/openjdk/javax/lang/model/util/Types;->asElement(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/lang/model/element/TypeElement;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFileObject(Ljava/lang/CharSequence;)Lorg/openjdk/javax/tools/FileObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/Gen;->baseFileName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/openjdk/tools/javah/Gen;->getFileSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lorg/openjdk/javax/tools/JavaFileManager;->getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    return-object p1
.end method

.method public getFileSuffix()Ljava/lang/String;
    .locals 1

    const-string v0, ".h"

    return-object v0
.end method

.method public abstract getIncludes()Ljava/lang/String;
.end method

.method public guardBegin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/* Header for class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#ifndef _Included_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define _Included_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public guardEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "#endif"

    return-object p1
.end method

.method public readBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :cond_0
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr v1, v2

    array-length v2, v0

    if-ne v1, v2, :cond_0

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->outFile:Lorg/openjdk/javax/tools/JavaFileObject;

    const/16 v1, 0x2000

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javah/Gen;->writeFileTop(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->classes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javah/Gen;->write(Ljava/io/OutputStream;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->outFile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javah/Gen;->writeIfChanged([BLorg/openjdk/javax/tools/FileObject;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->classes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/lang/model/element/TypeElement;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javah/Gen;->writeFileTop(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javah/Gen;->write(Ljava/io/OutputStream;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javah/Gen;->getFileObject(Ljava/lang/CharSequence;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lorg/openjdk/tools/javah/Gen;->writeIfChanged([BLorg/openjdk/javax/tools/FileObject;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public setClasses(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javah/Gen;->classes:Ljava/util/Set;

    return-void
.end method

.method public setFileManager(Lorg/openjdk/javax/tools/JavaFileManager;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javah/Gen;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/javah/Gen;->force:Z

    return-void
.end method

.method public setOutFile(Lorg/openjdk/javax/tools/JavaFileObject;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javah/Gen;->outFile:Lorg/openjdk/javax/tools/JavaFileObject;

    return-void
.end method

.method public setProcessingEnvironment(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javah/Gen;->processingEnvironment:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p1}, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;->getElementUtils()Lorg/openjdk/javax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-interface {p1}, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Lorg/openjdk/javax/lang/model/util/Types;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    new-instance v0, Lorg/openjdk/tools/javah/Mangle;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javah/Mangle;-><init>(Lorg/openjdk/javax/lang/model/util/Elements;Lorg/openjdk/javax/lang/model/util/Types;)V

    iput-object v0, p0, Lorg/openjdk/tools/javah/Gen;->mangler:Lorg/openjdk/tools/javah/Mangle;

    return-void
.end method

.method public signature(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/lang/model/element/VariableElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v2}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_0

    :cond_0
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public wrapWriter(Ljava/io/OutputStream;)Ljava/io/PrintWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "ISO8859_1"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object p1, p0, Lorg/openjdk/tools/javah/Gen;->util:Lorg/openjdk/tools/javah/Util;

    const-string v0, "encoding.iso8859_1.not.found"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javah/Util;->bug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract write(Ljava/io/OutputStream;Lorg/openjdk/javax/lang/model/element/TypeElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation
.end method

.method public writeFileTop(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/Gen;->wrapWriter(Ljava/io/OutputStream;)Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/* DO NOT EDIT THIS FILE - it is machine generated */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/openjdk/tools/javah/Gen;->getIncludes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
