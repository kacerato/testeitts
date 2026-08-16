.class public final synthetic Lorg/openjdk/tools/sjavac/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/sjavac/CompileJavaPackages;

.field public final synthetic c:Lorg/openjdk/tools/sjavac/Log;

.field public final synthetic d:Lorg/openjdk/tools/sjavac/comp/CompilationService;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lorg/openjdk/tools/sjavac/CompileChunk;

.field public final synthetic g:Ljava/util/Set;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/sjavac/CompileJavaPackages;Lorg/openjdk/tools/sjavac/Log;Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/lang/String;Lorg/openjdk/tools/sjavac/CompileChunk;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/c;->b:Lorg/openjdk/tools/sjavac/CompileJavaPackages;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/c;->c:Lorg/openjdk/tools/sjavac/Log;

    iput-object p3, p0, Lorg/openjdk/tools/sjavac/c;->d:Lorg/openjdk/tools/sjavac/comp/CompilationService;

    iput-object p4, p0, Lorg/openjdk/tools/sjavac/c;->e:Ljava/lang/String;

    iput-object p5, p0, Lorg/openjdk/tools/sjavac/c;->f:Lorg/openjdk/tools/sjavac/CompileChunk;

    iput-object p6, p0, Lorg/openjdk/tools/sjavac/c;->g:Ljava/util/Set;

    iput-object p7, p0, Lorg/openjdk/tools/sjavac/c;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/c;->b:Lorg/openjdk/tools/sjavac/CompileJavaPackages;

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/c;->c:Lorg/openjdk/tools/sjavac/Log;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/c;->d:Lorg/openjdk/tools/sjavac/comp/CompilationService;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/c;->e:Ljava/lang/String;

    iget-object v4, p0, Lorg/openjdk/tools/sjavac/c;->f:Lorg/openjdk/tools/sjavac/CompileChunk;

    iget-object v5, p0, Lorg/openjdk/tools/sjavac/c;->g:Ljava/util/Set;

    iget-object v6, p0, Lorg/openjdk/tools/sjavac/c;->h:Ljava/lang/Object;

    invoke-static/range {v0 .. v6}, Lorg/openjdk/tools/sjavac/CompileJavaPackages;->a(Lorg/openjdk/tools/sjavac/CompileJavaPackages;Lorg/openjdk/tools/sjavac/Log;Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/lang/String;Lorg/openjdk/tools/sjavac/CompileChunk;Ljava/util/Set;Ljava/lang/Object;)Lorg/openjdk/tools/sjavac/server/CompilationSubResult;

    move-result-object v0

    return-object v0
.end method
