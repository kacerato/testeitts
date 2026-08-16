.class public Lcom/android/tools/r8/internal/JR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/C2;

.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/ns0;

.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/C2;->A:Lcom/android/tools/r8/internal/C2;

    sput-object v0, Lcom/android/tools/r8/internal/JR;->d:Lcom/android/tools/r8/internal/C2;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ns0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/JR;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/JR;->c:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/tools/r8/internal/JR;->a:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/MR;)Lcom/android/tools/r8/internal/SA;
    .locals 10

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/RA;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/RA;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/MR;->c:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Lcom/android/tools/r8/internal/RA;->c:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/MR;->f:Ljava/util/AbstractCollection;

    .line 5
    iput-object v1, v0, Lcom/android/tools/r8/internal/RA;->f:Ljava/util/AbstractCollection;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/MR;->d:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Lcom/android/tools/r8/internal/RA;->d:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/MR;->a:Lcom/android/tools/r8/internal/C2;

    .line 9
    iput-object v1, v0, Lcom/android/tools/r8/internal/RA;->a:Lcom/android/tools/r8/internal/C2;

    .line 10
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/MR;->e:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/RA;->e:Ljava/lang/Boolean;

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/internal/MR;->b:Ljava/lang/String;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    .line 13
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/tools/r8/internal/RA;->b:Ljava/lang/String;

    .line 14
    sget-boolean p0, Lcom/android/tools/r8/internal/RA;->g:Z

    if-nez p0, :cond_1

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p0, :cond_3

    .line 15
    iget-object p0, v0, Lcom/android/tools/r8/internal/RA;->e:Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 16
    :cond_3
    :goto_1
    new-instance p0, Lcom/android/tools/r8/internal/SA;

    iget-object v4, v0, Lcom/android/tools/r8/internal/RA;->a:Lcom/android/tools/r8/internal/C2;

    iget-object v6, v0, Lcom/android/tools/r8/internal/RA;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/tools/r8/internal/RA;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/tools/r8/internal/RA;->e:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v9, v0, Lcom/android/tools/r8/internal/RA;->f:Ljava/util/AbstractCollection;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/SA;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 4

    .line 77
    sget-object v0, Lcom/android/tools/r8/internal/JR;->d:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    const-string p2, "deepEquals0"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 79
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1, v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 81
    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->b1:Lcom/android/tools/r8/graph/L2;

    .line 82
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 83
    invoke-virtual {p1, v1, v0, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 84
    const-string v0, "Ljava/util/DesugarArrays;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 85
    iget-object v1, p3, Lcom/android/tools/r8/internal/IA$a;->j:Ljava/util/IdentityHashMap;

    .line 86
    const-string v2, "retarget_method"

    invoke-virtual {p3, v1, p2, v0, v2}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 87
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 88
    iget-object v1, p3, Lcom/android/tools/r8/internal/IA$a;->t:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string p2, "getTimeZone"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 90
    const-string v0, "Ljava/util/TimeZone;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 91
    const-string v3, "Ljava/time/ZoneId;"

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 92
    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 93
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 94
    const-string v0, "Ljava/util/DesugarTimeZone;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 95
    iget-object v0, p3, Lcom/android/tools/r8/internal/IA$a;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, v0, p2, p1, v2}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :cond_0
    const-string p1, ":1.2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 97
    const-string p0, "jdk.internal.misc."

    const-string p1, "j$.sun.misc.Desugar"

    const-string p2, "sun.misc.Desugar"

    invoke-virtual {p3, p2, p0, p1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 176
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 138
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->g1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__wrapper__."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/Set;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "j$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v0, Lcom/android/tools/r8/internal/JR;->e:Z

    if-nez v0, :cond_1

    const-string v0, "java"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1, p2}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "__wrapper__."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/android/tools/r8/internal/qC;

    const-string p2, "java.nio."

    const-string v1, "j$.nio."

    invoke-direct {p1, p2, v1}, Lcom/android/tools/r8/internal/qC;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lcom/android/tools/r8/internal/qC;

    const-string v1, "java.io."

    const-string v2, "j$.io."

    invoke-direct {p2, v1, v2}, Lcom/android/tools/r8/internal/qC;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v1, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/bf0;->a(I[Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/QJ0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/QJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/IA$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/IR;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/tools/r8/internal/JR;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Convert rewriting flags"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 104
    iget-object v0, p2, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/IA;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA$a;

    move-result-object p3

    .line 105
    iget-object v0, p1, Lcom/android/tools/r8/internal/IR;->a:Lcom/android/tools/r8/internal/nC;

    .line 106
    new-instance v1, Lcom/android/tools/r8/internal/JJ0;

    invoke-direct {v1, p0, p3}, Lcom/android/tools/r8/internal/JJ0;-><init>(Lcom/android/tools/r8/internal/JR;Lcom/android/tools/r8/internal/IA$a;)V

    .line 107
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 108
    iget-object v0, p1, Lcom/android/tools/r8/internal/IR;->b:Lcom/android/tools/r8/internal/nC;

    .line 109
    new-instance v1, Lcom/android/tools/r8/internal/KJ0;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/tools/r8/internal/KJ0;-><init>(Lcom/android/tools/r8/internal/JR;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/IR;)V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 111
    iget-object v0, p1, Lcom/android/tools/r8/internal/IR;->d:Lcom/android/tools/r8/internal/nC;

    .line 112
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/LJ0;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/LJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 113
    iget-object v0, p1, Lcom/android/tools/r8/internal/IR;->e:Lcom/android/tools/r8/internal/nC;

    .line 114
    new-instance v1, Lcom/android/tools/r8/internal/MJ0;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/MJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 115
    iget-object v0, p1, Lcom/android/tools/r8/internal/IR;->g:Lcom/android/tools/r8/internal/QC;

    .line 116
    new-instance v1, Lcom/android/tools/r8/internal/NJ0;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/NJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 117
    iget-object v0, p1, Lcom/android/tools/r8/internal/IR;->h:Lcom/android/tools/r8/internal/QC;

    .line 118
    new-instance v1, Lcom/android/tools/r8/internal/OJ0;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/OJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 119
    iget-object p1, p1, Lcom/android/tools/r8/internal/IR;->c:Lcom/android/tools/r8/internal/nC;

    .line 120
    new-instance v0, Lcom/android/tools/r8/internal/PJ0;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/tools/r8/internal/PJ0;-><init>(Lcom/android/tools/r8/internal/JR;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;)V

    .line 121
    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 122
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/IA$a;->a()Lcom/android/tools/r8/internal/IA;

    move-result-object p1

    .line 123
    iget-object p2, p0, Lcom/android/tools/r8/internal/JR;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/nY;Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/iY;
    .locals 10

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/JR;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Legacy to human all API convert"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 19
    iget-object v3, p1, Lcom/android/tools/r8/internal/nY;->a:Lcom/android/tools/r8/origin/Origin;

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/internal/nY;->b:Lcom/android/tools/r8/internal/MR;

    .line 21
    invoke-static {v0}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/MR;)Lcom/android/tools/r8/internal/SA;

    move-result-object v4

    .line 22
    iget-object v0, p1, Lcom/android/tools/r8/internal/nY;->c:Lcom/android/tools/r8/internal/CF;

    .line 23
    invoke-virtual {p0, v0, p2, v3}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/CF;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;)Ljava/util/HashMap;

    move-result-object v5

    .line 24
    iget-object v0, p1, Lcom/android/tools/r8/internal/nY;->e:Lcom/android/tools/r8/internal/CF;

    .line 25
    invoke-virtual {p0, v0, p2, v3}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/CF;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;)Ljava/util/HashMap;

    move-result-object v7

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/internal/nY;->d:Lcom/android/tools/r8/internal/CF;

    .line 27
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/CF;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;)Ljava/util/HashMap;

    move-result-object v6

    .line 28
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/SA;->b()Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/V2;

    sget-object v1, Lcom/android/tools/r8/internal/JR;->d:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v2

    .line 30
    invoke-static {v2}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    const/4 v8, 0x0

    invoke-direct {v0, v2, v8}, Lcom/android/tools/r8/internal/V2;-><init>(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;)V

    .line 31
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/IA;

    if-nez v2, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v8, p2, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 33
    invoke-virtual {v2, v8, v3}, Lcom/android/tools/r8/internal/IA;->b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA$a;

    move-result-object v2

    .line 34
    iget-object v8, p2, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    .line 35
    invoke-static {p1, v8, v1, v2}, Lcom/android/tools/r8/internal/JR;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/IA$a;)V

    .line 36
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IA$a;->a()Lcom/android/tools/r8/internal/IA;

    move-result-object p1

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :goto_0
    iget-object p1, p2, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/Ef0;)V

    .line 38
    new-instance p1, Lcom/android/tools/r8/internal/iY;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/iY;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/internal/SA;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 39
    iget-object p2, p2, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iY;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iY;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iY;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/V2;

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iY;->a()Ljava/util/Map;

    move-result-object v2

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iY;->b()Ljava/util/Map;

    move-result-object v3

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iY;->c()Ljava/util/Map;

    move-result-object v4

    .line 48
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/IA;

    .line 49
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/IA;

    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    goto :goto_1

    .line 50
    :cond_2
    iget-object v7, p1, Lcom/android/tools/r8/internal/iY;->a:Lcom/android/tools/r8/origin/Origin;

    .line 51
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 52
    invoke-static {p2, v7}, Lcom/android/tools/r8/internal/IA;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA$a;

    move-result-object v8

    goto :goto_2

    .line 53
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/IA;

    invoke-virtual {v8, p2, v7}, Lcom/android/tools/r8/internal/IA;->b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA$a;

    move-result-object v8

    .line 54
    :goto_2
    invoke-static {p2, v7}, Lcom/android/tools/r8/internal/IA;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA$a;

    move-result-object v9

    .line 55
    invoke-static {p2, v7}, Lcom/android/tools/r8/internal/IA;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA$a;

    move-result-object v7

    .line 56
    invoke-static {v5, v6, v8, v9}, Lcom/android/tools/r8/internal/jY;->b(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V

    .line 57
    invoke-static {v6, v5, v8, v7}, Lcom/android/tools/r8/internal/jY;->b(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V

    .line 58
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/IA$a;->a()Lcom/android/tools/r8/internal/IA;

    move-result-object v5

    .line 59
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->k()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 60
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 61
    :cond_4
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_3
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/IA$a;->a()Lcom/android/tools/r8/internal/IA;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IA;->k()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 64
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 65
    :cond_5
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_4
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/IA$a;->a()Lcom/android/tools/r8/internal/IA;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IA;->k()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 68
    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 69
    :cond_6
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 70
    :cond_7
    iget-object p2, p0, Lcom/android/tools/r8/internal/JR;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/CF;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;)Ljava/util/HashMap;
    .locals 2

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    new-instance v1, Lcom/android/tools/r8/internal/FJ0;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/tools/r8/internal/FJ0;-><init>(Lcom/android/tools/r8/internal/JR;Ljava/util/Map;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;)Ljava/util/List;
    .locals 3

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v1, Lcom/android/tools/r8/internal/GJ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/GJ0;-><init>(Lcom/android/tools/r8/graph/L2;)V

    new-instance v2, Lcom/android/tools/r8/internal/HJ0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/HJ0;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, v2, v1}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "transferTo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 160
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.io.InputStream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object p4, p4, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    .line 162
    iget-object v0, p4, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    .line 163
    const-string v1, "Ljava/io/OutputStream;"

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 164
    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4, v1, v0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    const/4 p4, 0x1

    const/4 v0, 0x0

    .line 165
    invoke-static {p4, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p4

    .line 166
    iget-object p3, p3, Lcom/android/tools/r8/internal/IA$a;->t:Ljava/util/IdentityHashMap;

    .line 167
    invoke-virtual {p3, p1, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->K0()Lcom/android/tools/r8/graph/j1$a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 169
    invoke-static {p2, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 170
    new-instance p2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 172
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    sget-boolean p2, Lcom/android/tools/r8/internal/JR;->e:Z

    if-eqz p2, :cond_1

    .line 174
    iget-object p2, p0, Lcom/android/tools/r8/internal/JR;->c:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 175
    :cond_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Should have found a method (library specifications) for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_2
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 140
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/graph/x0;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    sget-boolean p1, Lcom/android/tools/r8/internal/JR;->e:Z

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/android/tools/r8/internal/JR;->b:Ljava/util/HashSet;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot retarget core lib member for missing class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 144
    :cond_1
    invoke-virtual {p0, p2, v0, p3, p1}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;)Ljava/util/List;

    move-result-object p1

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H0;

    .line 146
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    .line 147
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->h1()Z

    move-result p4

    if-nez p4, :cond_3

    .line 149
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 151
    iget-object p4, p3, Lcom/android/tools/r8/internal/IA$a;->k:Ljava/util/IdentityHashMap;

    .line 152
    const-string v0, "retarget_method_with_emulated_dispatch"

    invoke-virtual {p3, p4, p2, p5, v0}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 154
    iget-object p4, p3, Lcom/android/tools/r8/internal/IA$a;->j:Ljava/util/IdentityHashMap;

    .line 155
    const-string v0, "retarget_method"

    invoke-virtual {p3, p4, p2, p5, v0}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ef0;)V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/internal/JR;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const-string v1, ". "

    const-string v2, "This usually means that the compilation SDK is absent or too old."

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/internal/JR;->b:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot retarget core lib member for missing classes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/JR;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/JR;->c:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should have found a method (library specifications) for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Ljava/util/Map;)V
    .locals 1

    .line 139
    new-instance v0, Lcom/android/tools/r8/internal/EJ0;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/tools/r8/internal/EJ0;-><init>(Lcom/android/tools/r8/internal/JR;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/IA$a;)V

    invoke-interface {p4, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/hC;)V
    .locals 6

    .line 125
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/x0;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 126
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 127
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    .line 128
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/o50;

    .line 129
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/graph/x0;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    .line 130
    sget-boolean v5, Lcom/android/tools/r8/internal/JR;->e:Z

    if-nez v5, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 131
    :cond_2
    :goto_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;)Ljava/util/List;

    move-result-object v3

    .line 132
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H0;

    .line 133
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_3
    new-instance p2, Lcom/android/tools/r8/internal/DJ0;

    invoke-direct {p2, v2}, Lcom/android/tools/r8/internal/DJ0;-><init>(Ljava/util/Set;)V

    .line 135
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/E0;->i(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p2

    new-instance p5, Lcom/android/tools/r8/internal/IJ0;

    invoke-direct {p5, v1}, Lcom/android/tools/r8/internal/IJ0;-><init>(Ljava/util/Set;)V

    .line 136
    invoke-interface {p2, p5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 137
    new-instance p2, Lcom/android/tools/r8/internal/JA;

    invoke-direct {p2, p4, v1}, Lcom/android/tools/r8/internal/JA;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/IA$a;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/JA;)Lcom/android/tools/r8/internal/IA$a;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/IR;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 6

    .line 71
    iget-object v5, p3, Lcom/android/tools/r8/internal/IR;->f:Lcom/android/tools/r8/internal/hC;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/hC;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/JR;->c(Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;Ljava/lang/Integer;Lcom/android/tools/r8/internal/IR;)V
    .locals 2

    .line 100
    new-instance v0, Lcom/android/tools/r8/internal/V2;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 101
    invoke-static {p4}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object p4

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Lcom/android/tools/r8/internal/V2;-><init>(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;)V

    .line 102
    invoke-virtual {p0, p5, p2, p3}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/IR;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Ljava/util/Map;)V

    return-void
.end method
