.class public final Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;
.super Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;
.source "SourceFile"


# instance fields
.field public final g:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;-><init>(Lcom/android/tools/r8/graph/M2;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->h:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->i:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->j:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->k:Z

    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->g:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "<sup>1</sup>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->h:Z

    :cond_1
    iget-boolean v1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->f:Z

    if-eqz v1, :cond_2

    const-string v1, "<sup>2</sup>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->i:Z

    :cond_2
    iget-boolean v1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "<sup>3</sup>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->j:Z

    :cond_3
    iget-boolean p1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->g:Z

    if-eqz p1, :cond_4

    const-string p1, "<sup>4</sup>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->k:Z

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;-><init>()V

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->g(Ljava/lang/String;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->d:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->c(Ljava/lang/String;)V

    const-string v2, "td"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->g(Ljava/lang/String;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;

    move-result-object v3

    const-string v4, "ul style=\"list-style-position:inside; list-style-type: none !important; margin-left:0px;padding-left:0px !important;\""

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->g(Ljava/lang/String;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a:Ljava/util/TreeMap;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const-string v4, " "

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/g1;

    iget-object v6, v5, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-static {v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Lcom/android/tools/r8/graph/k3;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/l1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/l1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v9, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v9, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    if-nez v5, :cond_2

    const-string v5, ""

    goto :goto_2

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, v5, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-eqz v5, :cond_3

    const-string v5, "<sup>3</sup>"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->j:Z

    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->a(Ljava/lang/String;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->b:Ljava/util/TreeMap;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->b:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    iget-object v6, v5, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-static {v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Lcom/android/tools/r8/graph/L4;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->d:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Lcom/android/tools/r8/graph/j1;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->b:Ljava/util/TreeMap;

    invoke-virtual {v9, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->c:Ljava/util/TreeMap;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->c:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    iget-object v6, v5, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-static {v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Lcom/android/tools/r8/graph/L4;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    iget-object v8, v8, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->a(Lcom/android/tools/r8/graph/j1;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;->c:Ljava/util/TreeMap;

    invoke-virtual {v10, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v3, "ul"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->f(Ljava/lang/String;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->f(Ljava/lang/String;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->g:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    iget-boolean v3, v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->b:Z

    if-eqz v3, :cond_8

    const-string v3, "Fully implemented class.<br>&nbsp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->g:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    iget-boolean v3, v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->a:Z

    if-eqz v3, :cond_9

    const-string v3, "Additional methods on existing class.<br>&nbsp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->h:Z

    if-eqz v3, :cond_a

    const-string v3, "<sup>1</sup> Supported only on devices which API level is 21 or higher.<br>&nbsp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->i:Z

    if-eqz v3, :cond_b

    const-string v3, "<sup>2</sup> Not present in Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->g:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (May not resolve at compilation).<br>&nbsp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-boolean v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->j:Z

    if-eqz v3, :cond_c

    const-string v3, "<sup>3</sup> Not supported at all minSDK levels.<br>&nbsp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-boolean v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->k:Z

    if-eqz v3, :cond_d

    const-string v3, "<sup>4</sup> Also supported with covariant return type.<br>&nbsp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->g:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    iget-object v3, v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->c:Ljava/util/AbstractCollection;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, ") present in Android "

    if-nez v3, :cond_e

    const-string v3, "Some fields ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->g:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    iget-object v3, v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->c:Ljava/util/AbstractCollection;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->g:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " are not supported.<br>&nbsp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->g:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    iget-object v3, v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->d:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "Some methods ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/g;->g:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    iget-object v3, v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->d:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->g:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " are not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;->f(Ljava/lang/String;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/f;

    iget-object v0, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/i;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
