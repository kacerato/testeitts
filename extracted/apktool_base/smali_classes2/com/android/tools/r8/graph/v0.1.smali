.class public final Lcom/android/tools/r8/graph/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/d1;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/synthesis/b;

.field public final synthetic b:Lcom/android/tools/r8/graph/x0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/graph/x0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/v0;->a:Lcom/android/tools/r8/synthesis/b;

    iput-object p2, p0, Lcom/android/tools/r8/graph/v0;->b:Lcom/android/tools/r8/graph/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/graph/u1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/v0;->b:Lcom/android/tools/r8/graph/x0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    return-object v0
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/v0;->a:Lcom/android/tools/r8/synthesis/b;

    iget-object v1, p0, Lcom/android/tools/r8/graph/v0;->b:Lcom/android/tools/r8/graph/x0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/graph/wd;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/graph/wd;-><init>(Lcom/android/tools/r8/graph/x0;)V

    invoke-virtual {v0, v2, p1}, Lcom/android/tools/r8/synthesis/b;->a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/v0;->a:Lcom/android/tools/r8/synthesis/b;

    iget-object v1, p0, Lcom/android/tools/r8/graph/v0;->b:Lcom/android/tools/r8/graph/x0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/graph/wd;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/graph/wd;-><init>(Lcom/android/tools/r8/graph/x0;)V

    invoke-virtual {v0, v2, p1}, Lcom/android/tools/r8/synthesis/b;->a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method
