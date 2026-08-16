.class Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullDefaultRange"
.end annotation


# instance fields
.field private annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field final end:I

.field final start:I

.field target:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

.field value:I


# direct methods
.method public constructor <init>(ILorg/eclipse/jdt/internal/compiler/ast/Annotation;IILorg/eclipse/jdt/internal/compiler/lookup/Binding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->start:I

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->end:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->value:I

    filled-new-array {p2}, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->target:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-void
.end method


# virtual methods
.method public contains(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public merge(ILorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aput-object p2, v0, v1

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->target:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->value:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->value:I

    return-void
.end method
