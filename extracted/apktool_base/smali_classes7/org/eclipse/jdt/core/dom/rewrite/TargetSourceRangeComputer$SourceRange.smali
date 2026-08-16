.class public final Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceRange"
.end annotation


# instance fields
.field private length:I

.field private startPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->startPosition:I

    iput p2, p0, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->length:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->length:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->startPosition:I

    return v0
.end method
