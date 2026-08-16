.class public final synthetic Lorg/openjdk/tools/javac/comp/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Annotate;

.field public final synthetic c:Lorg/openjdk/tools/javac/comp/Env;

.field public final synthetic d:Lorg/openjdk/tools/javac/util/List;

.field public final synthetic e:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/m;->b:Lorg/openjdk/tools/javac/comp/Annotate;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/m;->c:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/m;->d:Lorg/openjdk/tools/javac/util/List;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/m;->e:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/m;->b:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/m;->c:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/m;->d:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/m;->e:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Annotate;->e(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method
