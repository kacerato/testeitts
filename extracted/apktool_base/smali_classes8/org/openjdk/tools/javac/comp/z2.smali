.class public final synthetic Lorg/openjdk/tools/javac/comp/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Scope$ImportFilter;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

.field public final synthetic b:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/z2;->a:Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/z2;->b:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    return-void
.end method


# virtual methods
.method public final accepts(Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/z2;->a:Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/z2;->b:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-static {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->a(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1
.end method
