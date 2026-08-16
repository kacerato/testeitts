.class Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding$3;->compare(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I
    .locals 4

    .line 2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 3
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 4
    array-length v2, v0

    array-length v3, v1

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compare([C[CII)I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p1, p1

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p2

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method
