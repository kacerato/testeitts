.class public final synthetic Lorg/openjdk/tools/javac/main/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/main/Arguments;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lorg/openjdk/tools/javac/main/OptionHelper;

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/main/Arguments;Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/f;->b:Lorg/openjdk/tools/javac/main/Arguments;

    iput-object p2, p0, Lorg/openjdk/tools/javac/main/f;->c:Ljava/util/Set;

    iput-object p3, p0, Lorg/openjdk/tools/javac/main/f;->d:Lorg/openjdk/tools/javac/main/OptionHelper;

    iput-boolean p4, p0, Lorg/openjdk/tools/javac/main/f;->e:Z

    iput-boolean p5, p0, Lorg/openjdk/tools/javac/main/f;->f:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/f;->b:Lorg/openjdk/tools/javac/main/Arguments;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/f;->c:Ljava/util/Set;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/f;->d:Lorg/openjdk/tools/javac/main/OptionHelper;

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/main/f;->e:Z

    iget-boolean v4, p0, Lorg/openjdk/tools/javac/main/f;->f:Z

    move-object v5, p1

    check-cast v5, Ljava/lang/Iterable;

    invoke-static/range {v0 .. v5}, Lorg/openjdk/tools/javac/main/Arguments;->a(Lorg/openjdk/tools/javac/main/Arguments;Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZLjava/lang/Iterable;)Z

    move-result p1

    return p1
.end method
