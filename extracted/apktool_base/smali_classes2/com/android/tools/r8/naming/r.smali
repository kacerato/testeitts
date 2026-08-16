.class public final Lcom/android/tools/r8/naming/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/ArrayList;

.field public final g:Lcom/android/tools/r8/naming/s;

.field public final h:Lcom/android/tools/r8/naming/s;

.field public final i:Ljava/util/HashMap;

.field public final j:Lcom/android/tools/r8/naming/r;

.field public final k:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/r;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/r;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/r;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/r;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/naming/r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/naming/r;->h:Lcom/android/tools/r8/naming/s;

    iput-object p3, p0, Lcom/android/tools/r8/naming/r;->g:Lcom/android/tools/r8/naming/s;

    iput-object p5, p0, Lcom/android/tools/r8/naming/r;->k:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p3, Lcom/android/tools/r8/naming/s;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/tools/r8/naming/r;->i:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/r;

    iput-object p1, p0, Lcom/android/tools/r8/naming/r;->j:Lcom/android/tools/r8/naming/r;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/kl0;Lcom/android/tools/r8/internal/kl0;)Lcom/android/tools/r8/internal/kl0;
    .locals 0

    .line 1
    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/V$b;)Lcom/android/tools/r8/internal/kl0;
    .locals 1

    .line 60
    new-instance p0, Lcom/android/tools/r8/internal/kl0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/kl0;-><init>(Z)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/V$b;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$b;
    .locals 2

    .line 326
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    new-instance p0, Lcom/android/tools/r8/naming/V$b;

    iget-object v0, p1, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    invoke-direct {p0, p2, v0, p1}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/V;Lcom/android/tools/r8/naming/V;)Lcom/android/tools/r8/naming/V;
    .locals 1

    .line 319
    sget-boolean v0, Lcom/android/tools/r8/naming/r;->l:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/naming/r;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;)Lcom/android/tools/r8/naming/k$b;
    .locals 5

    .line 133
    iget-object v0, p1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 135
    :cond_1
    iget-object v0, p2, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v0, :cond_2

    .line 136
    iget-boolean v1, v0, Lcom/android/tools/r8/naming/M0;->c:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/tools/r8/naming/M0;->b:I

    iget v2, v0, Lcom/android/tools/r8/naming/M0;->a:I

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    sget-object v0, Lcom/android/tools/r8/naming/v;->e:Lcom/android/tools/r8/naming/M0;

    .line 138
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/tools/r8/naming/k$b;

    iget-object v2, p1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget-object v3, p1, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    iget-object v4, p2, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 139
    iget-object p0, p0, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    .line 140
    invoke-static {v3, v4, p0}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/V$b;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$b;

    move-result-object p0

    iget-object p1, p1, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-direct {v1, v2, p0, v0, p1}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 141
    iget-object p0, v1, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 142
    iget-object p1, p2, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 143
    new-instance p2, Lcom/android/tools/r8/naming/K3;

    invoke-direct {p2, v1}, Lcom/android/tools/r8/naming/K3;-><init>(Lcom/android/tools/r8/naming/k$b;)V

    .line 144
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/naming/r;->a(Ljava/util/List;Ljava/util/List;Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/internal/M40;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/M40;->b:Lcom/android/tools/r8/references/MethodReference;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-interface {p0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/naming/k$b;Ljava/util/List;Lcom/android/tools/r8/internal/WE;Lcom/android/tools/r8/naming/q;)V
    .locals 9

    .line 202
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IH;->b()I

    move-result p0

    .line 203
    new-instance v0, Lcom/android/tools/r8/naming/M0;

    const/4 v1, 0x0

    .line 204
    invoke-direct {v0, p0, p0, v1}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 205
    check-cast p4, Lcom/android/tools/r8/naming/m;

    .line 206
    iget-object v2, p4, Lcom/android/tools/r8/naming/m;->c:Ljava/util/List;

    .line 207
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$b;

    .line 208
    iget v5, p4, Lcom/android/tools/r8/naming/m;->b:I

    .line 209
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    .line 210
    new-instance v3, Lcom/android/tools/r8/naming/M0;

    .line 211
    invoke-direct {v3, v5, v5, v6}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    goto :goto_1

    .line 212
    :cond_0
    new-instance v3, Lcom/android/tools/r8/naming/M0;

    .line 213
    invoke-direct {v3, v5, v5, v1}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 214
    :goto_1
    new-instance v5, Lcom/android/tools/r8/naming/k$b;

    .line 215
    iget-object v7, v4, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 216
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/k$b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v0, v7, v3, v8}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 217
    iget-object v3, v4, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 218
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    iget-object v3, v4, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 220
    iput-object v3, v5, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    .line 221
    :cond_1
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    .line 222
    :cond_2
    iget p1, p4, Lcom/android/tools/r8/naming/m;->a:I

    .line 223
    invoke-virtual {p3, p1, p0}, Lcom/android/tools/r8/internal/WE;->b(II)I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Kb;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/k$b;)V
    .locals 4

    .line 300
    const-string p1, "    "

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/k$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    .line 301
    iget-object p2, p2, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 302
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 303
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v2

    const-string v3, "# "

    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Kb;Lcom/android/tools/r8/naming/V;)V
    .locals 1

    .line 299
    const-string v0, "    "

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object p0

    const-string p1, "\n"

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Kb;Lcom/android/tools/r8/naming/k$b;)V
    .locals 5

    .line 305
    const-string v0, "    "

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/k$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v1

    const-string v2, "\n"

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    .line 306
    iget-object p1, p1, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 308
    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v3

    .line 309
    const-string v4, "# "

    invoke-interface {v3, v4}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v3

    .line 310
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/mappinginformation/e;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v1

    .line 311
    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Kb;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 2

    .line 298
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->r()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object p0

    const-string p1, "\n"

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Kb;Ljava/util/List;)V
    .locals 1

    .line 304
    new-instance v0, Lcom/android/tools/r8/naming/L3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/L3;-><init>(Lcom/android/tools/r8/internal/Kb;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 1

    .line 275
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/naming/k$b;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/o;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;Ljava/util/List;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 2

    .line 263
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    instance-of v0, p4, Lcom/android/tools/r8/internal/O40;

    if-eqz v0, :cond_0

    .line 265
    iget-object p0, p0, Lcom/android/tools/r8/naming/o;->b:Ljava/util/IdentityHashMap;

    .line 266
    invoke-virtual {p4}, Lcom/android/tools/r8/naming/mappinginformation/e;->d()Lcom/android/tools/r8/internal/O40;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 267
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Lcom/android/tools/r8/naming/n;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/naming/n;-><init>(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;)V

    .line 268
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_0
    instance-of v0, p4, Lcom/android/tools/r8/internal/M40;

    if-eqz v0, :cond_1

    .line 270
    iget-object p0, p0, Lcom/android/tools/r8/naming/o;->a:Ljava/util/IdentityHashMap;

    .line 271
    invoke-virtual {p4}, Lcom/android/tools/r8/naming/mappinginformation/e;->c()Lcom/android/tools/r8/internal/M40;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 272
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Lcom/android/tools/r8/naming/n;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/naming/n;-><init>(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;)V

    .line 273
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_1
    :goto_0
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/r;Ljava/util/ArrayList;Lcom/android/tools/r8/naming/k$b;Ljava/util/List;Lcom/android/tools/r8/naming/o;IIZ)V
    .locals 7

    const/4 v0, 0x0

    .line 226
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k$b;

    iget-object v1, v1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 227
    sget-boolean v2, Lcom/android/tools/r8/naming/r;->l:Z

    if-nez v2, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/naming/H3;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/naming/H3;-><init>(Lcom/android/tools/r8/naming/M0;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 228
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/naming/M0;

    .line 229
    invoke-direct {v1, p5, p6, v0}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 230
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/tools/r8/naming/k$b;

    .line 231
    iget-object v2, p6, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v2, :cond_2

    goto :goto_2

    .line 232
    :cond_2
    iget-object v2, p6, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 233
    :goto_2
    iget-object v3, p2, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 234
    iget-object v3, p2, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p2, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 235
    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_8

    .line 236
    :cond_4
    iget-boolean v3, v3, Lcom/android/tools/r8/naming/M0;->c:Z

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_d

    .line 237
    invoke-virtual {v2}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v3

    if-ne v3, v4, :cond_6

    goto :goto_8

    .line 238
    :cond_6
    :goto_4
    invoke-virtual {p2, p5}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v3

    .line 239
    invoke-virtual {p6, v3}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v3

    if-nez p7, :cond_c

    .line 240
    iget-boolean v5, v2, Lcom/android/tools/r8/naming/M0;->c:Z

    if-eqz v5, :cond_7

    goto :goto_7

    .line 241
    :cond_7
    iget-object v5, p2, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    iget-object v5, p2, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 242
    :goto_5
    invoke-virtual {v5}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v5

    if-ne v5, v4, :cond_9

    .line 243
    new-instance v2, Lcom/android/tools/r8/naming/M0;

    .line 244
    invoke-direct {v2, v3, v3, v0}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    goto :goto_8

    .line 245
    :cond_9
    sget-boolean v5, Lcom/android/tools/r8/naming/r;->l:Z

    if-nez v5, :cond_b

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v2

    if-gt v5, v2, :cond_a

    goto :goto_6

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 246
    :cond_b
    :goto_6
    new-instance v2, Lcom/android/tools/r8/naming/M0;

    .line 247
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v4

    .line 248
    invoke-direct {v2, v3, v5, v0}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    goto :goto_8

    .line 249
    :cond_c
    :goto_7
    new-instance v2, Lcom/android/tools/r8/naming/M0;

    .line 250
    invoke-direct {v2, v3, v3, v4}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 251
    :cond_d
    :goto_8
    new-instance v3, Lcom/android/tools/r8/naming/k$b;

    iget-object v4, p2, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    iget-object v5, p6, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 252
    iget-object v6, p0, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    .line 253
    invoke-static {v4, v5, v6}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/V$b;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$b;

    move-result-object v4

    iget-object v5, p2, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2, v5}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    iget-object p6, p6, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p6

    .line 256
    new-instance v4, Lcom/android/tools/r8/naming/O3;

    invoke-direct {v4, p4, p2, v3, v2}, Lcom/android/tools/r8/naming/O3;-><init>(Lcom/android/tools/r8/naming/o;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;Ljava/util/List;)V

    .line 257
    invoke-interface {p6, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 258
    iget-object p6, v3, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p6

    .line 259
    new-instance v4, Lcom/android/tools/r8/naming/P3;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/naming/P3;-><init>(Lcom/android/tools/r8/naming/k$b;)V

    .line 260
    invoke-static {p6, v2, v4}, Lcom/android/tools/r8/naming/r;->a(Ljava/util/List;Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 261
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/tools/r8/internal/Ur0;)V
    .locals 2

    .line 321
    sget-boolean v0, Lcom/android/tools/r8/naming/r;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 322
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 323
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/V$c;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, v1, p2}, Lcom/android/tools/r8/internal/Ur0;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 325
    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;)V
    .locals 1

    .line 172
    invoke-static {p0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    if-eq p4, p0, :cond_0

    .line 173
    new-instance p0, Lcom/android/tools/r8/naming/k$b;

    .line 174
    iget-object v0, p4, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 175
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$b;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v0

    iget-object p4, p4, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    .line 176
    invoke-virtual {p3}, Lcom/android/tools/r8/naming/k$b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, v0, p4, p3}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 177
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 6

    .line 276
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 278
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 279
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/naming/mappinginformation/e;->a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/naming/mappinginformation/e;->b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_0

    .line 282
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    :cond_3
    new-instance p1, Lcom/android/tools/r8/naming/z3;

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/naming/z3;-><init>(Ljava/util/Set;Ljava/util/function/Consumer;)V

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/naming/q;)V
    .locals 1

    .line 167
    check-cast p1, Lcom/android/tools/r8/naming/m;

    .line 168
    iget v0, p1, Lcom/android/tools/r8/naming/m;->a:I

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 170
    iget-object p1, p1, Lcom/android/tools/r8/naming/m;->c:Ljava/util/List;

    .line 171
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 0

    .line 284
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    instance-of p0, p2, Lcom/android/tools/r8/naming/mappinginformation/a;

    if-nez p0, :cond_0

    .line 286
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/k$b;)Z
    .locals 0

    .line 262
    iget-object p1, p1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-interface {p0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 1

    .line 169
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/naming/k$b;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;)Lcom/android/tools/r8/naming/k$b;
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    new-instance v0, Lcom/android/tools/r8/naming/MappingComposeException;

    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot compose duplicate methods without position in class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' and \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/naming/r;)Lcom/android/tools/r8/naming/r;
    .locals 7

    .line 312
    new-instance v6, Lcom/android/tools/r8/naming/r;

    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/tools/r8/naming/r;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/naming/r;->g:Lcom/android/tools/r8/naming/s;

    iget-object v5, p0, Lcom/android/tools/r8/naming/r;->k:Lcom/android/tools/r8/internal/nJ;

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/naming/r;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/internal/nJ;)V

    .line 313
    iget-object v0, p1, Lcom/android/tools/r8/naming/r;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->f:Ljava/util/ArrayList;

    iget-object v2, v6, Lcom/android/tools/r8/naming/r;->f:Ljava/util/ArrayList;

    .line 314
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/naming/U3;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/naming/U3;-><init>(Ljava/util/List;)V

    .line 315
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/naming/r;->a(Ljava/util/List;Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 316
    iget-object v0, v6, Lcom/android/tools/r8/naming/r;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->c:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/tools/r8/naming/r;->c:Ljava/util/HashMap;

    new-instance v3, Lcom/android/tools/r8/naming/V3;

    invoke-direct {v3}, Lcom/android/tools/r8/naming/V3;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/naming/r;->a(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/tools/r8/internal/Ur0;)V

    .line 317
    iget-object v0, v6, Lcom/android/tools/r8/naming/r;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->e:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/tools/r8/naming/r;->e:Ljava/util/HashMap;

    new-instance v3, Lcom/android/tools/r8/naming/x3;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/naming/x3;-><init>(Lcom/android/tools/r8/naming/r;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/naming/r;->a(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/tools/r8/internal/Ur0;)V

    .line 318
    iget-object v0, v6, Lcom/android/tools/r8/naming/r;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->d:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/tools/r8/naming/r;->d:Ljava/util/HashMap;

    new-instance v2, Lcom/android/tools/r8/naming/y3;

    invoke-direct {v2}, Lcom/android/tools/r8/naming/y3;-><init>()V

    invoke-static {v0, v1, p1, v2}, Lcom/android/tools/r8/naming/r;->a(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/tools/r8/internal/Ur0;)V

    return-object v6
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/naming/k$b;)Ljava/util/List;
    .locals 5

    .line 145
    iget-object v0, p1, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 146
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object v0, v1

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/kl0;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/android/tools/r8/naming/r;->e:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/k$b;

    if-nez p1, :cond_1

    return-object v2

    .line 150
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 151
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-nez v0, :cond_4

    .line 152
    iget-object v0, p1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/android/tools/r8/naming/M0;->a:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 153
    :cond_4
    iget v0, v0, Lcom/android/tools/r8/naming/M0;->a:I

    .line 154
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/kl0;->a(Ljava/lang/Integer;)Ljava/util/Map$Entry;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 155
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_5
    if-nez v0, :cond_9

    .line 156
    iget-object v3, p1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v3, :cond_6

    .line 157
    iget v4, v3, Lcom/android/tools/r8/naming/M0;->a:I

    if-nez v4, :cond_6

    iget v4, v3, Lcom/android/tools/r8/naming/M0;->b:I

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    if-nez v3, :cond_8

    .line 158
    iget-object v3, p1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v3, :cond_7

    iget v3, v3, Lcom/android/tools/r8/naming/M0;->b:I

    goto :goto_1

    :cond_7
    const v3, 0x7fffffff

    goto :goto_1

    .line 159
    :cond_8
    iget v3, v3, Lcom/android/tools/r8/naming/M0;->b:I

    .line 160
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/kl0;->a(Ljava/lang/Integer;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 161
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 162
    :cond_9
    :goto_2
    iget-object v1, p1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v1, :cond_a

    .line 163
    iget v3, v1, Lcom/android/tools/r8/naming/M0;->a:I

    if-nez v3, :cond_a

    iget v1, v1, Lcom/android/tools/r8/naming/M0;->b:I

    if-nez v1, :cond_a

    goto :goto_3

    .line 164
    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->k:Lcom/android/tools/r8/internal/nJ;

    .line 165
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->X()Lcom/android/tools/r8/internal/nJ$j;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$j;->c:Z

    if-eqz v1, :cond_b

    :goto_3
    return-object v2

    .line 166
    :cond_b
    new-instance v1, Lcom/android/tools/r8/naming/MappingComposeException;

    iget-object p1, p1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget p1, p1, Lcom/android/tools/r8/naming/M0;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find original starting position of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' which should be "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/android/tools/r8/naming/o;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p1

    .line 61
    iget-object v1, v0, Lcom/android/tools/r8/naming/o;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/android/tools/r8/naming/o;->a:Ljava/util/IdentityHashMap;

    .line 62
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_11

    .line 63
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v4, p2

    move v5, v3

    .line 65
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_16

    add-int/lit8 v6, v5, 0x1

    .line 66
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/naming/k$b;

    .line 67
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/naming/k$b;

    .line 68
    iget-object v10, v8, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    .line 69
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 70
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    instance-of v11, v11, Lcom/android/tools/r8/internal/O40;

    if-eqz v11, :cond_15

    .line 72
    iget-object v10, v8, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-nez v10, :cond_2

    :cond_1
    :goto_2
    move/from16 v17, v6

    goto/16 :goto_10

    .line 73
    :cond_2
    iget-object v11, v9, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v11, :cond_3

    move-object v12, v11

    goto :goto_3

    .line 74
    :cond_3
    iget-object v12, v9, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    :goto_3
    if-eqz v12, :cond_1

    if-eqz v11, :cond_4

    goto :goto_4

    .line 75
    :cond_4
    iget-object v11, v9, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 76
    :goto_4
    iget-boolean v11, v11, Lcom/android/tools/r8/naming/M0;->c:Z

    if-eqz v11, :cond_1

    iget-object v11, v9, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 77
    invoke-virtual {v10, v11}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 78
    invoke-virtual {v9}, Lcom/android/tools/r8/naming/k$b;->d()Lcom/android/tools/r8/internal/hC;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v7, :cond_14

    .line 79
    invoke-virtual {v9}, Lcom/android/tools/r8/naming/k$b;->d()Lcom/android/tools/r8/internal/hC;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/M40;

    .line 80
    invoke-virtual {v0, v9, v10}, Lcom/android/tools/r8/naming/o;->a(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/n;

    move-result-object v11

    if-nez v11, :cond_5

    goto :goto_2

    .line 81
    :cond_5
    new-instance v12, Ljava/util/HashMap;

    .line 82
    iget-object v13, v10, Lcom/android/tools/r8/internal/M40;->a:Lcom/android/tools/r8/internal/WE;

    .line 83
    iget v13, v13, Lcom/android/tools/r8/internal/WE;->l:I

    .line 84
    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 85
    iget-object v11, v11, Lcom/android/tools/r8/naming/n;->a:Lcom/android/tools/r8/naming/k$b;

    .line 86
    iget-object v11, v11, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 87
    new-instance v13, Lcom/android/tools/r8/naming/Q3;

    invoke-direct {v13, v12}, Lcom/android/tools/r8/naming/Q3;-><init>(Ljava/util/Map;)V

    move-object/from16 v14, p0

    .line 88
    invoke-virtual {v14, v10, v11, v13}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/internal/M40;Lcom/android/tools/r8/naming/V$b;Ljava/util/function/Consumer;)V

    .line 89
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v15, v3

    :goto_5
    if-ge v15, v13, :cond_7

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v16

    check-cast v7, Lcom/android/tools/r8/naming/k$b;

    if-ne v7, v8, :cond_6

    goto :goto_6

    .line 91
    :cond_6
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_5

    .line 92
    :cond_7
    :goto_6
    invoke-virtual {v8}, Lcom/android/tools/r8/naming/k$b;->e()Lcom/android/tools/r8/internal/O40;

    move-result-object v7

    .line 93
    invoke-virtual {v0, v8, v7}, Lcom/android/tools/r8/naming/o;->a(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/n;

    move-result-object v7

    if-nez v7, :cond_8

    goto :goto_2

    .line 94
    :cond_8
    iget-object v7, v7, Lcom/android/tools/r8/naming/n;->a:Lcom/android/tools/r8/naming/k$b;

    .line 95
    iget-object v13, v8, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v13, v13, Lcom/android/tools/r8/naming/M0;->a:I

    .line 96
    iget-object v15, v7, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v15, :cond_9

    goto :goto_7

    .line 97
    :cond_9
    iget-object v15, v7, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 98
    :goto_7
    iget v15, v15, Lcom/android/tools/r8/naming/M0;->a:I

    .line 99
    :goto_8
    iget-object v3, v7, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v3, :cond_a

    goto :goto_9

    :cond_a
    iget-object v3, v7, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 100
    :goto_9
    iget v3, v3, Lcom/android/tools/r8/naming/M0;->b:I

    if-gt v15, v3, :cond_10

    .line 101
    iget-object v3, v8, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    iget-boolean v3, v3, Lcom/android/tools/r8/naming/M0;->c:Z

    if-eqz v3, :cond_b

    .line 102
    iget-object v3, v8, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    move/from16 v17, v6

    goto :goto_a

    .line 103
    :cond_b
    new-instance v3, Lcom/android/tools/r8/naming/M0;

    move/from16 v17, v6

    const/4 v6, 0x0

    .line 104
    invoke-direct {v3, v13, v13, v6}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 105
    :goto_a
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object/from16 v18, v7

    if-eqz v6, :cond_c

    .line 106
    new-instance v7, Lcom/android/tools/r8/naming/R3;

    invoke-direct {v7, v6, v11, v3, v9}, Lcom/android/tools/r8/naming/R3;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/k$b;)V

    invoke-interface {v6, v7}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 107
    new-instance v7, Lcom/android/tools/r8/naming/k$b;

    move-object/from16 v19, v12

    .line 108
    iget-object v12, v9, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 109
    invoke-virtual {v12}, Lcom/android/tools/r8/naming/V$b;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v12

    .line 110
    invoke-static {v6}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/naming/k$b;

    iget-object v6, v6, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    .line 111
    invoke-virtual {v9}, Lcom/android/tools/r8/naming/k$b;->c()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v3, v12, v6, v14}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    move-object/from16 v19, v12

    :goto_b
    add-int/lit8 v6, v5, 0x2

    .line 113
    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 114
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/naming/k$b;

    .line 115
    iget-object v12, v7, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget-object v14, v9, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v12, v14}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    :cond_d
    move/from16 v20, v5

    goto :goto_e

    .line 116
    :cond_e
    iget-object v12, v7, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v3, v12}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move/from16 v20, v5

    move-object v12, v7

    goto :goto_d

    .line 117
    :cond_f
    new-instance v12, Lcom/android/tools/r8/naming/k$b;

    iget-object v14, v7, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    move/from16 v20, v5

    iget-object v5, v7, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    iget-object v0, v7, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-direct {v12, v3, v14, v5, v0}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 118
    :goto_d
    iget-object v0, v7, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 119
    iput-object v0, v12, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    .line 120
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v5, v20

    goto :goto_c

    :goto_e
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v12, v19

    move/from16 v5, v20

    goto/16 :goto_8

    :cond_10
    move/from16 v17, v6

    .line 121
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :cond_11
    :goto_f
    if-ge v3, v0, :cond_13

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Lcom/android/tools/r8/naming/k$b;

    .line 122
    iget-object v7, v6, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget-object v9, v8, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v7, v9}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v5, 0x1

    goto :goto_f

    :cond_12
    if-eqz v5, :cond_11

    .line 123
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 124
    :cond_13
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v8}, Lcom/android/tools/r8/naming/k$b;->e()Lcom/android/tools/r8/internal/O40;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, v11

    goto :goto_10

    .line 126
    :cond_14
    new-instance v0, Lcom/android/tools/r8/naming/MappingComposeException;

    .line 127
    iget-object v1, v9, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected exactly one outline call site for a mapped range with signature \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object/from16 v0, p1

    goto/16 :goto_1

    :goto_10
    move-object/from16 v0, p1

    move/from16 v5, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 129
    :cond_16
    iget-object v3, v0, Lcom/android/tools/r8/naming/o;->a:Ljava/util/IdentityHashMap;

    .line 130
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/naming/S3;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/naming/S3;-><init>(Ljava/util/Map;)V

    .line 131
    invoke-interface {v1, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 132
    iget-object v0, v0, Lcom/android/tools/r8/naming/o;->b:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/naming/T3;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/naming/T3;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v4

    :cond_17
    :goto_11
    return-object p2
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Fk0;Lcom/android/tools/r8/internal/Ek0;)V
    .locals 0

    .line 224
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    iget-object p2, p0, Lcom/android/tools/r8/naming/r;->h:Lcom/android/tools/r8/naming/s;

    iget-object p2, p2, Lcom/android/tools/r8/naming/s;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Jb;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    .line 288
    iget-object v1, p1, Lcom/android/tools/r8/internal/Jb;->a:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 289
    const-string v0, " -> "

    .line 290
    iget-object v1, p1, Lcom/android/tools/r8/internal/Jb;->a:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/android/tools/r8/naming/r;->b:Ljava/lang/String;

    .line 292
    iget-object v1, p1, Lcom/android/tools/r8/internal/Jb;->a:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 293
    const-string v0, ":\n"

    .line 294
    iget-object v1, p1, Lcom/android/tools/r8/internal/Jb;->a:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/android/tools/r8/naming/r;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/naming/M3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/M3;-><init>(Lcom/android/tools/r8/internal/Kb;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/r;->b(Lcom/android/tools/r8/internal/Jb;)V

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/r;->c(Lcom/android/tools/r8/internal/Jb;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/M40;Lcom/android/tools/r8/naming/V$b;Ljava/util/function/Consumer;)V
    .locals 10

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/M40;->a:Lcom/android/tools/r8/internal/WE;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/naming/r;->i:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V$c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/r;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/r;->j:Lcom/android/tools/r8/naming/r;

    :goto_0
    const-string v1, "\'."

    if-eqz v0, :cond_7

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/naming/r;->d:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V$c;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, p2

    .line 10
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/naming/V$b;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/kl0;

    if-eqz v0, :cond_6

    .line 12
    iget-object v2, p1, Lcom/android/tools/r8/internal/WE;->n:Lcom/android/tools/r8/internal/RE;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/tools/r8/internal/RE;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/RE;-><init>(Lcom/android/tools/r8/internal/WE;)V

    iput-object v2, p1, Lcom/android/tools/r8/internal/WE;->n:Lcom/android/tools/r8/internal/RE;

    .line 13
    :cond_2
    iget-object v2, p1, Lcom/android/tools/r8/internal/WE;->n:Lcom/android/tools/r8/internal/RE;

    .line 14
    new-instance v3, Lcom/android/tools/r8/internal/QE;

    .line 15
    iget-object v2, v2, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    .line 16
    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/QE;-><init>(Lcom/android/tools/r8/internal/WE;)V

    .line 17
    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/UE;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/QE;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 19
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/WE;->get(I)I

    move-result v5

    .line 20
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/kl0;->a(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const-string v7, "\' with original signature \'"

    const-string v8, "Could not find ranges for outline position \'"

    if-eqz v6, :cond_4

    .line 21
    invoke-static {v6}, Lcom/android/tools/r8/naming/p;->a(Ljava/util/List;)Lcom/android/tools/r8/naming/p;

    move-result-object v6

    .line 22
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/naming/p;->a(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 23
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    .line 24
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/naming/k$b;

    iget-object v9, v9, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v9, v5}, Lcom/android/tools/r8/naming/M0;->a(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 25
    new-instance v2, Lcom/android/tools/r8/naming/m;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/tools/r8/naming/m;-><init>(IILjava/util/List;)V

    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 26
    :cond_3
    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    .line 28
    :cond_6
    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find method positions for original signature \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_7
    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find builder with original signature \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/naming/k;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/b;->d()Lcom/android/tools/r8/internal/g6;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/g6;->b:Ljava/util/Map;

    .line 32
    new-instance v0, Lcom/android/tools/r8/naming/N3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/naming/N3;-><init>(Lcom/android/tools/r8/naming/r;Ljava/util/Map;)V

    .line 33
    iget-object p1, p2, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/naming/V;

    .line 35
    invoke-interface {v0, p2}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/o;Ljava/util/List;)V
    .locals 11

    .line 178
    iget-object p1, p1, Lcom/android/tools/r8/naming/o;->a:Ljava/util/IdentityHashMap;

    .line 179
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 180
    :cond_0
    invoke-static {p2}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/k$b;

    .line 181
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/naming/I3;

    invoke-direct {v2}, Lcom/android/tools/r8/naming/I3;-><init>()V

    .line 182
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 185
    new-instance v1, Lcom/android/tools/r8/internal/IH;

    iget-object v2, v0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v2, v2, Lcom/android/tools/r8/naming/M0;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/IH;-><init>(I)V

    .line 186
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/M40;

    .line 187
    invoke-virtual {p1, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 188
    sget-boolean v7, Lcom/android/tools/r8/naming/r;->l:Z

    if-nez v7, :cond_4

    .line 189
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/naming/n;

    .line 190
    iget-object v8, v8, Lcom/android/tools/r8/naming/n;->b:Lcom/android/tools/r8/naming/k$b;

    invoke-virtual {v8}, Lcom/android/tools/r8/naming/k$b;->d()Lcom/android/tools/r8/internal/hC;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/M40;

    .line 191
    sget-boolean v10, Lcom/android/tools/r8/naming/r;->l:Z

    if-nez v10, :cond_2

    if-ne v5, v9, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 192
    :cond_4
    invoke-static {v6}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/naming/n;

    .line 193
    new-instance v7, Lcom/android/tools/r8/internal/WE;

    .line 194
    iget-object v8, v5, Lcom/android/tools/r8/internal/M40;->a:Lcom/android/tools/r8/internal/WE;

    .line 195
    iget v8, v8, Lcom/android/tools/r8/internal/WE;->l:I

    .line 196
    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/WE;-><init>(I)V

    .line 197
    iget-object v6, v6, Lcom/android/tools/r8/naming/n;->a:Lcom/android/tools/r8/naming/k$b;

    .line 198
    iget-object v6, v6, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 199
    new-instance v8, Lcom/android/tools/r8/naming/J3;

    invoke-direct {v8, v1, v0, p2, v7}, Lcom/android/tools/r8/naming/J3;-><init>(Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/naming/k$b;Ljava/util/List;Lcom/android/tools/r8/internal/WE;)V

    .line 200
    invoke-virtual {p0, v5, v6, v8}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/internal/M40;Lcom/android/tools/r8/naming/V$b;Ljava/util/function/Consumer;)V

    .line 201
    iput-object v7, v5, Lcom/android/tools/r8/internal/M40;->a:Lcom/android/tools/r8/internal/WE;

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/naming/V;)V
    .locals 6

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->a()Lcom/android/tools/r8/naming/V$a;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/android/tools/r8/naming/B3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/B3;-><init>(Ljava/util/Map;)V

    .line 38
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p2}, Lcom/android/tools/r8/naming/U;->b()Lcom/android/tools/r8/naming/V$c;

    move-result-object p1

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/naming/U;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/tools/r8/naming/U;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/naming/V$c;->a(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;

    move-result-object p1

    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->a()Lcom/android/tools/r8/naming/V$a;

    move-result-object p1

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/r;

    goto :goto_1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->j:Lcom/android/tools/r8/naming/r;

    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_3

    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    new-instance v3, Lcom/android/tools/r8/naming/V$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/naming/V$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v3, v0

    .line 47
    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/naming/r;->h:Lcom/android/tools/r8/naming/s;

    invoke-virtual {v4, v1, v3}, Lcom/android/tools/r8/naming/s;->a(Lcom/android/tools/r8/naming/r;Lcom/android/tools/r8/naming/V$c;)V

    .line 48
    iget-object v1, v1, Lcom/android/tools/r8/naming/r;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/V;

    :goto_3
    if-eqz v1, :cond_6

    .line 49
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object p2

    .line 50
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->f()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/r;

    if-nez v0, :cond_4

    goto :goto_4

    .line 53
    :cond_4
    iget-object v2, v0, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    :goto_4
    if-eqz v2, :cond_5

    .line 54
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/naming/V$c;->b(Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;

    move-result-object p2

    .line 55
    :cond_5
    new-instance v0, Lcom/android/tools/r8/naming/V;

    .line 56
    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-direct {v0, p2, p1, v1}, Lcom/android/tools/r8/naming/V;-><init>(Lcom/android/tools/r8/naming/V$c;Lcom/android/tools/r8/naming/V$c;Lcom/android/tools/r8/position/Position;)V

    move-object p2, v0

    .line 57
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/naming/r;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V;

    .line 58
    sget-boolean p2, Lcom/android/tools/r8/naming/r;->l:Z

    if-nez p2, :cond_8

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_5
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Jb;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    new-instance v1, Lcom/android/tools/r8/naming/r2;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/r2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 172
    new-instance v1, Lcom/android/tools/r8/naming/A3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/A3;-><init>(Lcom/android/tools/r8/internal/Kb;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/naming/k;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/naming/b;->d()Lcom/android/tools/r8/internal/g6;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/g6;->b:Ljava/util/Map;

    .line 2
    iget-object v3, v1, Lcom/android/tools/r8/naming/k;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$c;

    invoke-virtual {v4}, Lcom/android/tools/r8/naming/k$c;->b()Ljava/util/List;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/k$c;

    .line 5
    invoke-virtual {v5}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v6

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v15, Lcom/android/tools/r8/naming/o;

    invoke-direct {v15}, Lcom/android/tools/r8/naming/o;-><init>()V

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/high16 v9, -0x80000000

    move-object v12, v8

    const v8, 0x7fffffff

    const/4 v11, 0x0

    .line 9
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v11, v10, :cond_2d

    .line 10
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/naming/k$b;

    .line 11
    iget-object v13, v10, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v13, :cond_1

    .line 12
    iget v14, v13, Lcom/android/tools/r8/naming/M0;->a:I

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 13
    iget v13, v13, Lcom/android/tools/r8/naming/M0;->b:I

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_1
    move v14, v8

    move/from16 v18, v9

    .line 14
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/naming/r;->b(Lcom/android/tools/r8/naming/k$b;)V

    .line 15
    iget-object v8, v10, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 16
    invoke-virtual {v8}, Lcom/android/tools/r8/naming/V$b;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v8

    .line 17
    invoke-virtual {v8}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 18
    iget-object v9, v0, Lcom/android/tools/r8/naming/r;->i:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/android/tools/r8/naming/V$c;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/naming/r;

    :goto_2
    move-object v13, v9

    goto :goto_3

    .line 19
    :cond_2
    iget-object v9, v0, Lcom/android/tools/r8/naming/r;->j:Lcom/android/tools/r8/naming/r;

    goto :goto_2

    :goto_3
    const/16 v19, 0x0

    if-eqz v13, :cond_8

    .line 20
    invoke-virtual {v8}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 21
    new-instance v9, Lcom/android/tools/r8/naming/V$b;

    move-object/from16 v20, v3

    invoke-virtual {v8}, Lcom/android/tools/r8/naming/V$c;->g()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v4

    iget-object v4, v8, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v8, v8, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    invoke-direct {v9, v3, v4, v8}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object v8, v9

    goto :goto_4

    :cond_3
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 22
    :goto_4
    invoke-virtual {v8}, Lcom/android/tools/r8/naming/V$b;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v3

    .line 23
    iget-object v4, v0, Lcom/android/tools/r8/naming/r;->h:Lcom/android/tools/r8/naming/s;

    invoke-virtual {v4, v13, v3}, Lcom/android/tools/r8/naming/s;->a(Lcom/android/tools/r8/naming/r;Lcom/android/tools/r8/naming/V$c;)V

    .line 24
    invoke-virtual {v13, v10}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/k$b;)Ljava/util/List;

    move-result-object v3

    .line 25
    sget-boolean v4, Lcom/android/tools/r8/naming/r;->l:Z

    if-nez v4, :cond_7

    if-nez v3, :cond_7

    const v4, 0x7fffffff

    if-ge v14, v4, :cond_4

    goto :goto_6

    .line 26
    :cond_4
    iget-object v8, v10, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    iget-object v8, v10, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    :goto_5
    if-nez v8, :cond_6

    goto :goto_6

    .line 27
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    const v4, 0x7fffffff

    goto :goto_6

    :cond_8
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const v4, 0x7fffffff

    move-object/from16 v3, v19

    .line 28
    :goto_6
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/lit8 v17, v8, 0x1

    .line 29
    sget-boolean v8, Lcom/android/tools/r8/naming/r;->l:Z

    if-eqz v3, :cond_9

    .line 30
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    move-object/from16 v24, v2

    move-object/from16 v30, v5

    move-object/from16 v25, v7

    move-object v0, v10

    move v5, v11

    move-object v1, v12

    move/from16 v22, v14

    move-object/from16 v31, v15

    goto/16 :goto_11

    .line 31
    :cond_a
    invoke-static {v3}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/naming/k$b;

    .line 32
    iget-object v4, v10, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v4, :cond_b

    goto :goto_7

    .line 33
    :cond_b
    iget-object v4, v10, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    :goto_7
    if-nez v4, :cond_c

    .line 34
    invoke-static {v13, v10, v9}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/r;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;)Lcom/android/tools/r8/naming/k$b;

    move-result-object v3

    .line 35
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v24, v2

    move-object/from16 v30, v5

    move-object/from16 v25, v7

    move v5, v11

    move-object v1, v12

    move/from16 v22, v14

    move-object/from16 v31, v15

    goto/16 :goto_12

    .line 36
    :cond_c
    invoke-static {v3}, Lcom/android/tools/r8/naming/p;->a(Ljava/util/List;)Lcom/android/tools/r8/naming/p;

    move-result-object v3

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v8, :cond_e

    .line 38
    iget-object v8, v10, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v8, :cond_d

    goto :goto_8

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 39
    :cond_e
    :goto_8
    iget-object v8, v10, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    move/from16 v23, v11

    iget v11, v8, Lcom/android/tools/r8/naming/M0;->a:I

    .line 40
    iget v8, v8, Lcom/android/tools/r8/naming/M0;->b:I

    move-object/from16 v24, v2

    .line 41
    invoke-virtual {v10, v8}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v2

    :goto_9
    if-gt v11, v8, :cond_1c

    move-object/from16 v25, v12

    .line 42
    invoke-virtual {v10, v11}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v12

    .line 43
    invoke-virtual {v3, v12}, Lcom/android/tools/r8/naming/p;->a(I)Ljava/util/List;

    move-result-object v26

    if-eqz v26, :cond_10

    .line 44
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_10

    .line 45
    invoke-static/range {v26 .. v26}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v14

    move-object/from16 v14, v27

    check-cast v14, Lcom/android/tools/r8/naming/k$b;

    iget-object v14, v14, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v14, :cond_f

    .line 46
    invoke-static/range {v26 .. v26}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/naming/k$b;

    iget-object v14, v14, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v14, v14, Lcom/android/tools/r8/naming/M0;->b:I

    if-ge v14, v12, :cond_f

    goto :goto_a

    :cond_f
    move-object/from16 v1, v26

    goto :goto_b

    :cond_10
    move/from16 v28, v14

    .line 47
    :goto_a
    iget-object v14, v3, Lcom/android/tools/r8/naming/p;->a:Ljava/util/TreeMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_11

    move-object/from16 v1, v19

    goto :goto_b

    .line 48
    :cond_11
    iget-object v14, v3, Lcom/android/tools/r8/naming/p;->a:Ljava/util/TreeMap;

    invoke-virtual {v14, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_b
    if-eqz v1, :cond_12

    .line 49
    invoke-static {v1}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/naming/k$b;

    iget-object v14, v14, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v14, :cond_13

    .line 50
    invoke-static {v1}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/naming/k$b;

    iget-object v14, v14, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v14, v14, Lcom/android/tools/r8/naming/M0;->a:I

    if-ge v2, v14, :cond_13

    :cond_12
    move/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v30, v5

    move v2, v8

    move-object/from16 v29, v9

    move-object v0, v10

    move-object/from16 v16, v13

    move-object/from16 v31, v15

    move/from16 v5, v23

    move-object/from16 v1, v25

    move/from16 v22, v28

    move-object/from16 v25, v7

    const/4 v7, 0x1

    goto/16 :goto_10

    .line 51
    :cond_13
    invoke-static {v1}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/naming/k$b;

    move/from16 v26, v2

    .line 52
    iget-object v2, v14, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-nez v2, :cond_14

    .line 53
    invoke-static {v13, v10, v9}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/r;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;)Lcom/android/tools/r8/naming/k$b;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v30, v5

    move-object/from16 v31, v15

    move/from16 v5, v23

    move-object/from16 v1, v25

    move/from16 v22, v28

    move-object/from16 v25, v7

    goto/16 :goto_12

    :cond_14
    move-object/from16 v27, v3

    .line 55
    iget v3, v2, Lcom/android/tools/r8/naming/M0;->a:I

    if-ge v12, v3, :cond_17

    sub-int/2addr v3, v12

    const/4 v1, 0x1

    sub-int/2addr v3, v1

    add-int/2addr v3, v11

    .line 56
    new-instance v2, Lcom/android/tools/r8/naming/M0;

    const/4 v1, 0x0

    .line 57
    invoke-direct {v2, v11, v3, v1}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 58
    new-instance v11, Lcom/android/tools/r8/naming/M0;

    iget-object v14, v14, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v14, v14, Lcom/android/tools/r8/naming/M0;->a:I

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    .line 59
    invoke-direct {v11, v12, v14, v1}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 60
    iget v12, v11, Lcom/android/tools/r8/naming/M0;->a:I

    if-nez v12, :cond_15

    iget v12, v11, Lcom/android/tools/r8/naming/M0;->b:I

    if-nez v12, :cond_15

    goto :goto_c

    :cond_15
    move-object v11, v2

    .line 61
    :goto_c
    new-instance v12, Lcom/android/tools/r8/naming/k$b;

    iget-object v14, v10, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    iget-object v1, v10, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-direct {v12, v2, v14, v11, v1}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 62
    iget v1, v2, Lcom/android/tools/r8/naming/M0;->a:I

    iget-object v2, v10, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v2, v2, Lcom/android/tools/r8/naming/M0;->a:I

    if-gt v1, v2, :cond_16

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v10, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v12, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    .line 64
    :cond_16
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v3, 0x1

    move-object/from16 v1, p2

    move-object/from16 v12, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v14, v28

    goto/16 :goto_9

    :cond_17
    sub-int v3, v8, v11

    const/4 v14, 0x1

    if-lt v3, v14, :cond_19

    .line 65
    iget-object v12, v10, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v12, :cond_18

    goto :goto_d

    .line 66
    :cond_18
    iget-object v12, v10, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 67
    :goto_d
    iget-boolean v14, v12, Lcom/android/tools/r8/naming/M0;->c:Z

    if-nez v14, :cond_1a

    .line 68
    iget v14, v12, Lcom/android/tools/r8/naming/M0;->b:I

    iget v12, v12, Lcom/android/tools/r8/naming/M0;->a:I

    if-ne v14, v12, :cond_19

    goto :goto_e

    .line 69
    :cond_19
    iget v2, v2, Lcom/android/tools/r8/naming/M0;->b:I

    .line 70
    invoke-virtual {v10, v11}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v12

    sub-int/2addr v2, v12

    .line 71
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_1a
    :goto_e
    add-int v14, v11, v3

    move v2, v8

    move-object v8, v13

    move-object/from16 v29, v9

    move-object v9, v4

    move-object v12, v10

    move-object/from16 v30, v5

    move/from16 v5, v23

    move/from16 v23, v11

    move-object v11, v1

    move-object v0, v12

    move-object/from16 v1, v25

    move-object v12, v15

    move-object/from16 v25, v7

    move-object/from16 v16, v13

    const/4 v7, 0x1

    move/from16 v13, v23

    move/from16 v22, v28

    move-object/from16 v31, v15

    move/from16 v15, v17

    .line 72
    invoke-static/range {v8 .. v15}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/r;Ljava/util/ArrayList;Lcom/android/tools/r8/naming/k$b;Ljava/util/List;Lcom/android/tools/r8/naming/o;IIZ)V

    add-int/2addr v3, v7

    move/from16 v11, v23

    add-int/2addr v11, v3

    :goto_f
    move-object v10, v0

    move-object v12, v1

    move v8, v2

    move/from16 v23, v5

    move-object/from16 v13, v16

    move/from16 v14, v22

    move-object/from16 v7, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v9, v29

    move-object/from16 v5, v30

    move-object/from16 v15, v31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto/16 :goto_9

    .line 73
    :goto_10
    new-instance v3, Lcom/android/tools/r8/naming/M0;

    const/4 v8, 0x0

    .line 74
    invoke-direct {v3, v11, v2, v8}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 75
    new-instance v8, Lcom/android/tools/r8/naming/k$b;

    iget-object v9, v0, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    iget-object v10, v0, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-direct {v8, v3, v9, v3, v10}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 76
    iget v3, v3, Lcom/android/tools/r8/naming/M0;->a:I

    iget-object v9, v0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v9, v9, Lcom/android/tools/r8/naming/M0;->a:I

    if-gt v3, v9, :cond_1b

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v8, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    .line 78
    :cond_1b
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v2, 0x1

    goto :goto_f

    :cond_1c
    move-object/from16 v30, v5

    move-object/from16 v25, v7

    move-object v1, v12

    move/from16 v22, v14

    move-object/from16 v31, v15

    move/from16 v5, v23

    move-object v3, v4

    goto :goto_12

    .line 79
    :goto_11
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 80
    :goto_12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v10, 0x0

    goto/16 :goto_19

    .line 81
    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 82
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$b;

    iget-object v2, v4, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$b;

    .line 84
    iget-object v7, v4, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 85
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/naming/k$b;

    .line 86
    iget-object v9, v8, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 87
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    goto :goto_15

    .line 88
    :cond_1e
    new-instance v9, Lcom/android/tools/r8/naming/M0;

    iget v10, v2, Lcom/android/tools/r8/naming/M0;->a:I

    .line 89
    invoke-virtual {v8, v10}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v10

    iget v11, v2, Lcom/android/tools/r8/naming/M0;->b:I

    invoke-virtual {v8, v11}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v11

    const/4 v12, 0x0

    .line 90
    invoke-direct {v9, v10, v11, v12}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 91
    new-instance v10, Lcom/android/tools/r8/naming/k$b;

    iget-object v11, v8, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    iget-object v12, v8, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-direct {v10, v2, v11, v9, v12}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 92
    iget v9, v2, Lcom/android/tools/r8/naming/M0;->a:I

    iget-object v11, v8, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v11, v11, Lcom/android/tools/r8/naming/M0;->a:I

    if-gt v9, v11, :cond_1f

    .line 93
    new-instance v9, Ljava/util/ArrayList;

    iget-object v8, v8, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, v10, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    :cond_1f
    move-object v8, v10

    .line 94
    :goto_15
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 95
    :cond_20
    iget-object v2, v4, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 96
    :cond_21
    iget-object v7, v4, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    goto :goto_16

    .line 97
    :cond_22
    new-instance v7, Lcom/android/tools/r8/naming/M0;

    iget v8, v2, Lcom/android/tools/r8/naming/M0;->a:I

    .line 98
    invoke-virtual {v4, v8}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v8

    iget v9, v2, Lcom/android/tools/r8/naming/M0;->b:I

    invoke-virtual {v4, v9}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v9

    const/4 v10, 0x0

    .line 99
    invoke-direct {v7, v8, v9, v10}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 100
    new-instance v8, Lcom/android/tools/r8/naming/k$b;

    iget-object v9, v4, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    iget-object v10, v4, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-direct {v8, v2, v9, v7, v10}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 101
    iget v7, v2, Lcom/android/tools/r8/naming/M0;->a:I

    iget-object v9, v4, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v9, v9, Lcom/android/tools/r8/naming/M0;->a:I

    if-gt v7, v9, :cond_23

    .line 102
    new-instance v7, Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v8, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    :cond_23
    move-object v4, v8

    .line 103
    :goto_16
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 104
    :cond_24
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/k$b;

    .line 105
    iget-object v4, v3, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 106
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v10, 0x0

    goto :goto_18

    .line 107
    :cond_25
    new-instance v4, Lcom/android/tools/r8/naming/M0;

    iget v7, v2, Lcom/android/tools/r8/naming/M0;->a:I

    .line 108
    invoke-virtual {v3, v7}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v7

    iget v8, v2, Lcom/android/tools/r8/naming/M0;->b:I

    invoke-virtual {v3, v8}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result v8

    const/4 v10, 0x0

    .line 109
    invoke-direct {v4, v7, v8, v10}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 110
    new-instance v7, Lcom/android/tools/r8/naming/k$b;

    iget-object v8, v3, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    iget-object v9, v3, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-direct {v7, v2, v8, v4, v9}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 111
    iget v4, v2, Lcom/android/tools/r8/naming/M0;->a:I

    iget-object v8, v3, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v8, v8, Lcom/android/tools/r8/naming/M0;->a:I

    if-gt v4, v8, :cond_26

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v7, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    :cond_26
    move-object v3, v7

    .line 113
    :goto_18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_27
    const/4 v10, 0x0

    move-object v3, v0

    :goto_19
    add-int/lit8 v11, v5, 0x1

    .line 114
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v11, v0, :cond_29

    :cond_28
    :goto_1a
    move-object/from16 v0, v25

    goto :goto_1d

    .line 115
    :cond_29
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/k$b;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k$b;

    .line 116
    iget-object v0, v0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-nez v0, :cond_2a

    goto :goto_1a

    .line 117
    :cond_2a
    iget-object v2, v1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v2, :cond_2b

    move-object v4, v2

    goto :goto_1b

    .line 118
    :cond_2b
    iget-object v4, v1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    :goto_1b
    if-eqz v4, :cond_28

    if-eqz v2, :cond_2c

    goto :goto_1c

    .line 119
    :cond_2c
    iget-object v2, v1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 120
    :goto_1c
    iget-boolean v2, v2, Lcom/android/tools/r8/naming/M0;->c:Z

    if-eqz v2, :cond_28

    iget-object v1, v1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v12, v3

    move-object/from16 v0, v25

    goto :goto_1e

    .line 122
    :goto_1d
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v12, v1

    :goto_1e
    move-object/from16 v1, p2

    move-object v7, v0

    move/from16 v9, v18

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v8, v22

    move-object/from16 v2, v24

    move-object/from16 v5, v30

    move-object/from16 v15, v31

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_2d
    move-object v1, v0

    move-object/from16 v24, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v30, v5

    move-object v0, v7

    move-object v2, v15

    const/4 v7, 0x1

    .line 124
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/o;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    .line 125
    iget-object v3, v2, Lcom/android/tools/r8/naming/o;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_1f

    .line 126
    :cond_2e
    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/k$b;

    .line 127
    iget-object v4, v1, Lcom/android/tools/r8/naming/r;->h:Lcom/android/tools/r8/naming/s;

    iget-object v5, v1, Lcom/android/tools/r8/naming/r;->j:Lcom/android/tools/r8/naming/r;

    .line 128
    iget-object v5, v5, Lcom/android/tools/r8/naming/r;->b:Ljava/lang/String;

    .line 129
    invoke-static {v6}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/naming/k$b;

    iget-object v10, v10, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {v10}, Lcom/android/tools/r8/naming/V$c;->c()Ljava/lang/String;

    move-result-object v10

    .line 130
    invoke-virtual {v3}, Lcom/android/tools/r8/naming/k$b;->c()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v4, v5, v10, v3}, Lcom/android/tools/r8/naming/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/naming/u;

    move-result-object v3

    .line 132
    iput-object v6, v3, Lcom/android/tools/r8/naming/u;->a:Ljava/util/List;

    .line 133
    :goto_1f
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/o;Ljava/util/List;)V

    move-object/from16 v5, v30

    .line 134
    iget-object v2, v5, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-static {v2}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/k$b;

    .line 135
    invoke-virtual {v2}, Lcom/android/tools/r8/naming/k$b;->f()Lcom/android/tools/r8/naming/V$b;

    move-result-object v2

    move-object/from16 v3, p2

    .line 136
    iget-object v4, v3, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/V;

    .line 137
    sget-boolean v4, Lcom/android/tools/r8/naming/k$c;->c:Z

    if-nez v4, :cond_30

    if-eqz v2, :cond_2f

    goto :goto_20

    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 138
    :cond_30
    :goto_20
    new-instance v4, Lcom/android/tools/r8/naming/C3;

    move-object/from16 v5, v24

    invoke-direct {v4, v5}, Lcom/android/tools/r8/naming/C3;-><init>(Ljava/util/Map;)V

    .line 139
    invoke-virtual {v2}, Lcom/android/tools/r8/naming/V;->e()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 140
    invoke-interface {v2}, Lcom/android/tools/r8/naming/U;->b()Lcom/android/tools/r8/naming/V$c;

    move-result-object v2

    goto :goto_21

    .line 141
    :cond_31
    invoke-interface {v2}, Lcom/android/tools/r8/naming/U;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v6

    invoke-interface {v2}, Lcom/android/tools/r8/naming/U;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Lcom/android/tools/r8/naming/V$c;->a(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;

    move-result-object v2

    .line 142
    :goto_21
    invoke-virtual {v2}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v2

    .line 143
    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$b;

    iget-object v4, v4, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v4, :cond_34

    .line 144
    iget-object v4, v1, Lcom/android/tools/r8/naming/r;->d:Ljava/util/HashMap;

    new-instance v6, Lcom/android/tools/r8/naming/D3;

    invoke-direct {v6}, Lcom/android/tools/r8/naming/D3;-><init>()V

    .line 145
    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kl0;

    const/4 v4, -0x1

    const v6, 0x7fffffff

    if-ge v8, v6, :cond_32

    move v7, v8

    goto :goto_22

    :cond_32
    move v7, v4

    :goto_22
    if-ge v8, v6, :cond_33

    goto :goto_23

    :cond_33
    move v9, v4

    .line 146
    :goto_23
    invoke-virtual {v2, v7, v9, v0}, Lcom/android/tools/r8/internal/kl0;->a(IILjava/lang/Object;)Lcom/android/tools/r8/internal/kl0;

    :goto_24
    move-object v0, v1

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto/16 :goto_0

    .line 147
    :cond_34
    sget-boolean v4, Lcom/android/tools/r8/naming/r;->l:Z

    if-nez v4, :cond_36

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_35

    goto :goto_25

    :cond_35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_36
    :goto_25
    iget-object v4, v1, Lcom/android/tools/r8/naming/r;->e:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/k$b;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_37
    move-object v1, v0

    return-void
.end method

.method public final b(Lcom/android/tools/r8/naming/k$b;)V
    .locals 5

    .line 150
    iget-object p1, p1, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    .line 151
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    instance-of v1, v0, Lcom/android/tools/r8/internal/Fk0;

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/e;->j()Lcom/android/tools/r8/internal/Fk0;

    move-result-object v0

    .line 156
    iget-object v1, v0, Lcom/android/tools/r8/internal/Fk0;->a:Ljava/util/AbstractCollection;

    .line 157
    new-instance v2, Lcom/android/tools/r8/naming/w3;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/naming/w3;-><init>(Lcom/android/tools/r8/naming/r;Lcom/android/tools/r8/internal/Fk0;)V

    .line 158
    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 159
    :cond_1
    instance-of v1, v0, Lcom/android/tools/r8/internal/M40;

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/e;->c()Lcom/android/tools/r8/internal/M40;

    move-result-object v0

    .line 161
    iget-object v1, v0, Lcom/android/tools/r8/internal/M40;->b:Lcom/android/tools/r8/references/MethodReference;

    if-eqz v1, :cond_2

    .line 162
    iget-object v2, p0, Lcom/android/tools/r8/naming/r;->h:Lcom/android/tools/r8/naming/s;

    .line 163
    iget-object v2, v2, Lcom/android/tools/r8/naming/s;->c:Ljava/util/HashMap;

    .line 164
    new-instance v3, Lcom/android/tools/r8/naming/l;

    .line 165
    invoke-virtual {v1}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/android/tools/r8/naming/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_2
    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    .line 168
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M40;->r()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to compose outline call site information without outline key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/Jb;)V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/naming/r;->e:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/naming/E3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/E3;-><init>(Lcom/android/tools/r8/internal/Kb;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/naming/r;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/tools/r8/naming/F3;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/F3;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/naming/V$b;

    iget-object v4, p0, Lcom/android/tools/r8/naming/r;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kl0;

    new-instance v4, Lcom/android/tools/r8/naming/G3;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/naming/G3;-><init>(Lcom/android/tools/r8/internal/Kb;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/kl0;->a(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method
