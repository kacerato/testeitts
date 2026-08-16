.class public final Lcom/android/tools/r8/internal/kg;
.super Lcom/android/tools/r8/internal/H9;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/zF;

.field public final d:Ljava/util/ArrayDeque;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/zF;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zF;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/tools/r8/internal/kg;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/internal/H9;-><init>()V

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/tools/r8/internal/I9;->a(Lcom/android/tools/r8/internal/jG;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    .line 6
    iput p3, p0, Lcom/android/tools/r8/internal/kg;->e:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/d9;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 90
    invoke-interface {p5}, Lcom/android/tools/r8/internal/jy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 92
    invoke-virtual {p1, p0, p2}, Lcom/android/tools/r8/internal/d9;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 93
    invoke-interface {p3, p4, p5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/H9;

    return-object p0

    .line 94
    :cond_0
    invoke-static {p2}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object p0

    const/4 p1, 0x2

    .line 95
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 96
    invoke-static {p1, p5}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p1

    .line 97
    const-string p2, "on stack"

    invoke-static {p1, p0, p2}, Lcom/android/tools/r8/internal/H9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hv;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/hv;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot join stacks, expected frame types at stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to join to a precise (non-top) type, but types "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " do not"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/hv;
    .locals 2

    const/4 v0, 0x1

    .line 5
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected attempt to initialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/hv;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(ILcom/android/tools/r8/internal/G9$a;)V
    .locals 1

    .line 169
    sget-boolean v0, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p1, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 171
    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/DF;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 173
    :cond_1
    :goto_0
    sget v0, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/G9$a;->a(ILcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    return-void
.end method

.method public static a(ILcom/android/tools/r8/internal/Gx0;Lcom/android/tools/r8/internal/v30;)V
    .locals 2

    .line 151
    sget-boolean v0, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 152
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/EF;

    .line 153
    invoke-interface {p2}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v1

    if-nez v0, :cond_3

    add-int/lit8 p0, p0, 0x1

    if-ne v1, p0, :cond_2

    goto :goto_1

    .line 154
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 155
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/jy;

    if-nez v0, :cond_5

    .line 156
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Gx0;->I()Lcom/android/tools/r8/internal/Gx0;

    move-result-object p1

    if-ne p0, p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/v30;Lcom/android/tools/r8/internal/EF;Lcom/android/tools/r8/internal/G9$a;Ljava/util/function/UnaryOperator;)V
    .locals 3

    .line 157
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v0

    .line 158
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jy;

    .line 159
    sget-boolean v1, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->r()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 160
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->e()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/Gx0;Lcom/android/tools/r8/internal/v30;)V

    .line 162
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/jy;

    if-nez v1, :cond_4

    .line 163
    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result p3

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result p1

    if-ne p3, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 164
    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->f()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 165
    :cond_5
    invoke-virtual {p2, v0, p0}, Lcom/android/tools/r8/internal/G9$a;->a(ILcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    return-void

    .line 166
    :cond_6
    :goto_2
    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 167
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/G9$a;)V

    return-void

    .line 168
    :cond_7
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/kg;->b(ILcom/android/tools/r8/internal/G9$a;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 8
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->F()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 9
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->p()Lcom/android/tools/r8/internal/CD;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    goto :goto_1

    .line 14
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->b()Lcom/android/tools/r8/internal/DD;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    return-object p0

    .line 18
    :cond_5
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p0

    .line 19
    const-string p1, "on stack"

    const-string v0, "an array type"

    invoke-static {p0, v0, p1}, Lcom/android/tools/r8/internal/H9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hv;

    move-result-object p0

    return-object p0
.end method

.method public static b(ILcom/android/tools/r8/internal/G9$a;)V
    .locals 2

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez v0, :cond_1

    .line 25
    iget-object v1, p1, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 26
    invoke-interface {v1, p0}, Lcom/android/tools/r8/internal/DF;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    add-int/lit8 v0, p0, 0x1

    .line 28
    iget-object v1, p1, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 29
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/DF;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 31
    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/G9$a;)V

    add-int/lit8 p0, p0, 0x1

    .line 32
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/G9$a;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 137
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->n()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    add-int/2addr v0, p1

    .line 138
    invoke-interface {p3}, Lcom/android/tools/r8/internal/O8;->d()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The max locals of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-interface {p3}, Lcom/android/tools/r8/internal/O8;->d()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string p3, " is violated when storing "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    .line 142
    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, " at local index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->n()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 147
    const-string p2, " and "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance p2, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 150
    :cond_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/I9;->a(ILcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/zF;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 63
    new-instance v0, Lcom/android/tools/r8/internal/nh1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/nh1;-><init>(Lcom/android/tools/r8/internal/kg;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/O8;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kg;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 64
    invoke-interface {p4}, Lcom/android/tools/r8/internal/jy;->t()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 65
    invoke-interface {p4}, Lcom/android/tools/r8/internal/jy;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/tools/r8/internal/O8;->c()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/O8;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    :cond_0
    invoke-interface {p4}, Lcom/android/tools/r8/internal/jy;->s()Lcom/android/tools/r8/internal/gv0;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/O8;->c()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 69
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1

    .line 70
    :cond_1
    invoke-interface {p4}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {p4}, Lcom/android/tools/r8/internal/jy;->j()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 73
    invoke-interface {p4}, Lcom/android/tools/r8/internal/jy;->z()Lcom/android/tools/r8/internal/ev0;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1

    .line 74
    :cond_2
    sget-boolean p3, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez p3, :cond_4

    invoke-interface {p4}, Lcom/android/tools/r8/internal/jy;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 75
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructor mismatch, expected constructor from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-interface {p4}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 77
    invoke-interface {p4}, Lcom/android/tools/r8/internal/jy;->j()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-nez p2, :cond_5

    .line 78
    const-string p2, "null"

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    if-nez p3, :cond_8

    .line 79
    invoke-interface {p4}, Lcom/android/tools/r8/internal/jy;->i()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_8
    :goto_2
    invoke-interface {p2}, Lcom/android/tools/r8/internal/O8;->c()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string p2, " or its superclass"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :goto_3
    const-string p2, ", but was "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 83
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/graph/A2;->a(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    new-instance p2, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 87
    :cond_9
    invoke-static {p4}, Lcom/android/tools/r8/internal/kg;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/hv;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/O8;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 88
    invoke-interface {p3}, Lcom/android/tools/r8/internal/O8;->e()Lcom/android/tools/r8/internal/d9;

    move-result-object p3

    .line 89
    new-instance v0, Lcom/android/tools/r8/internal/mh1;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/android/tools/r8/internal/mh1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/d9;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kg;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;ILcom/android/tools/r8/internal/Kw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/zF;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jy;

    if-nez v0, :cond_0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected read of missing local at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance p2, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 128
    :cond_0
    invoke-interface {v0}, Lcom/android/tools/r8/internal/jy;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-interface {p2}, Lcom/android/tools/r8/internal/O8;->e()Lcom/android/tools/r8/internal/d9;

    move-result-object p2

    .line 130
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 131
    iget-object v1, p2, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    .line 132
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/d9;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    invoke-interface {p5, p0, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/H9;

    return-object p1

    .line 134
    :cond_1
    invoke-interface {v0}, Lcom/android/tools/r8/internal/jy;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 135
    invoke-interface {p5, p0, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/H9;

    return-object p1

    .line 136
    :cond_2
    invoke-static {v0, p4, p3}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/Kw0;I)Lcom/android/tools/r8/internal/hv;

    move-result-object p1

    return-object p1
.end method

.method public final varargs a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
    .locals 3

    .line 98
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    move-object v1, p0

    :goto_0
    if-ltz v0, :cond_0

    .line 99
    aget-object v2, p3, v0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/Da;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
    .locals 4

    .line 117
    new-instance v0, Lcom/android/tools/r8/internal/zF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    .line 118
    iget-object v2, v1, Lcom/android/tools/r8/internal/zF;->j:Lcom/android/tools/r8/internal/gI;

    .line 119
    invoke-direct {v0}, Lcom/android/tools/r8/internal/zF;-><init>()V

    .line 120
    iput-object v2, v0, Lcom/android/tools/r8/internal/zF;->j:Lcom/android/tools/r8/internal/gI;

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/N;->putAll(Ljava/util/Map;)V

    .line 122
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 123
    new-instance v2, Lcom/android/tools/r8/internal/kg;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/android/tools/r8/internal/kg;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;I)V

    .line 124
    invoke-static {p2}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/android/tools/r8/internal/kg;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 100
    invoke-static {p2}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/kg;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;
    .locals 4

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    .line 9
    iput-object v1, v0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    .line 11
    iput-object v1, v0, Lcom/android/tools/r8/internal/G9$a;->b:Ljava/util/Deque;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v0

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/internal/O8;->e()Lcom/android/tools/r8/internal/d9;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v2, v0, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    iget-object v3, p2, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/d9;->a(Lcom/android/tools/r8/internal/jG;Lcom/android/tools/r8/internal/jG;)Lcom/android/tools/r8/internal/a9;

    move-result-object v2

    .line 16
    instance-of v3, v2, Lcom/android/tools/r8/internal/c9;

    if-eqz v3, :cond_0

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    iget-object v2, p2, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/d9;->a(Ljava/util/Deque;Ljava/util/Deque;)Lcom/android/tools/r8/internal/a9;

    move-result-object v2

    .line 19
    :cond_0
    instance-of v0, v2, Lcom/android/tools/r8/internal/b9;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/a9;->a()Lcom/android/tools/r8/internal/b9;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/b9;->a:Ljava/lang/String;

    .line 22
    new-instance p2, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 23
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/O8;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    .line 24
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/G9;->X()Lcom/android/tools/r8/internal/G9;

    move-result-object p1

    .line 25
    new-instance p2, Lcom/android/tools/r8/internal/kg;

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    instance-of v0, v0, Lcom/android/tools/r8/internal/zF;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    check-cast v0, Lcom/android/tools/r8/internal/zF;

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/G9;->W()Ljava/util/ArrayDeque;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/r8/internal/kg;->e:I

    invoke-direct {p2, v0, p1, v1}, Lcom/android/tools/r8/internal/kg;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;I)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 112
    iget v0, p0, Lcom/android/tools/r8/internal/kg;->e:I

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->v()I

    move-result v1

    add-int/2addr v1, v0

    .line 113
    invoke-interface {p1}, Lcom/android/tools/r8/internal/O8;->a()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/kg;->b(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/hv;

    move-result-object p1

    return-object p1

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 116
    iput v1, p0, Lcom/android/tools/r8/internal/kg;->e:I

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 101
    sget v0, Lcom/android/tools/r8/internal/jy;->a:I

    .line 102
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object p2

    .line 104
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/D70;->D()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/jy;->a(C)Lcom/android/tools/r8/internal/z70;

    move-result-object p2

    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p2

    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    instance-of v0, p2, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_1

    .line 108
    sget-object p2, Lcom/android/tools/r8/internal/m10;->c:Lcom/android/tools/r8/internal/m10;

    goto :goto_1

    .line 109
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/iy;->a:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 110
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/CD;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/CD;-><init>(Lcom/android/tools/r8/internal/ae0;)V

    move-object p2, v0

    .line 111
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/kg;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
    .locals 4

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zF;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jF;

    .line 31
    new-instance v1, Lcom/android/tools/r8/internal/mF;

    .line 32
    iget-object v0, v0, Lcom/android/tools/r8/internal/jF;->c:Lcom/android/tools/r8/internal/zF;

    .line 33
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/mF;-><init>(Lcom/android/tools/r8/internal/zF;)V

    .line 34
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xF;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xF;->a()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jy;

    .line 37
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->E()Lcom/android/tools/r8/internal/bv0;

    move-result-object v2

    .line 39
    invoke-static {p1, v2, p2}, Lcom/android/tools/r8/internal/G9;->a(Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/S60;

    move-result-object v2

    .line 40
    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/S60;

    .line 43
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->t()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->E()Lcom/android/tools/r8/internal/bv0;

    move-result-object v2

    .line 45
    invoke-static {p1, v2, p2}, Lcom/android/tools/r8/internal/G9;->a(Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/S60;

    move-result-object v2

    .line 46
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/kg;

    iget-object p2, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    iget v1, p0, Lcom/android/tools/r8/internal/kg;->e:I

    invoke-direct {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/kg;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;I)V

    return-object p1
.end method

.method public final a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance p1, Lcom/android/tools/r8/internal/hv;

    const-string v0, "Unexpected pop from empty stack"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/S60;

    .line 61
    iget v1, p0, Lcom/android/tools/r8/internal/kg;->e:I

    invoke-interface {v0}, Lcom/android/tools/r8/internal/jy;->v()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/kg;->e:I

    .line 62
    invoke-interface {p1, p0, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/H9;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayDeque;Lcom/android/tools/r8/internal/G9$a;)Lcom/android/tools/r8/internal/hv;
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 175
    invoke-interface {p2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    .line 176
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/S60;

    .line 178
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/S60;

    .line 179
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result v4

    invoke-interface {v3}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 p1, 0x1

    .line 180
    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p2

    .line 181
    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p1

    .line 182
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot join stacks, expected frame types at stack index "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to have the same width, but was: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance p2, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 184
    :cond_0
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->x()Lcom/android/tools/r8/internal/Gm0;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/tools/r8/internal/jy;->x()Lcom/android/tools/r8/internal/Gm0;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lcom/android/tools/r8/internal/Gm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Gm0;)Lcom/android/tools/r8/internal/Gm0;

    move-result-object v4

    .line 186
    move-object v5, v4

    check-cast v5, Lcom/android/tools/r8/internal/O5;

    .line 187
    instance-of v5, v5, Lcom/android/tools/r8/internal/e40;

    if-eqz v5, :cond_1

    .line 188
    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/hv;

    move-result-object p1

    return-object p1

    .line 189
    :cond_1
    sget-boolean v2, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez v2, :cond_3

    invoke-interface {v4}, Lcom/android/tools/r8/internal/jy;->D()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 190
    :cond_3
    :goto_1
    invoke-interface {v4}, Lcom/android/tools/r8/internal/jy;->k()Lcom/android/tools/r8/internal/S60;

    move-result-object v2

    goto :goto_3

    .line 191
    :cond_4
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->u()Lcom/android/tools/r8/internal/Fx0;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/tools/r8/internal/jy;->u()Lcom/android/tools/r8/internal/Fx0;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/Fx0;->a(Lcom/android/tools/r8/internal/Fx0;)Lcom/android/tools/r8/internal/Fx0;

    move-result-object v4

    .line 192
    move-object v5, v4

    check-cast v5, Lcom/android/tools/r8/internal/O5;

    .line 193
    instance-of v5, v5, Lcom/android/tools/r8/internal/qt0;

    if-eqz v5, :cond_5

    .line 194
    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/hv;

    move-result-object p1

    return-object p1

    .line 195
    :cond_5
    sget-boolean v2, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez v2, :cond_7

    invoke-interface {v4}, Lcom/android/tools/r8/internal/jy;->D()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 196
    :cond_7
    :goto_2
    invoke-interface {v4}, Lcom/android/tools/r8/internal/jy;->k()Lcom/android/tools/r8/internal/S60;

    move-result-object v2

    .line 197
    :goto_3
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/G9$a;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 198
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_a
    :goto_4
    new-instance p1, Lcom/android/tools/r8/internal/hv;

    const-string p2, "Cannot join stacks of different size"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(ILjava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 52
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/S60;

    invoke-virtual {p3, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez p1, :cond_3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->P:Z

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

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object p2, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/S60;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 50
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->P:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/O8;->e()Lcom/android/tools/r8/internal/d9;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    .line 2
    iget-object p2, p2, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 3
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/d9;->a(Lcom/android/tools/r8/internal/jG;Lcom/android/tools/r8/internal/jG;)Lcom/android/tools/r8/internal/a9;

    move-result-object p1

    .line 4
    instance-of p2, p1, Lcom/android/tools/r8/internal/b9;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/a9;->a()Lcom/android/tools/r8/internal/b9;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/b9;->a:Ljava/lang/String;

    .line 7
    new-instance p2, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/hv;
    .locals 3

    .line 20
    invoke-interface {p1}, Lcom/android/tools/r8/internal/O8;->a()I

    move-result p1

    const/4 v0, 0x1

    .line 21
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p2

    .line 22
    iget v0, p0, Lcom/android/tools/r8/internal/kg;->e:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The max stack height of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is violated when pushing "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to existing stack of size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p2, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public final c(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/O8;->e()Lcom/android/tools/r8/internal/d9;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    iget-object p2, p2, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/d9;->a(Ljava/util/Deque;Ljava/util/Deque;)Lcom/android/tools/r8/internal/a9;

    move-result-object p1

    instance-of p2, p1, Lcom/android/tools/r8/internal/b9;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/a9;->a()Lcom/android/tools/r8/internal/b9;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/b9;->a:Ljava/lang/String;

    new-instance p2, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public final clone()Lcom/android/tools/r8/internal/D1;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/kg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zF;->clone()Lcom/android/tools/r8/internal/zF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/r8/internal/kg;->e:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/kg;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;I)V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/kg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zF;->clone()Lcom/android/tools/r8/internal/zF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/r8/internal/kg;->e:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/kg;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;I)V

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/kg;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/kg;

    if-eq v3, v2, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/kg;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    iget-object v3, p1, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/N;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/V30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/2addr p1, v0

    :goto_1
    if-eqz p1, :cond_6

    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final f()Lcom/android/tools/r8/internal/H9;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/q7;->c:Lcom/android/tools/r8/internal/q7;

    return-object v0
.end method

.method public final g()Lcom/android/tools/r8/internal/H9;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/lh1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lh1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kg;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
