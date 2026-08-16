.class public abstract Lcom/android/tools/r8/internal/te;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/graph/h;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/tools/r8/internal/te;->c(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/te;->c(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/te;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Wt1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Wt1;-><init>(Lcom/android/tools/r8/internal/te;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V

    invoke-virtual {p4, v0, v1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/we;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/te;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Vt1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/Vt1;-><init>(Lcom/android/tools/r8/internal/te;Lcom/android/tools/r8/internal/fB;)V

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/we;

    return-object p1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/android/tools/r8/internal/fB;ZLjava/lang/String;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/te;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/fB;->b(Z)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 7
    :goto_0
    sget-boolean p2, Lcom/android/tools/r8/internal/te;->d:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_1
    return-void

    .line 8
    :goto_2
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
.end method

.method public b()Lcom/android/tools/r8/internal/we;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v0
.end method

.method public b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 1

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Should Override or use overload"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/te;->b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/tools/r8/internal/te;->d:Z

    if-nez v0, :cond_0

    instance-of v1, p0, Lcom/android/tools/r8/internal/lt0;

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "before"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;ZLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/te;->b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;

    move-result-object p2

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/we;->a()Lcom/android/tools/r8/internal/t40;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result p3

    if-nez p3, :cond_1

    instance-of p3, p0, Lcom/android/tools/r8/internal/lt0;

    xor-int/lit8 p3, p3, 0x1

    const-string v0, "after"

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;ZLjava/lang/String;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/te;->b()Lcom/android/tools/r8/internal/we;

    move-result-object p1

    return-object p1
.end method
