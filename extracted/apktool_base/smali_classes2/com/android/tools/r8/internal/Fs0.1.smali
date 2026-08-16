.class public final Lcom/android/tools/r8/internal/Fs0;
.super Lcom/android/tools/r8/internal/DX;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/Hr0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Hr0;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x90000

    invoke-direct {p0, v1, v0}, Lcom/android/tools/r8/internal/DX;-><init>(ILcom/android/tools/r8/internal/DX;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Q2;
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 21
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    .line 22
    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "default="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Hr0;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/android/tools/r8/internal/ys0;

    invoke-super {p0}, Lcom/android/tools/r8/internal/DX;->a()Lcom/android/tools/r8/internal/Q2;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/ys0;-><init>(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/internal/Hr0;)V

    return-object v1
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 204
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Hr0;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Hr0;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/android/tools/r8/internal/ys0;

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ys0;-><init>(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/internal/Hr0;)V

    return-object v1
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 310
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 312
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "LOCALVARIABLE @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 313
    invoke-virtual {v0, v1, p6}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 314
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 317
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hr0;->a(I)V

    .line 319
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    :goto_0
    array-length v1, p3

    if-ge v2, v1, :cond_0

    .line 321
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, " [ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 323
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    aget-object v1, p4, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 325
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p5, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    if-eqz p7, :cond_1

    const-string v2, "\n"

    goto :goto_1

    :cond_1
    const-string v2, " // invisible\n"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Hr0;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/android/tools/r8/internal/ys0;

    .line 329
    invoke-super/range {p0 .. p7}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ys0;-><init>(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/internal/Hr0;)V

    return-object v1
.end method

.method public final a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 37
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 39
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 41
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 44
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 45
    const-string v2, ") // parameter "

    goto :goto_0

    :cond_0
    const-string v2, ") // invisible, parameter "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Hr0;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/android/tools/r8/internal/ys0;

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ys0;-><init>(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/internal/Hr0;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 8
    const-string v1, ")\n"

    goto :goto_0

    :cond_0
    const-string v1, ") // invisible\n"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Hr0;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/ys0;

    .line 10
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ys0;-><init>(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/internal/Hr0;)V

    return-object v1
.end method

.method public final a(I)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 74
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DX;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 154
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 156
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, "IINC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(II)V

    :cond_0
    return-void
.end method

.method public final varargs a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 167
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 169
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TABLESWITCH\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :goto_0
    array-length v1, p4

    const/16 v3, 0xa

    if-ge v2, v1, :cond_0

    .line 171
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/tools/r8/internal/Hr0;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, p1, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    aget-object v1, p4, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 173
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 176
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V

    :cond_1
    return-void
.end method

.method public final a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 52
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 54
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "FRAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    const/16 v2, 0x5d

    if-eq p1, v1, :cond_4

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 56
    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, "SAME1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1, p5}, Lcom/android/tools/r8/internal/Hr0;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 59
    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "SAME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "CHOP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, "APPEND ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/internal/Hr0;->a(I[Ljava/lang/Object;)V

    .line 63
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_4
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, "FULL ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/internal/Hr0;->a(I[Ljava/lang/Object;)V

    .line 66
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, p4, p5}, Lcom/android/tools/r8/internal/Hr0;->a(I[Ljava/lang/Object;)V

    .line 68
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v2, :cond_5

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 72
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/XQ;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 120
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 122
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 124
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/XQ;)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 195
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 197
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MULTIANEWARRAY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 198
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 199
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 81
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v2, p2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 85
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1, p4}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 87
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 91
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 94
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v2, p2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 96
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 97
    invoke-virtual {v0, v1, p4}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    if-eqz p5, :cond_0

    .line 98
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, " (itf)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v2, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v2, :cond_1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 102
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final a(IZ)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 28
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 30
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "// annotable parameter count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, " (visible)\n"

    goto :goto_0

    :cond_0
    const-string v2, " (invisible)\n"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(IZ)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 12
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ATTRIBUTE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p1, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 16
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, " : unknown\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/K4;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 129
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 131
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 133
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 208
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 210
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TRYCATCHBLOCK "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 212
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 214
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 216
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, v2, p4}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 218
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 181
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "LOOKUPSWITCH\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :goto_0
    array-length v1, p3

    const/16 v3, 0xa

    if-ge v2, v1, :cond_0

    .line 185
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/tools/r8/internal/Hr0;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 187
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 190
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 138
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 140
    instance-of v1, p1, Lcom/android/tools/r8/internal/wh;

    const-string v2, "LDC "

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/wh;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/wh;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Qz;

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/Qz;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/Qz;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/Object;)V

    .line 150
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 104
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 106
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "INVOKEDYNAMIC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 108
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 109
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, v0, Lcom/android/tools/r8/internal/Hr0;->g:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/Qz;Ljava/lang/String;)V

    .line 113
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, v0, Lcom/android/tools/r8/internal/Hr0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    .line 222
    iget-object v1, v0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 223
    iget-object v3, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 224
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 225
    iget-object v3, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "LOCALVARIABLE "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    move-object/from16 v7, p2

    .line 226
    invoke-virtual {v1, v3, v7}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 227
    iget-object v8, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v8, p4

    .line 228
    invoke-virtual {v1, v8}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 229
    iget-object v9, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    .line 230
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 231
    iget-object v10, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_18

    .line 232
    iget-object v10, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    .line 233
    invoke-virtual {v1, v10, v4}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 234
    iget-object v13, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance v13, Lcom/android/tools/r8/internal/Is0;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/Is0;-><init>()V

    .line 236
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    .line 237
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v12, 0x3c

    const-string v6, " extends "

    const-string v10, ", "

    if-ne v15, v12, :cond_6

    const/4 v12, 0x2

    :goto_0
    const/16 v15, 0x3a

    .line 238
    invoke-virtual {v4, v15, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    sub-int/2addr v12, v3

    .line 239
    invoke-virtual {v4, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 240
    iget-object v15, v13, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    .line 241
    iget-boolean v3, v13, Lcom/android/tools/r8/internal/Is0;->e:Z

    if-eqz v3, :cond_0

    move-object v3, v10

    goto :goto_1

    :cond_0
    const-string v3, "<"

    :goto_1
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 242
    iput-boolean v3, v13, Lcom/android/tools/r8/internal/Is0;->e:Z

    const/4 v3, 0x0

    .line 243
    iput-boolean v3, v13, Lcom/android/tools/r8/internal/Is0;->f:Z

    add-int/lit8 v5, v5, 0x1

    .line 244
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v12, 0x4c

    if-eq v3, v12, :cond_1

    const/16 v12, 0x5b

    if-eq v3, v12, :cond_1

    const/16 v12, 0x54

    if-ne v3, v12, :cond_2

    .line 245
    :cond_1
    iput-object v6, v13, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    .line 246
    iget v3, v13, Lcom/android/tools/r8/internal/Is0;->j:I

    const/4 v12, 0x2

    mul-int/2addr v3, v12

    iput v3, v13, Lcom/android/tools/r8/internal/Is0;->j:I

    .line 247
    invoke-static {v4, v5, v13}, Lcom/android/tools/r8/internal/Ul0;->a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I

    move-result v5

    :cond_2
    :goto_2
    add-int/lit8 v12, v5, 0x1

    .line 248
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_4

    .line 249
    iget-boolean v3, v13, Lcom/android/tools/r8/internal/Is0;->f:Z

    if-eqz v3, :cond_3

    move-object v3, v10

    goto :goto_3

    :cond_3
    move-object v3, v6

    :goto_3
    iput-object v3, v13, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    const/4 v3, 0x1

    .line 250
    iput-boolean v3, v13, Lcom/android/tools/r8/internal/Is0;->f:Z

    .line 251
    iget v3, v13, Lcom/android/tools/r8/internal/Is0;->j:I

    const/4 v15, 0x2

    mul-int/2addr v3, v15

    iput v3, v13, Lcom/android/tools/r8/internal/Is0;->j:I

    .line 252
    invoke-static {v4, v12, v13}, Lcom/android/tools/r8/internal/Ul0;->a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I

    move-result v3

    move v5, v3

    goto :goto_2

    :cond_4
    const/16 v15, 0x3e

    if-ne v3, v15, :cond_5

    move v3, v12

    goto :goto_4

    :cond_5
    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    .line 253
    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v12, 0x28

    if-ne v5, v12, :cond_d

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 254
    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_9

    .line 255
    iget-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->e:Z

    if-eqz v5, :cond_7

    .line 256
    iget-object v5, v13, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 257
    iput-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->e:Z

    .line 258
    :cond_7
    iget-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->g:Z

    if-eqz v5, :cond_8

    .line 259
    iget-object v5, v13, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    goto :goto_6

    .line 260
    :cond_8
    iget-object v5, v13, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    .line 261
    iput-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->g:Z

    .line 262
    :goto_6
    iget v6, v13, Lcom/android/tools/r8/internal/Is0;->j:I

    const/4 v15, 0x2

    mul-int/2addr v6, v15

    iput v6, v13, Lcom/android/tools/r8/internal/Is0;->j:I

    .line 263
    invoke-static {v4, v3, v13}, Lcom/android/tools/r8/internal/Ul0;->a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I

    move-result v3

    goto :goto_5

    :cond_9
    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 264
    iget-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->e:Z

    if-eqz v5, :cond_a

    .line 265
    iget-object v5, v13, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const/16 v15, 0x3e

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 266
    iput-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->e:Z

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    .line 267
    :goto_7
    iget-boolean v15, v13, Lcom/android/tools/r8/internal/Is0;->g:Z

    if-eqz v15, :cond_b

    .line 268
    iput-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->g:Z

    goto :goto_8

    .line 269
    :cond_b
    iget-object v5, v13, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    :goto_8
    iget-object v5, v13, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, v13, Lcom/android/tools/r8/internal/Is0;->c:Ljava/lang/StringBuilder;

    .line 272
    new-instance v6, Lcom/android/tools/r8/internal/Is0;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/internal/Is0;-><init>(Ljava/lang/StringBuilder;)V

    .line 273
    invoke-static {v4, v3, v6}, Lcom/android/tools/r8/internal/Ul0;->a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I

    move-result v3

    :goto_9
    if-ge v3, v14, :cond_11

    add-int/lit8 v3, v3, 0x1

    .line 274
    iget-object v5, v13, Lcom/android/tools/r8/internal/Is0;->d:Ljava/lang/StringBuilder;

    if-nez v5, :cond_c

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, v13, Lcom/android/tools/r8/internal/Is0;->d:Ljava/lang/StringBuilder;

    goto :goto_a

    .line 276
    :cond_c
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :goto_a
    new-instance v5, Lcom/android/tools/r8/internal/Is0;

    iget-object v6, v13, Lcom/android/tools/r8/internal/Is0;->d:Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/Is0;-><init>(Ljava/lang/StringBuilder;)V

    .line 278
    invoke-static {v4, v3, v5}, Lcom/android/tools/r8/internal/Ul0;->a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I

    move-result v3

    goto :goto_9

    .line 279
    :cond_d
    iget-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->e:Z

    if-eqz v5, :cond_e

    .line 280
    iget-object v5, v13, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const/16 v12, 0x3e

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 281
    iput-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->e:Z

    .line 282
    :cond_e
    iput-object v6, v13, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    .line 283
    iget v5, v13, Lcom/android/tools/r8/internal/Is0;->j:I

    const/4 v12, 0x2

    mul-int/2addr v5, v12

    iput v5, v13, Lcom/android/tools/r8/internal/Is0;->j:I

    .line 284
    invoke-static {v4, v3, v13}, Lcom/android/tools/r8/internal/Ul0;->a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I

    move-result v3

    :goto_b
    if-ge v3, v14, :cond_11

    .line 285
    iget-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->h:Z

    if-eqz v5, :cond_f

    .line 286
    iput-object v10, v13, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    const/4 v5, 0x1

    goto :goto_d

    .line 287
    :cond_f
    iget-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->a:Z

    if-eqz v5, :cond_10

    move-object v5, v6

    goto :goto_c

    :cond_10
    const-string v5, " implements "

    :goto_c
    iput-object v5, v13, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    const/4 v5, 0x1

    .line 288
    iput-boolean v5, v13, Lcom/android/tools/r8/internal/Is0;->h:Z

    .line 289
    :goto_d
    iget v12, v13, Lcom/android/tools/r8/internal/Is0;->j:I

    const/4 v15, 0x2

    mul-int/2addr v12, v15

    iput v12, v13, Lcom/android/tools/r8/internal/Is0;->j:I

    .line 290
    invoke-static {v4, v3, v13}, Lcom/android/tools/r8/internal/Ul0;->a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I

    move-result v3

    goto :goto_b

    .line 291
    :cond_11
    iget-object v3, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v5, "// declaration: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v3, v13, Lcom/android/tools/r8/internal/Is0;->c:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    if-nez v3, :cond_12

    move-object v3, v5

    goto :goto_e

    :cond_12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_e
    if-eqz v3, :cond_14

    .line 293
    iget-object v3, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 294
    iget-object v6, v13, Lcom/android/tools/r8/internal/Is0;->c:Ljava/lang/StringBuilder;

    if-nez v6, :cond_13

    move-object v6, v5

    goto :goto_f

    :cond_13
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 295
    :goto_f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v3, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    :cond_14
    iget-object v3, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v3, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 299
    iget-object v6, v13, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-object v3, v13, Lcom/android/tools/r8/internal/Is0;->d:Ljava/lang/StringBuilder;

    if-nez v3, :cond_15

    move-object v3, v5

    goto :goto_10

    :cond_15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_10
    if-eqz v3, :cond_17

    .line 302
    iget-object v3, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v6, " throws "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v6, v13, Lcom/android/tools/r8/internal/Is0;->d:Ljava/lang/StringBuilder;

    if-nez v6, :cond_16

    goto :goto_11

    :cond_16
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    :goto_11
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_17
    iget-object v3, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    :cond_18
    iget-object v3, v1, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v1, v0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v1, :cond_19

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 308
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V

    :cond_19
    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 37
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 39
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TRYCATCHBLOCK @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1, p3}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 41
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 44
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hr0;->a(I)V

    .line 46
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v2, "\n"

    goto :goto_0

    :cond_0
    const-string v2, " // invisible\n"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Hr0;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/android/tools/r8/internal/ys0;

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ys0;-><init>(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/internal/Hr0;)V

    return-object v1
.end method

.method public final b()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DX;->b()V

    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 25
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 27
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xbc

    if-ne p1, v2, :cond_0

    .line 31
    sget-object v2, Lcom/android/tools/r8/internal/E70;->d:[Ljava/lang/String;

    aget-object v2, v2, p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->b(II)V

    :cond_1
    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/XQ;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 52
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 54
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LINENUMBER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    .line 56
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/XQ;)V

    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "// parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "public "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "private "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "protected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "final "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "static "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 10
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "synchronized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    .line 11
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "volatile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_7

    .line 12
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "transient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_8

    .line 13
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "abstract "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_9

    .line 14
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "strictfp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_a

    .line 15
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "synthetic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_b

    .line 16
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "mandated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_c

    .line 17
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_c
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_d

    const-string v2, "<no name>"

    goto :goto_0

    :cond_d
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/DX;->b(ILjava/lang/String;)V

    return-void
.end method

.method public final c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Hr0;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Hr0;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/ys0;

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ys0;-><init>(Lcom/android/tools/r8/internal/Q2;Lcom/android/tools/r8/internal/Hr0;)V

    return-object v1
.end method

.method public final c()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DX;->c()V

    :cond_0
    return-void
.end method

.method public final c(II)V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 15
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 17
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MAXSTACK = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 20
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MAXLOCALS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->c(II)V

    :cond_0
    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v2, p2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 10
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fs0;->c:Lcom/android/tools/r8/internal/Hr0;

    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->d(II)V

    :cond_0
    return-void
.end method
