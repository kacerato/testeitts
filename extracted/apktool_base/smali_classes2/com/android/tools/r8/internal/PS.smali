.class public Lcom/android/tools/r8/internal/PS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "EV:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:J

.field public static final t:J

.field public static final synthetic u:Z = true


# instance fields
.field public final a:Z

.field public final b:Lcom/android/tools/r8/internal/X7;

.field public final c:Lcom/android/tools/r8/internal/wT;

.field public final d:Lcom/android/tools/r8/internal/qd0;

.field public final e:Ljava/util/ArrayList;

.field public f:I

.field public g:I

.field public final h:Lcom/android/tools/r8/internal/bT;

.field public i:Lcom/android/tools/r8/internal/s8;

.field public j:Lcom/android/tools/r8/internal/dH;

.field public k:Lcom/android/tools/r8/internal/B60;

.field public l:Lcom/android/tools/r8/internal/B60;

.field public final m:Lcom/android/tools/r8/internal/dH;

.field public final n:Ljava/util/HashMap;

.field public final o:Lcom/android/tools/r8/internal/dH;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lcom/android/tools/r8/internal/PS;->p:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lcom/android/tools/r8/internal/PS;->q:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lcom/android/tools/r8/internal/PS;->r:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lcom/android/tools/r8/internal/PS;->s:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lcom/android/tools/r8/internal/PS;->t:J

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/X7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/X7;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/PS;->b:Lcom/android/tools/r8/internal/X7;

    new-instance v1, Lcom/android/tools/r8/internal/wT;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/wT;-><init>(Lcom/android/tools/r8/internal/X7;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/PS;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/PS;->g:I

    new-instance v1, Lcom/android/tools/r8/internal/dH;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/PS;->m:Lcom/android/tools/r8/internal/dH;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/PS;->n:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/dH;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/PS;->o:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/PS;->a:Z

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    new-instance p4, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object p4, p0, Lcom/android/tools/r8/internal/PS;->d:Lcom/android/tools/r8/internal/qd0;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/tools/r8/internal/PS;->e:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/B60$c$a;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$c$a;

    iput-boolean p2, p1, Lcom/android/tools/r8/internal/B60$a;->e:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/PS;->k:Lcom/android/tools/r8/internal/B60;

    iput-object p1, p0, Lcom/android/tools/r8/internal/PS;->l:Lcom/android/tools/r8/internal/B60;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)I
    .locals 2

    .line 93
    sget-object v0, Lcom/android/tools/r8/internal/IS;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 94
    sget-object p1, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    if-ne p0, p1, :cond_0

    const/16 p0, 0x97

    return p0

    :cond_0
    const/16 p0, 0x98

    return p0

    .line 95
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cmp has unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    if-ne p0, p1, :cond_3

    const/16 p0, 0x95

    return p0

    :cond_3
    const/16 p0, 0x96

    return p0

    :cond_4
    const/16 p0, 0x94

    return p0
.end method

.method public static synthetic a([Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;Ljava/lang/Integer;)V
    .locals 0

    .line 92
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput-object p1, p0, p2

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/PS;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/PS<",
            "TV;TEV;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object p0
.end method

.method public final a(I)Lcom/android/tools/r8/internal/PS;
    .locals 1

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/PS;->f:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/internal/PS;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/PS;->f:I

    return-object p0
.end method

.method public final a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;
    .locals 7

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    move-result v0

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/YS;

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    .line 13
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 14
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 15
    iget-object v5, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/bT;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    iget v5, p0, Lcom/android/tools/r8/internal/PS;->f:I

    add-int/2addr v5, v0

    .line 17
    iget-object v6, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    .line 18
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/bT;->a()Lcom/android/tools/r8/internal/uT;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/uT;->a()Lcom/android/tools/r8/internal/mT;

    move-result-object v6

    .line 20
    invoke-virtual {v6, v5, v4}, Lcom/android/tools/r8/internal/mT;->a(ILjava/lang/Object;)I

    .line 21
    sget-boolean v4, Lcom/android/tools/r8/internal/o8;->a:Z

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-virtual {v1, p1, v3}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/YS;

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/PS;->a(Lcom/android/tools/r8/internal/YS;)V

    goto :goto_2

    .line 25
    :cond_2
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    .line 26
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/bT;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    iget p2, p0, Lcom/android/tools/r8/internal/PS;->f:I

    add-int/2addr p2, v0

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    .line 30
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/bT;->a()Lcom/android/tools/r8/internal/uT;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/uT;->a()Lcom/android/tools/r8/internal/mT;

    move-result-object v1

    .line 32
    invoke-virtual {v1, p2, p1}, Lcom/android/tools/r8/internal/mT;->a(ILjava/lang/Object;)I

    move-result p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/PS;->f(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-object p0
.end method

.method public final a(J)Lcom/android/tools/r8/internal/PS;
    .locals 3

    .line 34
    sget-wide v0, Lcom/android/tools/r8/internal/PS;->s:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 36
    iget-object p1, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object p0

    .line 37
    :cond_0
    sget-wide v0, Lcom/android/tools/r8/internal/PS;->t:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 39
    iget-object p1, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    const/16 v1, 0xcb

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/internal/o8;->a(JLcom/android/tools/r8/internal/q8;)V

    return-object p0
.end method

.method public final a(ILcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 105
    sget-boolean v0, Lcom/android/tools/r8/internal/o8;->a:Z

    .line 106
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 v1, 0xd9

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/PS;->a(Lcom/android/tools/r8/internal/YS;)V

    .line 108
    iget-object p2, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;)V
    .locals 2

    .line 51
    sget-object v0, Lcom/android/tools/r8/internal/IS;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected if kind: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc7

    goto :goto_0

    :cond_0
    const/16 p1, 0x9a

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9b

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x9e

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x9d

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x9c

    goto :goto_0

    .line 54
    :pswitch_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xc6

    goto :goto_0

    :cond_1
    const/16 p1, 0x99

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    move-result p2

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v0, p4}, Lcom/android/tools/r8/internal/bT;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result p4

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/bT;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 58
    iget v0, p0, Lcom/android/tools/r8/internal/PS;->f:I

    add-int/2addr p2, v0

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bT;->a()Lcom/android/tools/r8/internal/uT;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/uT;->a()Lcom/android/tools/r8/internal/mT;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/internal/mT;->a(ILjava/lang/Object;)I

    move-result p2

    .line 63
    sget-boolean p3, Lcom/android/tools/r8/internal/o8;->a:Z

    .line 64
    iget-object p3, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 v0, 0x8

    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 65
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/PS;->e(I)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/PS;->f(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/W5;)V
    .locals 3

    .line 67
    sget-object v0, Lcom/android/tools/r8/internal/IS;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected if kind "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    .line 69
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa6

    goto :goto_0

    :cond_0
    const/16 p1, 0xa0

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xa1

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xa4

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xa3

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xa2

    goto :goto_0

    .line 70
    :pswitch_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa5

    goto :goto_0

    :cond_1
    const/16 p1, 0x9f

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    move-result p2

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v0, p4}, Lcom/android/tools/r8/internal/bT;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result p4

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/bT;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    iget v1, p0, Lcom/android/tools/r8/internal/PS;->f:I

    add-int/2addr v1, p2

    .line 76
    iget-object v2, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    .line 77
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bT;->a()Lcom/android/tools/r8/internal/uT;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/uT;->a()Lcom/android/tools/r8/internal/mT;

    move-result-object v2

    .line 79
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/mT;->a(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 81
    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/bT;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 82
    iget v1, p0, Lcom/android/tools/r8/internal/PS;->f:I

    add-int/2addr p2, v1

    .line 83
    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    .line 84
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/bT;->a()Lcom/android/tools/r8/internal/uT;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/uT;->a()Lcom/android/tools/r8/internal/mT;

    move-result-object v1

    .line 86
    invoke-virtual {v1, p2, p3}, Lcom/android/tools/r8/internal/mT;->a(ILjava/lang/Object;)I

    move-result p2

    .line 87
    sget-boolean p3, Lcom/android/tools/r8/internal/o8;->a:Z

    .line 88
    iget-object p3, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 v1, 0xc

    invoke-virtual {p3, p1, v1}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 89
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/PS;->e(I)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/PS;->f(I)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/PS;->f(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;)V
    .locals 2

    .line 43
    sget-object v0, Lcom/android/tools/r8/internal/IS;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 44
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const/16 p1, 0x77

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x76

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x75

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x74

    .line 45
    :goto_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 46
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/android/tools/r8/internal/IS;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const/16 p1, 0x6f

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x6e

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x6d

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x6c

    .line 49
    :goto_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    .line 50
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/YS;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->d:Lcom/android/tools/r8/internal/qd0;

    .line 2
    iget v1, v0, Lcom/android/tools/r8/internal/qd0;->i:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/tools/r8/internal/o8;->a:Z

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected object or imprecise member type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const/16 p1, 0x31

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x2f

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x30

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x2e

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x35

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x34

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x33

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x32

    .line 99
    :goto_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected imprecise member type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const/16 p1, 0x52

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x50

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x51

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x4f

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x56

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x55

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x54

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x53

    .line 102
    :goto_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p2, p3, p4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    .line 103
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lcom/android/tools/r8/internal/PS;
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object p0
.end method

.method public final b(I)Lcom/android/tools/r8/internal/PS;
    .locals 3

    .line 10
    sget v0, Lcom/android/tools/r8/internal/PS;->p:I

    if-ne p1, v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object p0

    .line 13
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/PS;->q:I

    if-ne p1, v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object p0

    .line 16
    :cond_1
    sget v0, Lcom/android/tools/r8/internal/PS;->r:I

    if-ne p1, v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object p0

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    const/16 v1, 0xca

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    return-object p0
.end method

.method public final b(J)Lcom/android/tools/r8/internal/PS;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object p0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    const/16 v1, 0xc9

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/internal/o8;->a(JLcom/android/tools/r8/internal/q8;)V

    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;)V
    .locals 2

    .line 22
    sget-object v0, Lcom/android/tools/r8/internal/IS;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/16 p1, 0xdb

    goto :goto_0

    .line 23
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/16 p1, 0xda

    .line 24
    :goto_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final c()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->k:Lcom/android/tools/r8/internal/B60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->l:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/PS;->g:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->k:Lcom/android/tools/r8/internal/B60;

    .line 4
    sget-boolean v2, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/PS;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/PS;->e:Ljava/util/ArrayList;

    .line 5
    invoke-static {v2}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/SS;

    .line 6
    iget v2, v2, Lcom/android/tools/r8/internal/SS;->b:I

    if-ge v2, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    instance-of v2, v1, Lcom/android/tools/r8/internal/B60$b;

    if-nez v2, :cond_2

    .line 10
    instance-of v2, v1, Lcom/android/tools/r8/internal/B60$c;

    if-eqz v2, :cond_5

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v2

    if-nez v2, :cond_5

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/PS;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/PS;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/PS;->e:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/SS;

    .line 15
    instance-of v3, v2, Lcom/android/tools/r8/internal/RS;

    if-eqz v3, :cond_4

    .line 16
    check-cast v2, Lcom/android/tools/r8/internal/RS;

    .line 17
    iget v2, v2, Lcom/android/tools/r8/internal/RS;->d:I

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v3

    if-ne v2, v3, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/PS;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/internal/RS;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/RS;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/PS;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/internal/TS;

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/TS;-><init>(ILcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->k:Lcom/android/tools/r8/internal/B60;

    iput-object v0, p0, Lcom/android/tools/r8/internal/PS;->l:Lcom/android/tools/r8/internal/B60;

    .line 22
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->i:Lcom/android/tools/r8/internal/s8;

    if-eqz v0, :cond_7

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->j:Lcom/android/tools/r8/internal/dH;

    iget v2, p0, Lcom/android/tools/r8/internal/PS;->g:I

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/tools/r8/internal/PS;->i:Lcom/android/tools/r8/internal/s8;

    .line 25
    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/PS;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/PS;->g:I

    return v0
.end method

.method public c(I)Lcom/android/tools/r8/internal/PS;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/tools/r8/internal/PS<",
            "TV;TEV;>;"
        }
    .end annotation

    const/4 v0, -0x1

    if-gt v0, p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x3

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    const/16 v1, 0xc8

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    return-object p0
.end method

.method public d()Lcom/android/tools/r8/internal/WS;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/WS<",
            "TEV;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->d:Lcom/android/tools/r8/internal/qd0;

    .line 5
    iget v1, v0, Lcom/android/tools/r8/internal/qd0;->i:I

    .line 6
    new-array v3, v1, [Lcom/android/tools/r8/internal/YS;

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/UQ0;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/UQ0;-><init>([Lcom/android/tools/r8/internal/YS;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/QS;

    iget-object v2, p0, Lcom/android/tools/r8/internal/PS;->n:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/tools/r8/internal/PS;->o:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v0, v2, v4}, Lcom/android/tools/r8/internal/QS;-><init>(Ljava/util/HashMap;Lcom/android/tools/r8/internal/dH;)V

    move-object v9, v0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->m:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/VS;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->m:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/VS;-><init>(Lcom/android/tools/r8/internal/SG;)V

    move-object v8, v0

    .line 10
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/WS;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->e:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/tools/r8/internal/SS;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Lcom/android/tools/r8/internal/SS;

    iget v5, p0, Lcom/android/tools/r8/internal/PS;->f:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->b:Lcom/android/tools/r8/internal/X7;

    .line 12
    iget-object v1, v1, Lcom/android/tools/r8/internal/X7;->a:Ljava/io/ByteArrayOutputStream;

    .line 13
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 14
    iget v7, p0, Lcom/android/tools/r8/internal/PS;->g:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/bT;->a()Lcom/android/tools/r8/internal/uT;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/tools/r8/internal/PS;->a:Z

    iget-object v12, p0, Lcom/android/tools/r8/internal/PS;->j:Lcom/android/tools/r8/internal/dH;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/android/tools/r8/internal/WS;-><init>([Lcom/android/tools/r8/internal/YS;[Lcom/android/tools/r8/internal/SS;I[BILcom/android/tools/r8/internal/VS;Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/uT;ZLcom/android/tools/r8/internal/dH;)V

    return-object v0
.end method

.method public final d(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    const/16 v1, 0xe4

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    return-void
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    return-void
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    return-void
.end method
