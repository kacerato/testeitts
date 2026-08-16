.class public Lorg/eclipse/jdt/internal/core/builder/ImageBuilderInternalException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x645f469b6400d8L


# instance fields
.field protected coreException:Lorg/eclipse/core/runtime/CoreException;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/CoreException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ImageBuilderInternalException;->coreException:Lorg/eclipse/core/runtime/CoreException;

    return-void
.end method


# virtual methods
.method public getThrowable()Lorg/eclipse/core/runtime/CoreException;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ImageBuilderInternalException;->coreException:Lorg/eclipse/core/runtime/CoreException;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ImageBuilderInternalException;->coreException:Lorg/eclipse/core/runtime/CoreException;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const-string v1, "Stack trace of embedded core exception:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ImageBuilderInternalException;->coreException:Lorg/eclipse/core/runtime/CoreException;

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
