.class public final synthetic Lorg/openjdk/tools/javac/comp/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Check;

.field public final synthetic b:Lorg/openjdk/tools/javac/code/Type;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Symbol;

.field public final synthetic d:Lorg/openjdk/tools/javac/comp/Env;

.field public final synthetic e:Lorg/openjdk/tools/javac/util/List;

.field public final synthetic f:Lorg/openjdk/tools/javac/util/List;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/L;->a:Lorg/openjdk/tools/javac/comp/Check;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/L;->b:Lorg/openjdk/tools/javac/code/Type;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/L;->c:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/L;->d:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/L;->e:Lorg/openjdk/tools/javac/util/List;

    iput-object p6, p0, Lorg/openjdk/tools/javac/comp/L;->f:Lorg/openjdk/tools/javac/util/List;

    iput-boolean p7, p0, Lorg/openjdk/tools/javac/comp/L;->g:Z

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/L;->a:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/L;->b:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/L;->c:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/L;->d:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/L;->e:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/L;->f:Lorg/openjdk/tools/javac/util/List;

    iget-boolean v6, p0, Lorg/openjdk/tools/javac/comp/L;->g:Z

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->e(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZLorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method
