.class public final Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;


# instance fields
.field private annotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

.field private argumentNames:[[C

.field private defaultValue:Ljava/lang/Object;

.field private exceptionTypeNames:[[C

.field private genericSignature:[C

.field private isClInit:Z

.field private isConstructor:Z

.field private methodDescriptor:[C

.field private modifiers:I

.field private parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

.field private selector:[C

.field private tagBits:J

.field private typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAnnotatedParametersCount()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->annotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    return-object v0
.end method

.method public getArgumentNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->argumentNames:[[C

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getExceptionTypeNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->exceptionTypeNames:[[C

    return-object v0
.end method

.method public getGenericSignature()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->genericSignature:[C

    return-object v0
.end method

.method public getMethodDescriptor()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->methodDescriptor:[C

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->modifiers:I

    return v0
.end method

.method public getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eqz p2, :cond_1

    array-length v0, p2

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p2, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelector()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->selector:[C

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->tagBits:J

    return-wide v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    return-object v0
.end method

.method public isClinit()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->isClInit:Z

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->isConstructor:Z

    return v0
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->annotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    return-object p0
.end method

.method public setArgumentNames([[C)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->argumentNames:[[C

    return-object p0
.end method

.method public setDefaultValue(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->defaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public setExceptionTypeNames([[C)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->exceptionTypeNames:[[C

    return-object p0
.end method

.method public setGenericSignature([C)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->genericSignature:[C

    return-object p0
.end method

.method public setIsClInit(Z)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->isClInit:Z

    return-object p0
.end method

.method public setIsConstructor(Z)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->isConstructor:Z

    return-object p0
.end method

.method public setMethodDescriptor([C)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->methodDescriptor:[C

    return-object p0
.end method

.method public setModifiers(I)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->modifiers:I

    return-object p0
.end method

.method public setParameterAnnotations([[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    return-object p0
.end method

.method public setSelector([C)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->selector:[C

    return-object p0
.end method

.method public setTagBits(J)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->tagBits:J

    return-object p0
.end method

.method public setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/BinaryTypeFormatter;->methodToString(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
