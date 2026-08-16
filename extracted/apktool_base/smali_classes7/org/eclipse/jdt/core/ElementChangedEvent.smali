.class public Lorg/eclipse/jdt/core/ElementChangedEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field public static final POST_CHANGE:I = 0x1

.field public static final POST_RECONCILE:I = 0x4

.field public static final PRE_AUTO_BUILD:I = 0x2

.field private static final serialVersionUID:J = -0x7c2afbc49e4bd984L


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Lorg/eclipse/jdt/core/ElementChangedEvent;->type:I

    return-void
.end method


# virtual methods
.method public getDelta()Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 1

    iget-object v0, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jdt/core/IJavaElementDelta;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/ElementChangedEvent;->type:I

    return v0
.end method
