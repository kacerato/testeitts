.class public final synthetic Lorg/openjdk/tools/javac/code/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

.field public final synthetic d:Lorg/openjdk/tools/javac/util/Filter;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/util/Filter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/p;->b:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/p;->c:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/p;->d:Lorg/openjdk/tools/javac/util/Filter;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/p;->b:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/p;->c:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/p;->d:Lorg/openjdk/tools/javac/util/Filter;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->d(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/util/Filter;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
