.class public final synthetic Lorg/openjdk/tools/javac/comp/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Annotate;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/k;->b:Lorg/openjdk/tools/javac/comp/Annotate;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/k;->c:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/k;->b:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/k;->c:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Annotate;->f(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method
