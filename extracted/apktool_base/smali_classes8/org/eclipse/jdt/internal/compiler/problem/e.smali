.class public final synthetic Lorg/eclipse/jdt/internal/compiler/problem/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/e;->b:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/e;->b:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result p1

    return p1
.end method
