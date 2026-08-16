.class public final Lcom/android/tools/r8/graph/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceProvider$Visitor;


# instance fields
.field public final a:Lcom/android/tools/r8/FeatureSplit;

.field public final synthetic b:Lcom/android/tools/r8/graph/l$a;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l$a;Lcom/android/tools/r8/FeatureSplit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/graph/k;->a:Lcom/android/tools/r8/FeatureSplit;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/FeatureSplit;)Ljava/util/List;
    .locals 0

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/Map;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/oe;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/oe;-><init>()V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/pe;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/pe;-><init>(Lcom/android/tools/r8/graph/k;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/qe;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/qe;-><init>()V

    .line 6
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/re;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/re;-><init>()V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/se;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/se;-><init>()V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/te;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/te;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/ue;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/android/tools/r8/graph/ue;-><init>(Lcom/android/tools/r8/graph/k;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Ljava/util/List;)V

    .line 10
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 11
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lu/I0;

    invoke-direct {p2, p4}, Lu/I0;-><init>(Ljava/util/List;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Ljava/util/List;Lcom/android/tools/r8/graph/M2;)Z
    .locals 5

    .line 13
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    const-string v1, "."

    const-string v2, ": "

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected service implementation found in META-INF/services/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object p3, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object p3, p3, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    .line 17
    iget-object p3, p3, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 18
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 19
    iget-object p3, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object p3, p3, Lcom/android/tools/r8/graph/l$a;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p4, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {p4, p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p4}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected reference to missing service implementation class in META-INF/services/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    .line 27
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 28
    invoke-virtual {v0, p4}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l$a;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 30
    :cond_2
    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final visit(Lcom/android/tools/r8/DataDirectoryResource;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final visit(Lcom/android/tools/r8/DataEntryResource;)V
    .locals 5

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "META-INF/services/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v1, v1, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v1, v1, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v1, v1, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected reference to missing service class: META-INF/services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v3, v3, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    .line 14
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 15
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 16
    iget-object v3, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v3, v3, Lcom/android/tools/r8/graph/l$a;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {v4, v1, v2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    .line 17
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 18
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 19
    iget-object v1, p0, Lcom/android/tools/r8/graph/k;->b:Lcom/android/tools/r8/graph/l$a;

    iget-object v1, v1, Lcom/android/tools/r8/graph/l$a;->c:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/android/tools/r8/graph/ve;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/ve;-><init>()V

    .line 20
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 21
    iget-object v3, p0, Lcom/android/tools/r8/graph/k;->a:Lcom/android/tools/r8/FeatureSplit;

    new-instance v4, Lcom/android/tools/r8/graph/we;

    invoke-direct {v4}, Lcom/android/tools/r8/graph/we;-><init>()V

    .line 22
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 23
    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    .line 24
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/tools/r8/graph/k;->a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 25
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/If;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
