.class Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindingTables"
.end annotation


# instance fields
.field bindingKeysToBindings:Ljava/util/Map;

.field compilerAnnotationBindingsToASTBindings:Ljava/util/Map;

.field compilerBindingsToASTBindings:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerAnnotationBindingsToASTBindings:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    return-void
.end method
