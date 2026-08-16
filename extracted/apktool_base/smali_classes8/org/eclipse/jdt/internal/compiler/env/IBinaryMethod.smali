.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;


# virtual methods
.method public abstract getAnnotatedParametersCount()I
.end method

.method public abstract getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
.end method

.method public abstract getDefaultValue()Ljava/lang/Object;
.end method

.method public abstract getExceptionTypeNames()[[C
.end method

.method public abstract getGenericSignature()[C
.end method

.method public abstract getMethodDescriptor()[C
.end method

.method public abstract getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
.end method

.method public abstract getSelector()[C
.end method

.method public abstract getTagBits()J
.end method

.method public abstract getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
.end method

.method public abstract isClinit()Z
.end method
