.class public final Lcom/android/tools/r8/naming/i;
.super Lcom/android/tools/r8/naming/g;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/android/tools/r8/naming/E0;

.field public final d:Lcom/android/tools/r8/internal/Ef0;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/naming/E0;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/naming/g;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/i;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/i;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/i;->g:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/tools/r8/naming/i;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/naming/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/naming/i;->c:Lcom/android/tools/r8/naming/E0;

    iput-object p4, p0, Lcom/android/tools/r8/naming/i;->d:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/naming/V$b;)Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/V$c;)Lcom/android/tools/r8/naming/V;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/naming/V;)Lcom/android/tools/r8/naming/g;
    .locals 6

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/naming/V;->b:Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/naming/i;->e:Ljava/util/HashMap;

    new-instance v2, Lcom/android/tools/r8/naming/b3;

    invoke-direct {v2}, Lcom/android/tools/r8/naming/b3;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/naming/i;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->a()Lcom/android/tools/r8/naming/V$a;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/i;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/naming/i;->d:Lcom/android/tools/r8/internal/Ef0;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/naming/i;->a:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/naming/V;->d:Lcom/android/tools/r8/position/Position;

    .line 15
    sget v3, Lcom/android/tools/r8/naming/y0;->f:I

    .line 16
    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    new-instance v3, Lcom/android/tools/r8/naming/y0;

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in \'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' already has a mapping"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/android/tools/r8/naming/y0;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/Position;)V

    .line 19
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)Lcom/android/tools/r8/naming/k$b;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/V$b;)Z
    .locals 0

    .line 4
    const/4 p1, 0x1

    return p1
.end method
