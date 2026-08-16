.class public final synthetic Lorg/eclipse/jdt/internal/compiler/lookup/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

.field public final synthetic c:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field public final synthetic d:[C


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/k;->b:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/k;->c:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/k;->d:[C

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/k;->b:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/k;->c:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/k;->d:[C

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->a(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method
