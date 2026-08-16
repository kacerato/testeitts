.class Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArrayList"
.end annotation


# instance fields
.field public length:I

.field public list:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->list:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->length:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->list:[I

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->length:I

    if-ne v1, v2, :cond_0

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->list:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->list:[I

    iget v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->length:I

    aput p1, v0, v1

    return-void
.end method
