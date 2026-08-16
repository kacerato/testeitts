.class public Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryNestedType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;


# instance fields
.field private enclosingTypeName:[C

.field private modifiers:I

.field private name:[C


# direct methods
.method public constructor <init>([C[CI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryNestedType;->name:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryNestedType;->enclosingTypeName:[C

    iput p3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryNestedType;->modifiers:I

    return-void
.end method


# virtual methods
.method public getEnclosingTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryNestedType;->enclosingTypeName:[C

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryNestedType;->modifiers:I

    return v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryNestedType;->name:[C

    return-object v0
.end method
