.class public abstract Lcom/android/tools/r8/internal/Nk0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/DP;)Lcom/android/tools/r8/internal/Mk0;
    .locals 4

    .line 105
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/qO0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/qO0;-><init>(Lcom/android/tools/r8/internal/Mk0;)V

    new-instance v1, Lcom/android/tools/r8/internal/rO0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/rO0;-><init>(Lcom/android/tools/r8/internal/Mk0;)V

    new-instance v2, Lcom/android/tools/r8/internal/sO0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/sO0;-><init>(Lcom/android/tools/r8/internal/Mk0;)V

    new-instance v3, Lcom/android/tools/r8/internal/tO0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/tO0;-><init>(Lcom/android/tools/r8/internal/Mk0;)V

    .line 106
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/DP;->a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Mk0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/JM;)Lcom/android/tools/r8/internal/Mk0;
    .locals 2

    .line 119
    sget-boolean v0, Lcom/android/tools/r8/internal/Nk0;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    sget-object v0, Lcom/android/tools/r8/internal/JM;->c:Lcom/android/tools/r8/internal/JM;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/JM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget v0, p1, Lcom/android/tools/r8/internal/JM;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p1, Lcom/android/tools/r8/internal/JM;->a:Lcom/android/tools/r8/internal/DP;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    instance-of v0, v0, Lcom/android/tools/r8/internal/zP;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 126
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/JM;->a:Lcom/android/tools/r8/internal/DP;

    .line 127
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/DP;)Lcom/android/tools/r8/internal/Mk0;

    const/4 v0, 0x0

    .line 128
    :goto_1
    iget v1, p1, Lcom/android/tools/r8/internal/JM;->b:I

    if-ge v0, v1, :cond_2

    .line 129
    const-string v1, "[]"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/YM;)Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    .line 2
    check-cast v0, Lcom/android/tools/r8/internal/CO;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 6
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/Mk0;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string p1, "Type patterns with instance-of are not supported in rule extraction"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/kP;)Lcom/android/tools/r8/internal/Mk0;
    .locals 3

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    sget-object v0, Lcom/android/tools/r8/internal/kP;->b:Lcom/android/tools/r8/internal/kP;

    if-ne p1, v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk0;->c()Lcom/android/tools/r8/internal/Mk0;

    move-result-object p0

    return-object p0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kP;->a()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 113
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Nk0;->a(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 115
    invoke-static {p1}, Lcom/android/tools/r8/internal/Nk0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {p1}, Lcom/android/tools/r8/internal/Nk0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object p0

    return-object p0

    .line 118
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string p1, "Invalid empty type descriptor"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p1, p1, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/vP;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk0;->d()V

    .line 103
    iget-object p1, p1, Lcom/android/tools/r8/internal/vP;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    :cond_2
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/Mk0;)Lcom/android/tools/r8/internal/Mk0;
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Mk0;->b()Lcom/android/tools/r8/internal/Mk0;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    .line 155
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fP;->b()Z

    move-result v1

    const-string v2, "."

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Mk0;->b()Lcom/android/tools/r8/internal/Mk0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fP;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 158
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dP;

    .line 160
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dP;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dP;->a()Lcom/android/tools/r8/internal/vP;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/Mk0;

    .line 162
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    goto :goto_0

    .line 163
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string p1, "Unsupported use of zero-or-more package pattern"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    .line 165
    iget-object p0, p0, Lcom/android/tools/r8/internal/FP;->a:Lcom/android/tools/r8/internal/vP;

    .line 166
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object p0

    return-object p0
.end method

.method public static a(C)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x42

    if-eq p0, v0, :cond_6

    const/16 v0, 0x44

    if-eq p0, v0, :cond_5

    const/16 v0, 0x46

    if-eq p0, v0, :cond_4

    const/16 v0, 0x53

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4a

    if-ne p0, v0, :cond_0

    .line 167
    const-string p0, "long"

    return-object p0

    .line 168
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid primitive descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    const-string p0, "int"

    return-object p0

    .line 170
    :cond_2
    const-string p0, "boolean"

    return-object p0

    .line 171
    :cond_3
    const-string p0, "short"

    return-object p0

    .line 172
    :cond_4
    const-string p0, "float"

    return-object p0

    .line 173
    :cond_5
    const-string p0, "double"

    return-object p0

    .line 174
    :cond_6
    const-string p0, "byte"

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 175
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_4

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Nk0;->a(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    .line 183
    invoke-static {p0}, Lcom/android/tools/r8/internal/Nk0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 184
    :cond_1
    invoke-static {p0}, Lcom/android/tools/r8/internal/Nk0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 185
    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-ge v0, v1, :cond_2

    .line 186
    const-string p0, "[]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 187
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 188
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string v0, "Invalid empty type descriptor"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/IO;)V
    .locals 8

    .line 130
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IO;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/IO;->a:Ljava/util/AbstractCollection;

    .line 132
    invoke-static {v0}, Lcom/android/tools/r8/internal/a2;->a(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/IO;->a:Ljava/util/AbstractCollection;

    .line 134
    sget-object v1, Lcom/android/tools/r8/internal/a2;->d:Lcom/android/tools/r8/internal/a2;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 135
    sget-object v2, Lcom/android/tools/r8/internal/a2;->g:[Lcom/android/tools/r8/internal/a2;

    invoke-virtual {v2}, [Lcom/android/tools/r8/internal/a2;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/tools/r8/internal/a2;

    .line 136
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 137
    sget-object v6, Lcom/android/tools/r8/internal/a2;->d:Lcom/android/tools/r8/internal/a2;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    xor-int/lit8 v6, v1, 0x1

    .line 138
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_3

    if-eqz v1, :cond_2

    .line 139
    const-string v6, "!"

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    .line 140
    :cond_2
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/a2;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/IO;->b:Lcom/android/tools/r8/internal/LX;

    .line 142
    const-string v1, "static"

    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    .line 143
    iget-object v0, p1, Lcom/android/tools/r8/internal/IO;->c:Lcom/android/tools/r8/internal/LX;

    .line 144
    const-string v1, "final"

    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    .line 145
    iget-object p1, p1, Lcom/android/tools/r8/internal/IO;->d:Lcom/android/tools/r8/internal/LX;

    .line 146
    const-string v0, "synthetic"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    instance-of v0, p1, Lcom/android/tools/r8/internal/IX;

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    instance-of p1, p1, Lcom/android/tools/r8/internal/KX;

    if-eqz p1, :cond_1

    .line 150
    const-string p1, "!"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    .line 151
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/OO;Lcom/android/tools/r8/internal/Mk0;)V
    .locals 6

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v0, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    const-string v1, "*"

    const-string v2, ";"

    if-ne p0, v0, :cond_0

    .line 30
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Mk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->e()Lcom/android/tools/r8/internal/x40;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x40;->b()Z

    move-result v0

    const-string v3, " "

    if-nez v0, :cond_1

    .line 33
    const-string v0, "@"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->e()Lcom/android/tools/r8/internal/x40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x40;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/mP;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/Mk0;)Lcom/android/tools/r8/internal/Mk0;

    .line 35
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->h()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->b()Lcom/android/tools/r8/internal/WO;

    move-result-object p0

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/WO;->c:Lcom/android/tools/r8/internal/QO;

    .line 39
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/IO;)V

    .line 40
    iget-object v1, v0, Lcom/android/tools/r8/internal/QO;->f:Lcom/android/tools/r8/internal/LX;

    .line 41
    const-string v5, "synchronized"

    invoke-static {p1, v1, v5}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    .line 42
    iget-object v1, v0, Lcom/android/tools/r8/internal/QO;->g:Lcom/android/tools/r8/internal/LX;

    .line 43
    const-string v5, "bridge"

    invoke-static {p1, v1, v5}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    .line 44
    iget-object v1, v0, Lcom/android/tools/r8/internal/QO;->h:Lcom/android/tools/r8/internal/LX;

    .line 45
    const-string v5, "native"

    invoke-static {p1, v1, v5}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    .line 46
    iget-object v1, v0, Lcom/android/tools/r8/internal/QO;->i:Lcom/android/tools/r8/internal/LX;

    .line 47
    const-string v5, "abstract"

    invoke-static {p1, v1, v5}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    .line 48
    iget-object v0, v0, Lcom/android/tools/r8/internal/QO;->j:Lcom/android/tools/r8/internal/LX;

    .line 49
    const-string v1, "strictfp"

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/Mk0;->a(Z)Lcom/android/tools/r8/internal/Mk0;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->e:Lcom/android/tools/r8/internal/ZO;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    instance-of v5, v1, Lcom/android/tools/r8/internal/YO;

    if-eqz v5, :cond_2

    .line 54
    const-string v1, "void"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ZO;->a()Lcom/android/tools/r8/internal/DP;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/DP;)Lcom/android/tools/r8/internal/Mk0;

    .line 56
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/internal/WO;->d:Lcom/android/tools/r8/internal/RO;

    .line 58
    iget-object v0, v0, Lcom/android/tools/r8/internal/RO;->a:Lcom/android/tools/r8/internal/vP;

    .line 59
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/Mk0;

    .line 60
    iget-object p0, p0, Lcom/android/tools/r8/internal/WO;->f:Lcom/android/tools/r8/internal/UO;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    instance-of v0, p0, Lcom/android/tools/r8/internal/SO;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Mk0;->a(Z)Lcom/android/tools/r8/internal/Mk0;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk0;->a()Lcom/android/tools/r8/internal/Mk0;

    goto :goto_2

    .line 65
    :cond_3
    const-string v0, "("

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    .line 66
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/UO;->a()Ljava/util/List;

    move-result-object p0

    .line 67
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    if-lez v1, :cond_4

    .line 68
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    .line 69
    :cond_4
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/Mk0;->a(Z)Lcom/android/tools/r8/internal/Mk0;

    move-result-object v0

    .line 70
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/DP;

    .line 71
    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/DP;)Lcom/android/tools/r8/internal/Mk0;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    :cond_5
    const-string p0, ")"

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    .line 73
    :goto_2
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-void

    .line 74
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->a()Lcom/android/tools/r8/internal/xO;

    move-result-object p0

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/xO;->c:Lcom/android/tools/r8/internal/uO;

    .line 77
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/IO;)V

    .line 78
    iget-object v1, v0, Lcom/android/tools/r8/internal/uO;->f:Lcom/android/tools/r8/internal/LX;

    .line 79
    const-string v5, "volatile"

    invoke-static {p1, v1, v5}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    .line 80
    iget-object v0, v0, Lcom/android/tools/r8/internal/uO;->g:Lcom/android/tools/r8/internal/LX;

    .line 81
    const-string v1, "transient"

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/Mk0;->a(Z)Lcom/android/tools/r8/internal/Mk0;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/tools/r8/internal/xO;->e:Lcom/android/tools/r8/internal/zO;

    .line 84
    check-cast v1, Lcom/android/tools/r8/internal/yO;

    .line 85
    iget-object v1, v1, Lcom/android/tools/r8/internal/yO;->a:Lcom/android/tools/r8/internal/DP;

    .line 86
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/DP;)Lcom/android/tools/r8/internal/Mk0;

    .line 87
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    .line 88
    iget-object p0, p0, Lcom/android/tools/r8/internal/xO;->d:Lcom/android/tools/r8/internal/vO;

    .line 89
    iget-object p0, p0, Lcom/android/tools/r8/internal/vO;->a:Lcom/android/tools/r8/internal/vP;

    .line 90
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/Mk0;

    .line 91
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-void

    .line 92
    :cond_7
    sget-boolean v0, Lcom/android/tools/r8/internal/Nk0;->a:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->d()Lcom/android/tools/r8/internal/IO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IO;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->e()Lcom/android/tools/r8/internal/x40;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x40;->b()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 94
    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 95
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OO;->d()Lcom/android/tools/r8/internal/IO;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/IO;)V

    .line 96
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Mk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Mk0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/WM;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/WM;->c:Lcom/android/tools/r8/internal/x40;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x40;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x40;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/mP;

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/Mk0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    .line 13
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/Mk0;)Lcom/android/tools/r8/internal/Mk0;

    .line 14
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_0
    const-string v0, "class "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v0, p1, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 18
    invoke-interface {p2, p0, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    .line 21
    check-cast p1, Lcom/android/tools/r8/internal/CO;

    .line 22
    iget-object p2, p1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result p2

    if-nez p2, :cond_1

    .line 24
    const-string p2, " extends "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object p1, p1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 26
    new-instance p2, Lcom/android/tools/r8/internal/Mk0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    .line 27
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/Mk0;)Lcom/android/tools/r8/internal/Mk0;

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    aget-char v3, v0, v2

    const/4 v4, 0x0

    const-string v5, "\\r"

    const/16 v6, 0xd

    const-string v7, "\\n"

    const/16 v8, 0xa

    if-ne v3, v8, :cond_0

    move-object v3, v7

    goto :goto_1

    :cond_0
    if-ne v3, v6, :cond_1

    move-object v3, v5

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    array-length p0, v0

    if-ge v2, p0, :cond_5

    aget-char p0, v0, v2

    if-ne p0, v8, :cond_2

    move-object v1, v7

    goto :goto_3

    :cond_2
    if-ne p0, v6, :cond_3

    move-object v1, v5

    goto :goto_3

    :cond_3
    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object p0
.end method
