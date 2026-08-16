.class public interface abstract Lorg/eclipse/jdt/core/search/IJavaSearchResultCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXACT_MATCH:I = 0x0

.field public static final POTENTIAL_MATCH:I = 0x1


# virtual methods
.method public abstract aboutToStart()V
.end method

.method public abstract accept(Lorg/eclipse/core/resources/IResource;IILorg/eclipse/jdt/core/IJavaElement;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation
.end method

.method public abstract done()V
.end method

.method public abstract getProgressMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;
.end method
