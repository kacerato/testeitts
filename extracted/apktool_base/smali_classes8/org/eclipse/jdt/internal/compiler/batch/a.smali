.class public final synthetic Lorg/eclipse/jdt/internal/compiler/batch/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/a;->b:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/a;->d:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/a;->b:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/a;->d:Ljava/util/function/Function;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->d(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
