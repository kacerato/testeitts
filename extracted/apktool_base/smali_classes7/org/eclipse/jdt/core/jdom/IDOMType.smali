.class public interface abstract Lorg/eclipse/jdt/core/jdom/IDOMType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMMember;


# virtual methods
.method public abstract addSuperInterface(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSuperInterfaces()[Ljava/lang/String;
.end method

.method public abstract getSuperclass()Ljava/lang/String;
.end method

.method public abstract getTypeParameters()[Ljava/lang/String;
.end method

.method public abstract isAnnotation()Z
.end method

.method public abstract isClass()Z
.end method

.method public abstract isEnum()Z
.end method

.method public abstract setAnnotation(Z)V
.end method

.method public abstract setClass(Z)V
.end method

.method public abstract setEnum(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setSuperInterfaces([Ljava/lang/String;)V
.end method

.method public abstract setSuperclass(Ljava/lang/String;)V
.end method

.method public abstract setTypeParameters([Ljava/lang/String;)V
.end method
