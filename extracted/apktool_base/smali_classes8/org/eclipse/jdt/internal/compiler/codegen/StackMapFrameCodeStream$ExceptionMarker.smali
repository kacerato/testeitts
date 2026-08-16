.class public Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionMarker"
.end annotation


# instance fields
.field public constantPoolName:[C

.field public pc:I


# direct methods
.method public constructor <init>(I[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->pc:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->constantPoolName:[C

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->pc:I

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->pc:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->pc:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->pc:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->constantPoolName:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->constantPoolName:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->pc:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->constantPoolName:[C

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->constantPoolName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
