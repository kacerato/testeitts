.class public final Lcom/android/tools/r8/naming/K;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/android/tools/r8/naming/G;

.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/Y5;

.field public final c:Lcom/android/tools/r8/naming/Y;

.field public final d:Lcom/android/tools/r8/naming/H;

.field public final e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/naming/G;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/G;-><init>()V

    sput-object v0, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/Y;Lcom/android/tools/r8/graph/Y5;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/naming/H;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/naming/H;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/K;->e:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/naming/K;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    iput-object p3, p0, Lcom/android/tools/r8/naming/K;->b:Lcom/android/tools/r8/graph/Y5;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/b0;Lcom/android/tools/r8/naming/I;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 227
    new-instance v0, Lcom/android/tools/r8/naming/Q1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/naming/Q1;-><init>(Lcom/android/tools/r8/naming/I;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/naming/c0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/naming/a0;

    .line 229
    iget-object p1, p1, Lcom/android/tools/r8/naming/b0;->e:Lcom/android/tools/r8/naming/m0;

    invoke-interface {p1, p0, p2, v0}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/a0;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    .line 230
    sget-boolean p1, Lcom/android/tools/r8/naming/b0;->f:Z

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Ljava/io/PrintStream;)V
    .locals 4

    .line 259
    const-string v0, "-----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assignNameToInterfaceMethod(`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "`)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    const-string p0, "Source methods:"

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/tools/r8/graph/H0;

    .line 264
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_0
    const-string p0, "States:"

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Rn;Lcom/android/tools/r8/internal/fv;Lcom/android/tools/r8/internal/fv;)V
    .locals 1

    .line 184
    new-instance v0, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/graph/H0;)V
    .locals 2

    .line 243
    sget-object v0, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 244
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 245
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/H0;Ljava/util/Set;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 253
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object p0, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 255
    new-instance v0, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 256
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 257
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    .line 258
    sget-boolean p1, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/I;)V
    .locals 3

    .line 246
    iget-object p4, p4, Lcom/android/tools/r8/naming/I;->b:Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/D0;

    .line 247
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v1, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 249
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 250
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 252
    sget-boolean v1, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/I;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/I;->a(Lcom/android/tools/r8/graph/L2;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/Set;Lcom/android/tools/r8/graph/H0;)V
    .locals 2

    .line 10
    sget-object v0, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 12
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/I;)V
    .locals 1

    .line 13
    iget-object p4, p4, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    new-instance v0, Lcom/android/tools/r8/naming/d2;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/tools/r8/naming/d2;-><init>(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/H0;Ljava/util/Set;)V

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/naming/I;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/I;->a(Lcom/android/tools/r8/graph/L2;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/I;)Lcom/android/tools/r8/graph/L2;
    .locals 5

    .line 197
    sget-boolean v0, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/I;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 198
    iget-object v1, p2, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    .line 199
    iget-object v2, v1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 200
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Rn;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/fv;

    move-result-object v1

    .line 201
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 202
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_6

    .line 203
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 204
    iget-object v1, p2, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    .line 205
    iget-object v2, v1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 206
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Rn;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/fv;

    move-result-object v1

    .line 207
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_5

    .line 209
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/J;

    .line 210
    iget-object v2, v2, Lcom/android/tools/r8/naming/J;->c:Ljava/util/HashSet;

    .line 211
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 212
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 213
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 214
    iget-object v0, v0, Lcom/android/tools/r8/naming/Y;->a:Lcom/android/tools/r8/naming/Z;

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/naming/Z;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/b0;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/android/tools/r8/naming/b2;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/naming/b2;-><init>(Lcom/android/tools/r8/naming/I;)V

    .line 217
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/naming/b0;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 218
    :cond_7
    iget-object v2, v0, Lcom/android/tools/r8/naming/b0;->c:Lcom/android/tools/r8/naming/e0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/naming/e0;->d(Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 219
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 220
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/L2;

    .line 221
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/naming/b0;->b(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    .line 222
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/naming/c0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/a0;

    .line 223
    iget-object v0, v0, Lcom/android/tools/r8/naming/b0;->e:Lcom/android/tools/r8/naming/m0;

    invoke-interface {v0, p1, v2, v1}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/a0;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 224
    sget-boolean p1, Lcom/android/tools/r8/naming/b0;->f:Z

    if-nez p1, :cond_a

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 225
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    invoke-virtual {p2, v2, p1}, Lcom/android/tools/r8/naming/I;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/naming/Y;)V

    return-object v2
.end method

.method public final a()Ljava/util/Comparator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/naming/N1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/naming/N1;-><init>(Lcom/android/tools/r8/internal/Rn;)V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/tools/r8/naming/K;->b:Lcom/android/tools/r8/graph/Y5;

    .line 233
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/Y5;->g(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/naming/c2;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/naming/c2;-><init>(Lcom/android/tools/r8/naming/K;Lcom/android/tools/r8/graph/E0;)V

    .line 234
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/tools/r8/naming/K;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/naming/Y;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 238
    iget-object v0, p0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    .line 239
    iget-object v0, v0, Lcom/android/tools/r8/naming/Y;->a:Lcom/android/tools/r8/naming/Z;

    .line 240
    iget-object v0, v0, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/e0;

    if-nez v0, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/naming/K;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/J;

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p1, Lcom/android/tools/r8/naming/J;->c:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Ljava/util/Set;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    .line 186
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 187
    sget-object v1, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 188
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 189
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 190
    check-cast p1, Lcom/android/tools/r8/naming/I;

    .line 191
    sget-boolean v0, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 192
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fv;

    .line 193
    iget-object v1, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    .line 194
    iget-object v1, v1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 195
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    check-cast v0, Lcom/android/tools/r8/naming/I;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/naming/I;->a(Lcom/android/tools/r8/naming/I;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Vs;Lcom/android/tools/r8/graph/D0;)V
    .locals 13

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/android/tools/r8/naming/K;->a:Lcom/android/tools/r8/graph/y;

    .line 127
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v2, p0, Lcom/android/tools/r8/naming/K;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p2, v2}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Un;

    move-result-object v1

    .line 128
    iget-object v2, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 129
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 130
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H0;

    .line 131
    sget-object v4, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 132
    new-instance v5, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v5, v4, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 133
    iget-object v3, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    .line 134
    iget-object v3, v3, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 135
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 136
    check-cast v3, Lcom/android/tools/r8/naming/I;

    .line 137
    sget-boolean v4, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 138
    :cond_1
    :goto_1
    iget-object v3, v3, Lcom/android/tools/r8/naming/I;->b:Ljava/util/HashSet;

    .line 139
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_a

    .line 142
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/naming/K;->a:Lcom/android/tools/r8/graph/y;

    .line 143
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    const/4 v4, 0x0

    invoke-static {p2, v2, v3, v4}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object p2

    .line 144
    sget-object v2, Lcom/android/tools/r8/internal/kR;->j:Lcom/android/tools/r8/internal/kR;

    if-ne p2, v2, :cond_4

    goto :goto_2

    .line 145
    :cond_4
    iget-object v4, p2, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    :goto_2
    const/4 p2, 0x1

    if-eqz v4, :cond_a

    move v2, p2

    .line 146
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 147
    iget-object v3, p0, Lcom/android/tools/r8/naming/K;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    .line 148
    sget-boolean v5, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 149
    :cond_6
    :goto_4
    iget-object v5, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 150
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H0;

    .line 151
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->C1()Lcom/android/tools/r8/internal/sK;

    move-result-object v7

    .line 152
    iget-object v8, v7, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    iget-object v7, v7, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v8, v7}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v7

    .line 153
    :cond_8
    :goto_5
    iget-object v8, v7, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 154
    iget-object v8, v7, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 155
    check-cast v8, Lcom/android/tools/r8/graph/H0;

    .line 156
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    .line 157
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 158
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v10

    .line 159
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    if-eq v9, v10, :cond_8

    .line 160
    sget-object v9, Lcom/android/tools/r8/internal/MW;->c:Lcom/android/tools/r8/internal/MW;

    .line 161
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/A2;

    .line 162
    invoke-virtual {v9, v10, v11}, Lcom/android/tools/r8/internal/gv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 163
    iget-object v9, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    new-instance v10, Lcom/android/tools/r8/naming/O1;

    invoke-direct {v10, p0}, Lcom/android/tools/r8/naming/O1;-><init>(Lcom/android/tools/r8/naming/K;)V

    .line 164
    invoke-static {v10}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v10

    .line 165
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    sget-object v11, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 167
    new-instance v12, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v12, v11, v6}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v9, v10, v12}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    move-result-object v9

    .line 169
    check-cast v9, Lcom/android/tools/r8/naming/I;

    .line 170
    iget-object v9, v9, Lcom/android/tools/r8/naming/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 171
    :cond_a
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-le v1, p2, :cond_10

    .line 172
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/fv;

    .line 173
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vs;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    goto :goto_6

    .line 174
    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vs;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 175
    :goto_6
    check-cast v1, Lcom/android/tools/r8/internal/fv;

    .line 176
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fv;

    if-ne v1, v0, :cond_d

    .line 177
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Vs;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_7

    .line 178
    :cond_c
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Vs;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 179
    :cond_d
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Vs;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    goto :goto_8

    .line 180
    :cond_e
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Vs;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    :goto_8
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Vs;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_f

    goto :goto_9

    .line 182
    :cond_f
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Vs;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 183
    :goto_9
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/Vs;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_10
    :goto_a
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ns0;Ljava/util/List;)V
    .locals 12

    .line 2
    const-string v0, "Interface minification"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 3
    const-string v0, "Reserve direct and compute hierarchy"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/E0;

    .line 5
    sget-boolean v2, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    iget-object v3, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/naming/Y;->a:Lcom/android/tools/r8/naming/Z;

    .line 8
    iget-object v4, v2, Lcom/android/tools/r8/naming/Z;->i:Lcom/android/tools/r8/naming/e0;

    invoke-virtual {v2, v3, v3, v4}, Lcom/android/tools/r8/naming/Z;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/naming/e0;)V

    .line 9
    new-instance v2, Lcom/android/tools/r8/naming/J;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/naming/J;-><init>(Lcom/android/tools/r8/naming/K;Lcom/android/tools/r8/graph/E0;)V

    .line 10
    iget-object v3, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 11
    iget-object v4, v2, Lcom/android/tools/r8/naming/J;->c:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v3, p0, Lcom/android/tools/r8/naming/K;->e:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/naming/K;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/J;

    iget-object v3, v3, Lcom/android/tools/r8/naming/J;->a:Lcom/android/tools/r8/graph/E0;

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 15
    iget-object v6, p0, Lcom/android/tools/r8/naming/K;->e:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/J;

    if-eqz v5, :cond_4

    .line 16
    iget-object v5, v5, Lcom/android/tools/r8/naming/J;->b:Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 18
    const-string v0, "Compute map"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 19
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/naming/K;->a(Ljava/util/List;)V

    .line 20
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/naming/K;->e:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/J;

    .line 22
    sget-boolean v3, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v3, :cond_8

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->C0()Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    .line 24
    iget-object v3, v0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v0, v0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v0

    .line 25
    :goto_4
    iget-object v3, v0, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 26
    iget-object v3, v0, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/tools/r8/graph/H0;

    .line 28
    iget-object v4, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    new-instance v5, Lcom/android/tools/r8/naming/M1;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/naming/M1;-><init>(Lcom/android/tools/r8/naming/K;)V

    .line 29
    invoke-static {v5}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v5

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    sget-object v6, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 32
    new-instance v7, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v7, v6, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v4, v5, v7}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/tools/r8/naming/I;

    .line 35
    invoke-virtual {v4, v3, v1}, Lcom/android/tools/r8/naming/I;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)V

    goto :goto_4

    .line 36
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 37
    iget-object p2, p0, Lcom/android/tools/r8/naming/K;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    iget-object p2, p2, Lcom/android/tools/r8/shaking/i;->u:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 38
    const-string v0, "Union-find"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 39
    new-instance v0, Lcom/android/tools/r8/internal/Vs;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Vs;-><init>()V

    .line 40
    new-instance v1, Lcom/android/tools/r8/naming/V1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/naming/V1;-><init>(Lcom/android/tools/r8/naming/K;Lcom/android/tools/r8/internal/Vs;)V

    invoke-interface {p2, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 42
    const-string p2, "States for union"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 43
    new-instance p2, Lcom/android/tools/r8/naming/H;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p2, v1}, Lcom/android/tools/r8/naming/H;-><init>(Ljava/util/HashMap;)V

    .line 44
    new-instance v1, Lcom/android/tools/r8/naming/W1;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/naming/W1;-><init>(Lcom/android/tools/r8/internal/Rn;)V

    .line 45
    iget-object v3, v0, Lcom/android/tools/r8/internal/Vs;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 46
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/Vs;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 47
    invoke-interface {v1, v5, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 48
    :cond_a
    new-instance v1, Lcom/android/tools/r8/naming/X1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/X1;-><init>(Lcom/android/tools/r8/naming/K;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 50
    const-string p2, "Sort"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 51
    iget-object p2, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    .line 52
    iget-object p2, p2, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 53
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    .line 54
    new-instance v1, Lcom/android/tools/r8/naming/Y1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/naming/Y1;-><init>(Lcom/android/tools/r8/internal/Vs;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/naming/Z1;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/Z1;-><init>()V

    .line 55
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/naming/K;->a:Lcom/android/tools/r8/graph/y;

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->Z0:Lcom/android/tools/r8/internal/nJ$p$a;

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/K;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ$p$a;->a(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 58
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 59
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 61
    sget-boolean v0, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v0, :cond_b

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/naming/K;->c(Ljava/util/List;)V

    :cond_b
    if-nez v0, :cond_c

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/naming/K;->b(Ljava/util/List;)V

    .line 63
    :cond_c
    const-string v0, "Reserve in groups"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H0;

    .line 66
    iget-object v3, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    .line 67
    iget-object v3, v3, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 68
    sget-object v4, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 69
    new-instance v5, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v5, v4, v1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 70
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 71
    check-cast v3, Lcom/android/tools/r8/naming/I;

    .line 72
    sget-boolean v4, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v4, :cond_e

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 73
    :cond_e
    :goto_7
    invoke-virtual {v3}, Lcom/android/tools/r8/naming/I;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    if-nez v4, :cond_f

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 75
    :cond_f
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/naming/I;->b(Lcom/android/tools/r8/graph/L2;)V

    goto :goto_6

    .line 76
    :cond_10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 77
    const-string p2, "Rename in groups"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v1, v2

    :cond_11
    :goto_8
    if-ge v1, p2, :cond_18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H0;

    .line 79
    iget-object v4, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    .line 80
    iget-object v4, v4, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 81
    sget-object v5, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 82
    new-instance v6, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v6, v5, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 83
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 84
    check-cast v4, Lcom/android/tools/r8/naming/I;

    .line 85
    sget-boolean v5, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v5, :cond_13

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_9
    if-nez v5, :cond_15

    .line 86
    invoke-virtual {v4}, Lcom/android/tools/r8/naming/I;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    if-nez v6, :cond_14

    goto :goto_a

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 87
    :cond_15
    :goto_a
    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/naming/K;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/I;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    if-nez v5, :cond_17

    if-eqz v6, :cond_16

    goto :goto_b

    .line 88
    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 89
    :cond_17
    :goto_b
    iget-object v5, p0, Lcom/android/tools/r8/naming/K;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->B0:Lcom/android/tools/r8/internal/QC;

    .line 90
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    .line 91
    iget-object v6, v4, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    .line 92
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Pn;->j()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/naming/a2;

    invoke-direct {v7}, Lcom/android/tools/r8/naming/a2;-><init>()V

    .line 93
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 94
    new-instance v7, Lcom/android/tools/r8/internal/Yi1;

    invoke-direct {v7, v5}, Lcom/android/tools/r8/internal/Yi1;-><init>(Ljava/util/Set;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 95
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    iget-object v4, v4, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    .line 96
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Pn;->i()Ljava/util/ArrayList;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 97
    invoke-static {v3, v4, v5}, Lcom/android/tools/r8/naming/K;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Ljava/io/PrintStream;)V

    goto :goto_8

    .line 98
    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v1, v2

    :cond_19
    :goto_c
    if-ge v1, p2, :cond_1d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H0;

    .line 99
    iget-object v4, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    .line 100
    iget-object v4, v4, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 101
    sget-object v5, Lcom/android/tools/r8/naming/K;->f:Lcom/android/tools/r8/naming/G;

    .line 102
    new-instance v6, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v6, v5, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 103
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 104
    check-cast v4, Lcom/android/tools/r8/naming/I;

    .line 105
    iget-object v5, v4, Lcom/android/tools/r8/naming/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_c

    .line 106
    :cond_1a
    iget-object v5, p0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    .line 107
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 108
    iget-object v5, v5, Lcom/android/tools/r8/naming/Y;->a:Lcom/android/tools/r8/naming/Z;

    .line 109
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/naming/Z;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/b0;

    move-result-object v5

    .line 110
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/naming/b0;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 111
    sget-boolean v6, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v6, :cond_1c

    if-eqz v3, :cond_1b

    goto :goto_d

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 112
    :cond_1c
    :goto_d
    iget-object v3, v4, Lcom/android/tools/r8/naming/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_e
    if-ge v7, v6, :cond_19

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/graph/H0;

    .line 113
    invoke-static {v8, v5, v4}, Lcom/android/tools/r8/naming/K;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/b0;Lcom/android/tools/r8/naming/I;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 114
    iget-object v10, p0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    invoke-virtual {v10, v8, v9}, Lcom/android/tools/r8/naming/Y;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V

    .line 115
    iget-object v10, p0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    .line 116
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 117
    iget-object v10, v10, Lcom/android/tools/r8/naming/Y;->a:Lcom/android/tools/r8/naming/Z;

    .line 118
    invoke-virtual {v10, v11}, Lcom/android/tools/r8/naming/Z;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/b0;

    move-result-object v10

    .line 119
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/naming/c0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/naming/a0;

    .line 120
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v10, v9, v11}, Lcom/android/tools/r8/naming/a0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)V

    .line 121
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v10}, Lcom/android/tools/r8/naming/c0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/naming/a0;

    .line 122
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v10, v9, v8}, Lcom/android/tools/r8/naming/a0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_e

    .line 123
    :cond_1d
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 124
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    .line 231
    new-instance v0, Lcom/android/tools/r8/naming/P1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/P1;-><init>(Lcom/android/tools/r8/naming/K;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic b()Lcom/android/tools/r8/naming/I;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/naming/I;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/I;-><init>(Lcom/android/tools/r8/naming/K;)V

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 4

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 4
    new-instance v1, Lcom/android/tools/r8/naming/R1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/naming/R1;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    new-instance v3, Lcom/android/tools/r8/naming/S1;

    invoke-direct {v3, v1, v0, p1}, Lcom/android/tools/r8/naming/S1;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 9
    invoke-interface {p1, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final synthetic c()Lcom/android/tools/r8/naming/I;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/naming/I;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/I;-><init>(Lcom/android/tools/r8/naming/K;)V

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/naming/T1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/naming/T1;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/naming/K;->d:Lcom/android/tools/r8/naming/H;

    new-instance v3, Lcom/android/tools/r8/naming/U1;

    invoke-direct {v3, v1, v0, p1}, Lcom/android/tools/r8/naming/U1;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/naming/K;->g:Z

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 8
    invoke-interface {p1, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
