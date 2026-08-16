.class public final synthetic Lorg/openjdk/tools/javac/code/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/Name;

.field public final synthetic d:Lorg/openjdk/tools/javac/util/Filter;

.field public final synthetic e:Lorg/openjdk/tools/javac/code/Scope$LookupKind;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/q;->b:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/q;->c:Lorg/openjdk/tools/javac/util/Name;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/q;->d:Lorg/openjdk/tools/javac/util/Filter;

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/q;->e:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/q;->b:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/q;->c:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/q;->d:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/q;->e:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-static {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->b(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
