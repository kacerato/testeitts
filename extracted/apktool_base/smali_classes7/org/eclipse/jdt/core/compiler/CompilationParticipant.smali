.class public abstract Lorg/eclipse/jdt/core/compiler/CompilationParticipant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NEEDS_FULL_BUILD:I = 0x2

.field public static final READY_FOR_BUILD:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aboutToBuild(Lorg/eclipse/jdt/core/IJavaProject;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public buildFinished(Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 0

    return-void
.end method

.method public buildStarting([Lorg/eclipse/jdt/core/compiler/BuildContext;Z)V
    .locals 0

    return-void
.end method

.method public cleanStarting(Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 0

    return-void
.end method

.method public isActive(Lorg/eclipse/jdt/core/IJavaProject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isAnnotationProcessor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public processAnnotations([Lorg/eclipse/jdt/core/compiler/BuildContext;)V
    .locals 0

    return-void
.end method

.method public reconcile(Lorg/eclipse/jdt/core/compiler/ReconcileContext;)V
    .locals 0

    return-void
.end method
