.class public Lcom/android/tools/r8/internal/r2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/d6;

.field public b:Lcom/android/tools/r8/internal/OD;

.field public c:I

.field public d:[Ljava/util/List;

.field public e:[Lcom/android/tools/r8/internal/fy;

.field public f:[Lcom/android/tools/r8/internal/Rq0;

.field public g:[Z

.field public h:[I

.field public i:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/d6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/r2;->a:Lcom/android/tools/r8/internal/d6;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;
    .locals 3

    .line 146
    new-instance v0, Lcom/android/tools/r8/internal/fy;

    .line 147
    iget v1, p0, Lcom/android/tools/r8/internal/fy;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/fy;-><init>(II)V

    .line 148
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/Rq0;Ljava/util/ArrayList;)V
    .locals 6

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_7

    .line 119
    iget v1, p0, Lcom/android/tools/r8/internal/r2;->c:I

    if-ge p1, v1, :cond_7

    .line 120
    iget-object v1, p0, Lcom/android/tools/r8/internal/r2;->f:[Lcom/android/tools/r8/internal/Rq0;

    aget-object v2, v1, p1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/Rq0;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/Rq0;-><init>(Lcom/android/tools/r8/internal/Rq0;)V

    aput-object v2, v1, p1

    .line 122
    iget-object v1, p0, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v1

    .line 123
    instance-of v2, v1, Lcom/android/tools/r8/internal/rL;

    if-eqz v2, :cond_3

    .line 124
    iget v2, v1, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_2

    .line 125
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 126
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/rL;

    .line 127
    iget-object v3, p0, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v2, v2, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 128
    :cond_3
    instance-of v2, v1, Lcom/android/tools/r8/internal/wr0;

    if-eqz v2, :cond_4

    .line 129
    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/wr0;

    .line 130
    iget-object v3, p0, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v4, v2, Lcom/android/tools/r8/internal/wr0;->i:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/Rq0;Ljava/util/ArrayList;)V

    .line 131
    iget-object v3, v2, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 132
    iget-object v4, v2, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/YQ;

    .line 133
    iget-object v5, p0, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 134
    :cond_4
    instance-of v2, v1, Lcom/android/tools/r8/internal/vU;

    if-eqz v2, :cond_5

    .line 135
    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/vU;

    .line 136
    iget-object v3, p0, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v4, v2, Lcom/android/tools/r8/internal/vU;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/Rq0;Ljava/util/ArrayList;)V

    .line 137
    iget-object v3, v2, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_5

    .line 138
    iget-object v4, v2, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/YQ;

    .line 139
    iget-object v5, p0, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 140
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/r2;->d:[Ljava/util/List;

    aget-object v2, v2, p1

    if-eqz v2, :cond_6

    .line 141
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/pt0;

    .line 142
    iget-object v4, p0, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v3, v3, Lcom/android/tools/r8/internal/pt0;->c:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 143
    :cond_6
    iget v1, v1, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_0

    const/16 v2, 0xbf

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    add-int/lit8 p1, p1, 0x1

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 145
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/s2;

    const/4 p2, 0x0

    const-string p3, "Execution can fall off the end of the code"

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0xa9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    aget-object v1, v0, p1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lcom/android/tools/r8/internal/fy;

    .line 151
    iget v3, p2, Lcom/android/tools/r8/internal/fy;->c:I

    iget-object v4, p2, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    array-length v4, v4

    sub-int/2addr v4, v3

    invoke-direct {v1, v3, v4}, Lcom/android/tools/r8/internal/fy;-><init>(II)V

    .line 152
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    .line 153
    aput-object v1, v0, p1

    move p2, v2

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/r2;->a:Lcom/android/tools/r8/internal/d6;

    invoke-virtual {v1, p2, v0}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/d6;)Z

    move-result p2

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/r2;->f:[Lcom/android/tools/r8/internal/Rq0;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    if-eqz p3, :cond_2

    .line 156
    new-instance p2, Lcom/android/tools/r8/internal/Rq0;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/Rq0;-><init>(Lcom/android/tools/r8/internal/Rq0;)V

    aput-object p2, v0, p1

    move p2, v2

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 157
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/Rq0;->a(Lcom/android/tools/r8/internal/Rq0;)Z

    move-result p3

    or-int/2addr p2, p3

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 158
    iget-object p2, p0, Lcom/android/tools/r8/internal/r2;->g:[Z

    aget-boolean p3, p2, p1

    if-nez p3, :cond_3

    .line 159
    aput-boolean v2, p2, p1

    .line 160
    iget-object p2, p0, Lcom/android/tools/r8/internal/r2;->h:[I

    iget p3, p0, Lcom/android/tools/r8/internal/r2;->i:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/r2;->i:I

    aput p1, p2, p3

    :cond_3
    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;[Z)V
    .locals 3

    const/4 v0, 0x0

    .line 161
    :goto_0
    iget v1, p3, Lcom/android/tools/r8/internal/fy;->c:I

    if-ge v0, v1, :cond_1

    .line 162
    aget-boolean v1, p5, v0

    if-nez v1, :cond_0

    iget-object v1, p3, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    aget-object v1, v1, v0

    iget-object v2, p2, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p3, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget-object v2, p2, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    aget-object p5, p2, p1

    const/4 v0, 0x1

    if-nez p5, :cond_2

    .line 165
    new-instance p5, Lcom/android/tools/r8/internal/fy;

    .line 166
    iget-object v2, p3, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-direct {p5, v1, v2}, Lcom/android/tools/r8/internal/fy;-><init>(II)V

    .line 167
    invoke-virtual {p5, p3}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    .line 168
    aput-object p5, p2, p1

    move p2, v0

    goto :goto_1

    .line 169
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/r2;->a:Lcom/android/tools/r8/internal/d6;

    invoke-virtual {p5, p3, p2}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/d6;)Z

    move-result p2

    .line 170
    :goto_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/r2;->f:[Lcom/android/tools/r8/internal/Rq0;

    aget-object p3, p3, p1

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 171
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Rq0;->a(Lcom/android/tools/r8/internal/Rq0;)Z

    move-result p3

    or-int/2addr p2, p3

    :cond_3
    if-eqz p2, :cond_4

    .line 172
    iget-object p2, p0, Lcom/android/tools/r8/internal/r2;->g:[Z

    aget-boolean p3, p2, p1

    if-nez p3, :cond_4

    .line 173
    aput-boolean v0, p2, p1

    .line 174
    iget-object p2, p0, Lcom/android/tools/r8/internal/r2;->h:[I

    iget p3, p0, Lcom/android/tools/r8/internal/r2;->i:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lcom/android/tools/r8/internal/r2;->i:I

    aput p1, p2, p3

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/pc;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1
    const-string v8, ": "

    const-string v9, "Error at instruction "

    iget v1, v0, Lcom/android/tools/r8/internal/QW;->c:I

    and-int/lit16 v1, v1, 0x500

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 2
    new-array v0, v10, [Lcom/android/tools/r8/internal/fy;

    iput-object v0, v7, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iput-object v1, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    .line 4
    iget v1, v1, Lcom/android/tools/r8/internal/OD;->b:I

    .line 5
    iput v1, v7, Lcom/android/tools/r8/internal/r2;->c:I

    .line 6
    new-array v2, v1, [Ljava/util/List;

    iput-object v2, v7, Lcom/android/tools/r8/internal/r2;->d:[Ljava/util/List;

    .line 7
    new-array v2, v1, [Lcom/android/tools/r8/internal/fy;

    iput-object v2, v7, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    .line 8
    new-array v2, v1, [Lcom/android/tools/r8/internal/Rq0;

    iput-object v2, v7, Lcom/android/tools/r8/internal/r2;->f:[Lcom/android/tools/r8/internal/Rq0;

    .line 9
    new-array v2, v1, [Z

    iput-object v2, v7, Lcom/android/tools/r8/internal/r2;->g:[Z

    .line 10
    new-array v1, v1, [I

    iput-object v1, v7, Lcom/android/tools/r8/internal/r2;->h:[I

    .line 11
    iput v10, v7, Lcom/android/tools/r8/internal/r2;->i:I

    move v1, v10

    .line 12
    :goto_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 13
    iget-object v2, v0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/pt0;

    .line 14
    iget-object v3, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v4, v2, Lcom/android/tools/r8/internal/pt0;->a:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v3

    .line 15
    iget-object v4, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v5, v2, Lcom/android/tools/r8/internal/pt0;->b:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_2

    .line 16
    iget-object v5, v7, Lcom/android/tools/r8/internal/r2;->d:[Ljava/util/List;

    aget-object v5, v5, v3

    if-nez v5, :cond_1

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v6, v7, Lcom/android/tools/r8/internal/r2;->d:[Ljava/util/List;

    aput-object v5, v6, v3

    .line 19
    :cond_1
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_3
    iget v1, v0, Lcom/android/tools/r8/internal/QW;->t:I

    .line 21
    new-instance v2, Lcom/android/tools/r8/internal/Rq0;

    const/4 v11, 0x0

    invoke-direct {v2, v11, v1, v11}, Lcom/android/tools/r8/internal/Rq0;-><init>(Lcom/android/tools/r8/internal/YQ;ILcom/android/tools/r8/internal/rL;)V

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v7, v10, v2, v3}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/Rq0;Ljava/util/ArrayList;)V

    .line 24
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 25
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 26
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/rL;

    .line 27
    iget-object v5, v4, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Rq0;

    if-nez v5, :cond_4

    .line 28
    new-instance v5, Lcom/android/tools/r8/internal/Rq0;

    iget-object v6, v4, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-direct {v5, v6, v1, v4}, Lcom/android/tools/r8/internal/Rq0;-><init>(Lcom/android/tools/r8/internal/YQ;ILcom/android/tools/r8/internal/rL;)V

    .line 29
    iget-object v6, v4, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v6, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v4, v4, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v4

    invoke-virtual {v7, v4, v5, v3}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/Rq0;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 31
    :cond_4
    iget-object v5, v5, Lcom/android/tools/r8/internal/Rq0;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move v1, v10

    .line 32
    :goto_3
    iget v2, v7, Lcom/android/tools/r8/internal/r2;->c:I

    if-ge v1, v2, :cond_7

    .line 33
    iget-object v2, v7, Lcom/android/tools/r8/internal/r2;->f:[Lcom/android/tools/r8/internal/Rq0;

    aget-object v3, v2, v1

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/android/tools/r8/internal/Rq0;->a:Lcom/android/tools/r8/internal/YQ;

    if-nez v3, :cond_6

    .line 34
    aput-object v11, v2, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 35
    :cond_7
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/r2;->c(Lcom/android/tools/r8/internal/pc;)Lcom/android/tools/r8/internal/fy;

    move-result-object v12

    .line 36
    invoke-virtual {v7, v10, v12, v11}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    .line 37
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/r2;->d(Lcom/android/tools/r8/internal/pc;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 38
    :goto_4
    iget v1, v7, Lcom/android/tools/r8/internal/r2;->i:I

    if-lez v1, :cond_1b

    .line 39
    iget-object v2, v7, Lcom/android/tools/r8/internal/r2;->h:[I

    add-int/lit8 v1, v1, -0x1

    iput v1, v7, Lcom/android/tools/r8/internal/r2;->i:I

    aget v13, v2, v1

    .line 40
    iget-object v1, v7, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    aget-object v14, v1, v13

    .line 41
    iget-object v1, v7, Lcom/android/tools/r8/internal/r2;->f:[Lcom/android/tools/r8/internal/Rq0;

    aget-object v1, v1, v13

    .line 42
    iget-object v2, v7, Lcom/android/tools/r8/internal/r2;->g:[Z

    aput-boolean v10, v2, v13

    .line 43
    :try_start_1
    iget-object v2, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v2, v13}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v15
    :try_end_1
    .catch Lcom/android/tools/r8/internal/s2; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 44
    :try_start_2
    iget v2, v15, Lcom/android/tools/r8/internal/H;->a:I

    .line 45
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/H;->a()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_18

    const/16 v4, 0xf

    if-eq v3, v4, :cond_18

    const/16 v4, 0xe

    if-ne v3, v4, :cond_8

    goto/16 :goto_e

    .line 46
    :cond_8
    invoke-virtual {v12, v14}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    move-result-object v3

    iget-object v4, v7, Lcom/android/tools/r8/internal/r2;->a:Lcom/android/tools/r8/internal/d6;

    invoke-virtual {v3, v15, v4}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/H;Lcom/android/tools/r8/internal/d6;)V

    if-nez v1, :cond_9

    move-object v6, v11

    goto :goto_5

    .line 47
    :cond_9
    new-instance v3, Lcom/android/tools/r8/internal/Rq0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/Rq0;-><init>(Lcom/android/tools/r8/internal/Rq0;)V

    move-object v6, v3

    .line 48
    :goto_5
    instance-of v1, v15, Lcom/android/tools/r8/internal/rL;

    if-eqz v1, :cond_d

    .line 49
    move-object v1, v15

    check-cast v1, Lcom/android/tools/r8/internal/rL;

    const/16 v3, 0xa7

    const/16 v4, 0xa8

    if-eq v2, v3, :cond_a

    if-eq v2, v4, :cond_a

    add-int/lit8 v3, v13, 0x1

    .line 50
    invoke-virtual {v7, v3, v12, v6}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v11, v15

    goto/16 :goto_12

    :catch_1
    move-exception v0

    goto/16 :goto_13

    .line 51
    :cond_a
    :goto_6
    iget-object v3, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v5, v1, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v3

    .line 52
    iget-object v5, v1, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    if-ne v2, v4, :cond_c

    .line 53
    new-instance v2, Lcom/android/tools/r8/internal/Rq0;

    iget v4, v0, Lcom/android/tools/r8/internal/QW;->t:I

    invoke-direct {v2, v5, v4, v1}, Lcom/android/tools/r8/internal/Rq0;-><init>(Lcom/android/tools/r8/internal/YQ;ILcom/android/tools/r8/internal/rL;)V

    invoke-virtual {v7, v3, v12, v2}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    :cond_b
    :goto_7
    move-object v11, v6

    goto/16 :goto_d

    .line 54
    :cond_c
    invoke-virtual {v7, v3, v12, v6}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    goto :goto_7

    .line 55
    :cond_d
    instance-of v1, v15, Lcom/android/tools/r8/internal/vU;

    if-eqz v1, :cond_e

    .line 56
    move-object v1, v15

    check-cast v1, Lcom/android/tools/r8/internal/vU;

    .line 57
    iget-object v2, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v3, v1, Lcom/android/tools/r8/internal/vU;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v2

    .line 58
    invoke-virtual {v7, v2, v12, v6}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    move v2, v10

    .line 59
    :goto_8
    iget-object v3, v1, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 60
    iget-object v3, v1, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/YQ;

    .line 61
    iget-object v4, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v3

    .line 62
    invoke-virtual {v7, v3, v12, v6}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 63
    :cond_e
    instance-of v1, v15, Lcom/android/tools/r8/internal/wr0;

    if-eqz v1, :cond_f

    .line 64
    move-object v1, v15

    check-cast v1, Lcom/android/tools/r8/internal/wr0;

    .line 65
    iget-object v2, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v3, v1, Lcom/android/tools/r8/internal/wr0;->i:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v2

    .line 66
    invoke-virtual {v7, v2, v12, v6}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    move v2, v10

    .line 67
    :goto_9
    iget-object v3, v1, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 68
    iget-object v3, v1, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/YQ;

    .line 69
    iget-object v4, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v3

    .line 70
    invoke-virtual {v7, v3, v12, v6}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    const/16 v1, 0xa9

    if-ne v2, v1, :cond_12

    if-eqz v6, :cond_11

    move v5, v10

    .line 71
    :goto_a
    iget-object v1, v6, Lcom/android/tools/r8/internal/Rq0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_b

    .line 72
    iget-object v1, v6, Lcom/android/tools/r8/internal/Rq0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/rL;

    .line 73
    iget-object v2, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v1

    .line 74
    iget-object v2, v7, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    aget-object v3, v2, v1

    if-eqz v3, :cond_10

    add-int/lit8 v2, v1, 0x1

    .line 75
    iget-object v4, v7, Lcom/android/tools/r8/internal/r2;->f:[Lcom/android/tools/r8/internal/Rq0;

    aget-object v16, v4, v1

    iget-object v4, v6, Lcom/android/tools/r8/internal/Rq0;->b:[Z

    move-object/from16 v1, p0

    move-object/from16 v17, v4

    move-object v4, v12

    move/from16 v18, v5

    move-object/from16 v5, v16

    move-object v11, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;[Z)V

    goto :goto_b

    :cond_10
    move/from16 v18, v5

    move-object v11, v6

    :goto_b
    add-int/lit8 v5, v18, 0x1

    move-object v6, v11

    const/4 v11, 0x0

    goto :goto_a

    .line 76
    :cond_11
    new-instance v0, Lcom/android/tools/r8/internal/s2;

    const-string v1, "RET instruction outside of a subroutine"

    invoke-direct {v0, v15, v1}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object v11, v6

    const/16 v1, 0xbf

    if-eq v2, v1, :cond_17

    const/16 v1, 0xac

    if-lt v2, v1, :cond_13

    const/16 v1, 0xb1

    if-le v2, v1, :cond_17

    :cond_13
    if-eqz v11, :cond_16

    .line 77
    instance-of v1, v15, Lcom/android/tools/r8/internal/Sw0;

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    .line 78
    move-object v1, v15

    check-cast v1, Lcom/android/tools/r8/internal/Sw0;

    iget v1, v1, Lcom/android/tools/r8/internal/Sw0;->g:I

    .line 79
    iget-object v4, v11, Lcom/android/tools/r8/internal/Rq0;->b:[Z

    aput-boolean v3, v4, v1

    const/16 v5, 0x16

    if-eq v2, v5, :cond_14

    const/16 v5, 0x18

    if-eq v2, v5, :cond_14

    const/16 v5, 0x37

    if-eq v2, v5, :cond_14

    const/16 v5, 0x39

    if-ne v2, v5, :cond_16

    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 80
    aput-boolean v3, v4, v1

    goto :goto_c

    .line 81
    :cond_15
    instance-of v1, v15, Lcom/android/tools/r8/internal/PB;

    if-eqz v1, :cond_16

    .line 82
    move-object v1, v15

    check-cast v1, Lcom/android/tools/r8/internal/PB;

    iget v1, v1, Lcom/android/tools/r8/internal/PB;->g:I

    .line 83
    iget-object v2, v11, Lcom/android/tools/r8/internal/Rq0;->b:[Z

    aput-boolean v3, v2, v1

    :cond_16
    :goto_c
    add-int/lit8 v1, v13, 0x1

    .line 84
    invoke-virtual {v7, v1, v12, v11}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    :cond_17
    :goto_d
    move-object v1, v11

    goto :goto_f

    .line 85
    :cond_18
    :goto_e
    invoke-virtual {v12, v14}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    add-int/lit8 v2, v13, 0x1

    .line 86
    invoke-virtual {v7, v2, v14, v1}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    .line 87
    :goto_f
    iget-object v2, v7, Lcom/android/tools/r8/internal/r2;->d:[Ljava/util/List;

    aget-object v2, v2, v13

    if-eqz v2, :cond_1a

    .line 88
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/pt0;

    .line 89
    iget-object v4, v3, Lcom/android/tools/r8/internal/pt0;->d:Ljava/lang/String;

    if-nez v4, :cond_19

    .line 90
    const-string v4, "java/lang/Throwable"

    invoke-static {v4}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v4

    goto :goto_11

    .line 91
    :cond_19
    invoke-static {v4}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v4

    .line 92
    :goto_11
    iget-object v5, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v6, v3, Lcom/android/tools/r8/internal/pt0;->c:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    .line 93
    invoke-static {v14}, Lcom/android/tools/r8/internal/r2;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    move-result-object v5

    .line 94
    iput v10, v5, Lcom/android/tools/r8/internal/fy;->d:I

    .line 95
    invoke-static {v4}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v4

    .line 96
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 97
    iget-object v6, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v11, v3, Lcom/android/tools/r8/internal/pt0;->c:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v6, v11}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v6

    invoke-virtual {v7, v6, v5, v1}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V

    .line 98
    new-instance v5, Lcom/android/tools/r8/internal/fy;

    .line 99
    iget v6, v12, Lcom/android/tools/r8/internal/fy;->c:I

    iget-object v11, v12, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    array-length v11, v11

    sub-int/2addr v11, v6

    invoke-direct {v5, v6, v11}, Lcom/android/tools/r8/internal/fy;-><init>(II)V

    .line 100
    invoke-virtual {v5, v12}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/fy;)Lcom/android/tools/r8/internal/fy;

    .line 101
    iput v10, v5, Lcom/android/tools/r8/internal/fy;->d:I

    .line 102
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/fy;->a(Lcom/android/tools/r8/internal/c6;)V

    .line 103
    iget-object v4, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    iget-object v3, v3, Lcom/android/tools/r8/internal/pt0;->c:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v3

    invoke-virtual {v7, v3, v5, v1}, Lcom/android/tools/r8/internal/r2;->a(ILcom/android/tools/r8/internal/fy;Lcom/android/tools/r8/internal/Rq0;)V
    :try_end_2
    .catch Lcom/android/tools/r8/internal/s2; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_10

    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    const/4 v11, 0x0

    .line 104
    :goto_12
    new-instance v1, Lcom/android/tools/r8/internal/s2;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-direct {v1, v11, v2, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 108
    :goto_13
    new-instance v1, Lcom/android/tools/r8/internal/s2;

    iget-object v2, v0, Lcom/android/tools/r8/internal/s2;->b:Lcom/android/tools/r8/internal/H;

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-direct {v1, v2, v3, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1b
    return-void

    :catch_3
    move-exception v0

    .line 112
    new-instance v1, Lcom/android/tools/r8/internal/s2;

    iget-object v2, v7, Lcom/android/tools/r8/internal/r2;->b:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 113
    const-string v4, "Error at instruction 0: "

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-direct {v1, v2, v3, v0}, Lcom/android/tools/r8/internal/s2;-><init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final b(Lcom/android/tools/r8/internal/pc;)V
    .locals 10

    iget-object v0, p1, Lcom/android/tools/r8/internal/QW;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/tt0;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    shr-int/2addr v0, v1

    iget v2, p1, Lcom/android/tools/r8/internal/QW;->c:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lcom/android/tools/r8/internal/OD;->b:I

    if-ltz v3, :cond_a

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    iget-object v3, v2, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    :goto_0
    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    instance-of v4, v2, Lcom/android/tools/r8/internal/Sw0;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    move-object v4, v2

    check-cast v4, Lcom/android/tools/r8/internal/Sw0;

    iget v4, v4, Lcom/android/tools/r8/internal/Sw0;->g:I

    iget v2, v2, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v6, 0x16

    if-eq v2, v6, :cond_2

    const/16 v6, 0x18

    if-eq v2, v6, :cond_2

    const/16 v6, 0x37

    if-eq v2, v6, :cond_2

    const/16 v6, 0x39

    if-ne v2, v6, :cond_3

    :cond_2
    move v5, v1

    :cond_3
    add-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_4
    instance-of v4, v2, Lcom/android/tools/r8/internal/PB;

    if-eqz v4, :cond_5

    check-cast v2, Lcom/android/tools/r8/internal/PB;

    iget v2, v2, Lcom/android/tools/r8/internal/PB;->g:I

    add-int/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_5
    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_6
    iput v0, p1, Lcom/android/tools/r8/internal/QW;->t:I

    const/4 v0, -0x1

    iput v0, p1, Lcom/android/tools/r8/internal/QW;->s:I

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r2;->a(Lcom/android/tools/r8/internal/pc;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_2
    if-ge v3, v1, :cond_9

    aget-object v5, v0, v3

    if-eqz v5, :cond_8

    move v6, v2

    move v7, v6

    :goto_3
    iget v8, v5, Lcom/android/tools/r8/internal/fy;->d:I

    if-ge v6, v8, :cond_7

    iget-object v8, v5, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget v9, v5, Lcom/android/tools/r8/internal/fy;->c:I

    add-int/2addr v9, v6

    aget-object v8, v8, v9

    check-cast v8, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/c6;->a()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    iput v4, p1, Lcom/android/tools/r8/internal/QW;->s:I

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final c(Lcom/android/tools/r8/internal/pc;)Lcom/android/tools/r8/internal/fy;
    .locals 7

    iget v0, p1, Lcom/android/tools/r8/internal/QW;->t:I

    iget v1, p1, Lcom/android/tools/r8/internal/QW;->s:I

    new-instance v2, Lcom/android/tools/r8/internal/fy;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/fy;-><init>(II)V

    iget v0, p1, Lcom/android/tools/r8/internal/QW;->c:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "dummy"

    invoke-static {v0}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p1, Lcom/android/tools/r8/internal/QW;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/tools/r8/internal/tt0;->b(Ljava/lang/String;)[Lcom/android/tools/r8/internal/tt0;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    invoke-static {v5}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    add-int/lit8 v6, v0, 0x1

    iget v5, v5, Lcom/android/tools/r8/internal/tt0;->a:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_1
    sget-object v5, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v2, v6, v5}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :pswitch_2
    move v0, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_3
    iget v1, p1, Lcom/android/tools/r8/internal/QW;->t:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/android/tools/r8/internal/d6;->a:Lcom/android/tools/r8/internal/tt0;

    sget-object v1, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/fy;->a(ILcom/android/tools/r8/internal/c6;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/QW;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/d6;->a(Lcom/android/tools/r8/internal/tt0;)Lcom/android/tools/r8/internal/c6;

    move-result-object p1

    iput-object p1, v2, Lcom/android/tools/r8/internal/fy;->a:Lcom/android/tools/r8/internal/c6;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public d(Lcom/android/tools/r8/internal/pc;)V
    .locals 0

    return-void
.end method
