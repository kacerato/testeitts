.class public final Lcom/android/tools/r8/internal/qP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/cP;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/cP;->b:Lcom/android/tools/r8/internal/cP;

    new-instance v0, Lcom/android/tools/r8/internal/aP;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/aP;-><init>(Z)V

    sget-object v1, Lcom/android/tools/r8/internal/bP;->b:Lcom/android/tools/r8/internal/bP;

    sget-object v2, Lcom/android/tools/r8/internal/bP;->d:Lcom/android/tools/r8/internal/bP;

    sget-object v3, Lcom/android/tools/r8/internal/bP;->c:Lcom/android/tools/r8/internal/bP;

    filled-new-array {v1, v2, v3}, [Lcom/android/tools/r8/internal/bP;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/aP;->a()Lcom/android/tools/r8/internal/cP;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/qP;->b:Lcom/android/tools/r8/internal/cP;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qP;->a:Ljava/util/function/Consumer;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/QM;)Lcom/android/tools/r8/internal/PM;
    .locals 2

    .line 277
    new-instance v0, Lcom/android/tools/r8/internal/Gq1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gq1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Hq1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Hq1;-><init>(Lcom/android/tools/r8/internal/QM;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/MM;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/PM;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/JO;)Lcom/android/tools/r8/internal/PM;
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/QM;->a(Lcom/android/tools/r8/internal/JO;)Lcom/android/tools/r8/internal/LO;

    move-result-object p0

    .line 279
    iget-object p0, p0, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    .line 280
    iget-object p0, p0, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/PM;)Lcom/android/tools/r8/internal/nP;
    .locals 1

    .line 89
    new-instance v0, Lcom/android/tools/r8/internal/nP;

    .line 90
    iget-object p0, p0, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    .line 91
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/NM;

    .line 92
    iget-object p0, p0, Lcom/android/tools/r8/internal/NM;->a:Lcom/android/tools/r8/internal/FO;

    .line 93
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object p0

    .line 94
    new-instance p1, Lcom/android/tools/r8/internal/oP;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/oP;-><init>(Lcom/android/tools/r8/internal/WM;)V

    .line 95
    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/nP;-><init>(Lcom/android/tools/r8/internal/oP;)V

    return-object v0
.end method

.method public static a(Ljava/util/HashSet;Lcom/android/tools/r8/internal/QM;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 2

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v1, Lcom/android/tools/r8/internal/Mq1;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/tools/r8/internal/Mq1;-><init>(Lcom/android/tools/r8/internal/QM;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/QM;Ljava/util/Map;Lcom/android/tools/r8/internal/ZM;)V
    .locals 2

    .line 61
    iget-object v0, p2, Lcom/android/tools/r8/internal/ZM;->a:Lcom/android/tools/r8/internal/MM;

    .line 62
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/qP;->a(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/QM;)Lcom/android/tools/r8/internal/PM;

    move-result-object v0

    .line 63
    sget-boolean v1, Lcom/android/tools/r8/internal/qP;->c:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 64
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/Kq1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Kq1;-><init>(Lcom/android/tools/r8/internal/QM;)V

    .line 65
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/nP;

    .line 66
    iget-object p0, p0, Lcom/android/tools/r8/internal/nP;->b:Ljava/util/HashSet;

    .line 67
    iget-object p1, p2, Lcom/android/tools/r8/internal/ZM;->a:Lcom/android/tools/r8/internal/MM;

    .line 68
    iget-object p1, p1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 69
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/QM;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/PM;)V
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    .line 53
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/NM;

    .line 54
    iget-object p0, p0, Lcom/android/tools/r8/internal/NM;->a:Lcom/android/tools/r8/internal/FO;

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FO;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object p0

    .line 57
    iget-object p0, p0, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    .line 58
    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/OO;

    .line 59
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-boolean p1, Lcom/android/tools/r8/internal/qP;->c:Z

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/oP;Ljava/util/Set;Lcom/android/tools/r8/internal/QM;Ljava/util/HashMap;Lcom/android/tools/r8/internal/pP;)V
    .locals 7

    .line 134
    sget-object v0, Lcom/android/tools/r8/internal/d60;->c:Lcom/android/tools/r8/internal/d60;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/PM;

    .line 137
    iget-object v4, p2, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    .line 138
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/NM;

    .line 139
    iget-object v4, v4, Lcom/android/tools/r8/internal/NM;->a:Lcom/android/tools/r8/internal/FO;

    .line 140
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FO;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    sget-object v0, Lcom/android/tools/r8/internal/d60;->e:Lcom/android/tools/r8/internal/d60;

    goto :goto_0

    :cond_1
    if-nez v2, :cond_0

    .line 142
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object v4

    .line 143
    iget-object v5, v4, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    .line 144
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    sget-object v6, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    if-ne v5, v6, :cond_2

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x1

    .line 147
    :cond_2
    iget-object v4, v4, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    .line 148
    invoke-virtual {p3, v3, v4}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 150
    sget-object p1, Lcom/android/tools/r8/internal/d60;->e:Lcom/android/tools/r8/internal/d60;

    if-ne v0, p1, :cond_4

    .line 151
    sget-object v0, Lcom/android/tools/r8/internal/d60;->d:Lcom/android/tools/r8/internal/d60;

    .line 152
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 153
    sget-object v0, Lcom/android/tools/r8/internal/d60;->d:Lcom/android/tools/r8/internal/d60;

    .line 154
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Bq1;

    invoke-direct {p1, p4, p3, v1, v0}, Lcom/android/tools/r8/internal/Bq1;-><init>(Lcom/android/tools/r8/internal/pP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    .line 155
    iget-object p2, p0, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    .line 156
    iget-object p2, p2, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 157
    iget-object p2, p2, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    .line 158
    check-cast p2, Lcom/android/tools/r8/internal/CO;

    .line 159
    iget-object p3, p2, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 160
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 161
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 162
    :cond_6
    iget-boolean p3, p2, Lcom/android/tools/r8/internal/CO;->b:Z

    if-nez p3, :cond_7

    .line 163
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 164
    :cond_7
    iget-object p3, p0, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    .line 165
    iget-object p3, p3, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 166
    iget-object p3, p3, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 167
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/mP;->d()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 168
    new-instance p2, Lcom/android/tools/r8/internal/oP;

    .line 169
    sget-object p3, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    .line 170
    new-instance p4, Lcom/android/tools/r8/internal/XM;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/XM;-><init>()V

    .line 171
    iget-object p0, p0, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    .line 172
    iget-object p4, p0, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 173
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 174
    sget-object v0, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    .line 175
    iget-object p4, p4, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 176
    iget-object p0, p0, Lcom/android/tools/r8/internal/WM;->c:Lcom/android/tools/r8/internal/x40;

    .line 177
    sget-boolean v1, Lcom/android/tools/r8/internal/VM;->a:Z

    if-nez v1, :cond_9

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 178
    :cond_9
    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/WM;

    .line 179
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 180
    iget-object v2, v0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 181
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    .line 182
    :cond_a
    new-instance p3, Lcom/android/tools/r8/internal/YM;

    invoke-direct {p3, p4, v0}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    .line 183
    :goto_2
    invoke-direct {v1, p3, p0}, Lcom/android/tools/r8/internal/WM;-><init>(Lcom/android/tools/r8/internal/YM;Lcom/android/tools/r8/internal/x40;)V

    .line 184
    invoke-direct {p2, v1}, Lcom/android/tools/r8/internal/oP;-><init>(Lcom/android/tools/r8/internal/WM;)V

    .line 185
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 186
    :cond_b
    iget-object p3, p0, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    .line 187
    iget-object p3, p3, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 188
    iget-object p3, p3, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 189
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 190
    new-instance p3, Lcom/android/tools/r8/internal/oP;

    .line 191
    sget-object p4, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    .line 192
    new-instance v0, Lcom/android/tools/r8/internal/XM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/XM;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    .line 194
    iget-object v1, v0, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 195
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 196
    sget-object v2, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    .line 197
    iget-object v1, v1, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 198
    iget-object v0, v0, Lcom/android/tools/r8/internal/WM;->c:Lcom/android/tools/r8/internal/x40;

    .line 199
    sget-boolean v1, Lcom/android/tools/r8/internal/VM;->a:Z

    if-nez v1, :cond_d

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 200
    :cond_d
    :goto_3
    iget-object p2, p2, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 201
    new-instance v1, Lcom/android/tools/r8/internal/WM;

    .line 202
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 203
    iget-object v3, v2, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 204
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_4

    .line 205
    :cond_e
    new-instance p4, Lcom/android/tools/r8/internal/YM;

    invoke-direct {p4, p2, v2}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    .line 206
    :goto_4
    invoke-direct {v1, p4, v0}, Lcom/android/tools/r8/internal/WM;-><init>(Lcom/android/tools/r8/internal/YM;Lcom/android/tools/r8/internal/x40;)V

    .line 207
    invoke-direct {p3, v1}, Lcom/android/tools/r8/internal/oP;-><init>(Lcom/android/tools/r8/internal/WM;)V

    .line 208
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 209
    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 210
    :cond_f
    new-instance p2, Lcom/android/tools/r8/internal/oP;

    .line 211
    sget-object p3, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    .line 212
    new-instance p4, Lcom/android/tools/r8/internal/XM;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/XM;-><init>()V

    .line 213
    iget-object p4, p0, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    .line 214
    iget-object v0, p4, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 215
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 216
    sget-object v1, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    .line 217
    iget-object v0, v0, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 218
    iget-object p4, p4, Lcom/android/tools/r8/internal/WM;->c:Lcom/android/tools/r8/internal/x40;

    .line 219
    sget-boolean v2, Lcom/android/tools/r8/internal/VM;->a:Z

    if-nez v2, :cond_11

    if-eqz p4, :cond_10

    goto :goto_5

    :cond_10
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 220
    :cond_11
    :goto_5
    new-instance v2, Lcom/android/tools/r8/internal/WM;

    .line 221
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 222
    iget-object v3, v1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 223
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_6

    .line 224
    :cond_12
    new-instance p3, Lcom/android/tools/r8/internal/YM;

    invoke-direct {p3, v0, v1}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    .line 225
    :goto_6
    invoke-direct {v2, p3, p4}, Lcom/android/tools/r8/internal/WM;-><init>(Lcom/android/tools/r8/internal/YM;Lcom/android/tools/r8/internal/x40;)V

    .line 226
    invoke-direct {p2, v2}, Lcom/android/tools/r8/internal/oP;-><init>(Lcom/android/tools/r8/internal/WM;)V

    .line 227
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 228
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/pP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;Lcom/android/tools/r8/internal/oP;)V
    .locals 0

    .line 229
    invoke-interface {p0, p4, p1, p2, p3}, Lcom/android/tools/r8/internal/pP;->a(Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    return-void
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/internal/QM;Ljava/util/Map;Lcom/android/tools/r8/internal/xP;)V
    .locals 1

    .line 70
    iget-object v0, p3, Lcom/android/tools/r8/internal/xP;->b:Lcom/android/tools/r8/internal/zN;

    .line 71
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zN;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    iget-object p0, p3, Lcom/android/tools/r8/internal/xP;->a:Lcom/android/tools/r8/internal/MM;

    .line 73
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/qP;->a(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/QM;)Lcom/android/tools/r8/internal/PM;

    move-result-object p0

    .line 74
    sget-boolean v0, Lcom/android/tools/r8/internal/qP;->c:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 75
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/Eq1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Eq1;-><init>(Lcom/android/tools/r8/internal/QM;)V

    .line 76
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/nP;

    .line 77
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/nP;->a(Lcom/android/tools/r8/internal/xP;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/PM;)Lcom/android/tools/r8/internal/nP;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/nP;

    iget-object p0, p0, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/NM;

    iget-object p0, p0, Lcom/android/tools/r8/internal/NM;->a:Lcom/android/tools/r8/internal/FO;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/oP;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/oP;-><init>(Lcom/android/tools/r8/internal/WM;)V

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/nP;-><init>(Lcom/android/tools/r8/internal/oP;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/DN;)Ljava/util/ArrayList;
    .locals 9

    .line 101
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 103
    iget-object v4, p1, Lcom/android/tools/r8/internal/DN;->b:Lcom/android/tools/r8/internal/QM;

    .line 104
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 105
    iget-object v1, p1, Lcom/android/tools/r8/internal/DN;->c:Lcom/android/tools/r8/internal/jP;

    .line 106
    new-instance v2, Lcom/android/tools/r8/internal/Qq1;

    invoke-direct {v2, v4, v7}, Lcom/android/tools/r8/internal/Qq1;-><init>(Lcom/android/tools/r8/internal/QM;Ljava/util/Map;)V

    .line 107
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/jP;->a(Ljava/util/function/Consumer;)V

    .line 108
    iget-object v1, p1, Lcom/android/tools/r8/internal/DN;->d:Lcom/android/tools/r8/internal/cN;

    .line 109
    new-instance v2, Lcom/android/tools/r8/internal/Cq1;

    invoke-direct {v2, v0, v4, v7}, Lcom/android/tools/r8/internal/Cq1;-><init>(Ljava/util/Set;Lcom/android/tools/r8/internal/QM;Ljava/util/Map;)V

    .line 110
    iget-object v1, v1, Lcom/android/tools/r8/internal/cN;->a:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 112
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/android/tools/r8/internal/b60;

    .line 114
    iget-object v2, p1, Lcom/android/tools/r8/internal/DN;->a:Lcom/android/tools/r8/internal/MN;

    .line 115
    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/b60;-><init>(Lcom/android/tools/r8/internal/MN;Ljava/util/HashSet;)V

    .line 116
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    new-instance v8, Lcom/android/tools/r8/internal/Dq1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Dq1;-><init>(Lcom/android/tools/r8/internal/qP;Ljava/util/List;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/QM;Ljava/util/Map;)V

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 118
    sget-boolean p1, Lcom/android/tools/r8/internal/qP;->c:Z

    if-nez p1, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object v6
.end method

.method public final a(Lcom/android/tools/r8/internal/BN;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/BN;->a()Lcom/android/tools/r8/internal/TM;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/BN;->a()Lcom/android/tools/r8/internal/TM;

    move-result-object v1

    .line 3
    iget-object v3, v1, Lcom/android/tools/r8/internal/TM;->d:Lcom/android/tools/r8/internal/MM;

    .line 4
    iget-object v4, v1, Lcom/android/tools/r8/internal/TM;->c:Lcom/android/tools/r8/internal/QM;

    .line 5
    iget v5, v1, Lcom/android/tools/r8/internal/TM;->b:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v2

    .line 6
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    const/4 v8, 0x2

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/MM;->d()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 8
    iget-object v8, v3, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 9
    sget-object v9, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 10
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v16, v9

    :goto_2
    move-object/from16 v17, v10

    goto :goto_3

    .line 11
    :cond_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/MM;->b()Lcom/android/tools/r8/internal/JO;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/internal/QM;->a(Lcom/android/tools/r8/internal/JO;)Lcom/android/tools/r8/internal/LO;

    move-result-object v8

    .line 12
    iget-object v9, v8, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    .line 13
    iget-object v9, v9, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 14
    iget-object v8, v8, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    .line 15
    iget-object v10, v3, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 16
    invoke-static {v10, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    .line 17
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v16, v8

    move-object v8, v9

    goto :goto_2

    .line 18
    :goto_3
    iget-object v4, v4, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    .line 19
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/NM;

    .line 20
    iget-object v4, v4, Lcom/android/tools/r8/internal/NM;->a:Lcom/android/tools/r8/internal/FO;

    .line 21
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object v4

    .line 22
    new-instance v8, Lcom/android/tools/r8/internal/oP;

    invoke-direct {v8, v4}, Lcom/android/tools/r8/internal/oP;-><init>(Lcom/android/tools/r8/internal/WM;)V

    .line 23
    new-instance v4, Lcom/android/tools/r8/internal/c60;

    .line 24
    iget-object v10, v1, Lcom/android/tools/r8/internal/TM;->a:Lcom/android/tools/r8/internal/MN;

    .line 25
    sget-object v12, Lcom/android/tools/r8/internal/cP;->b:Lcom/android/tools/r8/internal/cP;

    .line 26
    sget-object v15, Lcom/android/tools/r8/internal/d60;->f:Lcom/android/tools/r8/internal/d60;

    move-object v9, v4

    move-object v11, v8

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v15}, Lcom/android/tools/r8/internal/c60;-><init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/cP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    .line 27
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_5

    .line 28
    sget-object v4, Lcom/android/tools/r8/internal/bP;->b:Lcom/android/tools/r8/internal/bP;

    filled-new-array {v4}, [Lcom/android/tools/r8/internal/bP;

    move-result-object v4

    .line 29
    new-instance v5, Lcom/android/tools/r8/internal/aP;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/aP;-><init>(Z)V

    .line 30
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 31
    iget-object v6, v5, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    invoke-interface {v6, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/aP;->a()Lcom/android/tools/r8/internal/cP;

    move-result-object v4

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/MM;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 34
    new-instance v3, Lcom/android/tools/r8/internal/PM;

    const-string v5, "MEMBERS"

    invoke-direct {v3, v5}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v5, Lcom/android/tools/r8/internal/c60;

    .line 36
    iget-object v9, v1, Lcom/android/tools/r8/internal/TM;->a:Lcom/android/tools/r8/internal/MN;

    .line 37
    sget-object v1, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    .line 38
    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    .line 39
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    sget-object v14, Lcom/android/tools/r8/internal/d60;->d:Lcom/android/tools/r8/internal/d60;

    move-object v3, v8

    move-object v8, v5

    move-object v10, v3

    move-object v11, v4

    invoke-direct/range {v8 .. v14}, Lcom/android/tools/r8/internal/c60;-><init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/cP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    .line 40
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    move-object v3, v8

    .line 41
    new-instance v5, Lcom/android/tools/r8/internal/a60;

    .line 42
    iget-object v11, v1, Lcom/android/tools/r8/internal/TM;->a:Lcom/android/tools/r8/internal/MN;

    .line 43
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/internal/d60;->c:Lcom/android/tools/r8/internal/d60;

    move-object v9, v5

    move-object v12, v4

    move-object v13, v3

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/tools/r8/internal/a60;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    .line 44
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 45
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/BN;->b()Lcom/android/tools/r8/internal/DN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/qP;->a(Lcom/android/tools/r8/internal/DN;)Ljava/util/ArrayList;

    move-result-object v7

    .line 46
    :cond_5
    :goto_4
    invoke-static {v7}, Lcom/android/tools/r8/internal/e60;->a(Ljava/util/List;)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_5
    if-ge v2, v3, :cond_6

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/e60;

    .line 49
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/e60;->b(Ljava/lang/StringBuilder;)V

    .line 50
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 51
    :cond_6
    iget-object v2, v0, Lcom/android/tools/r8/internal/qP;->a:Ljava/util/function/Consumer;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/QM;Ljava/util/Map;Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/nP;)V
    .locals 7

    .line 119
    iget-object v5, p6, Lcom/android/tools/r8/internal/nP;->a:Lcom/android/tools/r8/internal/oP;

    .line 120
    iget-object p5, p6, Lcom/android/tools/r8/internal/nP;->b:Ljava/util/HashSet;

    invoke-virtual {p5}, Ljava/util/HashSet;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p6, Lcom/android/tools/r8/internal/nP;->c:Ljava/util/HashMap;

    invoke-virtual {p5}, Ljava/util/HashMap;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    .line 121
    iget-object p4, p6, Lcom/android/tools/r8/internal/nP;->c:Ljava/util/HashMap;

    new-instance p5, Lcom/android/tools/r8/internal/Nq1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, v5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/Nq1;-><init>(Lcom/android/tools/r8/internal/qP;Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/nP;)V

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    .line 122
    :cond_0
    iget-object p5, p6, Lcom/android/tools/r8/internal/nP;->c:Ljava/util/HashMap;

    invoke-virtual {p5}, Ljava/util/HashMap;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_2

    .line 123
    iget-object p5, p2, Lcom/android/tools/r8/internal/DN;->c:Lcom/android/tools/r8/internal/jP;

    .line 124
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/jP;->a()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 125
    iget-object p4, p6, Lcom/android/tools/r8/internal/nP;->c:Ljava/util/HashMap;

    new-instance p5, Lcom/android/tools/r8/internal/Oq1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, v5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Oq1;-><init>(Lcom/android/tools/r8/internal/qP;Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/QM;)V

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    .line 126
    :cond_1
    iget-object p5, p6, Lcom/android/tools/r8/internal/nP;->c:Ljava/util/HashMap;

    new-instance p6, Lcom/android/tools/r8/internal/Pq1;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/Pq1;-><init>(Lcom/android/tools/r8/internal/qP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/QM;)V

    invoke-virtual {p5, p6}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/Set;Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/nP;)V
    .locals 9

    move-object/from16 v0, p8

    .line 128
    iget-object v1, v0, Lcom/android/tools/r8/internal/nP;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p2

    .line 129
    iget-object v2, v1, Lcom/android/tools/r8/internal/DN;->a:Lcom/android/tools/r8/internal/MN;

    .line 130
    iget-object v3, v0, Lcom/android/tools/r8/internal/nP;->a:Lcom/android/tools/r8/internal/oP;

    iget-object v7, v0, Lcom/android/tools/r8/internal/nP;->b:Ljava/util/HashSet;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .line 131
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/HashSet;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V
    .locals 10

    move-object v0, p1

    .line 231
    sget-object v1, Lcom/android/tools/r8/internal/d60;->c:Lcom/android/tools/r8/internal/d60;

    move-object/from16 v9, p7

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    new-instance v1, Lcom/android/tools/r8/internal/a60;

    .line 233
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/tools/r8/internal/a60;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    .line 234
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 235
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/c60;

    move-object v2, v1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/c60;-><init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/cP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V
    .locals 10

    .line 236
    new-instance v9, Lcom/android/tools/r8/internal/Z50;

    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p7

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/internal/Z50;-><init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    move-object v0, p1

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/HashSet;Ljava/util/Set;)V
    .locals 12

    move-object v5, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 78
    iget-object v0, v5, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    .line 79
    iget-object v0, v0, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 80
    iget-object v0, v0, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 81
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, v5, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    .line 83
    iget-object v1, v8, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/WM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 85
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/HashSet;Ljava/util/Set;)V

    return-void

    .line 86
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p7

    .line 87
    invoke-static {v0, v9, v10}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/HashSet;Lcom/android/tools/r8/internal/QM;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v7

    .line 88
    new-instance v11, Lcom/android/tools/r8/internal/Fq1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p6

    move-object v5, p3

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/Fq1;-><init>(Lcom/android/tools/r8/internal/qP;Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;)V

    move-object/from16 v0, p8

    invoke-static {v8, v0, v9, v10, v11}, Lcom/android/tools/r8/internal/qP;->a(Lcom/android/tools/r8/internal/oP;Ljava/util/Set;Lcom/android/tools/r8/internal/QM;Ljava/util/HashMap;Lcom/android/tools/r8/internal/pP;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/Set;)V
    .locals 7

    .line 99
    iget-object v3, p3, Lcom/android/tools/r8/internal/DN;->a:Lcom/android/tools/r8/internal/MN;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 100
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/Set;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/nP;Lcom/android/tools/r8/internal/cP;Ljava/util/Set;)V
    .locals 8

    .line 96
    iget-object v3, p3, Lcom/android/tools/r8/internal/DN;->a:Lcom/android/tools/r8/internal/MN;

    .line 97
    iget-object v6, p5, Lcom/android/tools/r8/internal/nP;->b:Ljava/util/HashSet;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v7, p7

    .line 98
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/HashSet;Ljava/util/Set;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/HashSet;Ljava/util/Set;)V
    .locals 8

    .line 237
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 238
    invoke-static {p6, p4, v7}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/HashSet;Lcom/android/tools/r8/internal/QM;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v3

    .line 239
    new-instance p6, Lcom/android/tools/r8/internal/Jq1;

    move-object v0, p6

    move-object v1, p0

    move-object v2, v7

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/Jq1;-><init>(Lcom/android/tools/r8/internal/qP;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;)V

    invoke-static {p2, p7, p4, v7, p6}, Lcom/android/tools/r8/internal/qP;->a(Lcom/android/tools/r8/internal/oP;Ljava/util/Set;Lcom/android/tools/r8/internal/QM;Ljava/util/HashMap;Lcom/android/tools/r8/internal/pP;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/Set;)V
    .locals 2

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Iq1;

    invoke-direct {v1, p0, p1, p3, p5}, Lcom/android/tools/r8/internal/Iq1;-><init>(Lcom/android/tools/r8/internal/qP;Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;)V

    invoke-static {p2, p6, p4, v0, v1}, Lcom/android/tools/r8/internal/qP;->a(Lcom/android/tools/r8/internal/oP;Ljava/util/Set;Lcom/android/tools/r8/internal/QM;Ljava/util/HashMap;Lcom/android/tools/r8/internal/pP;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/Set;)V
    .locals 9

    .line 127
    new-instance v8, Lcom/android/tools/r8/internal/Lq1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/Lq1;-><init>(Lcom/android/tools/r8/internal/qP;Ljava/util/List;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/Set;)V

    move-object v0, p1

    invoke-interface {p1, v8}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V
    .locals 21

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    .line 240
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/PM;

    .line 242
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/OO;

    .line 243
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OO;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p2

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 244
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 245
    sget-object v4, Lcom/android/tools/r8/internal/QO;->k:Lcom/android/tools/r8/internal/QO;

    .line 246
    new-instance v4, Lcom/android/tools/r8/internal/PO;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/PO;-><init>()V

    .line 247
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OO;->d()Lcom/android/tools/r8/internal/IO;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/HO;->a(Lcom/android/tools/r8/internal/IO;)Lcom/android/tools/r8/internal/HO;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/PO;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/PO;->c()Lcom/android/tools/r8/internal/QO;

    move-result-object v17

    .line 248
    sget-object v4, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    .line 249
    sget-object v7, Lcom/android/tools/r8/internal/RO;->b:Lcom/android/tools/r8/internal/RO;

    .line 250
    sget-object v9, Lcom/android/tools/r8/internal/XO;->b:Lcom/android/tools/r8/internal/XO;

    .line 251
    sget-object v20, Lcom/android/tools/r8/internal/SO;->a:Lcom/android/tools/r8/internal/SO;

    .line 252
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    sget-object v10, Lcom/android/tools/r8/internal/RO;->c:Lcom/android/tools/r8/internal/RO;

    if-ne v10, v7, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    sget-object v10, Lcom/android/tools/r8/internal/RO;->d:Lcom/android/tools/r8/internal/RO;

    if-ne v10, v7, :cond_1

    .line 255
    :goto_1
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/ZO;->b()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 256
    sget-object v9, Lcom/android/tools/r8/internal/YO;->a:Lcom/android/tools/r8/internal/YO;

    :cond_1
    move-object/from16 v19, v9

    goto :goto_2

    .line 257
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Method constructor pattern must match \'void\' type."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :goto_2
    new-instance v9, Lcom/android/tools/r8/internal/WO;

    move-object v15, v9

    move-object/from16 v16, v4

    move-object/from16 v18, v7

    invoke-direct/range {v15 .. v20}, Lcom/android/tools/r8/internal/WO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/QO;Lcom/android/tools/r8/internal/RO;Lcom/android/tools/r8/internal/ZO;Lcom/android/tools/r8/internal/UO;)V

    .line 259
    invoke-virtual {v14, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v7, Lcom/android/tools/r8/internal/a60;

    .line 261
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object v9, v7

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v16, p9

    invoke-direct/range {v9 .. v16}, Lcom/android/tools/r8/internal/a60;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    .line 262
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 264
    sget-object v7, Lcom/android/tools/r8/internal/uO;->h:Lcom/android/tools/r8/internal/uO;

    .line 265
    new-instance v7, Lcom/android/tools/r8/internal/tO;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/tO;-><init>()V

    .line 266
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OO;->d()Lcom/android/tools/r8/internal/IO;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/tools/r8/internal/HO;->a(Lcom/android/tools/r8/internal/IO;)Lcom/android/tools/r8/internal/HO;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/tO;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/tO;->c()Lcom/android/tools/r8/internal/uO;

    move-result-object v2

    .line 267
    sget-object v7, Lcom/android/tools/r8/internal/vO;->b:Lcom/android/tools/r8/internal/vO;

    .line 268
    sget-object v9, Lcom/android/tools/r8/internal/yO;->b:Lcom/android/tools/r8/internal/yO;

    .line 269
    new-instance v10, Lcom/android/tools/r8/internal/xO;

    invoke-direct {v10, v4, v2, v7, v9}, Lcom/android/tools/r8/internal/xO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/uO;Lcom/android/tools/r8/internal/vO;Lcom/android/tools/r8/internal/zO;)V

    .line 270
    invoke-virtual {v14, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v2, Lcom/android/tools/r8/internal/a60;

    .line 272
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object v9, v2

    move-object/from16 v10, p2

    invoke-direct/range {v9 .. v16}, Lcom/android/tools/r8/internal/a60;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    .line 273
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v3, p2

    .line 274
    :cond_4
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v3, p2

    .line 275
    sget-object v0, Lcom/android/tools/r8/internal/d60;->c:Lcom/android/tools/r8/internal/d60;

    move-object/from16 v7, p9

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 276
    :cond_6
    new-instance v9, Lcom/android/tools/r8/internal/a60;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/a60;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
