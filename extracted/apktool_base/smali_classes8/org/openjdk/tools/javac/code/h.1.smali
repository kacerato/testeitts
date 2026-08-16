.class public final synthetic Lorg/openjdk/tools/javac/code/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/util/Name;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/Filter;

.field public final synthetic d:Lorg/openjdk/tools/javac/code/Scope$LookupKind;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/h;->b:Lorg/openjdk/tools/javac/util/Name;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/h;->c:Lorg/openjdk/tools/javac/util/Filter;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/h;->d:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/h;->b:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/h;->c:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/h;->d:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    check-cast p1, Lorg/openjdk/tools/javac/code/Scope;

    invoke-static {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->d(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/code/Scope;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
