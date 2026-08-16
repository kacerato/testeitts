.class public final Lcom/android/tools/r8/internal/Iu;
.super Lcom/android/tools/r8/internal/Ku;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/graph/A2;

.field public final e:Lcom/android/tools/r8/internal/QG;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/QG;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Ku;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/Iu;->d:Lcom/android/tools/r8/graph/A2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Iu;->e:Lcom/android/tools/r8/internal/QG;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/A2;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/internal/pa;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    const/16 v2, 0xb8

    invoke-direct {v0, v2, p2, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lcom/android/tools/r8/internal/bb;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/bb;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/ab;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    move-object p2, v0

    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic b()Lcom/android/tools/r8/graph/G;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Iu;->c()Lcom/android/tools/r8/graph/J;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/graph/J;
    .locals 9

    sget-boolean v0, Lcom/android/tools/r8/internal/Iu;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Iu;->e:Lcom/android/tools/r8/internal/QG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QG;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Iu;->e:Lcom/android/tools/r8/internal/QG;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/QG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/IG;

    new-instance v2, Lcom/android/tools/r8/internal/PG;

    iget-object v1, v1, Lcom/android/tools/r8/internal/IG;->b:Lcom/android/tools/r8/internal/QG;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/PG;-><init>(Lcom/android/tools/r8/internal/QG;)V

    iget-object v1, v1, Lcom/android/tools/r8/internal/QG;->c:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OG;->b()I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v8, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    invoke-static {v2}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/ZI0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/ZI0;-><init>(Lcom/android/tools/r8/internal/Iu;)V

    iget-object v4, p0, Lcom/android/tools/r8/internal/Iu;->e:Lcom/android/tools/r8/internal/QG;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Iu;->d:Lcom/android/tools/r8/graph/A2;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/Ku;->a(Ljava/util/ArrayList;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/wH;Ljava/lang/Object;Lcom/android/tools/r8/internal/G9$a;Z)V

    sget-boolean v1, Lcom/android/tools/r8/internal/Iu;->f:Z

    if-nez v1, :cond_4

    const/16 v1, 0x100

    if-ge v8, v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v8, v8, 0x10

    new-instance v2, Lcom/android/tools/r8/graph/J;

    iget-object v3, p0, Lcom/android/tools/r8/internal/mr0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v2, v3, v1, v8, v0}, Lcom/android/tools/r8/graph/J;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/ArrayList;)V

    return-object v2
.end method
