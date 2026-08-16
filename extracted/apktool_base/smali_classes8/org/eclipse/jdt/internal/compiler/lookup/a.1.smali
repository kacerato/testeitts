.class public final synthetic Lorg/eclipse/jdt/internal/compiler/lookup/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/a;->b:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/a;->b:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;

    check-cast p1, [C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;->k(Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;[C)Z

    move-result p1

    return p1
.end method
