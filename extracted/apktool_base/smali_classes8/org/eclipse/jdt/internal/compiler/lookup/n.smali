.class public final synthetic Lorg/eclipse/jdt/internal/compiler/lookup/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/n;->b:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/n;->b:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    check-cast p1, [C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->a(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    return-object p1
.end method
