.class public final Lcom/android/tools/r8/internal/yu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/j40;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/R00;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic c:Lcom/android/tools/r8/internal/Pu;

.field public final synthetic d:Lcom/android/tools/r8/internal/zu;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/zu;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Pu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/yu;->d:Lcom/android/tools/r8/internal/zu;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yu;->a:Lcom/android/tools/r8/internal/R00;

    iput-object p3, p0, Lcom/android/tools/r8/internal/yu;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p4, p0, Lcom/android/tools/r8/internal/yu;->c:Lcom/android/tools/r8/internal/Pu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/VY;)V
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/yu;->d:Lcom/android/tools/r8/internal/zu;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yu;->a:Lcom/android/tools/r8/internal/R00;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yu;->b:Lcom/android/tools/r8/internal/Hz;

    .line 25
    iget-object v3, p2, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/android/tools/r8/internal/F1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 27
    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/VY;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;

    move-result-object p2

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result p1

    new-instance v0, Lcom/android/tools/r8/internal/tB1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tB1;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/yu;->a:Lcom/android/tools/r8/internal/R00;

    new-instance v2, Lcom/android/tools/r8/internal/uB1;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/uB1;-><init>(Lcom/android/tools/r8/internal/yu;Lcom/android/tools/r8/internal/R00;)V

    .line 29
    invoke-virtual {p2, p1, v0, v2}, Lcom/android/tools/r8/internal/VY;->a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/WY;)V
    .locals 5

    .line 1
    iget-object v0, p2, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, v0, Lcom/android/tools/r8/internal/jg;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p2, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F8;->a()Lcom/android/tools/r8/internal/jg;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/yu;->a:Lcom/android/tools/r8/internal/R00;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/yu;->b:Lcom/android/tools/r8/internal/Hz;

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/jg;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/F8;

    move-result-object v0

    .line 10
    iput-object v0, p2, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yu;->d:Lcom/android/tools/r8/internal/zu;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yu;->a:Lcom/android/tools/r8/internal/R00;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yu;->b:Lcom/android/tools/r8/internal/Hz;

    .line 12
    iget-object v3, p2, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Y0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/android/tools/r8/internal/F1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    iput-object v0, p2, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/yu;->d:Lcom/android/tools/r8/internal/zu;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yu;->a:Lcom/android/tools/r8/internal/R00;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yu;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, p0, Lcom/android/tools/r8/internal/yu;->c:Lcom/android/tools/r8/internal/Pu;

    .line 15
    iget-object v3, v3, Lcom/android/tools/r8/internal/Pu;->d:Lcom/android/tools/r8/graph/O5;

    .line 16
    iget-object v4, p2, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 17
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/gE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/gE;

    move-result-object v0

    iput-object v0, p2, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Y0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v0

    new-instance v1, Lcom/android/tools/r8/internal/to1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/to1;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/yu;->a:Lcom/android/tools/r8/internal/R00;

    new-instance v3, Lcom/android/tools/r8/internal/sB1;

    invoke-direct {v3, p0, v2}, Lcom/android/tools/r8/internal/sB1;-><init>(Lcom/android/tools/r8/internal/yu;Lcom/android/tools/r8/internal/R00;)V

    .line 19
    invoke-virtual {p2, v0, v1, v3}, Lcom/android/tools/r8/internal/WY;->a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/yu;->c:Lcom/android/tools/r8/internal/Pu;

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pu;->a:Lcom/android/tools/r8/internal/eA;

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 23
    sget-object p1, Lcom/android/tools/r8/internal/jv0;->a:Lcom/android/tools/r8/internal/jv0;

    iput-object p1, p2, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/VY;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/yu;->d:Lcom/android/tools/r8/internal/zu;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 32
    iget-object v2, p2, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    iput-object p1, p2, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/WY;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/yu;->d:Lcom/android/tools/r8/internal/zu;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/WY;

    return-void
.end method
