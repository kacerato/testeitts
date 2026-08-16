.class public abstract Lcom/android/tools/r8/internal/cy0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/rM;Ljava/lang/String;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const-string v0, "."

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "substring(...)"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static final a(Lcom/android/tools/r8/internal/JP;Lcom/android/tools/r8/internal/rM;)Lcom/android/tools/r8/internal/J80;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/android/tools/r8/internal/L80;->q:Lcom/android/tools/r8/internal/L80;

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/J80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J80;-><init>()V

    .line 30
    instance-of v1, p0, Lcom/android/tools/r8/internal/LP;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 31
    sget-object p1, Lcom/android/tools/r8/internal/K80;->c:Lcom/android/tools/r8/internal/K80;

    .line 32
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 33
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 34
    check-cast p0, Lcom/android/tools/r8/internal/LP;

    .line 35
    iget-byte p0, p0, Lcom/android/tools/r8/internal/LP;->a:B

    int-to-long p0, p0

    .line 36
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    goto/16 :goto_1

    .line 37
    :cond_0
    instance-of v1, p0, Lcom/android/tools/r8/internal/MP;

    if-eqz v1, :cond_1

    .line 38
    sget-object p1, Lcom/android/tools/r8/internal/K80;->d:Lcom/android/tools/r8/internal/K80;

    .line 39
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 40
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 41
    check-cast p0, Lcom/android/tools/r8/internal/MP;

    .line 42
    iget-char p0, p0, Lcom/android/tools/r8/internal/MP;->a:C

    int-to-long p0, p0

    .line 43
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    goto/16 :goto_1

    .line 44
    :cond_1
    instance-of v1, p0, Lcom/android/tools/r8/internal/UP;

    if-eqz v1, :cond_2

    .line 45
    sget-object p1, Lcom/android/tools/r8/internal/K80;->e:Lcom/android/tools/r8/internal/K80;

    .line 46
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 47
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 48
    check-cast p0, Lcom/android/tools/r8/internal/UP;

    .line 49
    iget-short p0, p0, Lcom/android/tools/r8/internal/UP;->a:S

    int-to-long p0, p0

    .line 50
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    goto/16 :goto_1

    .line 51
    :cond_2
    instance-of v1, p0, Lcom/android/tools/r8/internal/QP;

    if-eqz v1, :cond_3

    .line 52
    sget-object p1, Lcom/android/tools/r8/internal/K80;->f:Lcom/android/tools/r8/internal/K80;

    .line 53
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 54
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 55
    check-cast p0, Lcom/android/tools/r8/internal/QP;

    .line 56
    iget p0, p0, Lcom/android/tools/r8/internal/QP;->a:I

    int-to-long p0, p0

    .line 57
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    goto/16 :goto_1

    .line 58
    :cond_3
    instance-of v1, p0, Lcom/android/tools/r8/internal/TP;

    if-eqz v1, :cond_4

    .line 59
    sget-object p1, Lcom/android/tools/r8/internal/K80;->g:Lcom/android/tools/r8/internal/K80;

    .line 60
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 61
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 62
    check-cast p0, Lcom/android/tools/r8/internal/TP;

    .line 63
    iget-wide p0, p0, Lcom/android/tools/r8/internal/TP;->a:J

    .line 64
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    goto/16 :goto_1

    .line 65
    :cond_4
    instance-of v1, p0, Lcom/android/tools/r8/internal/PP;

    if-eqz v1, :cond_5

    .line 66
    sget-object p1, Lcom/android/tools/r8/internal/K80;->h:Lcom/android/tools/r8/internal/K80;

    .line 67
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 68
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 69
    check-cast p0, Lcom/android/tools/r8/internal/PP;

    .line 70
    iget p0, p0, Lcom/android/tools/r8/internal/PP;->a:F

    or-int/lit8 p1, v1, 0x5

    .line 71
    iput p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 72
    iput p0, v0, Lcom/android/tools/r8/internal/J80;->f:F

    goto/16 :goto_1

    .line 73
    :cond_5
    instance-of v1, p0, Lcom/android/tools/r8/internal/NP;

    if-eqz v1, :cond_6

    .line 74
    sget-object p1, Lcom/android/tools/r8/internal/K80;->i:Lcom/android/tools/r8/internal/K80;

    .line 75
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 76
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 77
    check-cast p0, Lcom/android/tools/r8/internal/NP;

    .line 78
    iget-wide p0, p0, Lcom/android/tools/r8/internal/NP;->a:D

    or-int/lit8 v1, v1, 0x9

    .line 79
    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 80
    iput-wide p0, v0, Lcom/android/tools/r8/internal/J80;->g:D

    goto/16 :goto_1

    .line 81
    :cond_6
    instance-of v1, p0, Lcom/android/tools/r8/internal/KP;

    if-eqz v1, :cond_8

    .line 82
    sget-object p1, Lcom/android/tools/r8/internal/K80;->j:Lcom/android/tools/r8/internal/K80;

    .line 83
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 84
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 85
    check-cast p0, Lcom/android/tools/r8/internal/KP;

    .line 86
    iget-boolean p0, p0, Lcom/android/tools/r8/internal/KP;->a:Z

    if-eqz p0, :cond_7

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_7
    const-wide/16 p0, 0x0

    .line 87
    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    goto/16 :goto_1

    .line 88
    :cond_8
    instance-of v1, p0, Lcom/android/tools/r8/internal/WP;

    if-eqz v1, :cond_9

    .line 89
    sget-object p1, Lcom/android/tools/r8/internal/K80;->c:Lcom/android/tools/r8/internal/K80;

    .line 90
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 91
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 92
    check-cast p0, Lcom/android/tools/r8/internal/WP;

    .line 93
    iget-byte p0, p0, Lcom/android/tools/r8/internal/WP;->a:B

    int-to-long p0, p0

    const-wide/16 v3, 0xff

    and-long/2addr p0, v3

    .line 94
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    .line 95
    sget-object p0, Lcom/android/tools/r8/internal/yx;->O:Lcom/android/tools/r8/internal/vx;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    iget p0, p0, Lcom/android/tools/r8/internal/xx;->a:I

    shl-int p0, v2, p0

    .line 97
    iget p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 98
    iput p0, v0, Lcom/android/tools/r8/internal/J80;->n:I

    goto/16 :goto_1

    .line 99
    :cond_9
    instance-of v1, p0, Lcom/android/tools/r8/internal/ZP;

    if-eqz v1, :cond_a

    .line 100
    sget-object p1, Lcom/android/tools/r8/internal/K80;->e:Lcom/android/tools/r8/internal/K80;

    .line 101
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 102
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 103
    check-cast p0, Lcom/android/tools/r8/internal/ZP;

    .line 104
    iget-short p0, p0, Lcom/android/tools/r8/internal/ZP;->a:S

    int-to-long p0, p0

    const-wide/32 v3, 0xffff

    and-long/2addr p0, v3

    .line 105
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    .line 106
    sget-object p0, Lcom/android/tools/r8/internal/yx;->O:Lcom/android/tools/r8/internal/vx;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    iget p0, p0, Lcom/android/tools/r8/internal/xx;->a:I

    shl-int p0, v2, p0

    .line 108
    iget p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 109
    iput p0, v0, Lcom/android/tools/r8/internal/J80;->n:I

    goto/16 :goto_1

    .line 110
    :cond_a
    instance-of v1, p0, Lcom/android/tools/r8/internal/XP;

    if-eqz v1, :cond_b

    .line 111
    sget-object p1, Lcom/android/tools/r8/internal/K80;->f:Lcom/android/tools/r8/internal/K80;

    .line 112
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 113
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 114
    check-cast p0, Lcom/android/tools/r8/internal/XP;

    .line 115
    iget p0, p0, Lcom/android/tools/r8/internal/XP;->a:I

    int-to-long p0, p0

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    .line 116
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    .line 117
    sget-object p0, Lcom/android/tools/r8/internal/yx;->O:Lcom/android/tools/r8/internal/vx;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    iget p0, p0, Lcom/android/tools/r8/internal/xx;->a:I

    shl-int p0, v2, p0

    .line 119
    iget p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 120
    iput p0, v0, Lcom/android/tools/r8/internal/J80;->n:I

    goto/16 :goto_1

    .line 121
    :cond_b
    instance-of v1, p0, Lcom/android/tools/r8/internal/YP;

    if-eqz v1, :cond_c

    .line 122
    sget-object p1, Lcom/android/tools/r8/internal/K80;->g:Lcom/android/tools/r8/internal/K80;

    .line 123
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 124
    iput-object p1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 125
    check-cast p0, Lcom/android/tools/r8/internal/YP;

    .line 126
    iget-wide p0, p0, Lcom/android/tools/r8/internal/YP;->a:J

    .line 127
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    .line 128
    sget-object p0, Lcom/android/tools/r8/internal/yx;->O:Lcom/android/tools/r8/internal/vx;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    iget p0, p0, Lcom/android/tools/r8/internal/xx;->a:I

    shl-int p0, v2, p0

    .line 130
    iget p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 131
    iput p0, v0, Lcom/android/tools/r8/internal/J80;->n:I

    goto/16 :goto_1

    .line 132
    :cond_c
    instance-of v1, p0, Lcom/android/tools/r8/internal/VP;

    if-eqz v1, :cond_d

    .line 133
    sget-object v1, Lcom/android/tools/r8/internal/K80;->k:Lcom/android/tools/r8/internal/K80;

    .line 134
    iget v3, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 135
    iput-object v1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 136
    check-cast p0, Lcom/android/tools/r8/internal/VP;

    .line 137
    iget-object p0, p0, Lcom/android/tools/r8/internal/VP;->a:Ljava/lang/String;

    .line 138
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result p0

    .line 139
    iget p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 140
    iput p0, v0, Lcom/android/tools/r8/internal/J80;->h:I

    goto/16 :goto_1

    .line 141
    :cond_d
    instance-of v1, p0, Lcom/android/tools/r8/internal/RP;

    if-eqz v1, :cond_e

    .line 142
    sget-object v1, Lcom/android/tools/r8/internal/K80;->l:Lcom/android/tools/r8/internal/K80;

    .line 143
    iget v3, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 144
    iput-object v1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 145
    check-cast p0, Lcom/android/tools/r8/internal/RP;

    .line 146
    iget-object p0, p0, Lcom/android/tools/r8/internal/RP;->a:Ljava/lang/String;

    .line 147
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/rM;Ljava/lang/String;)I

    move-result p0

    .line 148
    iget p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit8 p1, p1, 0x20

    iput p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 149
    iput p0, v0, Lcom/android/tools/r8/internal/J80;->i:I

    goto/16 :goto_1

    .line 150
    :cond_e
    instance-of v1, p0, Lcom/android/tools/r8/internal/IP;

    if-eqz v1, :cond_f

    .line 151
    sget-object v1, Lcom/android/tools/r8/internal/K80;->l:Lcom/android/tools/r8/internal/K80;

    .line 152
    iget v3, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 153
    iput-object v1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 154
    check-cast p0, Lcom/android/tools/r8/internal/IP;

    .line 155
    iget-object v1, p0, Lcom/android/tools/r8/internal/IP;->a:Ljava/lang/String;

    .line 156
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/rM;Ljava/lang/String;)I

    move-result p1

    .line 157
    iget v1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 158
    iput p1, v0, Lcom/android/tools/r8/internal/J80;->i:I

    .line 159
    iget p0, p0, Lcom/android/tools/r8/internal/IP;->b:I

    or-int/lit16 p1, v1, 0x220

    .line 160
    iput p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 161
    iput p0, v0, Lcom/android/tools/r8/internal/J80;->m:I

    goto :goto_1

    .line 162
    :cond_f
    instance-of v1, p0, Lcom/android/tools/r8/internal/OP;

    if-eqz v1, :cond_10

    .line 163
    sget-object v1, Lcom/android/tools/r8/internal/K80;->m:Lcom/android/tools/r8/internal/K80;

    .line 164
    iget v3, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 165
    iput-object v1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 166
    check-cast p0, Lcom/android/tools/r8/internal/OP;

    .line 167
    iget-object v1, p0, Lcom/android/tools/r8/internal/OP;->a:Ljava/lang/String;

    .line 168
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/rM;Ljava/lang/String;)I

    move-result v1

    .line 169
    iget v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 170
    iput v1, v0, Lcom/android/tools/r8/internal/J80;->i:I

    .line 171
    iget-object p0, p0, Lcom/android/tools/r8/internal/OP;->b:Ljava/lang/String;

    .line 172
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result p0

    .line 173
    iget p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit8 p1, p1, 0x40

    iput p1, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 174
    iput p0, v0, Lcom/android/tools/r8/internal/J80;->j:I

    goto :goto_1

    .line 175
    :cond_10
    instance-of v1, p0, Lcom/android/tools/r8/internal/HP;

    if-eqz v1, :cond_12

    .line 176
    sget-object v1, Lcom/android/tools/r8/internal/K80;->n:Lcom/android/tools/r8/internal/K80;

    .line 177
    iget v3, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 178
    iput-object v1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 179
    check-cast p0, Lcom/android/tools/r8/internal/HP;

    .line 180
    iget-object p0, p0, Lcom/android/tools/r8/internal/HP;->a:Lcom/android/tools/r8/internal/GP;

    .line 181
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/GP;Lcom/android/tools/r8/internal/rM;)Lcom/android/tools/r8/internal/N80;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/N80;->c()Lcom/android/tools/r8/internal/O80;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/O80;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 184
    iput-object p0, v0, Lcom/android/tools/r8/internal/J80;->k:Lcom/android/tools/r8/internal/O80;

    .line 185
    iget p0, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit16 p0, p0, 0x80

    iput p0, v0, Lcom/android/tools/r8/internal/J80;->c:I

    :goto_1
    return-object v0

    .line 186
    :cond_11
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 187
    throw p0

    .line 188
    :cond_12
    instance-of v1, p0, Lcom/android/tools/r8/internal/JP$a;

    if-eqz v1, :cond_16

    .line 189
    sget-object v1, Lcom/android/tools/r8/internal/K80;->o:Lcom/android/tools/r8/internal/K80;

    .line 190
    iget v3, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 191
    iput-object v1, v0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 192
    check-cast p0, Lcom/android/tools/r8/internal/JP$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JP$a;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/JP;

    .line 193
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/JP;Lcom/android/tools/r8/internal/rM;)Lcom/android/tools/r8/internal/J80;

    move-result-object v1

    .line 194
    iget v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    const/16 v3, 0x100

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_13

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    .line 196
    iget v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 197
    :cond_13
    iget-object v2, v0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    .line 198
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/J80;->c()Lcom/android/tools/r8/internal/L80;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L80;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 200
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 201
    :cond_14
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 202
    throw p0

    :cond_15
    return-object v0

    .line 203
    :cond_16
    new-instance p0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw p0
.end method

.method public static final a(Lcom/android/tools/r8/internal/GP;Lcom/android/tools/r8/internal/rM;)Lcom/android/tools/r8/internal/N80;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/O80;->h:Lcom/android/tools/r8/internal/O80;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/N80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/N80;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GP;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/rM;Ljava/lang/String;)I

    move-result v1

    .line 4
    iget v2, v0, Lcom/android/tools/r8/internal/N80;->c:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/tools/r8/internal/N80;->c:I

    .line 5
    iput v1, v0, Lcom/android/tools/r8/internal/N80;->d:I

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GP;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/JP;

    .line 7
    sget-object v3, Lcom/android/tools/r8/internal/M80;->h:Lcom/android/tools/r8/internal/M80;

    .line 8
    new-instance v3, Lcom/android/tools/r8/internal/H80;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/H80;-><init>()V

    .line 9
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v2

    .line 10
    iget v4, v3, Lcom/android/tools/r8/internal/H80;->c:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/tools/r8/internal/H80;->c:I

    .line 11
    iput v2, v3, Lcom/android/tools/r8/internal/H80;->d:I

    .line 12
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/JP;Lcom/android/tools/r8/internal/rM;)Lcom/android/tools/r8/internal/J80;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/J80;->c()Lcom/android/tools/r8/internal/L80;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L80;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    iput-object v1, v3, Lcom/android/tools/r8/internal/H80;->e:Lcom/android/tools/r8/internal/L80;

    .line 16
    iget v1, v3, Lcom/android/tools/r8/internal/H80;->c:I

    const/4 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v3, Lcom/android/tools/r8/internal/H80;->c:I

    .line 17
    iget v1, v0, Lcom/android/tools/r8/internal/N80;->c:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    .line 19
    iget v1, v0, Lcom/android/tools/r8/internal/N80;->c:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/tools/r8/internal/N80;->c:I

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    .line 21
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H80;->c()Lcom/android/tools/r8/internal/M80;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/M80;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 25
    throw p0

    .line 26
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 27
    throw p0

    :cond_3
    return-object v0
.end method
