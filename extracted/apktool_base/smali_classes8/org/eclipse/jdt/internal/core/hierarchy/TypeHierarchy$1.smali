.class Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/ISafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->fireChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

.field private final synthetic val$listener:Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy$1;->this$0:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy$1;->val$listener:Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Exception occurred in listener of Type hierarchy change notification"

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy$1;->val$listener:Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy$1;->this$0:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;->typeHierarchyChanged(Lorg/eclipse/jdt/core/ITypeHierarchy;)V

    return-void
.end method
