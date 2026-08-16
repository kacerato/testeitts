.class public final Lcom/android/tools/r8/internal/Aa0;
.super Lcom/android/tools/r8/internal/Hj;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/internal/UY;

.field public final g:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/UY;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Hj;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Aa0;->f:Lcom/android/tools/r8/internal/UY;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Aa0;->g:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    sget-boolean p2, Lcom/android/tools/r8/internal/Aa0;->h:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IV;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object p3, p0, Lcom/android/tools/r8/internal/Aa0;->f:Lcom/android/tools/r8/internal/UY;

    check-cast p3, Lcom/android/tools/r8/internal/r6;

    invoke-virtual {p3, p2, p2}, Lcom/android/tools/r8/internal/r6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v2, p2, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    move-object v1, p2

    :goto_1
    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    sget-object p2, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    iget-object p3, p1, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Aa0;->g:Ljava/util/IdentityHashMap;

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/proto/j;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v5

    iget-object v4, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    new-instance p1, Lcom/android/tools/r8/internal/NW;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Aa0;->f:Lcom/android/tools/r8/internal/UY;

    check-cast v0, Lcom/android/tools/r8/internal/r6;

    invoke-virtual {v0, p1, p1}, Lcom/android/tools/r8/internal/r6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Aa0;->f:Lcom/android/tools/r8/internal/UY;

    check-cast v0, Lcom/android/tools/r8/internal/r6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/r6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 2

    if-ne p0, p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Aa0;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v0

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Aa0;->g:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/proto/j;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method
