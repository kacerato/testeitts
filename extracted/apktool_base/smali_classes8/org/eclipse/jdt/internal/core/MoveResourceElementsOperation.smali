.class public Lorg/eclipse/jdt/internal/core/MoveResourceElementsOperation;
.super Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    return-void
.end method


# virtual methods
.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_moveResourceProgress:Ljava/lang/String;

    return-object v0
.end method

.method public isMove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
