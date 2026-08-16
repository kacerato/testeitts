.class public final Lcom/android/tools/r8/internal/Kw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/Kw;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/in0;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Kw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Kw;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/Kw;->d:Lcom/android/tools/r8/internal/Kw;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/android/tools/r8/internal/in0;->h:I

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Vm0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vm0;-><init>(I)V

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    sget p1, Lcom/android/tools/r8/internal/in0;->h:I

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/Vm0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Vm0;-><init>(I)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kw;->d()V

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kw;->d()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/in0;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kw;->d()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)I
    .locals 5

    .line 181
    check-cast p0, Lcom/android/tools/r8/internal/Ol;

    .line 182
    sget-object v0, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    .line 183
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 184
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 185
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 186
    iget v1, v1, Lcom/android/tools/r8/internal/Ek;->d:I

    .line 187
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->j()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 189
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 190
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 192
    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p1

    :goto_1
    add-int/2addr p1, p0

    return p1

    .line 193
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 194
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v3

    .line 195
    sget-object v4, Lcom/android/tools/r8/internal/Tx0;->d:Lcom/android/tools/r8/internal/Nx0;

    if-ne v0, v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    .line 196
    :cond_2
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    add-int/2addr v2, p1

    goto :goto_2

    :cond_3
    return v2

    .line 197
    :cond_4
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result p0

    .line 198
    sget-object v1, Lcom/android/tools/r8/internal/Tx0;->d:Lcom/android/tools/r8/internal/Nx0;

    if-ne v0, v1, :cond_5

    mul-int/lit8 p0, p0, 0x2

    .line 199
    :cond_5
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)I

    move-result p1

    goto :goto_1
.end method

.method public static a(Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)I
    .locals 2

    .line 141
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 142
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 144
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Ie;->b(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Ie;->a(J)I

    move-result p0

    return p0

    .line 145
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 146
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->d(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p0

    return p0

    .line 147
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    return v1

    .line 148
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    return v0

    .line 149
    :pswitch_4
    instance-of p0, p1, Lcom/android/tools/r8/internal/QI;

    if-eqz p0, :cond_0

    .line 150
    check-cast p1, Lcom/android/tools/r8/internal/QI;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->a(I)I

    move-result p0

    return p0

    .line 151
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->a(I)I

    move-result p0

    return p0

    .line 152
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p0

    return p0

    .line 153
    :pswitch_6
    instance-of p0, p1, Lcom/android/tools/r8/internal/m8;

    if-eqz p0, :cond_1

    .line 154
    check-cast p1, Lcom/android/tools/r8/internal/m8;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    .line 155
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result p0

    .line 156
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    .line 157
    :cond_1
    check-cast p1, [B

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    .line 158
    array-length p0, p1

    .line 159
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p1

    goto :goto_0

    .line 160
    :pswitch_7
    check-cast p1, Lcom/android/tools/r8/internal/kW;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    .line 161
    invoke-interface {p1}, Lcom/android/tools/r8/internal/kW;->getSerializedSize()I

    move-result p0

    .line 162
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p1

    goto :goto_0

    .line 163
    :pswitch_8
    check-cast p1, Lcom/android/tools/r8/internal/kW;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    .line 164
    invoke-interface {p1}, Lcom/android/tools/r8/internal/kW;->getSerializedSize()I

    move-result p0

    return p0

    .line 165
    :pswitch_9
    instance-of p0, p1, Lcom/android/tools/r8/internal/m8;

    if-eqz p0, :cond_2

    .line 166
    check-cast p1, Lcom/android/tools/r8/internal/m8;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    .line 167
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result p0

    .line 168
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p1

    goto :goto_0

    .line 169
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Ie;->a(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 170
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    const/4 p0, 0x1

    return p0

    .line 171
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    return v0

    .line 172
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    return v1

    .line 173
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_3

    .line 174
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result p0

    return p0

    .line 175
    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    const/16 p0, 0xa

    return p0

    .line 176
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Ie;->a(J)I

    move-result p0

    return p0

    .line 177
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 178
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Ie;->a(J)I

    move-result p0

    return p0

    .line 179
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    return v0

    .line 180
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static a(Ljava/util/Map$Entry;)I
    .locals 4

    .line 127
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw;

    .line 128
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 129
    check-cast v0, Lcom/android/tools/r8/internal/Ol;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->g()Lcom/android/tools/r8/internal/Vx0;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/Vx0;->j:Lcom/android/tools/r8/internal/Vx0;

    if-ne v2, v3, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Iw;

    check-cast p0, Lcom/android/tools/r8/internal/Ol;

    .line 133
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 134
    iget p0, p0, Lcom/android/tools/r8/internal/Ek;->d:I

    .line 135
    check-cast v1, Lcom/android/tools/r8/internal/kW;

    const/4 v0, 0x1

    .line 136
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v0

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    .line 137
    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    .line 138
    invoke-static {p0, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result p0

    const/4 v0, 0x3

    .line 139
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    add-int/2addr v0, p0

    return v0

    .line 140
    :cond_0
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/in0;Z)Lcom/android/tools/r8/internal/Vm0;
    .locals 5

    .line 9
    sget v0, Lcom/android/tools/r8/internal/in0;->h:I

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Vm0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vm0;-><init>(I)V

    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Iw;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 16
    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-virtual {v0, v3, v4}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Iw;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 23
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 26
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 42
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, [B

    .line 44
    array-length v0, p0

    new-array v0, v0, [B

    .line 45
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Ie;Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)V
    .locals 0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 57
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 58
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Ie;->b(J)J

    move-result-wide p1

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ie;->d(J)V

    return-void

    .line 60
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 61
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ie;->d(I)I

    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    return-void

    .line 63
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ie;->c(J)V

    return-void

    .line 65
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->e(I)V

    return-void

    .line 67
    :pswitch_4
    instance-of p1, p2, Lcom/android/tools/r8/internal/QI;

    if-eqz p1, :cond_0

    .line 68
    check-cast p2, Lcom/android/tools/r8/internal/QI;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->f(I)V

    return-void

    .line 70
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->f(I)V

    return-void

    .line 72
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    return-void

    .line 73
    :pswitch_6
    instance-of p1, p2, Lcom/android/tools/r8/internal/m8;

    if-eqz p1, :cond_1

    .line 74
    check-cast p2, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ie;->a(Lcom/android/tools/r8/internal/m8;)V

    return-void

    .line 75
    :cond_1
    check-cast p2, [B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    array-length p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ie;->a(I[B)V

    return-void

    .line 77
    :pswitch_7
    check-cast p2, Lcom/android/tools/r8/internal/kW;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ie;->a(Lcom/android/tools/r8/internal/kW;)V

    return-void

    .line 78
    :pswitch_8
    check-cast p2, Lcom/android/tools/r8/internal/kW;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-interface {p2, p0}, Lcom/android/tools/r8/internal/kW;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void

    .line 80
    :pswitch_9
    instance-of p1, p2, Lcom/android/tools/r8/internal/m8;

    if-eqz p1, :cond_2

    .line 81
    check-cast p2, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ie;->a(Lcom/android/tools/r8/internal/m8;)V

    return-void

    .line 82
    :cond_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ie;->b(Ljava/lang/String;)V

    return-void

    .line 83
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->a(B)V

    return-void

    .line 85
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->e(I)V

    return-void

    .line 86
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ie;->c(J)V

    return-void

    .line 87
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->f(I)V

    return-void

    .line 88
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ie;->d(J)V

    return-void

    .line 89
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ie;->d(J)V

    return-void

    .line 91
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->e(I)V

    return-void

    .line 93
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ie;->c(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;Lcom/android/tools/r8/internal/Ie;)V
    .locals 5

    .line 95
    check-cast p0, Lcom/android/tools/r8/internal/Ol;

    .line 96
    sget-object v0, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    .line 97
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 99
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 100
    iget v1, v1, Lcom/android/tools/r8/internal/Ek;->d:I

    .line 101
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz v2, :cond_4

    .line 102
    check-cast p1, Ljava/util/List;

    .line 103
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->j()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 104
    invoke-virtual {p2, v1, p0}, Lcom/android/tools/r8/internal/Ie;->d(II)V

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 106
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 109
    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Ie;Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)V

    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 111
    sget-object v2, Lcom/android/tools/r8/internal/Tx0;->d:Lcom/android/tools/r8/internal/Nx0;

    if-ne v0, v2, :cond_2

    .line 112
    check-cast p1, Lcom/android/tools/r8/internal/kW;

    .line 113
    invoke-virtual {p2, v1, v4}, Lcom/android/tools/r8/internal/Ie;->d(II)V

    .line 114
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/kW;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    .line 115
    invoke-virtual {p2, v1, v3}, Lcom/android/tools/r8/internal/Ie;->d(II)V

    goto :goto_2

    .line 116
    :cond_2
    iget v2, v0, Lcom/android/tools/r8/internal/Tx0;->c:I

    .line 117
    invoke-virtual {p2, v1, v2}, Lcom/android/tools/r8/internal/Ie;->d(II)V

    .line 118
    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Ie;Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void

    .line 119
    :cond_4
    sget-object p0, Lcom/android/tools/r8/internal/Tx0;->d:Lcom/android/tools/r8/internal/Nx0;

    if-ne v0, p0, :cond_5

    .line 120
    check-cast p1, Lcom/android/tools/r8/internal/kW;

    .line 121
    invoke-virtual {p2, v1, v4}, Lcom/android/tools/r8/internal/Ie;->d(II)V

    .line 122
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/kW;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    .line 123
    invoke-virtual {p2, v1, v3}, Lcom/android/tools/r8/internal/Ie;->d(II)V

    goto :goto_3

    .line 124
    :cond_5
    iget p0, v0, Lcom/android/tools/r8/internal/Tx0;->c:I

    .line 125
    invoke-virtual {p2, v1, p0}, Lcom/android/tools/r8/internal/Ie;->d(II)V

    .line 126
    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Ie;Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static a(Ljava/util/Map$Entry;Lcom/android/tools/r8/internal/Ie;)V
    .locals 3

    .line 46
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw;

    .line 47
    check-cast v0, Lcom/android/tools/r8/internal/Ol;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->g()Lcom/android/tools/r8/internal/Vx0;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/Vx0;->j:Lcom/android/tools/r8/internal/Vx0;

    if-ne v1, v2, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Iw;

    check-cast p0, Lcom/android/tools/r8/internal/Ol;

    .line 52
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 53
    iget p0, p0, Lcom/android/tools/r8/internal/Ek;->d:I

    .line 54
    check-cast v0, Lcom/android/tools/r8/internal/kW;

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Ie;->c(ILcom/android/tools/r8/internal/kW;)V

    return-void

    .line 55
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)Z
    .locals 2

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/internal/Tx0;->b:Lcom/android/tools/r8/internal/Vx0;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    .line 14
    :pswitch_0
    instance-of p0, p1, Lcom/android/tools/r8/internal/kW;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/android/tools/r8/internal/vR;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0

    .line 15
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3

    instance-of p0, p1, Lcom/android/tools/r8/internal/QI;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0

    .line 16
    :pswitch_2
    instance-of p0, p1, Lcom/android/tools/r8/internal/m8;

    if-nez p0, :cond_5

    instance-of p0, p1, [B

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v0

    .line 17
    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    return p0

    .line 18
    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    .line 19
    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    .line 20
    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    .line 21
    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    .line 22
    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method public static b(Ljava/util/Map$Entry;)Z
    .locals 4

    .line 23
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw;

    .line 24
    check-cast v0, Lcom/android/tools/r8/internal/Ol;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->g()Lcom/android/tools/r8/internal/Vx0;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/Vx0;->j:Lcom/android/tools/r8/internal/Vx0;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/kW;

    .line 27
    invoke-interface {v0}, Lcom/android/tools/r8/internal/mW;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 28
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 29
    instance-of v0, p0, Lcom/android/tools/r8/internal/kW;

    if-eqz v0, :cond_2

    .line 30
    check-cast p0, Lcom/android/tools/r8/internal/kW;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/mW;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 31
    :cond_2
    instance-of p0, p0, Lcom/android/tools/r8/internal/vR;

    if-eqz p0, :cond_3

    return v3

    .line 32
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public static c(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p0, Lcom/android/tools/r8/internal/Ol;

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, v0, v1

    .line 5
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Kw;->b(Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 8
    iget v2, v2, Lcom/android/tools/r8/internal/Ek;->d:I

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    .line 11
    iget-object p0, p0, Lcom/android/tools/r8/internal/Tx0;->b:Lcom/android/tools/r8/internal/Vx0;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 13
    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Iw;)Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    instance-of v0, p1, Lcom/android/tools/r8/internal/vR;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Lcom/android/tools/r8/internal/vR;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vR;->a()Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a()Ljava/util/Map;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Kw;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/in0;Z)Lcom/android/tools/r8/internal/Vm0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 4
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/in0;->e:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Vm0;->k()V

    :cond_0
    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 7
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/in0;->e:Z

    if-eqz v1, :cond_2

    return-object v0

    .line 8
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Kw;)V
    .locals 2

    const/4 v0, 0x0

    .line 33
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 34
    iget-object v1, v1, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 37
    iget-object v1, v1, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Kw;->c(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kw;->c(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ol;)Z
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 33
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 34
    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 37
    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 38
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Iw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Iw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final b(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/Ol;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/Kw;->c(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Kw;->c(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/util/Map$Entry;)V
    .locals 4

    .line 23
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw;

    .line 24
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 25
    check-cast v0, Lcom/android/tools/r8/internal/Ol;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 29
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->g()Lcom/android/tools/r8/internal/Vx0;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/Vx0;->j:Lcom/android/tools/r8/internal/Vx0;

    if-ne v1, v2, :cond_4

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 34
    :cond_3
    check-cast v1, Lcom/android/tools/r8/internal/kW;

    .line 35
    invoke-interface {v1}, Lcom/android/tools/r8/internal/kW;->toBuilder()Lcom/android/tools/r8/internal/jW;

    move-result-object v1

    check-cast p1, Lcom/android/tools/r8/internal/kW;

    .line 36
    check-cast v1, Lcom/android/tools/r8/internal/eW;

    check-cast p1, Lcom/android/tools/r8/internal/fW;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;

    move-result-object p1

    .line 37
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jW;->build()Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 39
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 15
    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 19
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 20
    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw;->b(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw;->b(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final clone()Lcom/android/tools/r8/internal/Kw;
    .locals 4

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Kw;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kw;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 4
    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 8
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Iw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/Kw;->b(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Iw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/Kw;->b(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Kw;->c:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/Kw;->c:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kw;->clone()Lcom/android/tools/r8/internal/Kw;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Kw;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Kw;->b:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/Kw;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Kw;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/in0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->hashCode()I

    move-result v0

    return v0
.end method
