.class public final synthetic Lorg/eclipse/jdt/core/dom/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/core/dom/ModuleBinding;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/core/dom/ModuleBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/g;->b:Lorg/eclipse/jdt/core/dom/ModuleBinding;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/g;->b:Lorg/eclipse/jdt/core/dom/ModuleBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/dom/ModuleBinding;->b(Lorg/eclipse/jdt/core/dom/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1

    return-object p1
.end method
