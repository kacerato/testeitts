.class public final synthetic Lorg/openjdk/tools/javac/code/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/Filter;

.field public final synthetic d:Lorg/openjdk/tools/javac/code/Scope$LookupKind;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Scope$CompoundScope;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/g;->b:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/g;->c:Lorg/openjdk/tools/javac/util/Filter;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/g;->d:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/g;->b:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/g;->c:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/g;->d:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->c(Lorg/openjdk/tools/javac/code/Scope$CompoundScope;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
