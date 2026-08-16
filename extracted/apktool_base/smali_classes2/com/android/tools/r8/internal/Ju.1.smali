.class public final Lcom/android/tools/r8/internal/Ju;
.super Lcom/android/tools/r8/internal/Ku;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/graph/M2;

.field public final e:Lcom/android/tools/r8/internal/ru;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ru;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Ku;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ju;->d:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ju;->e:Lcom/android/tools/r8/internal/ru;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/G9;Ljava/lang/Integer;Lcom/android/tools/r8/internal/F1;)V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/pa;

    iget-object v2, p2, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p2, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, p5, v1}, Lcom/android/tools/r8/internal/Ku;->a(Ljava/util/List;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/M2;)V

    new-instance p5, Lcom/android/tools/r8/internal/ga;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1$d;->k:Lcom/android/tools/r8/graph/A2;

    const/16 v1, 0xb6

    invoke-direct {p5, v1, p2, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/tools/r8/internal/O9;

    sget-object p5, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p2, p5, v1, v0}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/tools/r8/internal/z9;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-long p4, p4

    invoke-direct {p2, p4, p5, v1}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/tools/r8/internal/ab;

    invoke-direct {p2, v1}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/tools/r8/internal/G9;

    iget-object p4, p3, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    iget-object p3, p3, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-direct {p2, p4, p3}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/G;
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/pa;

    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v5}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/O9;

    sget-object v5, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    sget-object v7, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v4, v5, v7, v3}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/wa;

    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->E3:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/kb;

    sget-object v5, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/A9;

    iget-object v7, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    const-string v8, "Name is null"

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/ga;

    iget-object v7, v0, Lcom/android/tools/r8/graph/u1;->W4:Lcom/android/tools/r8/graph/h2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/h2;->b:Lcom/android/tools/r8/graph/A2;

    const/16 v8, 0xb7

    invoke-direct {v4, v8, v7, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ju;->e:Lcom/android/tools/r8/internal/ru;

    new-instance v4, Lcom/android/tools/r8/internal/hK0;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/android/tools/r8/internal/hK0;-><init>(Lcom/android/tools/r8/internal/Ju;Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/G9;)V

    iget-object v2, v3, Lcom/android/tools/r8/internal/ru;->a:Lcom/android/tools/r8/internal/cC;

    invoke-interface {v2, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v2, Lcom/android/tools/r8/internal/wa;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->z3:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/tools/r8/internal/kb;

    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/tools/r8/internal/A9;

    iget-object v3, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ju;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    const/16 v7, 0x2e

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No enum constant "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/tools/r8/internal/ga;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1$d;->d:Lcom/android/tools/r8/graph/A2;

    const/16 v4, 0xb6

    invoke-direct {v2, v4, v3, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/tools/r8/internal/ga;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->X4:Lcom/android/tools/r8/graph/M1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/M1;->a:Lcom/android/tools/r8/graph/A2;

    invoke-direct {v2, v8, v0, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mr0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method
