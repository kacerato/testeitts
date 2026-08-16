.class public final Lcom/android/tools/r8/internal/Ar0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/Ar0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xu0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Ar0;

    sget v1, Lcom/android/tools/r8/internal/xu0;->a:I

    sget-object v1, Lcom/android/tools/r8/internal/wu0;->a:Lcom/android/tools/r8/internal/xu0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Ar0;-><init>(Lcom/android/tools/r8/internal/xu0;)V

    sput-object v0, Lcom/android/tools/r8/internal/Ar0;->b:Lcom/android/tools/r8/internal/Ar0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ar0;->a:Lcom/android/tools/r8/internal/xu0;

    return-void
.end method

.method public static a(IILjava/util/List;Lcom/android/tools/r8/internal/Br0;)V
    .locals 4

    .line 88
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 89
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 90
    const-string v1, ": "

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p1, 0x7

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 91
    check-cast v0, Ljava/lang/Integer;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%08x"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    const-string p2, "Bad tag: "

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_1
    check-cast v0, Lcom/android/tools/r8/internal/pv0;

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/pv0;Lcom/android/tools/r8/internal/Br0;)V

    goto/16 :goto_5

    .line 96
    :cond_2
    :try_start_0
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/m8;

    sget-object v2, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 97
    new-instance v2, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/kv0;-><init>()V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_2

    .line 98
    :try_start_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->b()Lcom/android/tools/r8/internal/Be;

    move-result-object v1

    .line 99
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/kv0;->a(ILcom/android/tools/r8/internal/Be;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 101
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Be;->a(I)V
    :try_end_1
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :try_start_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object v1

    .line 103
    const-string v2, "{"

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Br0;->a()V

    .line 105
    iget-object v2, p3, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v1, p3}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/pv0;Lcom/android/tools/r8/internal/Br0;)V

    .line 107
    iget-object v1, p3, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    iget-object v2, p3, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 109
    const-string v1, "}"

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 110
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " Outdent() without matching Indent()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :goto_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 112
    :goto_3
    throw v1
    :try_end_2
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    :catch_2
    const-string v1, "\""

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 114
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    sget-object v2, Lcom/android/tools/r8/internal/Cr0;->a:Ljava/util/logging/Logger;

    .line 115
    new-instance v2, Lcom/android/tools/r8/internal/Dr0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Dr0;-><init>(Lcom/android/tools/r8/internal/m8;)V

    invoke-static {v2}, Lcom/android/tools/r8/internal/Gr0;->a(Lcom/android/tools/r8/internal/Fr0;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 118
    :cond_6
    check-cast v0, Ljava/lang/Long;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%016x"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 119
    :cond_7
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/android/tools/r8/internal/Cr0;->a:Ljava/util/logging/Logger;

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    .line 121
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_4
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 123
    :goto_5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Br0;->a()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/pv0;Lcom/android/tools/r8/internal/Br0;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/mv0;

    .line 6
    iget-object v3, v2, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    const/4 v4, 0x0

    .line 7
    invoke-static {v1, v4, v3, p1}, Lcom/android/tools/r8/internal/Ar0;->a(IILjava/util/List;Lcom/android/tools/r8/internal/Br0;)V

    const/4 v3, 0x5

    .line 8
    iget-object v4, v2, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    .line 9
    invoke-static {v1, v3, v4, p1}, Lcom/android/tools/r8/internal/Ar0;->a(IILjava/util/List;Lcom/android/tools/r8/internal/Br0;)V

    const/4 v3, 0x1

    .line 10
    iget-object v4, v2, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    .line 11
    invoke-static {v1, v3, v4, p1}, Lcom/android/tools/r8/internal/Ar0;->a(IILjava/util/List;Lcom/android/tools/r8/internal/Br0;)V

    .line 12
    iget-object v3, v2, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    const/4 v4, 0x2

    .line 13
    invoke-static {v1, v4, v3, p1}, Lcom/android/tools/r8/internal/Ar0;->a(IILjava/util/List;Lcom/android/tools/r8/internal/Br0;)V

    .line 14
    iget-object v1, v2, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/pv0;

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 17
    const-string v3, " {"

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Br0;->a()V

    .line 19
    iget-object v3, p1, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/pv0;Lcom/android/tools/r8/internal/Br0;)V

    .line 21
    iget-object v2, p1, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    iget-object v3, p1, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 23
    const-string v2, "}"

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Br0;->a()V

    goto :goto_0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " Outdent() without matching Indent()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;Lcom/android/tools/r8/internal/Br0;)V
    .locals 6

    .line 124
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 125
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    const-string v0, "["

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    .line 128
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cl;->f()Lcom/android/tools/r8/internal/Tk;

    move-result-object v0

    .line 129
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Tk;->d:Z

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 131
    sget-object v1, Lcom/android/tools/r8/internal/Nl;->e:Lcom/android/tools/r8/internal/Nl;

    if-ne v0, v1, :cond_2

    .line 132
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 133
    iget v0, v0, Lcom/android/tools/r8/internal/Ek;->e:I

    .line 134
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ck;->a(I)Lcom/android/tools/r8/internal/Ck;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    .line 136
    :cond_0
    sget-object v1, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    if-ne v0, v1, :cond_2

    .line 137
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->f:Lcom/android/tools/r8/internal/Cl;

    .line 139
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->h()Lcom/android/tools/r8/internal/Cl;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->h()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    .line 141
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    .line 142
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ol;->d:Ljava/lang/String;

    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "This field is not an extension. ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 145
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->d:Ljava/lang/String;

    .line 146
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 148
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 149
    sget-object v1, Lcom/android/tools/r8/internal/Nl;->d:Lcom/android/tools/r8/internal/Nl;

    if-ne v0, v1, :cond_4

    .line 150
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->h()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    .line 151
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    .line 152
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hk;->getName()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 154
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->getName()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 156
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 157
    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    .line 158
    sget-object v1, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v0, v1, :cond_5

    .line 159
    const-string v0, " {"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Br0;->a()V

    .line 161
    iget-object v0, p3, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 162
    :cond_5
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 163
    :goto_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "\""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 165
    :pswitch_0
    check-cast p2, Lcom/android/tools/r8/internal/Kl;

    .line 166
    iget-object p2, p2, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    .line 167
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/tk;->getName()Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 169
    :pswitch_1
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 170
    instance-of v0, p2, Lcom/android/tools/r8/internal/m8;

    if-eqz v0, :cond_6

    .line 171
    check-cast p2, Lcom/android/tools/r8/internal/m8;

    sget-object v0, Lcom/android/tools/r8/internal/Cr0;->a:Ljava/util/logging/Logger;

    .line 172
    new-instance v0, Lcom/android/tools/r8/internal/Dr0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Dr0;-><init>(Lcom/android/tools/r8/internal/m8;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/Gr0;->a(Lcom/android/tools/r8/internal/Fr0;)Ljava/lang/String;

    move-result-object p2

    .line 173
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 174
    :cond_6
    check-cast p2, [B

    sget-object v0, Lcom/android/tools/r8/internal/Cr0;->a:Ljava/util/logging/Logger;

    .line 175
    new-instance v0, Lcom/android/tools/r8/internal/Er0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Er0;-><init>([B)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/Gr0;->a(Lcom/android/tools/r8/internal/Fr0;)Ljava/lang/String;

    move-result-object p2

    .line 176
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 177
    :goto_3
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 178
    :pswitch_2
    check-cast p2, Lcom/android/tools/r8/internal/fW;

    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/nW;Lcom/android/tools/r8/internal/Br0;)V

    goto/16 :goto_6

    .line 179
    :pswitch_3
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 180
    check-cast p2, Ljava/lang/String;

    .line 181
    invoke-static {p2}, Lcom/android/tools/r8/internal/m8;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/i8;

    move-result-object p2

    .line 182
    new-instance v0, Lcom/android/tools/r8/internal/Dr0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Dr0;-><init>(Lcom/android/tools/r8/internal/m8;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/Gr0;->a(Lcom/android/tools/r8/internal/Fr0;)Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 185
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 186
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/android/tools/r8/internal/Cr0;->a:Ljava/util/logging/Logger;

    if-ltz p2, :cond_7

    .line 187
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_7
    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 188
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    .line 189
    :goto_4
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 190
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 191
    :pswitch_7
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object p2, Lcom/android/tools/r8/internal/Cr0;->a:Ljava/util/logging/Logger;

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-ltz p2, :cond_8

    .line 192
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_8
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    .line 193
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p2

    .line 194
    :goto_5
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 195
    :pswitch_8
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 196
    :pswitch_9
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 197
    :pswitch_a
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 198
    :goto_6
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 199
    iget-object p1, p1, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    if-ne p1, v1, :cond_a

    .line 200
    iget-object p1, p3, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_9

    .line 201
    iget-object p2, p3, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 202
    const-string p1, "}"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 203
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " Outdent() without matching Indent()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_a
    :goto_7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Br0;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/nW;Lcom/android/tools/r8/internal/Br0;)V
    .locals 11

    .line 26
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    .line 27
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    .line 28
    const-string v1, "google.protobuf.Any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 29
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    .line 30
    iget-object v2, v0, Lcom/android/tools/r8/internal/Cl;->h:[Lcom/android/tools/r8/internal/Ol;

    .line 31
    array-length v3, v2

    .line 32
    sget-object v4, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    .line 33
    sget-object v4, Lcom/android/tools/r8/internal/Ul;->a:Ljava/util/logging/Logger;

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v5, v1

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-gt v5, v3, :cond_1

    add-int v8, v5, v3

    .line 34
    div-int/2addr v8, v7

    .line 35
    aget-object v9, v2, v8

    .line 36
    iget-object v10, v9, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 37
    iget v10, v10, Lcom/android/tools/r8/internal/Ek;->d:I

    if-ge v4, v10, :cond_0

    add-int/lit8 v3, v8, -0x1

    goto :goto_0

    :cond_0
    if-le v4, v10, :cond_2

    add-int/lit8 v5, v8, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v6

    .line 38
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cl;->h:[Lcom/android/tools/r8/internal/Ol;

    array-length v2, v0

    .line 39
    sget-object v3, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    .line 40
    sget-object v3, Lcom/android/tools/r8/internal/Ul;->a:Ljava/util/logging/Logger;

    sub-int/2addr v2, v4

    move v3, v1

    :goto_1
    if-gt v3, v2, :cond_5

    add-int v5, v3, v2

    .line 41
    div-int/2addr v5, v7

    .line 42
    aget-object v8, v0, v5

    .line 43
    iget-object v10, v8, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 44
    iget v10, v10, Lcom/android/tools/r8/internal/Ek;->d:I

    if-ge v7, v10, :cond_3

    add-int/lit8 v2, v5, -0x1

    goto :goto_1

    :cond_3
    if-le v7, v10, :cond_4

    add-int/lit8 v3, v5, 0x1

    goto :goto_1

    :cond_4
    move-object v6, v8

    :cond_5
    if-eqz v9, :cond_b

    .line 45
    iget-object v0, v9, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 46
    sget-object v2, Lcom/android/tools/r8/internal/Nl;->c:Lcom/android/tools/r8/internal/Nl;

    if-ne v0, v2, :cond_b

    if-eqz v6, :cond_b

    .line 47
    iget-object v0, v6, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 48
    sget-object v2, Lcom/android/tools/r8/internal/Nl;->f:Lcom/android/tools/r8/internal/Nl;

    if-eq v0, v2, :cond_6

    goto/16 :goto_2

    .line 49
    :cond_6
    invoke-interface {p1, v9}, Lcom/android/tools/r8/internal/nW;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 51
    :cond_7
    invoke-interface {p1, v6}, Lcom/android/tools/r8/internal/nW;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v2

    .line 52
    :try_start_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ar0;->a:Lcom/android/tools/r8/internal/xu0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    array-length v5, v3

    if-eq v5, v4, :cond_a

    .line 55
    array-length v5, v3

    sub-int/2addr v5, v4

    aget-object v3, v3, v5

    .line 56
    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Cl;

    if-nez v3, :cond_8

    goto :goto_2

    .line 57
    :cond_8
    invoke-static {v3}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;)Lcom/android/tools/r8/internal/wt;

    move-result-object v3

    .line 58
    new-instance v4, Lcom/android/tools/r8/internal/vt;

    iget-object v3, v3, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    .line 59
    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/vt;-><init>(Lcom/android/tools/r8/internal/Cl;)V

    .line 60
    check-cast v2, Lcom/android/tools/r8/internal/m8;

    invoke-interface {v4, v2}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/eW;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const-string p1, "["

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 63
    const-string p1, "] {"

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Br0;->a()V

    .line 65
    iget-object p1, p2, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0, v4, p2}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/nW;Lcom/android/tools/r8/internal/Br0;)V

    .line 67
    iget-object p1, p2, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_9

    .line 68
    iget-object v0, p2, Lcom/android/tools/r8/internal/Br0;->b:Ljava/lang/StringBuilder;

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 69
    const-string p1, "}"

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Br0;->a(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Br0;->a()V

    return-void

    .line 71
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " Outdent() without matching Indent()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_a
    :try_start_1
    new-instance v2, Lcom/android/tools/r8/internal/MJ;

    const-string v3, "Invalid type url found: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :catch_0
    :cond_b
    :goto_2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ol;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 75
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ol;->i()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 78
    new-instance v6, Lcom/android/tools/r8/internal/zr0;

    invoke-direct {v6, v3, v5}, Lcom/android/tools/r8/internal/zr0;-><init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 79
    :cond_d
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 80
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v1

    :goto_5
    if-ge v5, v2, :cond_c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/zr0;

    .line 81
    iget-object v6, v6, Lcom/android/tools/r8/internal/zr0;->b:Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, v3, v6, p2}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;Lcom/android/tools/r8/internal/Br0;)V

    goto :goto_5

    .line 83
    :cond_e
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 84
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 85
    invoke-virtual {p0, v3, v4, p2}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;Lcom/android/tools/r8/internal/Br0;)V

    goto :goto_6

    .line 86
    :cond_f
    invoke-virtual {p0, v3, v2, p2}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;Lcom/android/tools/r8/internal/Br0;)V

    goto :goto_3

    .line 87
    :cond_10
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getUnknownFields()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/pv0;Lcom/android/tools/r8/internal/Br0;)V

    return-void
.end method
