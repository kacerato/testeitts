.class public Lcom/android/tools/r8/kotlin/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/NQ$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcom/android/tools/r8/kotlin/D3;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/kotlin/D3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/NQ$a;)V

    const-string p0, "Metadata.Class"

    invoke-static {p1, p0, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/NQ$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v1, Lcom/android/tools/r8/kotlin/q2;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/kotlin/q2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/NQ$b;)V

    const-string p0, "Metadata.FileFacade"

    invoke-static {p1, p0, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/NQ$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NQ$c;->c()Ljava/util/List;

    move-result-object p0

    const-string v0, ", "

    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MetaData.MultiFileClassFacade("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/NQ$d;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v1, Lcom/android/tools/r8/kotlin/u3;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/kotlin/u3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/NQ$d;)V

    const-string p0, "Metadata.MultiFileClassPart"

    invoke-static {p1, p0, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/PQ;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v1, Lcom/android/tools/r8/kotlin/P3;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/kotlin/P3;-><init>(Lcom/android/tools/r8/internal/PQ;Ljava/lang/StringBuilder;)V

    const-string p0, "Metadata.SyntheticClass"

    invoke-static {p1, p0, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/eQ;)Ljava/lang/String;
    .locals 0

    .line 155
    invoke-static {p0}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/eQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/pQ;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/vQ;)Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {p0}, Lcom/android/tools/r8/internal/BL;->b(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/BL;->c(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/CL;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CL;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vQ;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/internal/NQ;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/internal/NQ$a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/NQ$a;

    invoke-static {p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Lcom/android/tools/r8/internal/NQ$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/NQ$b;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/NQ$b;

    invoke-static {p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Lcom/android/tools/r8/internal/NQ$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/internal/NQ$c;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lcom/android/tools/r8/internal/NQ$c;

    invoke-static {p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Lcom/android/tools/r8/internal/NQ$c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    instance-of v0, p1, Lcom/android/tools/r8/internal/NQ$d;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/NQ$d;

    invoke-static {p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Lcom/android/tools/r8/internal/NQ$d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    instance-of v0, p1, Lcom/android/tools/r8/internal/PQ;

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Lcom/android/tools/r8/internal/PQ;

    invoke-static {p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Lcom/android/tools/r8/internal/PQ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    const-string p1, "An error would be thrown before in createKotlinInfo"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/GP;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 317
    new-instance v0, Lcom/android/tools/r8/kotlin/H2;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/kotlin/H2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/GP;)V

    const-string p0, "KmAnnotation"

    invoke-static {p2, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/PQ;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    const-string v0, "function"

    .line 31
    :try_start_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/PQ;->b:Lcom/android/tools/r8/internal/rQ;

    if-eqz p0, :cond_0

    .line 32
    new-instance v1, Lcom/android/tools/r8/kotlin/W1;

    invoke-direct {v1, p1, p0}, Lcom/android/tools/r8/kotlin/W1;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/rQ;)V

    invoke-static {p2, v0, p1, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 33
    :cond_0
    const-string p0, "null"

    invoke-static {p2, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 34
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance p0, Lcom/android/tools/r8/kotlin/f2;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/kotlin/f2;-><init>(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p3, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {p0}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 35
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/android/tools/r8/kotlin/h2;

    invoke-direct {v0, p3, p2, p0, p4}, Lcom/android/tools/r8/kotlin/h2;-><init>(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    sget-object p3, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {v0}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 41
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V
    .locals 2

    .line 46
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Lcom/android/tools/r8/kotlin/b2;

    invoke-direct {v0, p3, p0}, Lcom/android/tools/r8/kotlin/b2;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    sget-object p0, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-interface {v0}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;)V
    .locals 6

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 96
    const-string v2, "<this>"

    invoke-static {p2, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/android/tools/r8/internal/i5;->b:Lcom/android/tools/r8/internal/Y6;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 98
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "hasAnnotations"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v2, Lcom/android/tools/r8/internal/i5;->j:Lcom/android/tools/r8/internal/pu;

    const/16 v3, 0x8

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ax0;

    .line 100
    const-string v3, "visibility"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v2, Lcom/android/tools/r8/internal/i5;->i:Lcom/android/tools/r8/internal/pu;

    const/4 v3, 0x7

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/HX;

    .line 102
    const-string v3, "modality"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v2, Lcom/android/tools/r8/internal/i5;->k:Lcom/android/tools/r8/internal/pu;

    const/16 v3, 0x9

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/hd;

    .line 104
    const-string v3, "kind"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v2, Lcom/android/tools/r8/internal/i5;->l:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xa

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 106
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "inner"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v2, Lcom/android/tools/r8/internal/i5;->m:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xb

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 108
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v2, Lcom/android/tools/r8/internal/i5;->n:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 110
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "external"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v2, Lcom/android/tools/r8/internal/i5;->o:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xd

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 112
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "expect"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v2, Lcom/android/tools/r8/internal/i5;->p:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xe

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v2, Lcom/android/tools/r8/internal/i5;->q:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xf

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 116
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "funInterface"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v2, Lcom/android/tools/r8/internal/i5;->r:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x10

    aget-object v1, v1, v3

    invoke-virtual {v2, p2, v1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v1

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enumEntries"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/android/tools/r8/internal/wL;->d:Lcom/android/tools/r8/internal/Y6;

    sget-object v3, Lcom/android/tools/r8/internal/wL;->a:[Lcom/android/tools/r8/internal/XY;

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-virtual {v1, p2, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v1

    .line 120
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "compiledInCompatibilityMode"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/android/tools/r8/internal/wL;->c:Lcom/android/tools/r8/internal/Y6;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v1

    .line 122
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "hasMethodBodiesInInterface"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "flags"

    invoke-static {p0, p1, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/aQ;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/android/tools/r8/kotlin/g3;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/kotlin/g3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;)V

    const-string v1, "typeParameters"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 126
    new-instance v0, Lcom/android/tools/r8/kotlin/h3;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/kotlin/h3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;)V

    const-string v1, "superTypes"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 127
    iget-object v0, p2, Lcom/android/tools/r8/internal/aQ;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    const-string v1, "inlineClassUnderlyingPropertyName"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/internal/aQ;->n:Lcom/android/tools/r8/internal/yQ;

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Lcom/android/tools/r8/kotlin/i3;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/kotlin/i3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;)V

    const-string v1, "inlineClassUnderlyingType"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 131
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/aQ;->d()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/aQ;->f()Ljava/util/List;

    move-result-object v1

    const-string v3, ","

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {p0, v2, p1, v4}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 134
    const-string v0, "null"

    .line 135
    :cond_2
    const-string v2, "companionObject"

    invoke-static {p0, v2, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/aQ;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v2, "sealedSubclasses"

    invoke-static {p0, v2, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/aQ;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "nestedClasses"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    invoke-static {p2}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object v0

    .line 141
    iget-object v0, v0, Lcom/android/tools/r8/internal/xL;->c:Ljava/lang/String;

    .line 142
    const-string v1, "anonymousObjectOriginName"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 143
    invoke-static {p2}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object v0

    .line 144
    iget-object v0, v0, Lcom/android/tools/r8/internal/xL;->b:Ljava/lang/String;

    .line 145
    const-string v1, "moduleName"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/android/tools/r8/kotlin/k3;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/kotlin/k3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;)V

    const-string v1, "localDelegatedProperties"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 147
    iget-object v0, p2, Lcom/android/tools/r8/internal/aQ;->p:Ljava/util/ArrayList;

    .line 148
    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 149
    new-instance v0, Lcom/android/tools/r8/kotlin/l3;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/kotlin/l3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;)V

    const-string v1, "constructors"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 150
    new-instance v0, Lcom/android/tools/r8/kotlin/m3;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/kotlin/m3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;)V

    const-string v1, "contextReceiverTypes"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 151
    invoke-static {p1, p2, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/hQ;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/eQ;Ljava/lang/String;)V
    .locals 4

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 160
    const-string v2, "<this>"

    invoke-static {p2, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v2, Lcom/android/tools/r8/internal/i5;->c:Lcom/android/tools/r8/internal/Y6;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 162
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "hasAnnotations"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v2, Lcom/android/tools/r8/internal/i5;->s:Lcom/android/tools/r8/internal/pu;

    const/16 v3, 0x11

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ax0;

    .line 164
    const-string v3, "visibility"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v2, Lcom/android/tools/r8/internal/i5;->t:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x12

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 166
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "secondary"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v2, Lcom/android/tools/r8/internal/i5;->u:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x13

    aget-object v1, v1, v3

    invoke-virtual {v2, p2, v1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v1

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "nonStableParameterNames"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "flags"

    invoke-static {p0, p1, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 170
    new-instance p0, Lcom/android/tools/r8/kotlin/V2;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/kotlin/V2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/eQ;)V

    const-string v0, "valueParameters"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 171
    invoke-static {p2}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/eQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object p0

    .line 172
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "signature"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 173
    iget-object p0, p2, Lcom/android/tools/r8/internal/eQ;->c:Ljava/util/ArrayList;

    .line 174
    invoke-static {p3, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;Ljava/lang/String;)V
    .locals 4

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 352
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 353
    const-string v2, "<this>"

    invoke-static {p2, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    sget-object v2, Lcom/android/tools/r8/internal/i5;->d0:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x36

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 355
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "negated"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v2, Lcom/android/tools/r8/internal/i5;->e0:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x37

    aget-object v1, v1, v3

    invoke-virtual {v2, p2, v1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v1

    .line 357
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "nullCheckPredicate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v1, "flags"

    invoke-static {p0, p1, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 359
    iget-object p0, p2, Lcom/android/tools/r8/internal/jQ;->b:Ljava/lang/Integer;

    const-string v0, "null"

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 361
    :goto_0
    const-string v1, "foo"

    invoke-static {p3, v1, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 362
    iget-object p0, p2, Lcom/android/tools/r8/internal/jQ;->c:Lcom/android/tools/r8/internal/dQ;

    if-nez p0, :cond_1

    goto :goto_1

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dQ;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_1
    const-string p0, "constantValue"

    invoke-static {p3, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 365
    new-instance p0, Lcom/android/tools/r8/kotlin/M3;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/kotlin/M3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;)V

    const-string v0, "isInstanceType"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 366
    new-instance p0, Lcom/android/tools/r8/kotlin/N3;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/kotlin/N3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;)V

    const-string v0, "andArguments"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 367
    new-instance p0, Lcom/android/tools/r8/kotlin/O3;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/kotlin/O3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;)V

    const-string p2, "orArguments"

    invoke-static {p3, p2, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/oQ;Ljava/lang/String;)V
    .locals 0

    .line 305
    new-instance p3, Lcom/android/tools/r8/kotlin/f3;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/kotlin/f3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/oQ;)V

    const-string p2, "FlexibleTypeUpperBound"

    invoke-static {p0, p2, p1, p3}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;Ljava/lang/String;)V
    .locals 4

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 178
    const-string v2, "<this>"

    invoke-static {p2, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v2, Lcom/android/tools/r8/internal/i5;->d:Lcom/android/tools/r8/internal/Y6;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 180
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "hasAnnotations"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v2, Lcom/android/tools/r8/internal/i5;->v:Lcom/android/tools/r8/internal/pu;

    const/16 v3, 0x14

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/HV;

    .line 182
    const-string v3, "kind"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v2, Lcom/android/tools/r8/internal/i5;->x:Lcom/android/tools/r8/internal/pu;

    const/16 v3, 0x16

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/HX;

    .line 184
    const-string v3, "modality"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v2, Lcom/android/tools/r8/internal/i5;->y:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x17

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 186
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "operator"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v2, Lcom/android/tools/r8/internal/i5;->z:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x18

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 188
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "infix"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v2, Lcom/android/tools/r8/internal/i5;->A:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x19

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 190
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "inline"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v2, Lcom/android/tools/r8/internal/i5;->B:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x1a

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 192
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "tailRec"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v2, Lcom/android/tools/r8/internal/i5;->C:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x1b

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 194
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "external"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v2, Lcom/android/tools/r8/internal/i5;->D:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x1c

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 196
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "suspend"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v2, Lcom/android/tools/r8/internal/i5;->E:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x1d

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 198
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "expect"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v2, Lcom/android/tools/r8/internal/i5;->w:Lcom/android/tools/r8/internal/pu;

    const/16 v3, 0x15

    aget-object v3, v1, v3

    invoke-virtual {v2, p2, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ax0;

    .line 200
    const-string v3, "visibility"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v2, Lcom/android/tools/r8/internal/i5;->F:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x1e

    aget-object v1, v1, v3

    invoke-virtual {v2, p2, v1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v1

    .line 202
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "nonStableParameterNames"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "flags"

    invoke-static {p0, p1, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pQ;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 205
    new-instance p0, Lcom/android/tools/r8/kotlin/z2;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/kotlin/z2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;)V

    const-string v0, "receiverParameterType"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 206
    new-instance p0, Lcom/android/tools/r8/kotlin/A2;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/kotlin/A2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;)V

    const-string v0, "returnType"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 207
    new-instance p0, Lcom/android/tools/r8/kotlin/B2;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/kotlin/B2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;)V

    const-string v0, "typeParameters"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 208
    new-instance p0, Lcom/android/tools/r8/kotlin/D2;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/kotlin/D2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;)V

    const-string v0, "valueParameters"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 209
    iget-object p0, p2, Lcom/android/tools/r8/internal/pQ;->h:Ljava/util/ArrayList;

    .line 210
    invoke-static {p3, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 211
    iget-object p0, p2, Lcom/android/tools/r8/internal/pQ;->i:Lcom/android/tools/r8/internal/gQ;

    const-string v0, "contract"

    if-nez p0, :cond_0

    .line 212
    const-string p0, "null"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    new-instance v1, Lcom/android/tools/r8/kotlin/E2;

    invoke-direct {v1, p1, p0}, Lcom/android/tools/r8/kotlin/E2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/gQ;)V

    invoke-static {p3, v0, p1, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 214
    :goto_0
    new-instance p0, Lcom/android/tools/r8/kotlin/F2;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/kotlin/F2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;)V

    const-string v0, "contextReceiverTypes"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 215
    invoke-static {p2}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object p0

    .line 216
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "signature"

    invoke-static {p3, v0, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 217
    invoke-static {p2}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/EL;

    move-result-object p0

    .line 218
    iget-object p0, p0, Lcom/android/tools/r8/internal/EL;->b:Ljava/lang/String;

    .line 219
    const-string p2, "lambdaClassOriginName"

    invoke-static {p3, p2, p1, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/sQ;)V
    .locals 2

    .line 73
    invoke-static {p1, p2, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/hQ;Ljava/lang/String;)V

    .line 74
    const-string v0, "<this>"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p2}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/sQ;)Lcom/android/tools/r8/internal/WL;

    move-result-object v0

    .line 76
    iget-object v0, v0, Lcom/android/tools/r8/internal/WL;->b:Ljava/lang/String;

    .line 77
    const-string v1, "moduleName"

    invoke-static {p0, v1, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/android/tools/r8/kotlin/t3;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/kotlin/t3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/sQ;)V

    const-string p2, "localDelegatedProperties"

    invoke-static {p0, p2, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 221
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 222
    sget-object v5, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 223
    const-string v6, "<this>"

    invoke-static {v2, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    sget-object v7, Lcom/android/tools/r8/internal/i5;->e:Lcom/android/tools/r8/internal/Y6;

    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-virtual {v7, v2, v8}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v7

    .line 225
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "hasAnnotations"

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v7, Lcom/android/tools/r8/internal/i5;->G:Lcom/android/tools/r8/internal/pu;

    const/16 v9, 0x1f

    aget-object v9, v5, v9

    invoke-virtual {v7, v2, v9}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/Ax0;

    .line 227
    const-string v9, "visibility"

    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v7, Lcom/android/tools/r8/internal/i5;->H:Lcom/android/tools/r8/internal/pu;

    const/16 v10, 0x20

    aget-object v10, v5, v10

    invoke-virtual {v7, v2, v10}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/HX;

    .line 229
    const-string v10, "modality"

    invoke-virtual {v4, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v7, Lcom/android/tools/r8/internal/i5;->I:Lcom/android/tools/r8/internal/pu;

    const/16 v11, 0x21

    aget-object v11, v5, v11

    invoke-virtual {v7, v2, v11}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/HV;

    .line 231
    const-string v11, "kind"

    invoke-virtual {v4, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v7, Lcom/android/tools/r8/internal/i5;->J:Lcom/android/tools/r8/internal/Y6;

    const/16 v11, 0x22

    aget-object v11, v5, v11

    invoke-virtual {v7, v2, v11}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v7

    .line 233
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v11, "var"

    invoke-virtual {v4, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v7, Lcom/android/tools/r8/internal/i5;->K:Lcom/android/tools/r8/internal/Y6;

    const/16 v11, 0x23

    aget-object v11, v5, v11

    invoke-virtual {v7, v2, v11}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v7

    .line 235
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v11, "const"

    invoke-virtual {v4, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v7, Lcom/android/tools/r8/internal/i5;->L:Lcom/android/tools/r8/internal/Y6;

    const/16 v11, 0x24

    aget-object v11, v5, v11

    invoke-virtual {v7, v2, v11}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v7

    .line 237
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v11, "lateInit"

    invoke-virtual {v4, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v7, Lcom/android/tools/r8/internal/i5;->M:Lcom/android/tools/r8/internal/Y6;

    const/16 v11, 0x25

    aget-object v11, v5, v11

    invoke-virtual {v7, v2, v11}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v7

    .line 239
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v11, "hasConstant"

    invoke-virtual {v4, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v7, Lcom/android/tools/r8/internal/i5;->N:Lcom/android/tools/r8/internal/Y6;

    const/16 v11, 0x26

    aget-object v11, v5, v11

    invoke-virtual {v7, v2, v11}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v7

    .line 241
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v11, "external"

    invoke-virtual {v4, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v7, Lcom/android/tools/r8/internal/i5;->O:Lcom/android/tools/r8/internal/Y6;

    const/16 v12, 0x27

    aget-object v12, v5, v12

    invoke-virtual {v7, v2, v12}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v7

    .line 243
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v12, "delegated"

    invoke-virtual {v4, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v7, Lcom/android/tools/r8/internal/i5;->P:Lcom/android/tools/r8/internal/Y6;

    const/16 v12, 0x28

    aget-object v12, v5, v12

    invoke-virtual {v7, v2, v12}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v7

    .line 245
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v12, "expect"

    invoke-virtual {v4, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v7, Lcom/android/tools/r8/internal/wL;->a:[Lcom/android/tools/r8/internal/XY;

    .line 247
    sget-object v12, Lcom/android/tools/r8/internal/wL;->b:Lcom/android/tools/r8/internal/Y6;

    const/4 v13, 0x0

    aget-object v7, v7, v13

    invoke-virtual {v12, v2, v7}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v7

    .line 248
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v12, "movedFromInterfaceCompanion"

    invoke-virtual {v4, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v7, "flags"

    invoke-static {v0, v1, v4, v7}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/vQ;->b()Ljava/lang/String;

    move-result-object v4

    const-string v7, "name"

    invoke-static {v3, v7, v1, v4}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 251
    new-instance v4, Lcom/android/tools/r8/kotlin/v3;

    invoke-direct {v4, v1, v2}, Lcom/android/tools/r8/kotlin/v3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;)V

    const-string v7, "receiverParameterType"

    invoke-static {v3, v7, v1, v4}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 252
    new-instance v4, Lcom/android/tools/r8/kotlin/w3;

    invoke-direct {v4, v1, v2}, Lcom/android/tools/r8/kotlin/w3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;)V

    const-string v7, "returnType"

    invoke-static {v3, v7, v1, v4}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 253
    new-instance v4, Lcom/android/tools/r8/kotlin/x3;

    invoke-direct {v4, v1, v2}, Lcom/android/tools/r8/kotlin/x3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;)V

    const-string v7, "typeParameters"

    invoke-static {v3, v7, v1, v4}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 254
    iget-object v4, v2, Lcom/android/tools/r8/internal/vQ;->d:Lcom/android/tools/r8/internal/wQ;

    .line 255
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 256
    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget-object v6, Lcom/android/tools/r8/internal/i5;->f:Lcom/android/tools/r8/internal/Y6;

    const/4 v12, 0x4

    aget-object v13, v5, v12

    invoke-virtual {v6, v4, v13}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v13

    .line 258
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v13, Lcom/android/tools/r8/internal/i5;->Q:Lcom/android/tools/r8/internal/pu;

    const/16 v14, 0x29

    aget-object v15, v5, v14

    invoke-virtual {v13, v4, v15}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/Ax0;

    .line 260
    invoke-virtual {v7, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v15, Lcom/android/tools/r8/internal/i5;->R:Lcom/android/tools/r8/internal/pu;

    const/16 v16, 0x2a

    aget-object v14, v5, v16

    invoke-virtual {v15, v4, v14}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/HX;

    .line 262
    invoke-virtual {v7, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v14, Lcom/android/tools/r8/internal/i5;->S:Lcom/android/tools/r8/internal/Y6;

    const/16 v17, 0x2b

    aget-object v12, v5, v17

    invoke-virtual {v14, v4, v12}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v12

    .line 264
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v3, "notDefault"

    invoke-virtual {v7, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v12, Lcom/android/tools/r8/internal/i5;->T:Lcom/android/tools/r8/internal/Y6;

    const/16 v19, 0x2c

    move-object/from16 v20, v3

    aget-object v3, v5, v19

    invoke-virtual {v12, v4, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v3

    .line 266
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v3, Lcom/android/tools/r8/internal/i5;->U:Lcom/android/tools/r8/internal/Y6;

    const/16 v21, 0x2d

    move-object/from16 v22, v11

    aget-object v11, v5, v21

    invoke-virtual {v3, v4, v11}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 268
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v11, "inline"

    invoke-virtual {v7, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v4, "getterFlags"

    invoke-static {v0, v1, v7, v4}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 270
    iget-object v4, v2, Lcom/android/tools/r8/internal/vQ;->e:Lcom/android/tools/r8/internal/wQ;

    if-eqz v4, :cond_0

    .line 271
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/16 v18, 0x4

    .line 272
    aget-object v2, v5, v18

    invoke-virtual {v6, v4, v2}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 273
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x29

    .line 274
    aget-object v2, v5, v2

    invoke-virtual {v13, v4, v2}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ax0;

    .line 275
    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    aget-object v2, v5, v16

    invoke-virtual {v15, v4, v2}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/HX;

    .line 277
    invoke-virtual {v7, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    aget-object v2, v5, v17

    invoke-virtual {v14, v4, v2}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 279
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v6, v20

    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    aget-object v2, v5, v19

    invoke-virtual {v12, v4, v2}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 281
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v6, v22

    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    aget-object v2, v5, v21

    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 283
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v2, "setterFlags"

    invoke-static {v0, v1, v7, v2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 285
    :cond_0
    new-instance v0, Lcom/android/tools/r8/kotlin/y3;

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/kotlin/y3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;)V

    const-string v3, "setterParameter"

    move-object/from16 v4, p3

    invoke-static {v4, v3, v1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 286
    iget-object v0, v2, Lcom/android/tools/r8/internal/vQ;->k:Ljava/util/ArrayList;

    .line 287
    invoke-static {v4, v1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 288
    new-instance v0, Lcom/android/tools/r8/kotlin/z3;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/kotlin/z3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;)V

    const-string v3, "contextReceiverTypes"

    invoke-static {v4, v3, v1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 289
    invoke-static/range {p2 .. p2}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/CL;

    move-result-object v0

    .line 290
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "fieldSignature"

    invoke-static {v4, v3, v1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 291
    invoke-static/range {p2 .. p2}, Lcom/android/tools/r8/internal/BL;->b(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v0

    .line 292
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getterSignature"

    invoke-static {v4, v3, v1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 293
    invoke-static/range {p2 .. p2}, Lcom/android/tools/r8/internal/BL;->c(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v0

    .line 294
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "setterSignature"

    invoke-static {v4, v3, v1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 295
    invoke-static/range {p2 .. p2}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XL;->a()Lcom/android/tools/r8/internal/OL;

    move-result-object v0

    .line 296
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v3, "syntheticMethodForAnnotations"

    invoke-static {v4, v3, v1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 298
    invoke-static/range {p2 .. p2}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XL;->a()Lcom/android/tools/r8/internal/OL;

    move-result-object v0

    .line 299
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 300
    const-string v2, "syntheticMethodForDelegate"

    invoke-static {v4, v2, v1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V
    .locals 0

    .line 304
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 1

    .line 327
    new-instance v0, Lcom/android/tools/r8/kotlin/d2;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/kotlin/d2;-><init>(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p2, "versionRequirements"

    invoke-static {p0, p2, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance p3, Lcom/android/tools/r8/kotlin/g2;

    invoke-direct {p3, p1, p0}, Lcom/android/tools/r8/kotlin/g2;-><init>(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 321
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/JP;

    .line 322
    invoke-static {p1, p0, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/JP;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/BQ;Ljava/lang/String;)V
    .locals 1

    .line 315
    new-instance v0, Lcom/android/tools/r8/kotlin/G2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/G2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/BQ;)V

    const-string p1, "KmTypeParameter"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/DQ;Ljava/lang/String;)V
    .locals 1

    .line 309
    new-instance v0, Lcom/android/tools/r8/kotlin/a3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/a3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/DQ;)V

    const-string p1, "KmTypeProjection"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/EQ;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 311
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 312
    :cond_0
    new-instance v0, Lcom/android/tools/r8/kotlin/o2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/o2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/EQ;)V

    const-string p1, "KmValueParameter"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/GP;Ljava/lang/String;)V
    .locals 2

    .line 318
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/GP;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "className"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 319
    new-instance v0, Lcom/android/tools/r8/kotlin/d3;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/kotlin/d3;-><init>(Lcom/android/tools/r8/internal/GP;Ljava/lang/StringBuilder;)V

    const-string p1, "arguments"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/HQ;Ljava/lang/String;)V
    .locals 6

    .line 329
    iget v0, p1, Lcom/android/tools/r8/internal/HQ;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    .line 330
    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_0
    throw v4

    :cond_1
    const-string v0, "API_VERSION"

    goto :goto_0

    :cond_2
    const-string v0, "COMPILER_VERSION"

    goto :goto_0

    :cond_3
    const-string v0, "LANGUAGE_VERSION"

    .line 331
    :goto_0
    const-string v5, "kind"

    invoke-static {p2, v5, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 332
    iget v0, p1, Lcom/android/tools/r8/internal/HQ;->b:I

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_4

    .line 333
    const-string v0, "HIDDEN"

    goto :goto_1

    :cond_4
    throw v4

    :cond_5
    const-string v0, "ERROR"

    goto :goto_1

    :cond_6
    const-string v0, "WARNING"

    .line 334
    :goto_1
    const-string v1, "level"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 335
    iget-object v0, p1, Lcom/android/tools/r8/internal/HQ;->c:Ljava/lang/Integer;

    if-nez v0, :cond_7

    .line 336
    const-string v0, "null"

    goto :goto_2

    .line 337
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_2
    const-string v1, "errorCode"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 339
    const-string v0, "message"

    .line 340
    iget-object v1, p1, Lcom/android/tools/r8/internal/HQ;->d:Ljava/lang/String;

    .line 341
    invoke-static {p2, v0, p0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 342
    iget-object p1, p1, Lcom/android/tools/r8/internal/HQ;->e:Lcom/android/tools/r8/internal/GQ;

    const-string v0, "version"

    if-eqz p1, :cond_8

    .line 343
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/GQ;->toString()Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-static {p2, v0, p0, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_8
    invoke-static {v0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    throw v4
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/NQ$a;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/NQ$a;->c()Lcom/android/tools/r8/internal/aQ;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/NQ$b;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/NQ$b;->c()Lcom/android/tools/r8/internal/sQ;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/sQ;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/NQ$d;Ljava/lang/String;)V
    .locals 2

    .line 24
    iget-object v0, p1, Lcom/android/tools/r8/internal/NQ$d;->c:Ljava/lang/String;

    .line 25
    const-string v1, "facadeClassName"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/NQ$d;->c()Lcom/android/tools/r8/internal/sQ;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/sQ;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aQ;->k()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/eQ;Ljava/lang/String;)V
    .locals 1

    .line 157
    new-instance v0, Lcom/android/tools/r8/kotlin/Z2;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/tools/r8/kotlin/Z2;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/eQ;)V

    const-string p1, "KmConstructor"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/gQ;Ljava/lang/String;)V
    .locals 1

    .line 346
    new-instance v0, Lcom/android/tools/r8/kotlin/Y2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/Y2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/gQ;)V

    const-string p1, "KmContract"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/hQ;Ljava/lang/String;)V
    .locals 2

    .line 60
    new-instance v0, Lcom/android/tools/r8/kotlin/k2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/k2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/hQ;)V

    const-string v1, "functions"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 61
    new-instance v0, Lcom/android/tools/r8/kotlin/l2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/l2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/hQ;)V

    const-string v1, "properties"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 62
    new-instance v0, Lcom/android/tools/r8/kotlin/m2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/m2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/hQ;)V

    const-string p1, "typeAliases"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/iQ;Ljava/lang/String;)V
    .locals 1

    .line 348
    new-instance v0, Lcom/android/tools/r8/kotlin/s2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/s2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/iQ;)V

    const-string p1, "KmEffect"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;Ljava/lang/String;)V
    .locals 1

    .line 350
    new-instance v0, Lcom/android/tools/r8/kotlin/K3;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/tools/r8/kotlin/K3;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;)V

    const-string p1, "KmEffectExpression"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/oQ;Ljava/lang/String;)V
    .locals 0

    .line 306
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/oQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object p1

    .line 307
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;Ljava/lang/String;)V
    .locals 1

    .line 175
    new-instance v0, Lcom/android/tools/r8/kotlin/T2;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/tools/r8/kotlin/T2;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;)V

    const-string p1, "KmFunction"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/rQ;Ljava/lang/String;)V
    .locals 0

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/rQ;->a:Lcom/android/tools/r8/internal/pQ;

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/sQ;Ljava/lang/String;)V
    .locals 2

    .line 79
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/sQ;)Lcom/android/tools/r8/internal/WL;

    move-result-object p1

    .line 81
    iget-object p1, p1, Lcom/android/tools/r8/internal/WL;->a:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Lcom/android/tools/r8/kotlin/O2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/O2;-><init>(Ljava/lang/StringBuilder;)V

    .line 83
    const-string v1, "KmProperty"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;Ljava/lang/String;)V
    .locals 1

    .line 220
    new-instance v0, Lcom/android/tools/r8/kotlin/U2;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/tools/r8/kotlin/U2;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;)V

    const-string p1, "KmProperty"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 301
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 302
    :cond_0
    new-instance v0, Lcom/android/tools/r8/kotlin/s3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/s3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;)V

    const-string p1, "KmType"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;Ljava/lang/String;)V
    .locals 1

    .line 316
    new-instance v0, Lcom/android/tools/r8/kotlin/F3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/F3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;)V

    const-string p1, "KmTypeAlias"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/BQ;)V
    .locals 0

    .line 314
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/BQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/DQ;)V
    .locals 0

    .line 303
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/DQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/EQ;)V
    .locals 0

    .line 310
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/EQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/GP;)V
    .locals 0

    .line 308
    invoke-static {p2, p0, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Lcom/android/tools/r8/internal/GP;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/HQ;)V
    .locals 1

    .line 328
    new-instance v0, Lcom/android/tools/r8/kotlin/p2;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/kotlin/p2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/HQ;)V

    const-string p2, "KmVersionRequirement"

    invoke-static {p1, p2, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/JP;)V
    .locals 2

    .line 323
    instance-of v0, p2, Lcom/android/tools/r8/internal/JP$a;

    if-eqz v0, :cond_0

    .line 324
    check-cast p2, Lcom/android/tools/r8/internal/JP$a;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/JP$a;->a()Ljava/util/List;

    move-result-object p2

    .line 325
    new-instance v0, Lcom/android/tools/r8/kotlin/e3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/e3;-><init>(Ljava/lang/StringBuilder;)V

    const-string v1, "ArrayValue"

    invoke-static {p1, v1, p0, p2, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void

    .line 326
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/JP;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/eQ;)V
    .locals 0

    .line 156
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/eQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/iQ;)V
    .locals 0

    .line 347
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/iQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/jQ;)V
    .locals 0

    .line 349
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/pQ;)V
    .locals 0

    .line 64
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/vQ;)V
    .locals 0

    .line 154
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/yQ;)V
    .locals 0

    .line 153
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/zQ;)V
    .locals 0

    .line 72
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string p1, "  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V
    .locals 2

    .line 313
    new-instance v0, Lcom/android/tools/r8/kotlin/V1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/V1;-><init>(Ljava/lang/StringBuilder;)V

    const-string v1, "KmTypeParameter"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 320
    new-instance v0, Lcom/android/tools/r8/kotlin/K2;

    invoke-direct {v0, p3, p0, p1}, Lcom/android/tools/r8/kotlin/K2;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;)V

    const-string p1, ""

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .locals 3

    .line 42
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/GP;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GP;->a()Ljava/util/Map;

    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/kotlin/X1;

    invoke-direct {v1, p1, p0}, Lcom/android/tools/r8/kotlin/X1;-><init>(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 35
    const-string p0, "{ key: String, value: KmAnnotationArgument<?> }"

    invoke-static {p2, p0, p1, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/kotlin/Q2;

    invoke-direct {v0, p3, p0}, Lcom/android/tools/r8/kotlin/Q2;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    sget-object p3, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {v0}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 5
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yQ;->e()Lcom/android/tools/r8/internal/yQ;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/tools/r8/kotlin/n3;

    invoke-direct {v0, p3, p1, p2, p0}, Lcom/android/tools/r8/kotlin/n3;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {p3, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/BQ;Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/BQ;->c()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/kotlin/n2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/n2;-><init>(Ljava/lang/StringBuilder;)V

    .line 29
    const-string v1, "KmType"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/DQ;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/DQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/EQ;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aQ;->j()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/kotlin/c3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/c3;-><init>(Ljava/lang/StringBuilder;)V

    .line 14
    const-string v1, "KmType"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/eQ;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eQ;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/gQ;Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object p1, p1, Lcom/android/tools/r8/internal/gQ;->a:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/android/tools/r8/kotlin/N2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/N2;-><init>(Ljava/lang/StringBuilder;)V

    .line 40
    const-string v1, "KmEffect"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/hQ;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/internal/hQ;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/kotlin/Z1;

    invoke-direct {v0}, Lcom/android/tools/r8/kotlin/Z1;-><init>()V

    .line 8
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 10
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Lcom/android/tools/r8/kotlin/a2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/a2;-><init>(Ljava/lang/StringBuilder;)V

    .line 11
    const-string v1, "KmFunction"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/iQ;Ljava/lang/String;)V
    .locals 2

    .line 41
    iget-object p1, p1, Lcom/android/tools/r8/internal/iQ;->c:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/android/tools/r8/kotlin/e2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/e2;-><init>(Ljava/lang/StringBuilder;)V

    .line 43
    const-string v1, "KmEffectExpression"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/oQ;Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/oQ;->b()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "typeFlexibilityId"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/android/tools/r8/kotlin/A3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/A3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/oQ;)V

    const-string p1, "type"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pQ;->b()Lcom/android/tools/r8/internal/yQ;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vQ;->c()Lcom/android/tools/r8/internal/yQ;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yQ;->b()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/kotlin/b3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/b3;-><init>(Ljava/lang/StringBuilder;)V

    .line 20
    const-string v1, "KmTypeProjection"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zQ;->a()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/kotlin/M2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/M2;-><init>(Ljava/lang/StringBuilder;)V

    .line 31
    const-string v1, "KmAnnotation"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/GP;)V
    .locals 0

    .line 32
    invoke-static {p2, p0, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Lcom/android/tools/r8/internal/GP;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/JP;)V
    .locals 0

    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/JP;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/jQ;)V
    .locals 0

    .line 45
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/vQ;)V
    .locals 0

    .line 12
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/yQ;)V
    .locals 0

    .line 15
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V
    .locals 2

    .line 26
    new-instance v0, Lcom/android/tools/r8/kotlin/c2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/c2;-><init>(Ljava/lang/StringBuilder;)V

    const-string v1, "KmValueParameter"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/BQ;Ljava/lang/String;)V
    .locals 2

    .line 20
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/android/tools/r8/internal/tM;->b:Lcom/android/tools/r8/internal/nQ;

    .line 22
    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/BQ;->f:Ljava/util/ArrayList;

    .line 24
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/tv;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/nQ;)Lcom/android/tools/r8/internal/mQ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/CQ;

    .line 25
    check-cast p1, Lcom/android/tools/r8/internal/tM;

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/internal/tM;->a:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/android/tools/r8/kotlin/X2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/X2;-><init>(Ljava/lang/StringBuilder;)V

    .line 28
    const-string v1, "KmAnnotation"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/DQ;Ljava/lang/String;)V
    .locals 2

    .line 16
    new-instance v0, Lcom/android/tools/r8/kotlin/L2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/L2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/DQ;)V

    const-string v1, "type"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/DQ;->b()Lcom/android/tools/r8/internal/FQ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/DQ;->b()Lcom/android/tools/r8/internal/FQ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "variance"

    invoke-static {p2, v0, p0, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/EQ;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EQ;->b()Lcom/android/tools/r8/internal/yQ;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;Ljava/lang/String;)V
    .locals 0

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/aQ;->n:Lcom/android/tools/r8/internal/yQ;

    .line 4
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/gQ;Ljava/lang/String;)V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/tools/r8/kotlin/y2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/y2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/gQ;)V

    const-string p1, "effects"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/hQ;Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/internal/hQ;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/kotlin/I2;

    invoke-direct {v0}, Lcom/android/tools/r8/kotlin/I2;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 8
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Lcom/android/tools/r8/kotlin/J2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/J2;-><init>(Ljava/lang/StringBuilder;)V

    .line 9
    const-string v1, "KmProperty"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/iQ;Ljava/lang/String;)V
    .locals 6

    .line 33
    iget v0, p1, Lcom/android/tools/r8/internal/iQ;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    .line 34
    const-string v0, "RETURNS_NOT_NULL"

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    const-string v0, "CALLS"

    goto :goto_0

    :cond_2
    const-string v0, "RETURNS_CONSTANT"

    :goto_0
    const-string v5, "type"

    invoke-static {p2, v5, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 35
    iget v0, p1, Lcom/android/tools/r8/internal/iQ;->b:I

    const-string v5, "null"

    if-nez v0, :cond_3

    move-object v0, v5

    goto :goto_1

    :cond_3
    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    .line 36
    const-string v0, "AT_LEAST_ONCE"

    goto :goto_1

    :cond_4
    throw v1

    :cond_5
    const-string v0, "EXACTLY_ONCE"

    goto :goto_1

    :cond_6
    const-string v0, "AT_MOST_ONCE"

    .line 37
    :goto_1
    const-string v1, "invocationKind"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/android/tools/r8/kotlin/r2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/r2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/iQ;)V

    const-string v1, "constructorArguments"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 39
    iget-object p1, p1, Lcom/android/tools/r8/internal/iQ;->d:Lcom/android/tools/r8/internal/jQ;

    const-string v0, "conclusion"

    if-nez p1, :cond_7

    .line 40
    invoke-static {p2, v0, p0, v5}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_7
    new-instance v1, Lcom/android/tools/r8/kotlin/C2;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/kotlin/C2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;)V

    invoke-static {p2, v0, p0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/jQ;->d:Lcom/android/tools/r8/internal/yQ;

    .line 2
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pQ;->c()Lcom/android/tools/r8/internal/yQ;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vQ;->d()Lcom/android/tools/r8/internal/yQ;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-static {p1}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/yQ;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/kotlin/i2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/i2;-><init>(Ljava/lang/StringBuilder;)V

    .line 15
    const-string v1, "KmAnnotion"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;Ljava/lang/String;)V
    .locals 0

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/zQ;->e:Lcom/android/tools/r8/internal/yQ;

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/GP;)V
    .locals 0

    .line 29
    invoke-static {p2, p0, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Lcom/android/tools/r8/internal/GP;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/jQ;)V
    .locals 0

    .line 42
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/vQ;)V
    .locals 0

    .line 10
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/yQ;)V
    .locals 0

    .line 12
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V
    .locals 2

    .line 31
    new-instance v0, Lcom/android/tools/r8/kotlin/Y1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/Y1;-><init>(Ljava/lang/StringBuilder;)V

    const-string v1, "KmVersionRequirement"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/BQ;Ljava/lang/String;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/BQ;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/android/tools/r8/kotlin/I;->a(Lcom/android/tools/r8/internal/BQ;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "flags"

    invoke-static {p2, p0, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/BQ;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/BQ;->d()Lcom/android/tools/r8/internal/FQ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "variance"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/android/tools/r8/kotlin/R2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/R2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/BQ;)V

    const-string v1, "upperBounds"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 44
    new-instance v0, Lcom/android/tools/r8/kotlin/S2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/S2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/BQ;)V

    const-string p1, "extensions"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/EQ;Ljava/lang/String;)V
    .locals 4

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 26
    const-string v2, "<this>"

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v2, Lcom/android/tools/r8/internal/i5;->g:Lcom/android/tools/r8/internal/Y6;

    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-virtual {v2, p1, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "hasAnnotations"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p1}, Lcom/android/tools/r8/internal/i5;->a(Lcom/android/tools/r8/internal/EQ;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "declaresDefaultValue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v2, Lcom/android/tools/r8/internal/i5;->b0:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x34

    aget-object v3, v1, v3

    invoke-virtual {v2, p1, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "crossInline"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v2, Lcom/android/tools/r8/internal/i5;->c0:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x35

    aget-object v1, v1, v3

    invoke-virtual {v2, p1, v1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "noInline"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "flags"

    invoke-static {p2, p0, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 35
    iget-object v0, p1, Lcom/android/tools/r8/internal/EQ;->b:Ljava/lang/String;

    .line 36
    const-string v1, "name"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/android/tools/r8/kotlin/B3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/B3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/EQ;)V

    const-string v1, "type"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 38
    new-instance v0, Lcom/android/tools/r8/kotlin/C3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/C3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/EQ;)V

    const-string p1, "varargElementType"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;Ljava/lang/String;)V
    .locals 2

    .line 7
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/xL;->a:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/android/tools/r8/kotlin/L3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/L3;-><init>(Ljava/lang/StringBuilder;)V

    .line 11
    const-string v1, "KmProperty"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/gQ;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/gQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/hQ;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/hQ;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/kotlin/q3;

    invoke-direct {v0}, Lcom/android/tools/r8/kotlin/q3;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Lcom/android/tools/r8/kotlin/r3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/r3;-><init>(Ljava/lang/StringBuilder;)V

    .line 4
    const-string v1, "KmTypeAlias"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-object p1, p1, Lcom/android/tools/r8/internal/jQ;->e:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lcom/android/tools/r8/kotlin/W2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/W2;-><init>(Ljava/lang/StringBuilder;)V

    .line 48
    const-string v1, "KmEffectExpression"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pQ;->d()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;Ljava/lang/String;)V
    .locals 0

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/vQ;->f:Ljava/util/ArrayList;

    .line 6
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V
    .locals 2

    .line 15
    invoke-static {p1}, Lcom/android/tools/r8/kotlin/I;->a(Lcom/android/tools/r8/internal/yQ;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "flags"

    invoke-static {p2, p0, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 16
    iget-object v0, p1, Lcom/android/tools/r8/internal/yQ;->b:Lcom/android/tools/r8/internal/cQ;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classifier"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/android/tools/r8/kotlin/t2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/t2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;)V

    const-string v1, "arguments"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 18
    new-instance v0, Lcom/android/tools/r8/kotlin/u2;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/tools/r8/kotlin/u2;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;)V

    const-string v1, "abbreviatedType"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 19
    new-instance v0, Lcom/android/tools/r8/kotlin/v2;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/tools/r8/kotlin/v2;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;)V

    const-string v1, "outerType"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yQ;->d()Lcom/android/tools/r8/internal/oQ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v1, Lcom/android/tools/r8/kotlin/w2;

    invoke-direct {v1, p2, p0, v0}, Lcom/android/tools/r8/kotlin/w2;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/oQ;)V

    const-string v0, "flexibleTypeUpperBound"

    invoke-static {p2, v0, p0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 22
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/BL;->b(Lcom/android/tools/r8/internal/yQ;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/android/tools/r8/kotlin/x2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/x2;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;)V

    const-string p1, "annotations"

    invoke-static {p2, p1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zQ;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/yQ;)V
    .locals 0

    .line 14
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aQ;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/kotlin/o3;

    invoke-direct {v0}, Lcom/android/tools/r8/kotlin/o3;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 6
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Lcom/android/tools/r8/kotlin/p3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/p3;-><init>(Ljava/lang/StringBuilder;)V

    .line 7
    const-string v1, "KmConstructor"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static e(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/jQ;Ljava/lang/String;)V
    .locals 2

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/internal/jQ;->f:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Lcom/android/tools/r8/kotlin/j3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/j3;-><init>(Ljava/lang/StringBuilder;)V

    .line 13
    const-string v1, "KmEffectExpression"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pQ;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/vQ;->i:Lcom/android/tools/r8/internal/EQ;

    .line 2
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/EQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;Ljava/lang/String;)V
    .locals 0

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/zQ;->d:Lcom/android/tools/r8/internal/yQ;

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/yQ;)V
    .locals 0

    .line 9
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/aQ;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/aQ;->o:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Lcom/android/tools/r8/kotlin/P2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/P2;-><init>(Ljava/lang/StringBuilder;)V

    .line 3
    const-string v1, "KmType"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static f(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/pQ;Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/pQ;->e:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Lcom/android/tools/r8/kotlin/j2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/j2;-><init>(Ljava/lang/StringBuilder;)V

    .line 6
    const-string v1, "KmType"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static f(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/vQ;Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/vQ;->h:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Lcom/android/tools/r8/kotlin/E3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/E3;-><init>(Ljava/lang/StringBuilder;)V

    .line 9
    const-string v1, "KmType"

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static f(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;Ljava/lang/String;)V
    .locals 4

    .line 10
    new-instance v0, Lcom/android/tools/r8/kotlin/G3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/G3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;)V

    const-string v1, "annotations"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 11
    new-instance v0, Lcom/android/tools/r8/kotlin/H3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/H3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;)V

    const-string v1, "expandedType"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 14
    const-string v2, "<this>"

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v2, Lcom/android/tools/r8/internal/i5;->h:Lcom/android/tools/r8/internal/Y6;

    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-virtual {v2, p1, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "hasAnnotations"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v2, Lcom/android/tools/r8/internal/i5;->Z:Lcom/android/tools/r8/internal/pu;

    const/16 v3, 0x32

    aget-object v1, v1, v3

    invoke-virtual {v2, p1, v1}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ax0;

    .line 18
    const-string v2, "visibility"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "flags"

    invoke-static {p2, p0, v0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zQ;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/android/tools/r8/kotlin/I3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/I3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;)V

    const-string v1, "typeParameters"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 22
    new-instance v0, Lcom/android/tools/r8/kotlin/J3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/kotlin/J3;-><init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;)V

    const-string v1, "underlyingType"

    invoke-static {p2, v1, p0, v0}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/zQ;->g:Ljava/util/ArrayList;

    .line 24
    invoke-static {p2, p0, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    return-void
.end method
