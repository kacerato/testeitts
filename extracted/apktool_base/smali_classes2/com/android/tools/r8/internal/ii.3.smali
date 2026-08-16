.class public abstract Lcom/android/tools/r8/internal/ii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/x80;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/y80;

.field public final b:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/y80;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ii;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/ii;->a(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ii;->a(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ye1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/ye1;-><init>(Lcom/android/tools/r8/internal/ii;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ii;->b:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/ii;->a(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/ii;->a(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ii;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/x80;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
