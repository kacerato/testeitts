.class public Lcom/android/tools/r8/internal/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/c4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/m1;"
    }
.end annotation


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/profile/art/ArtProfileProvider;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/c4$a;
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/c4$a;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/c4$a;-><init>(Lcom/android/tools/r8/profile/art/ArtProfileProvider;Lcom/android/tools/r8/internal/nJ;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->h:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/j4;Lcom/android/tools/r8/internal/c4$a;)V
    .locals 1

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 24
    sget-boolean p1, Lcom/android/tools/r8/internal/c4;->b:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 25
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/i4;

    .line 26
    new-instance p1, Lcom/android/tools/r8/internal/j4;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/j4;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 27
    iget-object p2, p2, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    .line 28
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/internal/c4$a;)V
    .locals 3

    .line 59
    invoke-static {}, Lcom/android/tools/r8/internal/q4;->d()Lcom/android/tools/r8/internal/q4$a;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 62
    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    .line 63
    iput-object p0, v0, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    .line 64
    new-instance p0, Lcom/android/tools/r8/internal/L61;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/L61;-><init>(Lcom/android/tools/r8/internal/q4;)V

    .line 65
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/q4$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/q4$a;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4$a;->b()Lcom/android/tools/r8/internal/q4;

    move-result-object p0

    .line 67
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/q4;)Lcom/android/tools/r8/internal/c4$a;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Nu;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/internal/c4$a;)V
    .locals 2

    .line 70
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 72
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 74
    sget-boolean v0, Lcom/android/tools/r8/internal/c4;->b:Z

    if-nez v0, :cond_1

    .line 75
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/N61;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/N61;-><init>()V

    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 80
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/i4;

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/android/tools/r8/internal/j4;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/j4;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 83
    iget-object v1, p3, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    .line 84
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/q4;->d()Lcom/android/tools/r8/internal/q4$a;

    move-result-object p1

    .line 86
    iput-object p0, p1, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    .line 87
    new-instance p0, Lcom/android/tools/r8/internal/y61;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/y61;-><init>(Lcom/android/tools/r8/internal/q4;)V

    .line 88
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/q4$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/q4$a;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4$a;->b()Lcom/android/tools/r8/internal/q4;

    move-result-object p0

    .line 90
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/q4;)Lcom/android/tools/r8/internal/c4$a;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Nu;Lcom/android/tools/r8/internal/j4;Lcom/android/tools/r8/internal/c4$a;)V
    .locals 1

    .line 29
    iget-object p1, p1, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    new-instance p1, Lcom/android/tools/r8/internal/i4;

    .line 35
    new-instance p1, Lcom/android/tools/r8/internal/j4;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/j4;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 36
    iget-object p2, p2, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    .line 37
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 38
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/c4;->b:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/internal/r4$a;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4;->f()Lcom/android/tools/r8/internal/r4;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/r4$a;->a(Lcom/android/tools/r8/internal/r4;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/j4;Lcom/android/tools/r8/internal/c4$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/i4;

    .line 2
    iget-object p2, p2, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/j4;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/j4;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 5
    iget-object p2, p3, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    .line 6
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/internal/c4$a;)V
    .locals 2

    .line 97
    invoke-static {}, Lcom/android/tools/r8/internal/q4;->d()Lcom/android/tools/r8/internal/q4$a;

    move-result-object v0

    .line 98
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    .line 99
    iput-object p0, v0, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    .line 100
    new-instance p0, Lcom/android/tools/r8/internal/M61;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/M61;-><init>(Lcom/android/tools/r8/internal/q4;)V

    .line 101
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/q4$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/q4$a;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4$a;->b()Lcom/android/tools/r8/internal/q4;

    move-result-object p0

    .line 103
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/q4;)Lcom/android/tools/r8/internal/c4$a;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;Lcom/android/tools/r8/internal/j4;)V
    .locals 1

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/k4;->a:Lcom/android/tools/r8/internal/k4;

    .line 11
    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;->acceptClassRule(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/profile/art/ArtProfileClassRuleInfo;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;Lcom/android/tools/r8/internal/q4;)V
    .locals 1

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/q4;->b:Lcom/android/tools/r8/graph/A2;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/q4;->f()Lcom/android/tools/r8/internal/r4;

    move-result-object p1

    .line 15
    invoke-interface {p0, v0, p1}, Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;->acceptMethodRule(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfo;)V

    return-void
.end method

.method public static synthetic a(Ljava/io/OutputStreamWriter;Lcom/android/tools/r8/internal/z4;)V
    .locals 0

    .line 134
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/z4;->a(Ljava/io/OutputStreamWriter;)V

    const/16 p1, 0xa

    .line 135
    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/internal/r4$a;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4;->f()Lcom/android/tools/r8/internal/r4;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/r4$a;->a(Lcom/android/tools/r8/internal/r4;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/internal/r4$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4;->f()Lcom/android/tools/r8/internal/r4;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/r4$a;->a(Lcom/android/tools/r8/internal/r4;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/internal/r4$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4;->f()Lcom/android/tools/r8/internal/r4;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/r4$a;->a(Lcom/android/tools/r8/internal/r4;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/c4;
    .locals 1

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    instance-of v0, p2, Lcom/android/tools/r8/internal/Nu;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hz;->a()Lcom/android/tools/r8/internal/Nu;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Nu;)Lcom/android/tools/r8/internal/c4;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/G61;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/G61;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    new-instance v0, Lcom/android/tools/r8/internal/H61;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/H61;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/m1;->a(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/m1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/c4;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Nu;)Lcom/android/tools/r8/internal/c4;
    .locals 2

    .line 69
    new-instance v0, Lcom/android/tools/r8/internal/I61;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/I61;-><init>(Lcom/android/tools/r8/internal/Nu;)V

    new-instance v1, Lcom/android/tools/r8/internal/J61;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/J61;-><init>(Lcom/android/tools/r8/internal/Nu;Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p0, v0, v1}, Lcom/android/tools/r8/internal/m1;->a(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/m1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/c4;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/internal/c4;
    .locals 2

    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    instance-of v0, p2, Lcom/android/tools/r8/naming/p0;

    if-eqz v0, :cond_0

    return-object p0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 95
    sget-boolean v1, Lcom/android/tools/r8/internal/c4;->b:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 96
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/B61;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/B61;-><init>(Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;)V

    new-instance v1, Lcom/android/tools/r8/internal/C61;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/C61;-><init>(Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {p0, v0, v1}, Lcom/android/tools/r8/internal/m1;->a(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/m1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/c4;

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/l1;
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/c4$a;

    .line 18
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/c4$a;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/TextOutputStream;)V
    .locals 3

    .line 126
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 127
    invoke-interface {p1}, Lcom/android/tools/r8/TextOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/TextOutputStream;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    new-instance p1, Lcom/android/tools/r8/internal/K61;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/K61;-><init>(Ljava/io/OutputStreamWriter;)V

    .line 129
    iget-object v1, p0, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/z4;

    .line 130
    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 131
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    .line 132
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 133
    :goto_3
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/A61;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/A61;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/j4;Lcom/android/tools/r8/internal/c4$a;)V
    .locals 2

    .line 39
    iget-object v0, p2, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 43
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz p1, :cond_1

    .line 45
    instance-of v1, p1, Lcom/android/tools/r8/internal/pb0;

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pb0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/i4;

    .line 48
    iget-object p1, p2, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    .line 49
    new-instance p2, Lcom/android/tools/r8/internal/j4;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/j4;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 50
    iget-object p3, p3, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    .line 51
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/internal/c4$a;)V
    .locals 3

    .line 104
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->m0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/v2;->b(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz p1, :cond_1

    .line 111
    instance-of v1, p1, Lcom/android/tools/r8/internal/pb0;

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pb0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/q4;->d()Lcom/android/tools/r8/internal/q4$a;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 115
    iput-object v0, p1, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    .line 116
    new-instance v0, Lcom/android/tools/r8/internal/z61;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/z61;-><init>(Lcom/android/tools/r8/internal/q4;)V

    .line 117
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/q4$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/q4$a;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/q4$a;->b()Lcom/android/tools/r8/internal/q4;

    move-result-object p1

    .line 119
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/q4;)Lcom/android/tools/r8/internal/c4$a;

    :cond_1
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Exception;",
            "E2:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/tools/r8/internal/Wr0<",
            "-",
            "Lcom/android/tools/r8/internal/j4;",
            "TE1;>;",
            "Lcom/android/tools/r8/internal/Wr0<",
            "-",
            "Lcom/android/tools/r8/internal/q4;",
            "TE2;>;)V^TE1;^TE2;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/z4;

    .line 54
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/z4;->a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/profile/art/ArtProfileConsumer;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 121
    invoke-interface {p1}, Lcom/android/tools/r8/profile/art/ArtProfileConsumer;->getHumanReadableArtProfileConsumer()Lcom/android/tools/r8/TextOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/TextOutputStream;)V

    .line 123
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/profile/art/ArtProfileConsumer;->getRuleConsumer()Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;)V

    .line 125
    :cond_1
    invoke-interface {p1, p2}, Lcom/android/tools/r8/profile/art/ArtProfileConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;)V
    .locals 2

    .line 136
    new-instance v0, Lcom/android/tools/r8/internal/x61;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/x61;-><init>(Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;)V

    new-instance v1, Lcom/android/tools/r8/internal/F61;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/F61;-><init>(Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/c4;
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/D61;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/D61;-><init>(Lcom/android/tools/r8/internal/c4;Lcom/android/tools/r8/graph/h;)V

    new-instance v1, Lcom/android/tools/r8/internal/E61;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/E61;-><init>(Lcom/android/tools/r8/internal/c4;Lcom/android/tools/r8/graph/h;)V

    invoke-interface {p0, v0, v1}, Lcom/android/tools/r8/internal/m1;->a(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/m1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/c4;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/q1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/q4;

    return-object p1
.end method
