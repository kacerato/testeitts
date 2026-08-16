.class public final synthetic Lorg/openjdk/tools/javac/code/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Filter;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/util/Filter;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Filter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/X;->b:Lorg/openjdk/tools/javac/util/Filter;

    return-void
.end method


# virtual methods
.method public final accepts(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/X;->b:Lorg/openjdk/tools/javac/util/Filter;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;->f(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1
.end method
