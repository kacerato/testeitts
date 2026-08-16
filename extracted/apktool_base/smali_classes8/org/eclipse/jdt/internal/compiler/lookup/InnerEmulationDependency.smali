.class public Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field public wasEnclosingInstanceSupplied:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;->wasEnclosingInstanceSupplied:Z

    return-void
.end method
