.class public final synthetic Lorg/eclipse/jdt/internal/compiler/ast/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/b;->b:Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/b;->b:Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->b(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method
