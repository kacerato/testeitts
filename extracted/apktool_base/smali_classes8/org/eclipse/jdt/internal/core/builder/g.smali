.class public final synthetic Lorg/eclipse/jdt/internal/core/builder/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->a(Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)Z

    move-result p1

    return p1
.end method
