.class public Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;
    }
.end annotation


# instance fields
.field private annotationProvider:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

.field private inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

.field private isFromSource:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->annotationProvider:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "toDecorate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->isFromSource:Z

    .line 7
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "toDecorate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->externalAnnotationProvider(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V

    return-object p2
.end method

.method public static externalAnnotationProvider(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".eea"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2f

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    return-object v1

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    invoke-virtual {p2, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;->produce()Ljava/util/zip/ZipFile;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->annotationProvider:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->forTypeHeader(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getGenericSignature()[C

    move-result-object p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeName()[C

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->annotationProvider:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object p2

    invoke-virtual {v0, p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->forField([C[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    if-eqz v0, :cond_5

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object p1

    if-nez p1, :cond_3

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->annotationProvider:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->forMethod([C[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingMethod()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingMethod()[C

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingTypeName()[C

    move-result-object v0

    return-object v0
.end method

.method public getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->annotationProvider:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->isFromSource:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->FROM_SOURCE:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->NO_EEA_FILE:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    return-object v0
.end method

.method public getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getInterfaceNames()[[C

    move-result-object v0

    return-object v0
.end method

.method public getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v0

    return-object v0
.end method

.method public getMissingTypeNames()[[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMissingTypeNames()[[[C

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getModule()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getModule()[C

    move-result-object v0

    return-object v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object v0

    return-object v0
.end method

.method public getSourceName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSourceName()[C

    move-result-object v0

    return-object v0
.end method

.method public getSuperclassName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object v0

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTagBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isAnonymous()Z

    move-result v0

    return v0
.end method

.method public isBinaryType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->isBinaryType()Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isLocal()Z

    move-result v0

    return v0
.end method

.method public isMember()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isMember()Z

    move-result v0

    return v0
.end method

.method public sourceFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->inputType:Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->sourceFileName()[C

    move-result-object v0

    return-object v0
.end method
