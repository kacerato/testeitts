.class public Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4296cccdb5bae054L


# instance fields
.field public isLastRound:Z

.field public newAnnotationProcessorUnits:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;->isLastRound:Z

    return-void
.end method
