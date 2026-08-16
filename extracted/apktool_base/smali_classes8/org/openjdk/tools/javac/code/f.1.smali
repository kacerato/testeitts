.class public final synthetic Lorg/openjdk/tools/javac/code/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/util/Filter;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Scope$LookupKind;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/f;->b:Lorg/openjdk/tools/javac/util/Filter;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/f;->c:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/f;->b:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/f;->c:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    check-cast p1, Lorg/openjdk/tools/javac/code/Scope;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->b(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/code/Scope;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
