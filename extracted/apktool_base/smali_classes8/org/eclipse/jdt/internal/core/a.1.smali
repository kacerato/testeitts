.class public final synthetic Lorg/eclipse/jdt/internal/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/AbstractModule;->a(Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
