.class public interface abstract Lorg/eclipse/jdt/core/jdom/IDOMMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMMember;


# virtual methods
.method public abstract addException(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getBody()Ljava/lang/String;
.end method

.method public abstract getDefault()Ljava/lang/String;
.end method

.method public abstract getExceptions()[Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterNames()[Ljava/lang/String;
.end method

.method public abstract getParameterTypes()[Ljava/lang/String;
.end method

.method public abstract getReturnType()Ljava/lang/String;
.end method

.method public abstract getTypeParameters()[Ljava/lang/String;
.end method

.method public abstract isConstructor()Z
.end method

.method public abstract setBody(Ljava/lang/String;)V
.end method

.method public abstract setConstructor(Z)V
.end method

.method public abstract setDefault(Ljava/lang/String;)V
.end method

.method public abstract setExceptions([Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setParameters([Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setReturnType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setTypeParameters([Ljava/lang/String;)V
.end method
