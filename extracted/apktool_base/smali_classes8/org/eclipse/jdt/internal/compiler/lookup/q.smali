.class public final synthetic Lorg/eclipse/jdt/internal/compiler/lookup/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashSet;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->f(Ljava/util/HashSet;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-void
.end method
