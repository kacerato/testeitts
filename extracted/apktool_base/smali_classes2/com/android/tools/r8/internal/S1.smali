.class public final Lcom/android/tools/r8/internal/S1;
.super Lcom/android/tools/r8/internal/Hj;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/internal/r6;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/r6;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Hj;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/S1;->f:Lcom/android/tools/r8/internal/r6;

    iput-object p3, p0, Lcom/android/tools/r8/internal/S1;->g:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/internal/S1;->h:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object p3, p0, Lcom/android/tools/r8/internal/S1;->f:Lcom/android/tools/r8/internal/r6;

    invoke-virtual {p3, p2, p2}, Lcom/android/tools/r8/internal/r6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget-boolean p2, Lcom/android/tools/r8/internal/S1;->i:Z

    if-nez p2, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    if-ne p2, p3, :cond_2

    iget-object p3, p0, Lcom/android/tools/r8/internal/S1;->g:Ljava/util/Set;

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p2, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    :cond_2
    :goto_1
    move-object v4, p2

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/android/tools/r8/internal/S1;->h:Ljava/util/Set;

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p2, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    goto :goto_1

    :goto_2
    iget-object p2, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    if-ne v4, p2, :cond_5

    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_3
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    iget-object p3, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v2, p2, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    sget-object p2, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    iget-object v5, p1, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    new-instance p1, Lcom/android/tools/r8/internal/NW;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/S1;->f:Lcom/android/tools/r8/internal/r6;

    invoke-virtual {v0, p1, p1}, Lcom/android/tools/r8/internal/r6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/S1;->f:Lcom/android/tools/r8/internal/r6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/r6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method
