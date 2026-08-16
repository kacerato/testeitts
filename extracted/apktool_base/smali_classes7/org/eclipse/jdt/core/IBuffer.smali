.class public interface abstract Lorg/eclipse/jdt/core/IBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/IBuffer$ITextEditCapability;
    }
.end annotation


# virtual methods
.method public abstract addBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V
.end method

.method public abstract append(Ljava/lang/String;)V
.end method

.method public abstract append([C)V
.end method

.method public abstract close()V
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getCharacters()[C
.end method

.method public abstract getContents()Ljava/lang/String;
.end method

.method public abstract getLength()I
.end method

.method public abstract getOwner()Lorg/eclipse/jdt/core/IOpenable;
.end method

.method public abstract getText(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
.end method

.method public abstract hasUnsavedChanges()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract removeBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V
.end method

.method public abstract replace(IILjava/lang/String;)V
.end method

.method public abstract replace(II[C)V
.end method

.method public abstract save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract setContents(Ljava/lang/String;)V
.end method

.method public abstract setContents([C)V
.end method
