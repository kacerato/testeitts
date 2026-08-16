.class Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment$1;->compare(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->compareTo([C[C)I

    move-result p1

    :goto_0
    return p1
.end method
