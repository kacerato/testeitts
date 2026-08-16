.class public Lcom/android/tools/r8/internal/DR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lcom/android/tools/r8/internal/ll0;

.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/internal/Ef0;

.field public final c:Z

.field public final d:I

.field public e:Lcom/android/tools/r8/origin/Origin;

.field public f:Lcom/android/tools/r8/internal/gL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/ll0;->a(III)Lcom/android/tools/r8/internal/ll0;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/DR;->g:Lcom/android/tools/r8/internal/ll0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/DR;->a:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/DR;->b:Lcom/android/tools/r8/internal/Ef0;

    iput p4, p0, Lcom/android/tools/r8/internal/DR;->d:I

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/DR;->c:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/IR$a;)V
    .locals 10

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 88
    const-string v1, "rewrite_prefix"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 90
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 91
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 92
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 93
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 94
    iget-object v1, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 95
    iget v2, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 96
    :goto_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v1, v3, :cond_2

    if-eq v1, v3, :cond_1

    .line 97
    iget v3, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v3, v2, :cond_0

    .line 98
    iget-object v3, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 99
    iget-object v4, v1, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 100
    check-cast v4, Ljava/lang/String;

    .line 101
    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 102
    check-cast v1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/android/tools/r8/internal/IR$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/IR$a;

    move-object v1, v3

    goto :goto_0

    .line 103
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 104
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "retarget_lib_member"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 107
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 108
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 109
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 110
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 111
    iget-object v1, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 112
    iget v2, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 113
    :goto_1
    iget-object v3, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v1, v3, :cond_5

    if-eq v1, v3, :cond_4

    .line 114
    iget v3, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v3, v2, :cond_3

    .line 115
    iget-object v3, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 116
    iget-object v4, v1, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 117
    check-cast v4, Ljava/lang/String;

    .line 118
    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 119
    check-cast v1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/android/tools/r8/internal/IR$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_1

    .line 120
    :cond_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 121
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "backport"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 123
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 124
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 125
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 126
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 127
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 128
    iget-object v1, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 129
    iget v2, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 130
    :goto_2
    iget-object v3, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v1, v3, :cond_8

    if-eq v1, v3, :cond_7

    .line 131
    iget v3, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v3, v2, :cond_6

    .line 132
    iget-object v3, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 133
    iget-object v4, v1, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 134
    check-cast v4, Ljava/lang/String;

    .line 135
    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 136
    check-cast v1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/android/tools/r8/internal/IR$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/IR$a;

    move-object v1, v3

    goto :goto_2

    .line 137
    :cond_6
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 138
    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "emulate_interface"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 140
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 141
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 142
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 143
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 144
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 145
    iget-object v2, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v2, v2, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 146
    iget v3, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 147
    :goto_3
    iget-object v4, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v2, v4, :cond_b

    if-eq v2, v4, :cond_a

    .line 148
    iget v4, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v4, v3, :cond_9

    .line 149
    iget-object v4, v2, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 150
    iget-object v5, v2, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 151
    check-cast v5, Ljava/lang/String;

    .line 152
    iget-object v2, v2, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 153
    check-cast v2, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v2

    .line 154
    iget-object v6, p1, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    .line 155
    invoke-static {v5}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 156
    iget-object v6, p1, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 157
    iget-object v6, p1, Lcom/android/tools/r8/internal/IR$a;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v6, v5, v2, v1}, Lcom/android/tools/r8/internal/IR$a;->a(Ljava/util/Map;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_3

    .line 158
    :cond_9
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 159
    :cond_a
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 160
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "custom_conversion"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 161
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 162
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 163
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 164
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 165
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 166
    iget-object v2, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v2, v2, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 167
    iget v3, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 168
    :goto_4
    iget-object v4, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v2, v4, :cond_e

    if-eq v2, v4, :cond_d

    .line 169
    iget v4, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v4, v3, :cond_c

    .line 170
    iget-object v4, v2, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 171
    iget-object v5, v2, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 172
    check-cast v5, Ljava/lang/String;

    .line 173
    iget-object v2, v2, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 174
    check-cast v2, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v6, p1, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    .line 176
    invoke-static {v5}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 177
    iget-object v6, p1, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 178
    iget-object v6, p1, Lcom/android/tools/r8/internal/IR$a;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v6, v5, v2, v1}, Lcom/android/tools/r8/internal/IR$a;->a(Ljava/util/Map;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_4

    .line 179
    :cond_c
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 180
    :cond_d
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 181
    :cond_e
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "wrapper_conversion"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 182
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 183
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    .line 184
    iget-object v0, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_f

    .line 185
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 186
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 187
    iget-object v5, p1, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    .line 188
    invoke-static {v4}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 189
    iget-object v5, p1, Lcom/android/tools/r8/internal/IR$a;->k:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 190
    :cond_f
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "dont_rewrite"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 191
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 192
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    .line 193
    iget-object v0, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_10

    .line 194
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 195
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    const-string v5, "don\'t rewrite"

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/IR$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 197
    iget-object v6, p1, Lcom/android/tools/r8/internal/IR$a;->i:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/tools/r8/internal/o50;

    .line 198
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 199
    iget-object v9, p1, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v8}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 200
    iget-object v9, p1, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    add-int/lit8 v5, v5, 0x1

    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-direct {v7, v8, v4}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 203
    :cond_10
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "dont_retarget_lib_member"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 204
    iget-object p0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/dL;

    .line 205
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p0

    .line 206
    iget-object p0, p0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_7
    if-ge v2, v0, :cond_11

    .line 207
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/tools/r8/internal/dL;

    .line 208
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v1

    .line 209
    iget-object v3, p1, Lcom/android/tools/r8/internal/IR$a;->j:Ljava/util/Set;

    .line 210
    iget-object v4, p1, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 211
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ws0;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/CR;
    .locals 7

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/DR;->b:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {p3, v0, p1}, Lcom/android/tools/r8/internal/wm;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/DR;->b:Lcom/android/tools/r8/internal/Ef0;

    const-string v1, "Attempt to parse a desugared library human specification as a legacy specification."

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    .line 55
    iput-object p3, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    .line 56
    invoke-virtual {p0, p4, p2}, Lcom/android/tools/r8/internal/DR;->a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/MR;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/android/tools/r8/internal/DR;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p0, Lcom/android/tools/r8/internal/DR;->b:Lcom/android/tools/r8/internal/Ef0;

    iget-object p4, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    .line 58
    invoke-static {p2, p3, p4}, Lcom/android/tools/r8/internal/IR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IR$a;

    move-result-object p2

    .line 59
    iget-object p3, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    const-string p4, "common_flags"

    invoke-virtual {p0, p3, p4}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p3

    .line 60
    iget-object p4, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    const-string v0, "library_flags"

    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p4

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    const-string v1, "program_flags"

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    .line 62
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p3

    .line 63
    iget-object p3, p3, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    const-string v4, "api_level_below_or_equal"

    if-ge v3, v1, :cond_2

    .line 65
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/dL;

    .line 66
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v5

    .line 67
    invoke-virtual {p0, v5, v4}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v4

    .line 68
    iget v6, p0, Lcom/android/tools/r8/internal/DR;->d:I

    if-gt v6, v4, :cond_1

    .line 69
    invoke-static {v5, p2}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/IR$a;)V

    goto :goto_0

    .line 70
    :cond_2
    iget-boolean p3, p0, Lcom/android/tools/r8/internal/DR;->c:Z

    if-eqz p3, :cond_3

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p3

    .line 71
    :goto_1
    iget-object p3, p3, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    :cond_4
    :goto_2
    if-ge v2, p4, :cond_5

    .line 73
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 74
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0, v4}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v1

    .line 76
    iget v3, p0, Lcom/android/tools/r8/internal/DR;->d:I

    if-gt v3, v1, :cond_4

    .line 77
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/IR$a;)V

    goto :goto_2

    .line 78
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/IR$a;->a()Lcom/android/tools/r8/internal/IR;

    move-result-object p2

    .line 79
    new-instance p3, Lcom/android/tools/r8/internal/CR;

    iget-boolean p4, p0, Lcom/android/tools/r8/internal/DR;->c:Z

    invoke-direct {p3, p1, p2, p4}, Lcom/android/tools/r8/internal/CR;-><init>(Lcom/android/tools/r8/internal/MR;Lcom/android/tools/r8/internal/IR;Z)V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    return-object p3
.end method

.method public a(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/internal/CR;
    .locals 3

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/DR;->b(Lcom/android/tools/r8/v0;)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    iget-object v1, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    new-instance v2, Lcom/android/tools/r8/internal/MC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/MC0;-><init>()V

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/CR;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/MR;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    new-instance v2, Lcom/android/tools/r8/internal/KR;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/KR;-><init>()V

    .line 3
    iput-object p2, v2, Lcom/android/tools/r8/internal/KR;->d:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    const-string v3, "configuration_format_version"

    invoke-virtual {p0, p2, v3}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result p2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-gt p2, v3, :cond_4

    .line 6
    iget-object p2, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    const-string v3, "version"

    invoke-virtual {p0, p2, v3}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/android/tools/r8/internal/ll0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ll0;

    move-result-object v3

    .line 8
    sget-object v5, Lcom/android/tools/r8/internal/DR;->g:Lcom/android/tools/r8/internal/ll0;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/ll0;->a(Lcom/android/tools/r8/internal/ll0;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    const-string v4, "group_id"

    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    const-string v5, "artifact_id"

    invoke-virtual {p0, v4, v5}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 11
    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    const/4 v3, 0x2

    aput-object p2, v5, v3

    const-string p2, ":"

    invoke-static {p2, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 12
    iput-object p2, v2, Lcom/android/tools/r8/internal/KR;->c:Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    .line 14
    const-string v3, "synthesized_library_classes_package_prefix"

    invoke-virtual {p0, p2, v3}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    .line 15
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/android/tools/r8/internal/KR;->b:Ljava/lang/String;

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    .line 17
    const-string v3, "required_compilation_api_level"

    invoke-virtual {p0, p2, v3}, Lcom/android/tools/r8/internal/DR;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result p2

    .line 18
    invoke-static {p2}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object p2

    .line 19
    iput-object p2, v2, Lcom/android/tools/r8/internal/KR;->a:Lcom/android/tools/r8/internal/C2;

    .line 20
    iget-object p2, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    .line 21
    iget-object p2, p2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 22
    const-string v3, "shrinker_config"

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 23
    iget-object p2, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    .line 24
    iget-object p2, p2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 25
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/dL;

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p2

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    iget-object v4, p2, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 29
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    iget-object p2, p2, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_0

    .line 31
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/2addr v1, v0

    check-cast v5, Lcom/android/tools/r8/internal/dL;

    .line 32
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    iput-object v3, v2, Lcom/android/tools/r8/internal/KR;->f:Ljava/util/ArrayList;

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    .line 35
    iget-object p2, p2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 36
    const-string v0, "support_all_callbacks_from_library"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 37
    iget-object p2, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;

    .line 38
    iget-object p2, p2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 39
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/dL;

    .line 40
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->a()Z

    move-result p2

    .line 41
    iput-boolean p2, v2, Lcom/android/tools/r8/internal/KR;->e:Z

    .line 42
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 43
    new-instance p1, Lcom/android/tools/r8/internal/MR;

    iget-object v4, v2, Lcom/android/tools/r8/internal/KR;->a:Lcom/android/tools/r8/internal/C2;

    iget-object v5, v2, Lcom/android/tools/r8/internal/KR;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/tools/r8/internal/KR;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/tools/r8/internal/KR;->d:Ljava/lang/String;

    iget-boolean v8, v2, Lcom/android/tools/r8/internal/KR;->e:Z

    iget-object v9, v2, Lcom/android/tools/r8/internal/KR;->f:Ljava/util/ArrayList;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/MR;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object p1

    .line 44
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/DR;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported desugared library version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", please upgrade the desugared library to at least version "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v0, p2, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 45
    invoke-virtual {p1, v4, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 46
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    .line 47
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/DR;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance p2, Lcom/android/tools/r8/errors/UnsupportedDesugaredLibraryConfigurationVersionDiagnostic;

    iget-object v0, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/errors/UnsupportedDesugaredLibraryConfigurationVersionDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    .line 48
    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 49
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;
    .locals 3

    .line 81
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 82
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p1, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dL;

    return-object p1

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/DR;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid desugared library configuration. Expected required key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v0, p2, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    const/4 p2, 0x0

    .line 85
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 86
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/v0;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    sget-boolean v1, Lcom/android/tools/r8/internal/DR;->h:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/v0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/iL;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/DR;->f:Lcom/android/tools/r8/internal/gL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DR;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    iget-object v2, p0, Lcom/android/tools/r8/internal/DR;->e:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method
