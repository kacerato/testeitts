.class public final synthetic Lorg/eclipse/jdt/internal/core/builder/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/d;->b:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/d;->b:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder;->a(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V

    return-void
.end method
