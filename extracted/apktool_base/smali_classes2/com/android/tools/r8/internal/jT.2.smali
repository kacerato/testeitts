.class public final Lcom/android/tools/r8/internal/jT;
.super Lcom/android/tools/r8/internal/iT;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/WS;

.field public final d:Ljava/lang/StringBuilder;

.field public final e:I

.field public final f:I

.field public g:I

.field public h:Lcom/android/tools/r8/internal/dT;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/WS;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/iT;-><init>(Lcom/android/tools/r8/internal/WS;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/jT;->g:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/jT;->c:Lcom/android/tools/r8/internal/WS;

    iget v1, p1, Lcom/android/tools/r8/internal/WS;->i:I

    neg-int v1, v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/jT;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p1, Lcom/android/tools/r8/internal/WS;->k:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/android/tools/r8/internal/jT;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/tools/r8/internal/jT;->e:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dT;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/kT;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/tools/r8/internal/jT;->f:I

    return-void
.end method

.method public static e(I)Ljava/lang/String;
    .locals 1

    if-gez p0, :cond_0

    .line 2
    const-string p0, "--"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/android/tools/r8/internal/jT;->g:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(IJ[SLjava/lang/Object;)V
    .locals 0

    .line 72
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p4

    .line 73
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 74
    iget-object p4, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    const-string p5, "w:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",s:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") ordinal("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 57
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 107
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 108
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/jT;->g:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/jT;->g:I

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/iT;->a:Lcom/android/tools/r8/internal/WS;

    .line 6
    iget v2, v2, Lcom/android/tools/r8/internal/WS;->i:I

    sub-int/2addr v1, v2

    .line 7
    invoke-static {v1}, Lcom/android/tools/r8/internal/jT;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/internal/jT;->e:I

    .line 8
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/r8/internal/jT;->e:I

    .line 12
    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/tools/r8/internal/jT;->f:I

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/zq0;->b(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Ljava/util/ArrayList;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 78
    iget-object p3, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/C2;)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "methodHandle("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;Ljava/util/ArrayList;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 76
    iget-object p2, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "methodType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "item("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "str("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 94
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 95
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 96
    iget-object p2, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;Z)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 90
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 91
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 92
    iget-object p2, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/ArrayList;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 71
    iget-object p2, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Z)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "class("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 80
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 82
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 84
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 87
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y5;Ljava/lang/Object;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 114
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NB;ILjava/lang/Object;)V
    .locals 0

    .line 59
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 60
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 61
    iget-object p1, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/tools/r8/internal/jT;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NB;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 62
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 63
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 64
    iget-object p1, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/tools/r8/internal/jT;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 54
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 55
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/YV;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 98
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 99
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 100
    iget-object p2, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/YV;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 101
    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    .line 102
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 103
    iget-object p2, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/dT;)V
    .locals 3

    .line 32
    iput-object p1, p0, Lcom/android/tools/r8/internal/jT;->h:Lcom/android/tools/r8/internal/dT;

    .line 33
    sget-boolean v0, Lcom/android/tools/r8/internal/jT;->i:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/dT;->f()I

    move-result v0

    .line 34
    iget v1, p0, Lcom/android/tools/r8/internal/jT;->g:I

    .line 35
    iget-object v2, p0, Lcom/android/tools/r8/internal/iT;->a:Lcom/android/tools/r8/internal/WS;

    .line 36
    iget v2, v2, Lcom/android/tools/r8/internal/WS;->i:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/dT;->m()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 39
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/kT;->f(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/jT;->a(ILjava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/iT;->a(Lcom/android/tools/r8/internal/dT;)V

    .line 42
    iget p1, p0, Lcom/android/tools/r8/internal/jT;->g:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/tools/r8/internal/jT;->g:I

    return-void
.end method

.method public final a(Ljava/lang/Integer;Lcom/android/tools/r8/internal/N8;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 22
    iget-object v0, p2, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 23
    iget-object v1, p2, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    .line 24
    new-instance v2, Lcom/android/tools/r8/internal/M8;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/M8;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, v2, Lcom/android/tools/r8/internal/M8;->a:Lcom/android/tools/r8/graph/M2;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, v2, Lcom/android/tools/r8/internal/M8;->b:Ljava/lang/Object;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/tools/r8/internal/jT;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/LS;)V
    .locals 0

    .line 65
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 66
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/OS;)V
    .locals 0

    .line 67
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 68
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 51
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 52
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/jT;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/l1;Ljava/util/ArrayList;)V
    .locals 0

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(J)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V
    .locals 1

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Ljava/util/ArrayList;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 18
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/T10;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 5
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/tools/r8/internal/jT;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/jT;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/tools/r8/internal/jT;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/av0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jT;->h:Lcom/android/tools/r8/internal/dT;

    .line 2
    invoke-interface {v1}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/kT;->f(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Printing of instruction missing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jT;->a(Ljava/util/List;)V

    return-void
.end method

.method public final h()V
    .locals 0

    .line 1
    return-void
.end method

.method public final i()Ljava/lang/StringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/jT;->g:I

    invoke-static {v1}, Lcom/android/tools/r8/internal/jT;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/jT;->c:Lcom/android/tools/r8/internal/WS;

    iget v3, v2, Lcom/android/tools/r8/internal/WS;->i:I

    if-ge v1, v3, :cond_0

    const-string v2, "ARG"

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/jT;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jT;->i()Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/tools/r8/internal/jT;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/jT;->g:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/zf1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/zf1;-><init>(Lcom/android/tools/r8/internal/jT;)V

    invoke-interface {v2, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->c:Lcom/android/tools/r8/internal/WS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    const-string v1, "try-catch-handlers:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->c:Lcom/android/tools/r8/internal/WS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    new-instance v1, Lcom/android/tools/r8/internal/Af1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Af1;-><init>(Lcom/android/tools/r8/internal/jT;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/VS;->b:Lcom/android/tools/r8/internal/dH;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/jT;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
