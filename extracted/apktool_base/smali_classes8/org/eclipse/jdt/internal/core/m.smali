.class public final synthetic Lorg/eclipse/jdt/internal/core/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/core/JavaProject;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/m;->b:Lorg/eclipse/jdt/internal/core/JavaProject;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/m;->b:Lorg/eclipse/jdt/internal/core/JavaProject;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->b(Lorg/eclipse/jdt/internal/core/JavaProject;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
