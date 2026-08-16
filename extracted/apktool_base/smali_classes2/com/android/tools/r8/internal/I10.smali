.class public final Lcom/android/tools/r8/internal/I10;
.super Lcom/android/tools/r8/internal/E10;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public e:Lcom/android/tools/r8/internal/nC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/E10;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/I10;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/I10;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aA;->keySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/I10;->c:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/DW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/DW;)Lcom/android/tools/r8/internal/DW;
    .locals 3

    .line 37
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result p1

    if-nez p1, :cond_9

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_3

    .line 39
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/DW;->d:Lcom/android/tools/r8/internal/DW;

    if-ne p2, p1, :cond_1

    return-object p0

    :cond_1
    if-ne p0, p1, :cond_2

    return-object p2

    .line 40
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/DW;->e:Z

    if-nez p1, :cond_4

    iget-object p1, p2, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    array-length p1, p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    array-length v0, v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 41
    :cond_4
    :goto_0
    iget-object p1, p2, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    array-length p1, p1

    new-array p1, p1, [Lcom/android/tools/r8/internal/yw0;

    const/4 v0, 0x0

    .line 42
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 43
    aget-object v1, v1, v0

    iget-object v2, p2, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/yw0;->a(Lcom/android/tools/r8/internal/yw0;)Lcom/android/tools/r8/internal/yw0;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_5
    iget-object p2, p2, Lcom/android/tools/r8/internal/DW;->a:Lcom/android/tools/r8/internal/yw0;

    iget-object p0, p0, Lcom/android/tools/r8/internal/DW;->a:Lcom/android/tools/r8/internal/yw0;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/yw0;->a(Lcom/android/tools/r8/internal/yw0;)Lcom/android/tools/r8/internal/yw0;

    move-result-object p0

    .line 45
    sget-boolean p2, Lcom/android/tools/r8/internal/DW;->e:Z

    if-nez p2, :cond_7

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 46
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    .line 47
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 48
    sget-object p0, Lcom/android/tools/r8/internal/DW;->c:Lcom/android/tools/r8/internal/DW;

    return-object p0

    .line 49
    :cond_8
    new-instance p2, Lcom/android/tools/r8/internal/DW;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/DW;-><init>(Lcom/android/tools/r8/internal/yw0;[Lcom/android/tools/r8/internal/yw0;)V

    return-object p2

    .line 50
    :cond_9
    :goto_3
    sget-object p0, Lcom/android/tools/r8/internal/DW;->c:Lcom/android/tools/r8/internal/DW;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/F2;)Ljava/util/List;
    .locals 0

    .line 70
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/internal/kC;)V
    .locals 1

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/yI0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/yI0;-><init>(Lcom/android/tools/r8/internal/kC;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/yw0;
    .locals 6

    .line 132
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 133
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/tools/r8/internal/I10;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 135
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/android/tools/r8/internal/I10;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 137
    iget-object v1, p0, Lcom/android/tools/r8/internal/I10;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 138
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    const/4 v2, 0x7

    if-nez v1, :cond_b

    .line 139
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 141
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p2

    xor-int/2addr p2, v5

    invoke-static {p2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p2

    .line 142
    new-instance v0, Lcom/android/tools/r8/internal/Ss0;

    .line 143
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v1

    sub-int/2addr v1, p2

    .line 145
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 146
    iget-object p2, p0, Lcom/android/tools/r8/internal/I10;->e:Lcom/android/tools/r8/internal/nC;

    .line 147
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object p1, p2

    .line 148
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 149
    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Ss0;-><init>(ILcom/android/tools/r8/graph/A2;)V

    .line 150
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    .line 151
    sget p2, Lcom/android/tools/r8/internal/EC;->e:I

    .line 152
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    .line 153
    new-instance v0, Lcom/android/tools/r8/internal/nS;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nS;-><init>()V

    .line 154
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 156
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    sget-object p2, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {p2}, Lcom/android/tools/r8/internal/df0;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/EC;

    move-result-object p2

    .line 159
    :goto_0
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    return-object p1

    .line 160
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/yw0;

    invoke-direct {p1, v4, p2}, Lcom/android/tools/r8/internal/yw0;-><init>(ILcom/android/tools/r8/internal/EC;)V

    return-object p1

    .line 161
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 162
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 163
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 164
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    .line 165
    sget p2, Lcom/android/tools/r8/internal/EC;->e:I

    .line 166
    sget-object p2, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    .line 167
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    return-object p1

    .line 168
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/yw0;

    invoke-direct {p1, v5, p2}, Lcom/android/tools/r8/internal/yw0;-><init>(ILcom/android/tools/r8/internal/EC;)V

    return-object p1

    .line 169
    :cond_5
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    .line 170
    sget p2, Lcom/android/tools/r8/internal/EC;->e:I

    .line 171
    sget-object p2, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    .line 172
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v2, :cond_6

    return-object p1

    .line 173
    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/yw0;

    invoke-direct {p1, v4, p2}, Lcom/android/tools/r8/internal/yw0;-><init>(ILcom/android/tools/r8/internal/EC;)V

    return-object p1

    .line 174
    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    .line 176
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 177
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 179
    new-instance p2, Lcom/android/tools/r8/internal/Us0;

    .line 180
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 181
    iget-object v0, p0, Lcom/android/tools/r8/internal/I10;->e:Lcom/android/tools/r8/internal/nC;

    .line 182
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object p1, v0

    .line 183
    :cond_8
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 184
    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Us0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 185
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    .line 186
    sget v0, Lcom/android/tools/r8/internal/EC;->e:I

    .line 187
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 188
    new-instance v0, Lcom/android/tools/r8/internal/nS;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nS;-><init>()V

    .line 189
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 191
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 192
    sget-object p2, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    goto :goto_1

    .line 193
    :cond_9
    invoke-static {p2}, Lcom/android/tools/r8/internal/df0;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/EC;

    move-result-object p2

    .line 194
    :goto_1
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v2, :cond_a

    return-object p1

    .line 195
    :cond_a
    new-instance p1, Lcom/android/tools/r8/internal/yw0;

    invoke-direct {p1, v4, p2}, Lcom/android/tools/r8/internal/yw0;-><init>(ILcom/android/tools/r8/internal/EC;)V

    return-object p1

    .line 196
    :cond_b
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 197
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    return-object p1

    .line 198
    :cond_c
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    .line 199
    sget p2, Lcom/android/tools/r8/internal/EC;->e:I

    .line 200
    sget-object p2, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    .line 201
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v2, :cond_d

    return-object p1

    .line 202
    :cond_d
    new-instance p1, Lcom/android/tools/r8/internal/yw0;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/internal/yw0;-><init>(ILcom/android/tools/r8/internal/EC;)V

    return-object p1

    .line 203
    :cond_e
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/yw0;
    .locals 7

    .line 204
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/tools/r8/internal/I10;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/tools/r8/internal/I10;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/u1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v1

    .line 210
    sget-object v2, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    .line 211
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 212
    invoke-static {v2, p1, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 213
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 214
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->r1()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 216
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const/4 v2, -0x1

    .line 217
    :cond_5
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    .line 218
    sget v0, Lcom/android/tools/r8/internal/EC;->e:I

    .line 219
    sget-object v0, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    .line 220
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v3, 0x7

    if-le v1, v3, :cond_6

    return-object p1

    .line 221
    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/yw0;

    invoke-direct {p1, v2, v0}, Lcom/android/tools/r8/internal/yw0;-><init>(ILcom/android/tools/r8/internal/EC;)V

    return-object p1

    .line 222
    :cond_7
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    return-object p1
.end method

.method public final a(Ljava/util/Set;)Ljava/util/IdentityHashMap;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H2;->M1()Lcom/android/tools/r8/internal/sK;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v2, v2, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v2

    .line 5
    :goto_0
    iget-object v3, v2, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, v2, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Lcom/android/tools/r8/graph/H5;

    .line 8
    new-instance v4, Lcom/android/tools/r8/internal/vI0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/vI0;-><init>()V

    .line 9
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v5

    .line 10
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Ljava/util/List;

    .line 12
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H2;->E1()Lcom/android/tools/r8/internal/sK;

    move-result-object v1

    .line 14
    iget-object v2, v1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v1

    .line 15
    :cond_2
    :goto_1
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 18
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/I10;->b(Lcom/android/tools/r8/graph/H5;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    iget-object v3, p0, Lcom/android/tools/r8/internal/I10;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/DW;->d:Lcom/android/tools/r8/internal/DW;

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_3
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 21
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_6

    .line 24
    new-instance v2, Lcom/android/tools/r8/internal/wI0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/wI0;-><init>(Lcom/android/tools/r8/internal/I10;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/android/tools/r8/internal/xI0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/xI0;-><init>()V

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 26
    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    .line 27
    new-instance v2, Lcom/android/tools/r8/internal/hH0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/hH0;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 28
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 29
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_5

    .line 30
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 31
    invoke-virtual {p1, v3, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 32
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/I10;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget-object v3, Lcom/android/tools/r8/internal/DW;->d:Lcom/android/tools/r8/internal/DW;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 33
    :cond_6
    sget-boolean v2, Lcom/android/tools/r8/internal/I10;->f:Z

    if-nez v2, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_8
    :goto_4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/I10;->b(Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v2

    if-nez v2, :cond_4

    .line 36
    iget-object v2, p0, Lcom/android/tools/r8/internal/I10;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    sget-object v3, Lcom/android/tools/r8/internal/DW;->d:Lcom/android/tools/r8/internal/DW;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/yw0;[Lcom/android/tools/r8/internal/yw0;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 73
    iget-object v1, p0, Lcom/android/tools/r8/internal/I10;->e:Lcom/android/tools/r8/internal/nC;

    .line 74
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 75
    :cond_0
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    if-nez p3, :cond_2

    if-eqz p2, :cond_1

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/I10;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 78
    sget-object p2, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    :cond_3
    if-nez p3, :cond_4

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p1

    sget-object p3, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    .line 80
    new-array p1, p1, [Lcom/android/tools/r8/internal/yw0;

    .line 81
    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p3, p1

    .line 82
    :cond_4
    sget-boolean p1, Lcom/android/tools/r8/internal/DW;->e:Z

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 83
    :cond_6
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    .line 84
    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 85
    sget-object p1, Lcom/android/tools/r8/internal/DW;->c:Lcom/android/tools/r8/internal/DW;

    goto :goto_1

    .line 86
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/DW;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/DW;-><init>(Lcom/android/tools/r8/internal/yw0;[Lcom/android/tools/r8/internal/yw0;)V

    .line 87
    :goto_1
    sget-boolean p2, Lcom/android/tools/r8/internal/I10;->f:Z

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 88
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/I10;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p3, Lcom/android/tools/r8/internal/zI0;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/internal/zI0;-><init>(Lcom/android/tools/r8/internal/DW;)V

    .line 89
    invoke-virtual {p2, v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/DW;

    if-eqz p1, :cond_a

    .line 90
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 91
    iget-object p1, p0, Lcom/android/tools/r8/internal/I10;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 5

    .line 224
    new-instance v0, Lcom/android/tools/r8/internal/H10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/I10;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/H10;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 225
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H10;->d()Ljava/util/IdentityHashMap;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/O10;

    iget-object v2, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/I10;->e:Lcom/android/tools/r8/internal/nC;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/tools/r8/internal/O10;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/nC;)V

    .line 228
    new-instance v0, Lcom/android/tools/r8/internal/Fg;

    iget-object v2, v1, Lcom/android/tools/r8/internal/O10;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/Fg;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Eg;)V

    .line 229
    invoke-virtual {v0, p3, p2}, Lcom/android/tools/r8/internal/Fg;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 230
    iget-object v0, v1, Lcom/android/tools/r8/internal/O10;->d:Lcom/android/tools/r8/internal/J10;

    iget-object v1, v1, Lcom/android/tools/r8/internal/O10;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/N10;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/N10;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    new-instance v3, Lcom/android/tools/r8/internal/K10;

    iget-object v4, v0, Lcom/android/tools/r8/internal/J10;->b:Lcom/android/tools/r8/internal/r6;

    iget-object v0, v0, Lcom/android/tools/r8/internal/J10;->a:Ljava/util/IdentityHashMap;

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/android/tools/r8/internal/K10;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/r6;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/N10;)V

    .line 232
    iget-object v0, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    .line 233
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v1

    invoke-virtual {v0, v3, v1, p3, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 235
    new-instance v0, Lcom/android/tools/r8/internal/M10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, v3}, Lcom/android/tools/r8/internal/M10;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/K10;)V

    .line 236
    const-string v2, "Enqueue methods for reprocessing due to the number unboxer"

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 237
    sget-boolean v2, Lcom/android/tools/r8/internal/M10;->c:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 238
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/O60;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/O60;

    .line 239
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/M10;->a(Lcom/android/tools/r8/internal/O60;)V

    .line 240
    invoke-virtual {v0, p1, p3}, Lcom/android/tools/r8/internal/M10;->a(Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;)V

    .line 241
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 242
    iget-object p1, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)V
    .locals 16

    move-object/from16 v0, p0

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    .line 95
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 96
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/I10;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/yw0;

    move-result-object v9

    .line 97
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v10

    if-nez v10, :cond_0

    if-nez v7, :cond_1

    .line 98
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v7

    new-array v7, v7, [Lcom/android/tools/r8/internal/yw0;

    .line 99
    sget-object v10, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    :cond_1
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v8

    .line 101
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v8

    sub-int/2addr v8, v2

    .line 102
    aput-object v9, v7, v8

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 104
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v8

    .line 105
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v6, :cond_3

    .line 106
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v9

    if-nez v9, :cond_0

    .line 107
    :cond_3
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Lcom/android/tools/r8/internal/I10;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/yw0;

    move-result-object v8

    .line 108
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v9

    if-nez v9, :cond_5

    if-nez v6, :cond_4

    move-object v6, v8

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/yw0;->a(Lcom/android/tools/r8/internal/yw0;)Lcom/android/tools/r8/internal/yw0;

    move-result-object v6

    goto :goto_0

    .line 110
    :cond_5
    sget-object v6, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    goto :goto_0

    .line 111
    :cond_6
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 112
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v9

    .line 113
    iget-object v10, v0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    .line 114
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/shaking/i;

    .line 115
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v10

    .line 116
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    if-nez v10, :cond_7

    goto/16 :goto_0

    .line 117
    :cond_7
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v11

    invoke-static {v11}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v11

    move-object v13, v5

    move v12, v11

    .line 118
    :goto_1
    iget-object v14, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_a

    .line 120
    invoke-virtual {v8, v12}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    invoke-virtual {v0, v9, v14}, Lcom/android/tools/r8/internal/I10;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/yw0;

    move-result-object v14

    .line 121
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v15

    if-nez v15, :cond_9

    if-nez v13, :cond_8

    .line 122
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v13

    new-array v13, v13, [Lcom/android/tools/r8/internal/yw0;

    .line 123
    sget-object v15, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    invoke-static {v13, v15}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    sub-int v15, v12, v11

    .line 124
    aput-object v14, v13, v15

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 125
    :cond_a
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 126
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/I10;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/yw0;

    move-result-object v8

    .line 127
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_2

    :cond_b
    move-object v8, v5

    .line 128
    :goto_2
    invoke-virtual {v0, v10, v8, v13}, Lcom/android/tools/r8/internal/I10;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/yw0;[Lcom/android/tools/r8/internal/yw0;)V

    goto/16 :goto_0

    .line 129
    :cond_c
    instance-of v8, v8, Lcom/android/tools/r8/internal/OJ;

    if-nez v8, :cond_d

    goto/16 :goto_0

    .line 130
    :cond_d
    new-instance v1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw v1

    .line 131
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/tools/r8/internal/I10;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/yw0;[Lcom/android/tools/r8/internal/yw0;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/I10;->a(Ljava/util/Set;)Ljava/util/IdentityHashMap;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 51
    const-string v0, "Prepare number unboxer tree fixer"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    .line 53
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/android/tools/r8/internal/b80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 55
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    .line 57
    new-instance v2, Lcom/android/tools/r8/internal/tI0;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/tI0;-><init>(Lcom/android/tools/r8/internal/I10;Ljava/util/Set;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    .line 58
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v3

    .line 59
    invoke-static {v0, v2, v3, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 60
    new-instance p1, Lcom/android/tools/r8/internal/uI0;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/uI0;-><init>(Ljava/util/Set;)V

    .line 61
    sget-boolean v0, Lcom/android/tools/r8/internal/TU;->a:Z

    .line 62
    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    .line 63
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 64
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/tools/r8/internal/I10;->e:Lcom/android/tools/r8/internal/nC;

    .line 67
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/tools/r8/internal/I10;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/I10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/I10;->c:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/sI0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/sI0;-><init>(Lcom/android/tools/r8/internal/I10;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
