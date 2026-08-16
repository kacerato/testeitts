.class public final synthetic Lorg/eclipse/jdt/internal/core/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/core/NameLookup;

.field public final synthetic c:Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;

.field public final synthetic d:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/core/NameLookup;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/u;->b:Lorg/eclipse/jdt/internal/core/NameLookup;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/u;->c:Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/u;->d:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/u;->b:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/u;->c:Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/u;->d:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->b(Lorg/eclipse/jdt/internal/core/NameLookup;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;[Ljava/lang/Object;)V

    return-void
.end method
