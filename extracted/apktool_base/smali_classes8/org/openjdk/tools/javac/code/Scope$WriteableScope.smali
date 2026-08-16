.class public abstract Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
.super Lorg/openjdk/tools/javac/code/Scope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WriteableScope"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public static create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0
.end method


# virtual methods
.method public final dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    return-object v0
.end method

.method public abstract dup(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
.end method

.method public final dupUnshared()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dupUnshared(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    return-object v0
.end method

.method public abstract dupUnshared(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
.end method

.method public abstract enter(Lorg/openjdk/tools/javac/code/Symbol;)V
.end method

.method public abstract enterIfAbsent(Lorg/openjdk/tools/javac/code/Symbol;)V
.end method

.method public abstract leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
.end method

.method public abstract remove(Lorg/openjdk/tools/javac/code/Symbol;)V
.end method
