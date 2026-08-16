.class public final Lcom/android/tools/r8/graph/t4;
.super Lcom/android/tools/r8/internal/DX;
.source "SourceFile"


# static fields
.field public static final synthetic w:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/h4;

.field public final d:Lcom/android/tools/r8/graph/u1;

.field public final e:Lcom/android/tools/r8/graph/q4;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/ArrayList;

.field public final l:Ljava/util/HashMap;

.field public m:Lcom/android/tools/r8/internal/ka;

.field public n:Lcom/android/tools/r8/internal/CH;

.field public o:Ljava/util/IdentityHashMap;

.field public p:Ljava/util/IdentityHashMap;

.field public final q:Lcom/android/tools/r8/graph/u4;

.field public final r:Lcom/android/tools/r8/graph/A2;

.field public final s:Lcom/android/tools/r8/origin/Origin;

.field public t:I

.field public u:I

.field public final v:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u4;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/q4;Ljava/util/function/Supplier;)V
    .locals 2

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/DX;-><init>(ILcom/android/tools/r8/internal/DX;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/t4;->l:Ljava/util/HashMap;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/tools/r8/graph/t4;->t:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/graph/t4;->u:I

    iput-object p5, p0, Lcom/android/tools/r8/graph/t4;->e:Lcom/android/tools/r8/graph/q4;

    iput-object p1, p0, Lcom/android/tools/r8/graph/t4;->c:Lcom/android/tools/r8/graph/h4;

    iget-object p1, p1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/graph/t4;->q:Lcom/android/tools/r8/graph/u4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/t4;->r:Lcom/android/tools/r8/graph/A2;

    iput-object p4, p0, Lcom/android/tools/r8/graph/t4;->s:Lcom/android/tools/r8/origin/Origin;

    iput-object p6, p0, Lcom/android/tools/r8/graph/t4;->v:Ljava/util/function/Supplier;

    return-void
.end method

.method public static a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 64
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected array-type code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :pswitch_0
    iget-object p0, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    .line 66
    :pswitch_1
    iget-object p0, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    .line 67
    :pswitch_2
    iget-object p0, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    .line 68
    :pswitch_3
    iget-object p0, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    .line 69
    :pswitch_4
    iget-object p0, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    .line 70
    :pswitch_5
    iget-object p0, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    .line 71
    :pswitch_6
    iget-object p0, p1, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    .line 72
    :pswitch_7
    iget-object p0, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
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

.method public static synthetic a(Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static b(I)Lcom/android/tools/r8/internal/YV;
    .locals 3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected array opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/YV;->e:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 29
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/YV;->d:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 30
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/YV;->c:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 31
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 32
    :pswitch_4
    sget-object p0, Lcom/android/tools/r8/internal/YV;->i:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 33
    :pswitch_5
    sget-object p0, Lcom/android/tools/r8/internal/YV;->g:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 34
    :pswitch_6
    sget-object p0, Lcom/android/tools/r8/internal/YV;->h:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 35
    :pswitch_7
    sget-object p0, Lcom/android/tools/r8/internal/YV;->f:Lcom/android/tools/r8/internal/YV;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
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

.method public static c(I)Lcom/android/tools/r8/internal/NB;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 69
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected If instruction opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/NB;->e:Lcom/android/tools/r8/internal/NB;

    return-object p0

    .line 71
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/NB;->d:Lcom/android/tools/r8/internal/NB;

    return-object p0

    .line 72
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/NB;->c:Lcom/android/tools/r8/internal/NB;

    return-object p0

    .line 73
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/NB;->f:Lcom/android/tools/r8/internal/NB;

    return-object p0

    .line 74
    :pswitch_4
    sget-object p0, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    return-object p0

    .line 75
    :pswitch_5
    sget-object p0, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;
    .locals 0

    .line 58
    new-instance p0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 33
    sget-boolean v0, Lcom/android/tools/r8/graph/t4;->w:Z

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/graph/j0;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->l:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/graph/ag;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/ag;-><init>(Lcom/android/tools/r8/graph/j0;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j0;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/G9$a;)Lcom/android/tools/r8/internal/jy;
    .locals 1

    .line 20
    instance-of v0, p1, Lcom/android/tools/r8/internal/XQ;

    if-eqz v0, :cond_1

    .line 21
    check-cast p1, Lcom/android/tools/r8/internal/XQ;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->p:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/wa;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wa;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    sget v0, Lcom/android/tools/r8/internal/jy;->a:I

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/ev0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/ev0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p2, Lcom/android/tools/r8/internal/G9$a;->c:Z

    .line 26
    sget p2, Lcom/android/tools/r8/internal/jy;->a:I

    .line 27
    new-instance p2, Lcom/android/tools/r8/internal/ev0;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/internal/ev0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    return-object p2

    :cond_1
    const/4 p2, 0x6

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 29
    sget p1, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/gv0;->c:Lcom/android/tools/r8/internal/gv0;

    return-object p1

    :cond_2
    if-eqz p1, :cond_4

    const/4 p2, 0x0

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-ne p1, p2, :cond_3

    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->b(Ljava/lang/Object;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object p1

    return-object p1

    .line 32
    :cond_4
    :goto_0
    sget p1, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    return-object p1
.end method

.method public final a(I)V
    .locals 3

    const/16 v0, 0xbe

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    .line 35
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Unknown instruction"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :pswitch_0
    new-instance p1, Lcom/android/tools/r8/internal/bb;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 37
    :pswitch_1
    new-instance p1, Lcom/android/tools/r8/internal/ab;

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 38
    :pswitch_2
    new-instance p1, Lcom/android/tools/r8/internal/ab;

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 39
    :pswitch_3
    new-instance p1, Lcom/android/tools/r8/internal/ab;

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 40
    :pswitch_4
    new-instance p1, Lcom/android/tools/r8/internal/ab;

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 41
    :pswitch_5
    new-instance p1, Lcom/android/tools/r8/internal/ab;

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 42
    :pswitch_6
    invoke-static {p1}, Lcom/android/tools/r8/internal/q9;->a(I)Lcom/android/tools/r8/internal/q9;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 43
    :pswitch_7
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ba;->a(I)Lcom/android/tools/r8/internal/Ba;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 44
    :pswitch_8
    invoke-static {p1}, Lcom/android/tools/r8/internal/ra;->a(I)Lcom/android/tools/r8/internal/ra;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 45
    :pswitch_9
    invoke-static {p1}, Lcom/android/tools/r8/internal/va;->a(I)Lcom/android/tools/r8/internal/va;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 46
    :pswitch_a
    invoke-static {p1}, Lcom/android/tools/r8/internal/V8;->a(I)Lcom/android/tools/r8/internal/V8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 47
    :pswitch_b
    invoke-static {p1}, Lcom/android/tools/r8/internal/kb;->a(I)Lcom/android/tools/r8/internal/kb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 48
    :pswitch_c
    new-instance v0, Lcom/android/tools/r8/internal/Z8;

    invoke-static {p1}, Lcom/android/tools/r8/graph/t4;->b(I)Lcom/android/tools/r8/internal/YV;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Z8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 49
    :pswitch_d
    new-instance v0, Lcom/android/tools/r8/internal/X8;

    invoke-static {p1}, Lcom/android/tools/r8/graph/t4;->b(I)Lcom/android/tools/r8/internal/YV;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/X8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 50
    :pswitch_e
    new-instance v0, Lcom/android/tools/r8/internal/z9;

    add-int/lit8 p1, p1, -0xe

    int-to-double v1, p1

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    sget-object p1, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 53
    :pswitch_f
    new-instance v0, Lcom/android/tools/r8/internal/z9;

    add-int/lit8 p1, p1, -0xb

    int-to-float p1, p1

    .line 54
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v1, p1

    sget-object p1, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 56
    :pswitch_10
    new-instance v0, Lcom/android/tools/r8/internal/z9;

    add-int/lit8 p1, p1, -0x9

    int-to-long v1, p1

    sget-object p1, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 57
    :pswitch_11
    new-instance v0, Lcom/android/tools/r8/internal/z9;

    add-int/lit8 p1, p1, -0x3

    int-to-long v1, p1

    sget-object p1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 58
    :pswitch_12
    new-instance p1, Lcom/android/tools/r8/internal/x9;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/x9;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 59
    :pswitch_13
    new-instance p1, Lcom/android/tools/r8/internal/za;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/za;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 60
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/sa;

    sget-object v0, Lcom/android/tools/r8/internal/XX;->c:Lcom/android/tools/r8/internal/XX;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 61
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/sa;

    sget-object v0, Lcom/android/tools/r8/internal/XX;->b:Lcom/android/tools/r8/internal/XX;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 62
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 63
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/W8;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/W8;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x85
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xac
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(II)V
    .locals 1

    .line 136
    new-instance v0, Lcom/android/tools/r8/internal/R9;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/R9;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method

.method public final varargs a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V
    .locals 3

    .line 137
    sget-boolean v0, Lcom/android/tools/r8/graph/t4;->w:Z

    if-nez v0, :cond_1

    array-length v0, p4

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 138
    :cond_1
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p4

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    array-length v0, p4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p4, v1

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_2
    new-instance p4, Lcom/android/tools/r8/internal/Bb;

    sget-object v0, Lcom/android/tools/r8/internal/Bb$a;->c:Lcom/android/tools/r8/internal/Bb$a;

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p3

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {p4, v0, p3, p1, p2}, Lcom/android/tools/r8/internal/Bb;-><init>(Lcom/android/tools/r8/internal/Bb$a;Lcom/android/tools/r8/internal/ka;[ILjava/util/ArrayList;)V

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method

.method public final a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 3

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/graph/t4;->w:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_2

    .line 8
    aget-object v2, p3, v1

    .line 9
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/graph/t4;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/G9$a;)Lcom/android/tools/r8/internal/jy;

    move-result-object v2

    .line 10
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/G9$a;->a(I)V

    :goto_2
    if-ge v0, p4, :cond_4

    .line 12
    aget-object p2, p5, v0

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/t4;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/G9$a;)Lcom/android/tools/r8/internal/jy;

    move-result-object p2

    .line 13
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->D()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 14
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->k()Lcom/android/tools/r8/internal/S60;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/G9$a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/graph/t4;->c:Lcom/android/tools/r8/graph/h4;

    iget-object p1, p1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 16
    new-instance p2, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object p3, p0, Lcom/android/tools/r8/graph/t4;->s:Lcom/android/tools/r8/origin/Origin;

    const-string p4, "Unexpected frame with imprecise value on stack"

    invoke-direct {p2, p4, p3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 17
    :cond_4
    iget-boolean p2, p1, Lcom/android/tools/r8/internal/G9$a;->c:Z

    if-eqz p2, :cond_5

    .line 18
    iget-object p2, p0, Lcom/android/tools/r8/graph/t4;->n:Lcom/android/tools/r8/internal/CH;

    iget-object p3, p0, Lcom/android/tools/r8/graph/t4;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 19
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/XQ;)V
    .locals 2

    .line 89
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p2

    const/16 v0, 0x99

    if-gt v0, p1, :cond_2

    const/16 v0, 0xa6

    if-gt p1, v0, :cond_2

    const/16 v0, 0x9e

    if-gt p1, v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/tools/r8/internal/O9;

    invoke-static {p1}, Lcom/android/tools/r8/graph/t4;->c(I)Lcom/android/tools/r8/internal/NB;

    move-result-object p1

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    :cond_0
    const/16 v0, 0xa4

    if-gt p1, v0, :cond_1

    .line 91
    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    .line 93
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/Q9;

    invoke-static {p1}, Lcom/android/tools/r8/graph/t4;->c(I)Lcom/android/tools/r8/internal/NB;

    move-result-object p1

    invoke-direct {v1, p1, v0, p2}, Lcom/android/tools/r8/internal/Q9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    :cond_2
    const/16 v0, 0xa7

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_6

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_4

    const/16 v1, 0xc7

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 94
    :cond_3
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected JumpInsn opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_1
    if-ne p1, v0, :cond_5

    .line 95
    sget-object p1, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    .line 96
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/O9;

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 97
    :cond_6
    new-instance p1, Lcom/android/tools/r8/graph/s4;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/s4;-><init>()V

    throw p1

    .line 98
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/M9;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->c:Lcom/android/tools/r8/graph/h4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 147
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 148
    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_0

    .line 149
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->e0:Z

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/android/tools/r8/internal/ta;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/ta;-><init>(ILcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 151
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Ljava/lang/Object;)V

    const/16 v0, 0xbc

    const/16 v1, 0xa

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/t4;->b(II)V

    add-int/lit8 v0, p1, -0x1

    :goto_0
    const/16 v1, 0x5f

    if-ltz v0, :cond_1

    const/16 v2, 0x5a

    .line 153
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/t4;->a(I)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/t4;->a(I)V

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/t4;->a(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/t4;->a(I)V

    const/16 v1, 0x4f

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/t4;->a(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 159
    sget-object v0, Lcom/android/tools/r8/internal/Bl;->a:Lcom/android/tools/r8/internal/nC;

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    move v0, v3

    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->a(C)Z

    move-result v0

    :goto_1
    const-string v4, "Ljava/lang/Class;"

    const-string v5, "TYPE"

    const/16 v6, 0xb2

    if-eqz v0, :cond_3

    .line 162
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->b(C)Ljava/lang/String;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v3, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 165
    invoke-static {v6, p1}, Lcom/android/tools/r8/internal/F9;->a(ILcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    goto :goto_2

    .line 166
    :cond_3
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object p1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    .line 168
    const-string v0, "java/lang/Void"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 169
    invoke-static {v6, p1}, Lcom/android/tools/r8/internal/F9;->a(ILcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    goto :goto_2

    .line 170
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Ljava/lang/Object;)V

    .line 172
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/t4;->a(I)V

    .line 173
    const-string v7, "(Ljava/lang/Class;[I)Ljava/lang/Object;"

    const/4 v8, 0x0

    const/16 v4, 0xb8

    const-string v5, "java/lang/reflect/Array"

    const-string v6, "newInstance"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/graph/t4;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 p1, 0xc0

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/t4;->c(ILjava/lang/String;)V

    .line 175
    iput-boolean v2, p0, Lcom/android/tools/r8/graph/t4;->h:Z

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/t4;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, p4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {v0, p2, p4, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 75
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/F9;->a(ILcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->c:Lcom/android/tools/r8/graph/h4;

    .line 77
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 78
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/tools/r8/graph/h4;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 79
    iget-object p3, p0, Lcom/android/tools/r8/graph/t4;->c:Lcom/android/tools/r8/graph/h4;

    .line 80
    iget-object p3, p3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 81
    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 82
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iget-object p4, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->j1:Lcom/android/tools/r8/graph/L2;

    if-eq p4, p3, :cond_0

    .line 84
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    invoke-direct {p3, p1, p2, p5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 85
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Invalid input code with a call to <clinit>"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->K()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    instance-of p1, p1, Lcom/android/tools/r8/internal/Ma;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/graph/t4;->m:Lcom/android/tools/r8/internal/ka;

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    .line 101
    iput-object p1, p0, Lcom/android/tools/r8/graph/t4;->m:Lcom/android/tools/r8/internal/ka;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V
    .locals 2

    if-nez p4, :cond_0

    .line 176
    iget-object p4, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    iget-object p4, p4, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/graph/t4;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    .line 177
    :goto_0
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 178
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 179
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/Db;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p2

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V
    .locals 4

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 144
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    new-instance p3, Lcom/android/tools/r8/internal/Bb;

    sget-object v1, Lcom/android/tools/r8/internal/Bb$a;->b:Lcom/android/tools/r8/internal/Bb$a;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p1

    invoke-direct {p3, v1, p1, p2, v0}, Lcom/android/tools/r8/internal/Bb;-><init>(Lcom/android/tools/r8/internal/Bb$a;Lcom/android/tools/r8/internal/ka;[ILjava/util/ArrayList;)V

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 102
    instance-of v0, p1, Lcom/android/tools/r8/internal/tt0;

    if-eqz v0, :cond_1

    .line 103
    check-cast p1, Lcom/android/tools/r8/internal/tt0;

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->c:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h4;->c(Ljava/lang/String;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 106
    new-instance v0, Lcom/android/tools/r8/internal/w9;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/w9;-><init>(Lcom/android/tools/r8/graph/I2;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/t9;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    const/4 v1, 0x0

    .line 108
    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 110
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 111
    new-instance v0, Lcom/android/tools/r8/internal/A9;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 112
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 113
    new-instance v0, Lcom/android/tools/r8/internal/z9;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p1, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 114
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 115
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 116
    new-instance p1, Lcom/android/tools/r8/internal/z9;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 117
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 118
    new-instance v0, Lcom/android/tools/r8/internal/z9;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    sget-object p1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 119
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 120
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    .line 121
    new-instance p1, Lcom/android/tools/r8/internal/z9;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 122
    :cond_6
    instance-of v0, p1, Lcom/android/tools/r8/internal/Qz;

    if-eqz v0, :cond_7

    .line 123
    new-instance v0, Lcom/android/tools/r8/internal/v9;

    check-cast p1, Lcom/android/tools/r8/internal/Qz;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->c:Lcom/android/tools/r8/graph/h4;

    iget-object v2, p0, Lcom/android/tools/r8/graph/t4;->r:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 124
    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/graph/C2;->a(Lcom/android/tools/r8/internal/Qz;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/C2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/v9;-><init>(Lcom/android/tools/r8/graph/C2;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 126
    :cond_7
    instance-of v0, p1, Lcom/android/tools/r8/internal/wh;

    if-eqz v0, :cond_a

    .line 127
    check-cast p1, Lcom/android/tools/r8/internal/wh;

    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->c:Lcom/android/tools/r8/graph/h4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->r:Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/t4;->v:Ljava/util/function/Supplier;

    .line 128
    sget-boolean v3, Lcom/android/tools/r8/internal/u9;->d:Z

    if-nez v3, :cond_9

    .line 129
    iget-object v3, p1, Lcom/android/tools/r8/internal/wh;->d:[Ljava/lang/Object;

    .line 130
    array-length v3, v3

    if-nez v3, :cond_8

    goto :goto_0

    .line 131
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 132
    :cond_9
    :goto_0
    new-instance v3, Lcom/android/tools/r8/internal/u9;

    .line 133
    invoke-static {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/Ah;->a(Lcom/android/tools/r8/internal/wh;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Ah;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/u9;-><init>(Lcom/android/tools/r8/internal/Ah;)V

    .line 134
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 135
    :cond_a
    new-instance v0, Lcom/android/tools/r8/internal/If;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported constant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V
    .locals 7

    .line 86
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->c:Lcom/android/tools/r8/graph/h4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->r:Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p0, Lcom/android/tools/r8/graph/t4;->v:Ljava/util/function/Supplier;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 87
    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/graph/D0;->a(Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/D0;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/android/tools/r8/internal/ha;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/ha;-><init>(Lcom/android/tools/r8/graph/D0;)V

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->e:Lcom/android/tools/r8/graph/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    new-instance v0, Lcom/android/tools/r8/graph/j0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    .line 182
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    .line 183
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, p3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    :goto_0
    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/graph/j0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/graph/j0;

    move-result-object p1

    .line 186
    iget-object p2, p0, Lcom/android/tools/r8/graph/t4;->k:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/tools/r8/graph/G$a;

    .line 187
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p4

    invoke-virtual {p0, p5}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p5

    invoke-direct {p3, p6, p1, p4, p5}, Lcom/android/tools/r8/graph/G$a;-><init>(ILcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;)V

    .line 188
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lcom/android/tools/r8/graph/M2;
    .locals 3

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/graph/t4;->w:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    :cond_2
    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    :cond_3
    const/4 v0, 0x4

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    :cond_4
    const/4 v0, 0x3

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    :cond_5
    const/4 v0, 0x5

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 23
    sget-object p1, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 24
    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 26
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ASM type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->o:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/graph/bg;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/bg;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ka;

    return-object p1
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/tools/r8/graph/t4;->f:I

    .line 2
    iput v0, p0, Lcom/android/tools/r8/graph/t4;->g:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/t4;->i:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/t4;->j:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/t4;->k:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/graph/t4;->m:Lcom/android/tools/r8/internal/ka;

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/CH;

    const/16 v1, 0x10

    .line 8
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/graph/t4;->n:Lcom/android/tools/r8/internal/CH;

    .line 10
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/t4;->o:Ljava/util/IdentityHashMap;

    .line 11
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/t4;->p:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public final b(II)V
    .locals 2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbc

    if-ne p1, v0, :cond_0

    .line 36
    new-instance p1, Lcom/android/tools/r8/internal/xa;

    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    .line 37
    invoke-static {p2, v0}, Lcom/android/tools/r8/graph/t4;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 39
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected int opcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    .line 40
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/z9;

    int-to-long v0, p2

    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, v0, v1, p2}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/XQ;)V
    .locals 2

    .line 41
    iget v0, p0, Lcom/android/tools/r8/graph/t4;->t:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/graph/t4;->t:I

    .line 42
    iget v0, p0, Lcom/android/tools/r8/graph/t4;->u:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/graph/t4;->u:I

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->e:Lcom/android/tools/r8/graph/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance v0, Lcom/android/tools/r8/internal/Ma;

    .line 45
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/t4;->b(Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/ka;

    move-result-object p2

    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$b$a;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t4;->r:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$b$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$b$a;->d()Lcom/android/tools/r8/internal/B60$b;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method

.method public final c()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->i:Ljava/util/ArrayList;

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_4

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/graph/t4;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->o:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    iget-object v5, p0, Lcom/android/tools/r8/graph/t4;->s:Lcom/android/tools/r8/origin/Origin;

    iget-object v6, p0, Lcom/android/tools/r8/graph/t4;->r:Lcom/android/tools/r8/graph/A2;

    .line 4
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v6

    .line 5
    iget v7, p0, Lcom/android/tools/r8/graph/t4;->t:I

    if-eq v7, v1, :cond_3

    .line 6
    iget v1, p0, Lcom/android/tools/r8/graph/t4;->u:I

    if-ne v7, v1, :cond_2

    .line 7
    new-instance v1, Lcom/android/tools/r8/position/TextPosition;

    iget v7, p0, Lcom/android/tools/r8/graph/t4;->t:I

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    goto :goto_1

    .line 8
    :cond_2
    new-instance v1, Lcom/android/tools/r8/position/TextRange;

    new-instance v7, Lcom/android/tools/r8/position/TextPosition;

    iget v8, p0, Lcom/android/tools/r8/graph/t4;->t:I

    invoke-direct {v7, v3, v4, v8, v2}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    new-instance v8, Lcom/android/tools/r8/position/TextPosition;

    iget v9, p0, Lcom/android/tools/r8/graph/t4;->u:I

    invoke-direct {v8, v3, v4, v9, v2}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    invoke-direct {v1, v7, v8}, Lcom/android/tools/r8/position/TextRange;-><init>(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/position/TextPosition;)V

    goto :goto_1

    .line 9
    :cond_3
    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 10
    :goto_1
    invoke-static {v6, v1}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/position/Position;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/MethodPosition;)V

    throw v0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->n:Lcom/android/tools/r8/internal/CH;

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v0

    .line 13
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    move-object v5, v0

    check-cast v5, Lcom/android/tools/r8/internal/X;

    .line 14
    invoke-interface {v5}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v5

    .line 15
    iget-object v6, p0, Lcom/android/tools/r8/graph/t4;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W9;

    .line 16
    sget-boolean v7, Lcom/android/tools/r8/graph/t4;->w:Z

    if-nez v7, :cond_6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W9;->K()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_6
    :goto_3
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W9;->g()Lcom/android/tools/r8/internal/G9;

    move-result-object v6

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v7

    .line 19
    iget-object v8, v6, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 20
    iput-object v8, v7, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 21
    invoke-interface {v8}, Lcom/android/tools/r8/internal/jG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/tools/r8/internal/M30;->iterator()Lcom/android/tools/r8/internal/v30;

    move-result-object v8

    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/EF;

    .line 22
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/jy;

    .line 23
    invoke-interface {v10}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Lcom/android/tools/r8/internal/jy;->j()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    if-nez v11, :cond_7

    .line 24
    invoke-interface {v10}, Lcom/android/tools/r8/internal/jy;->z()Lcom/android/tools/r8/internal/ev0;

    move-result-object v10

    .line 25
    iget-object v11, v10, Lcom/android/tools/r8/internal/ev0;->c:Lcom/android/tools/r8/internal/ka;

    .line 26
    iget-object v12, p0, Lcom/android/tools/r8/graph/t4;->p:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v11}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/wa;

    if-eqz v12, :cond_8

    .line 27
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/wa;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 28
    new-instance v12, Lcom/android/tools/r8/internal/ev0;

    invoke-direct {v12, v10, v11}, Lcom/android/tools/r8/internal/ev0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    move-object v10, v12

    .line 29
    :cond_8
    invoke-interface {v9, v10}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 30
    :cond_9
    iget-object v6, v6, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    .line 31
    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/S60;

    .line 32
    invoke-interface {v8}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Lcom/android/tools/r8/internal/jy;->j()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    if-nez v9, :cond_b

    .line 33
    invoke-interface {v8}, Lcom/android/tools/r8/internal/jy;->z()Lcom/android/tools/r8/internal/ev0;

    move-result-object v8

    .line 34
    iget-object v9, v8, Lcom/android/tools/r8/internal/ev0;->c:Lcom/android/tools/r8/internal/ka;

    .line 35
    iget-object v10, p0, Lcom/android/tools/r8/graph/t4;->p:Ljava/util/IdentityHashMap;

    invoke-virtual {v10, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/wa;

    if-eqz v10, :cond_a

    .line 36
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/wa;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 37
    new-instance v10, Lcom/android/tools/r8/internal/ev0;

    invoke-direct {v10, v8, v9}, Lcom/android/tools/r8/internal/ev0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    move-object v8, v10

    .line 38
    :cond_a
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/G9$a;

    goto :goto_5

    .line 39
    :cond_b
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/G9$a;

    goto :goto_5

    .line 40
    :cond_c
    iget-object v6, p0, Lcom/android/tools/r8/graph/t4;->i:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 41
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->q:Lcom/android/tools/r8/graph/u4;

    new-instance v14, Lcom/android/tools/r8/graph/G;

    iget-object v5, p0, Lcom/android/tools/r8/graph/t4;->r:Lcom/android/tools/r8/graph/A2;

    iget-object v6, v5, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 42
    iget-boolean v5, p0, Lcom/android/tools/r8/graph/t4;->h:Z

    if-eqz v5, :cond_e

    move v7, v1

    goto :goto_6

    :cond_e
    iget v5, p0, Lcom/android/tools/r8/graph/t4;->f:I

    move v7, v5

    :goto_6
    iget v8, p0, Lcom/android/tools/r8/graph/t4;->g:I

    iget-object v9, p0, Lcom/android/tools/r8/graph/t4;->i:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/tools/r8/graph/t4;->j:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/tools/r8/graph/t4;->k:Ljava/util/ArrayList;

    .line 43
    iget v5, p0, Lcom/android/tools/r8/graph/t4;->t:I

    if-ne v5, v1, :cond_f

    .line 44
    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    :goto_7
    move-object v12, v1

    goto :goto_8

    .line 45
    :cond_f
    iget v1, p0, Lcom/android/tools/r8/graph/t4;->u:I

    if-ne v5, v1, :cond_10

    .line 46
    new-instance v1, Lcom/android/tools/r8/position/TextPosition;

    iget v5, p0, Lcom/android/tools/r8/graph/t4;->t:I

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    goto :goto_7

    .line 47
    :cond_10
    new-instance v1, Lcom/android/tools/r8/position/TextRange;

    new-instance v5, Lcom/android/tools/r8/position/TextPosition;

    iget v12, p0, Lcom/android/tools/r8/graph/t4;->t:I

    invoke-direct {v5, v3, v4, v12, v2}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    new-instance v12, Lcom/android/tools/r8/position/TextPosition;

    iget v13, p0, Lcom/android/tools/r8/graph/t4;->u:I

    invoke-direct {v12, v3, v4, v13, v2}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    invoke-direct {v1, v5, v12}, Lcom/android/tools/r8/position/TextRange;-><init>(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/position/TextPosition;)V

    goto :goto_7

    .line 48
    :goto_8
    sget-object v13, Lcom/android/tools/r8/internal/u8;->b:Lcom/android/tools/r8/internal/u8;

    move-object v5, v14

    .line 49
    invoke-direct/range {v5 .. v13}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/internal/u8;)V

    .line 50
    sget-boolean v1, Lcom/android/tools/r8/graph/u4;->i:Z

    if-nez v1, :cond_12

    .line 51
    iget-object v2, v0, Lcom/android/tools/r8/graph/u4;->g:Lcom/android/tools/r8/graph/G;

    if-nez v2, :cond_11

    goto :goto_9

    .line 52
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :goto_9
    if-nez v1, :cond_14

    .line 53
    iget-object v1, v0, Lcom/android/tools/r8/graph/u4;->h:Lcom/android/tools/r8/graph/n4;

    if-eqz v1, :cond_13

    goto :goto_a

    .line 54
    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_14
    :goto_a
    iput-object v14, v0, Lcom/android/tools/r8/graph/u4;->g:Lcom/android/tools/r8/graph/G;

    const/4 v1, 0x0

    .line 56
    iput-object v1, v0, Lcom/android/tools/r8/graph/u4;->h:Lcom/android/tools/r8/graph/n4;

    .line 57
    iput-object v1, v0, Lcom/android/tools/r8/graph/u4;->f:Lcom/android/tools/r8/graph/h4;

    return-void
.end method

.method public final c(II)V
    .locals 1

    .line 76
    sget-boolean v0, Lcom/android/tools/r8/graph/t4;->w:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ltz p2, :cond_2

    goto :goto_1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 78
    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/tools/r8/graph/t4;->f:I

    .line 79
    iput p2, p0, Lcom/android/tools/r8/graph/t4;->g:I

    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    invoke-static {p2}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc1

    if-ne p1, v0, :cond_0

    .line 60
    new-instance p1, Lcom/android/tools/r8/internal/V9;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/V9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 61
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected TypeInsn opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    .line 62
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/i9;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 63
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/xa;

    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->d:Lcom/android/tools/r8/graph/u1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    .line 64
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/wa;

    iget-object v0, p0, Lcom/android/tools/r8/graph/t4;->m:Lcom/android/tools/r8/internal/ka;

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    if-eqz v0, :cond_4

    .line 65
    iget-object p2, p0, Lcom/android/tools/r8/graph/t4;->p:Ljava/util/IdentityHashMap;

    .line 66
    iget-object v0, p1, Lcom/android/tools/r8/internal/wa;->d:Lcom/android/tools/r8/internal/ka;

    .line 67
    invoke-virtual {p2, v0, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method

.method public final d(II)V
    .locals 2

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected VarInsn opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    :goto_0
    const/16 v1, 0x15

    if-gt v1, p1, :cond_0

    const/16 v1, 0x19

    if-gt p1, v1, :cond_0

    new-instance p1, Lcom/android/tools/r8/internal/pa;

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/yb;

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/ia;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/ia;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t4;->a(Lcom/android/tools/r8/internal/W9;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
