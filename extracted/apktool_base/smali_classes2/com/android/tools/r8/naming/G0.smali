.class public final Lcom/android/tools/r8/naming/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/naming/P;

.field public final b:Lcom/android/tools/r8/DiagnosticsHandler;

.field public final c:Z

.field public final d:Z

.field public e:Z

.field public final f:Lcom/android/tools/r8/naming/s0;

.field public final g:Lcom/android/tools/r8/naming/t0;

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Lcom/android/tools/r8/naming/MapVersion;

.field public final l:[Ljava/lang/String;

.field public final m:Ljava/util/HashMap;

.field public final n:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/P;Lcom/android/tools/r8/DiagnosticsHandler;ZZLcom/android/tools/r8/naming/MapVersion;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/naming/G0;->e:Z

    new-instance v1, Lcom/android/tools/r8/naming/s0;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/s0;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/naming/G0;->f:Lcom/android/tools/r8/naming/s0;

    new-instance v1, Lcom/android/tools/r8/naming/t0;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/t0;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/naming/G0;->g:Lcom/android/tools/r8/naming/t0;

    iput v0, p0, Lcom/android/tools/r8/naming/G0;->h:I

    iput v0, p0, Lcom/android/tools/r8/naming/G0;->i:I

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/naming/G0;->l:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/G0;->m:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/G0;->n:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/naming/G0;->a:Lcom/android/tools/r8/naming/P;

    iput-object p2, p0, Lcom/android/tools/r8/naming/G0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    iput-boolean p3, p0, Lcom/android/tools/r8/naming/G0;->c:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/naming/G0;->d:Z

    iput-object p5, p0, Lcom/android/tools/r8/naming/G0;->k:Lcom/android/tools/r8/naming/MapVersion;

    sget-boolean p1, Lcom/android/tools/r8/naming/G0;->o:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)C
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/naming/G0;->i:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/naming/G0;->i:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0xa

    return p1
.end method

.method public final a(Z)Lcom/android/tools/r8/naming/M0;
    .locals 8

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x30

    if-gt v3, v1, :cond_b

    const/16 v4, 0x39

    if-gt v1, v4, :cond_b

    const/16 v1, 0x3a

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    move p1, v5

    .line 270
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v6

    if-gt v3, v6, :cond_0

    if-gt v6, v4, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 271
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/zq0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result p1

    if-eq p1, v1, :cond_2

    return-object v2

    .line 273
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result p1

    const-string v2, "Number expected"

    if-gt v3, p1, :cond_a

    if-gt p1, v4, :cond_a

    move p1, v0

    :goto_2
    mul-int/lit8 p1, p1, 0xa

    .line 274
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->d()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    add-int/2addr p1, v6

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v6

    if-gt v3, v6, :cond_3

    if-gt v6, v4, :cond_3

    goto :goto_2

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v6

    if-eq v6, v1, :cond_5

    .line 278
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->f:Lcom/android/tools/r8/naming/s0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_4

    const/16 v1, 0x100

    if-ge p1, v1, :cond_4

    .line 279
    iget-object v0, v0, Lcom/android/tools/r8/naming/v0;->a:[Lcom/android/tools/r8/naming/M0;

    aget-object p1, v0, p1

    return-object p1

    :cond_4
    new-instance v0, Lcom/android/tools/r8/naming/M0;

    .line 280
    invoke-direct {v0, p1, p1, v5}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    return-object v0

    .line 281
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/naming/G0;->a(C)V

    .line 282
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v1

    if-gt v3, v1, :cond_9

    if-gt v1, v4, :cond_9

    move v1, v0

    :goto_3
    mul-int/lit8 v1, v1, 0xa

    .line 284
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->d()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    add-int/2addr v1, v2

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v2

    if-gt v3, v2, :cond_6

    if-gt v2, v4, :cond_6

    goto :goto_3

    :cond_6
    if-le p1, v1, :cond_8

    if-nez v1, :cond_7

    move v1, p1

    goto :goto_4

    :cond_7
    move v7, v1

    move v1, p1

    move p1, v7

    .line 286
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->g:Lcom/android/tools/r8/naming/t0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/naming/t0;->a(II)Lcom/android/tools/r8/naming/M0;

    move-result-object p1

    return-object p1

    .line 287
    :cond_9
    new-instance p1, Lcom/android/tools/r8/naming/F0;

    .line 288
    invoke-direct {p1, p0, v2, v0}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 289
    throw p1

    .line 290
    :cond_a
    new-instance p1, Lcom/android/tools/r8/naming/F0;

    .line 291
    invoke-direct {p1, p0, v2, v0}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 292
    throw p1

    :cond_b
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/internal/Jf0;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;
    .locals 3

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    instance-of v0, p1, Lcom/android/tools/r8/internal/If0;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->h()Lcom/android/tools/r8/internal/If0;

    move-result-object p1

    .line 250
    new-instance v0, Lcom/android/tools/r8/naming/V$b;

    .line 251
    iget-object v1, p1, Lcom/android/tools/r8/internal/If0;->b:Ljava/lang/String;

    .line 252
    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object p1, p1, Lcom/android/tools/r8/internal/If0;->c:[Ljava/lang/String;

    .line 254
    new-instance v2, Lu/a1;

    invoke-direct {v2}, Lu/a1;-><init>()V

    .line 255
    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/android/tools/r8/naming/G0;->n:Ljava/util/HashMap;

    .line 257
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V$c;

    .line 258
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object p1

    return-object p1

    .line 259
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/naming/G0;->o:Z

    if-nez v0, :cond_2

    .line 260
    instance-of v0, p1, Lcom/android/tools/r8/internal/Hf0;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 262
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->g()Lcom/android/tools/r8/internal/Hf0;

    move-result-object p1

    .line 263
    new-instance v0, Lcom/android/tools/r8/naming/V$a;

    .line 264
    iget-object p1, p1, Lcom/android/tools/r8/internal/Hf0;->b:Ljava/lang/String;

    .line 265
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/naming/V$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/android/tools/r8/naming/G0;->n:Ljava/util/HashMap;

    .line 267
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V$c;

    .line 268
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->a()Lcom/android/tools/r8/naming/V$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/naming/V;Lcom/android/tools/r8/naming/V$c;Ljava/lang/String;ILcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/g;)Lcom/android/tools/r8/naming/V;
    .locals 2

    const/4 v0, 0x0

    if-eqz p7, :cond_4

    if-eqz p1, :cond_4

    .line 215
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    .line 216
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object p7

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/naming/V$c;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 218
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 219
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p3

    .line 220
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/naming/mappinginformation/d;

    .line 221
    iget-object p7, p1, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    sget-object p8, Lcom/android/tools/r8/naming/V;->f:Ljava/util/List;

    if-ne p7, p8, :cond_1

    .line 222
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p1, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    .line 223
    :cond_1
    iget-object p7, p1, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    invoke-static {p7, p4, p3}, Lcom/android/tools/r8/naming/mappinginformation/e;->a(Ljava/util/List;Lcom/android/tools/r8/naming/mappinginformation/e;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p6, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 225
    :cond_3
    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-object p1

    .line 226
    :cond_4
    :goto_1
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 227
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->e()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V$c;->e()I

    move-result p7

    if-eq p1, p7, :cond_5

    .line 228
    iget-object p1, p0, Lcom/android/tools/r8/naming/G0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 229
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {p7}, Lcom/android/tools/r8/naming/V$c;->toString()Ljava/lang/String;

    move-result-object p7

    iget v1, p0, Lcom/android/tools/r8/naming/G0;->h:I

    .line 230
    invoke-static {p7, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->invalidResidualSignatureType(Ljava/lang/String;I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object p7

    .line 231
    invoke-interface {p1, p7}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_2

    .line 232
    :cond_5
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V$c;

    goto :goto_3

    .line 233
    :cond_6
    :goto_2
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/naming/V$c;->a(Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;

    move-result-object p1

    .line 234
    iget-object p3, p0, Lcom/android/tools/r8/naming/G0;->n:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object p7

    invoke-virtual {p3, p1, p7}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V$c;

    .line 235
    :goto_3
    invoke-virtual {p8, p1}, Lcom/android/tools/r8/naming/g;->a(Lcom/android/tools/r8/naming/V$c;)Lcom/android/tools/r8/naming/V;

    move-result-object p3

    if-nez p3, :cond_7

    .line 236
    new-instance p3, Lcom/android/tools/r8/naming/V;

    new-instance p7, Lcom/android/tools/r8/naming/E0;

    invoke-direct {p7, p4}, Lcom/android/tools/r8/naming/E0;-><init>(I)V

    invoke-direct {p3, p2, p1, p7}, Lcom/android/tools/r8/naming/V;-><init>(Lcom/android/tools/r8/naming/V$c;Lcom/android/tools/r8/naming/V$c;Lcom/android/tools/r8/position/Position;)V

    .line 237
    :cond_7
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 238
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 239
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p2

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/naming/mappinginformation/d;

    .line 241
    iget-object p7, p3, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/naming/V;->f:Ljava/util/List;

    if-ne p7, v1, :cond_8

    .line 242
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p3, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    .line 243
    :cond_8
    iget-object p7, p3, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    invoke-static {p7, p4, p2}, Lcom/android/tools/r8/naming/mappinginformation/e;->a(Ljava/util/List;Lcom/android/tools/r8/naming/mappinginformation/e;Ljava/util/function/Consumer;)V

    goto :goto_4

    .line 244
    :cond_9
    invoke-virtual {p8, p3}, Lcom/android/tools/r8/naming/g;->a(Lcom/android/tools/r8/naming/V;)Lcom/android/tools/r8/naming/g;

    .line 245
    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p6, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-object p3
.end method

.method public final a(C)V
    .locals 4

    .line 3
    iget v0, p0, Lcom/android/tools/r8/naming/G0;->i:I

    iget-object v1, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "\'"

    const-string v3, "Expected \'"

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->d()C

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/naming/F0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 7
    throw v0

    .line 8
    :cond_1
    new-instance v0, Lcom/android/tools/r8/naming/F0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/U6;Ljava/lang/String;Lcom/android/tools/r8/naming/g;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/naming/V;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 1

    .line 180
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    instance-of v0, p8, Lcom/android/tools/r8/naming/mappinginformation/b;

    .line 182
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    if-nez p2, :cond_0

    .line 183
    new-instance p1, Lcom/android/tools/r8/naming/w1;

    invoke-direct {p1, p0, p8}, Lcom/android/tools/r8/naming/w1;-><init>(Lcom/android/tools/r8/naming/G0;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    invoke-virtual {p3, p1, p8}, Lcom/android/tools/r8/naming/g;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 184
    new-instance p1, Lcom/android/tools/r8/naming/x1;

    invoke-direct {p1, p0, p8}, Lcom/android/tools/r8/naming/x1;-><init>(Lcom/android/tools/r8/naming/G0;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    invoke-virtual {p4, p1, p8}, Lcom/android/tools/r8/naming/k$b;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    .line 185
    :cond_1
    invoke-virtual {p8}, Lcom/android/tools/r8/naming/mappinginformation/e;->o()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 186
    invoke-virtual {p8}, Lcom/android/tools/r8/naming/mappinginformation/e;->f()Lcom/android/tools/r8/naming/mappinginformation/d;

    move-result-object p1

    .line 187
    new-instance p3, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {p3}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    .line 188
    invoke-virtual {p5, p3}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    new-instance p5, Lcom/android/tools/r8/naming/y1;

    invoke-direct {p5, p0, p8}, Lcom/android/tools/r8/naming/y1;-><init>(Lcom/android/tools/r8/naming/G0;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    .line 189
    invoke-static {p3, p1, p5}, Lcom/android/tools/r8/naming/mappinginformation/e;->a(Ljava/util/List;Lcom/android/tools/r8/naming/mappinginformation/e;Ljava/util/function/Consumer;)V

    .line 190
    invoke-virtual {p8}, Lcom/android/tools/r8/naming/mappinginformation/e;->p()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 191
    invoke-virtual {p8}, Lcom/android/tools/r8/naming/mappinginformation/e;->i()Lcom/android/tools/r8/internal/Jf0;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jf0;->s()Z

    move-result p3

    if-nez p3, :cond_2

    .line 193
    iget-object p1, p0, Lcom/android/tools/r8/naming/G0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    iget-object p2, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    .line 194
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/android/tools/r8/naming/G0;->h:I

    .line 195
    invoke-static {p2, p3}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->invalidResidualSignature(Ljava/lang/String;I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object p2

    .line 196
    invoke-interface {p1, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 197
    :cond_2
    invoke-virtual {p8}, Lcom/android/tools/r8/naming/mappinginformation/e;->i()Lcom/android/tools/r8/internal/Jf0;

    move-result-object p3

    .line 198
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/naming/G0;->a(Lcom/android/tools/r8/internal/Jf0;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;

    move-result-object p2

    .line 199
    invoke-virtual {p6, p2}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    if-eqz p4, :cond_7

    .line 200
    instance-of p1, p1, Lcom/android/tools/r8/internal/If0;

    if-nez p1, :cond_3

    .line 201
    iget-object p1, p0, Lcom/android/tools/r8/naming/G0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 202
    invoke-virtual {p8}, Lcom/android/tools/r8/naming/mappinginformation/e;->r()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/android/tools/r8/naming/G0;->h:I

    .line 203
    invoke-static {p2, p3}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->invalidResidualSignatureType(Ljava/lang/String;I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object p2

    .line 204
    invoke-interface {p1, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    const/4 p1, 0x0

    .line 205
    invoke-virtual {p6, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz p7, :cond_4

    .line 206
    invoke-virtual {p7}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object p1

    .line 207
    iget-object p3, p4, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 208
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/naming/V$c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 209
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object p1

    .line 210
    sget-boolean p2, Lcom/android/tools/r8/naming/k$b;->k:Z

    if-nez p2, :cond_6

    iget-boolean p2, p4, Lcom/android/tools/r8/naming/k$b;->g:Z

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 211
    :cond_6
    :goto_0
    iput-object p1, p4, Lcom/android/tools/r8/naming/k$b;->f:Lcom/android/tools/r8/naming/V$b;

    :cond_7
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/naming/mappinginformation/e;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    iget v1, p0, Lcom/android/tools/r8/naming/G0;->h:I

    .line 213
    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->notAllowedCombination(Lcom/android/tools/r8/naming/mappinginformation/e;Lcom/android/tools/r8/naming/mappinginformation/e;I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object p1

    .line 214
    invoke-interface {v0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/w0;)V
    .locals 7

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->c()Z

    move-result v0

    const-string v1, "Expected end of line"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 12
    new-instance v0, Lcom/android/tools/r8/naming/t1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/naming/t1;-><init>(Lcom/android/tools/r8/naming/G0;Lcom/android/tools/r8/naming/w0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->a(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-boolean v0, p0, Lcom/android/tools/r8/naming/G0;->e:Z

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/naming/w0;->a(Ljava/lang/String;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/naming/G0;->i:I

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p0, Lcom/android/tools/r8/naming/G0;->i:I

    if-ne v0, v3, :cond_2

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/G0;->b(Lcom/android/tools/r8/naming/w0;)Z

    goto :goto_0

    .line 18
    :cond_2
    new-instance p1, Lcom/android/tools/r8/naming/F0;

    .line 19
    invoke-direct {p1, p0, v1, v2}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 20
    throw p1

    .line 21
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/naming/G0;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 23
    sget-boolean v3, Lcom/android/tools/r8/naming/G0;->o:Z

    const/16 v4, 0x2d

    if-nez v3, :cond_5

    .line 24
    invoke-static {v4}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 25
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_5
    :goto_1
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    .line 27
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v3

    const-string v6, ">"

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v3, v6, :cond_6

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->d()C

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 30
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 31
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v3

    if-ne v3, v4, :cond_8

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_8

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->d()C

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->d()C

    .line 34
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 35
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/naming/G0;->b(Z)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->f()V

    const/16 v4, 0x3a

    .line 37
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/naming/G0;->a(C)V

    .line 38
    iput-boolean v5, p0, Lcom/android/tools/r8/naming/G0;->e:Z

    .line 39
    new-instance v4, Lcom/android/tools/r8/naming/E0;

    iget v5, p0, Lcom/android/tools/r8/naming/G0;->h:I

    invoke-direct {v4, v5}, Lcom/android/tools/r8/naming/E0;-><init>(I)V

    .line 40
    invoke-virtual {p1, v3, v0, v4}, Lcom/android/tools/r8/naming/w0;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/naming/E0;)Lcom/android/tools/r8/naming/g;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 42
    iget-object v3, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/tools/r8/naming/G0;->i:I

    if-ne v3, v4, :cond_9

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/G0;->b(Lcom/android/tools/r8/naming/w0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/naming/G0;->a(Lcom/android/tools/r8/naming/w0;Lcom/android/tools/r8/naming/g;)V

    goto/16 :goto_0

    .line 45
    :cond_9
    new-instance p1, Lcom/android/tools/r8/naming/F0;

    .line 46
    invoke-direct {p1, p0, v1, v2}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 47
    throw p1

    :cond_a
    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/w0;Lcom/android/tools/r8/naming/g;)V
    .locals 21

    move-object/from16 v9, p0

    .line 68
    new-instance v10, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 69
    new-instance v11, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/C7;-><init>()V

    const/4 v0, -0x1

    move/from16 v16, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 70
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->c()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 71
    new-instance v5, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    .line 72
    new-instance v4, Lcom/android/tools/r8/naming/s1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v15

    move-object v12, v4

    move-object/from16 v4, p2

    move-object/from16 v17, v5

    move-object v5, v7

    move-object/from16 v18, v15

    move v15, v6

    move-object v6, v11

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v20, v8

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/naming/s1;-><init>(Lcom/android/tools/r8/naming/G0;Lcom/android/tools/r8/internal/U6;Ljava/lang/String;Lcom/android/tools/r8/naming/g;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/naming/V;)V

    invoke-virtual {v9, v12}, Lcom/android/tools/r8/naming/G0;->a(Ljava/util/function/Consumer;)Z

    .line 73
    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/U6;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    iget-object v0, v9, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, v9, Lcom/android/tools/r8/naming/G0;->i:I

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    goto/16 :goto_1a

    :cond_1
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v18, v15

    move v15, v6

    .line 75
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result v0

    .line 76
    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    move-object v1, v13

    move-object v2, v14

    move/from16 v4, v16

    move-object/from16 v3, v18

    move-object/from16 v7, v20

    goto/16 :goto_1b

    .line 77
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    const/4 v6, 0x1

    .line 78
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/naming/G0;->a(Z)Lcom/android/tools/r8/naming/M0;

    move-result-object v12

    const/16 v0, 0x3a

    if-eqz v12, :cond_4

    .line 79
    iget-boolean v1, v12, Lcom/android/tools/r8/naming/M0;->c:Z

    if-nez v1, :cond_3

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 81
    invoke-virtual {v9, v0}, Lcom/android/tools/r8/naming/G0;->a(C)V

    goto :goto_2

    .line 82
    :cond_3
    new-instance v0, Lcom/android/tools/r8/naming/F0;

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v1

    .line 83
    const-string v2, "Invalid obfuscated line number range (%s)."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-direct {v0, v9, v1, v15}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 85
    throw v0

    .line 86
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 87
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/naming/G0;->b(Z)Ljava/lang/String;

    move-result-object v1

    move v2, v15

    .line 88
    :goto_3
    iget v3, v9, Lcom/android/tools/r8/naming/G0;->i:I

    iget-object v4, v9, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 89
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result v3

    .line 90
    invoke-static {v3}, Lcom/android/tools/r8/internal/zq0;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v2, :cond_5

    .line 91
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result v2

    const v3, 0xfeff

    if-ne v2, v3, :cond_5

    move v2, v15

    goto :goto_4

    :cond_5
    move v2, v6

    .line 92
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->e()V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_25

    .line 93
    iget v2, v9, Lcom/android/tools/r8/naming/G0;->i:I

    .line 94
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/naming/G0;->c(Z)V

    .line 95
    :goto_5
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_7

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->d()C

    .line 97
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/naming/G0;->c(Z)V

    goto :goto_5

    .line 98
    :cond_7
    iget v3, v9, Lcom/android/tools/r8/naming/G0;->i:I

    sub-int/2addr v3, v2

    .line 99
    rem-int/lit8 v5, v3, 0x40

    .line 100
    iget-object v7, v9, Lcom/android/tools/r8/naming/G0;->l:[Ljava/lang/String;

    aget-object v7, v7, v5

    if-eqz v7, :cond_8

    .line 101
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v3, :cond_8

    iget-object v8, v9, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    .line 102
    invoke-virtual {v8, v2, v7, v15, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_6

    .line 103
    :cond_8
    iget-object v3, v9, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    iget v7, v9, Lcom/android/tools/r8/naming/G0;->i:I

    invoke-virtual {v3, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v3, v9, Lcom/android/tools/r8/naming/G0;->l:[Ljava/lang/String;

    iget-object v7, v9, Lcom/android/tools/r8/naming/G0;->m:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v5

    .line 105
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 106
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_b

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->d()C

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 109
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_9

    .line 110
    sget-object v2, Lcom/android/tools/r8/internal/zq0;->b:[Ljava/lang/String;

    goto :goto_8

    .line 111
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/naming/G0;->b(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 114
    :goto_7
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v5

    if-eq v5, v3, :cond_a

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    const/16 v5, 0x2c

    .line 116
    invoke-virtual {v9, v5}, Lcom/android/tools/r8/naming/G0;->a(C)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 118
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/naming/G0;->b(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 119
    :cond_a
    sget-object v5, Lcom/android/tools/r8/internal/zq0;->b:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 120
    :goto_8
    invoke-virtual {v9, v3}, Lcom/android/tools/r8/naming/G0;->a(C)V

    .line 121
    new-instance v3, Lcom/android/tools/r8/naming/V$b;

    invoke-direct {v3, v7, v1, v2}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_9

    .line 122
    :cond_b
    new-instance v3, Lcom/android/tools/r8/naming/V$a;

    invoke-direct {v3, v7, v1}, Lcom/android/tools/r8/naming/V$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_9
    iget-object v1, v9, Lcom/android/tools/r8/naming/G0;->n:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/tools/r8/naming/V$c;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 125
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v1

    if-ne v1, v0, :cond_d

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->d()C

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 128
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/naming/G0;->a(Z)Lcom/android/tools/r8/naming/M0;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_a

    .line 129
    :cond_c
    new-instance v0, Lcom/android/tools/r8/naming/F0;

    const-string v1, "No number follows the colon after the method signature."

    .line 130
    invoke-direct {v0, v9, v1, v15}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 131
    throw v0

    :cond_d
    const/4 v0, 0x0

    .line 132
    :goto_a
    iget-boolean v1, v9, Lcom/android/tools/r8/naming/G0;->c:Z

    if-nez v1, :cond_f

    if-nez v12, :cond_f

    if-nez v0, :cond_e

    goto :goto_b

    .line 133
    :cond_e
    new-instance v1, Lcom/android/tools/r8/naming/F0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mapping for original range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-direct {v1, v9, v0, v15}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 135
    throw v1

    .line 136
    :cond_f
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    const/16 v1, 0x2d

    .line 137
    invoke-virtual {v9, v1}, Lcom/android/tools/r8/naming/G0;->a(C)V

    const/16 v1, 0x3e

    .line 138
    invoke-virtual {v9, v1}, Lcom/android/tools/r8/naming/G0;->a(C)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->f()V

    .line 140
    iget v1, v9, Lcom/android/tools/r8/naming/G0;->i:I

    .line 141
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/naming/G0;->c(Z)V

    .line 142
    :goto_c
    invoke-virtual {v9, v15}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v2

    if-ne v2, v4, :cond_10

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/naming/G0;->d()C

    .line 144
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/naming/G0;->c(Z)V

    goto :goto_c

    .line 145
    :cond_10
    iget v2, v9, Lcom/android/tools/r8/naming/G0;->i:I

    sub-int/2addr v2, v1

    .line 146
    rem-int/lit8 v3, v2, 0x40

    .line 147
    iget-object v4, v9, Lcom/android/tools/r8/naming/G0;->l:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_11

    .line 148
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v2, :cond_11

    iget-object v5, v9, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    .line 149
    invoke-virtual {v5, v1, v4, v15, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_d
    move-object v7, v4

    goto :goto_e

    .line 150
    :cond_11
    iget-object v2, v9, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    iget v4, v9, Lcom/android/tools/r8/naming/G0;->i:I

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v2, v9, Lcom/android/tools/r8/naming/G0;->l:[Ljava/lang/String;

    iget-object v4, v9, Lcom/android/tools/r8/naming/G0;->m:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    goto :goto_d

    .line 152
    :goto_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    instance-of v1, v8, Lcom/android/tools/r8/naming/V$b;

    if-eqz v1, :cond_19

    move-object/from16 v2, v19

    if-eqz v2, :cond_12

    .line 154
    iget-object v3, v2, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    if-ne v3, v8, :cond_12

    iget-object v3, v2, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    .line 155
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 156
    invoke-virtual {v2}, Lcom/android/tools/r8/naming/k$b;->f()Lcom/android/tools/r8/naming/V$b;

    move-result-object v2

    goto :goto_f

    :cond_12
    const/4 v2, 0x0

    .line 157
    :goto_f
    invoke-virtual {v8}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v3

    move-object/from16 v5, p2

    .line 158
    invoke-virtual {v5, v12, v3, v0, v7}, Lcom/android/tools/r8/naming/g;->a(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)Lcom/android/tools/r8/naming/k$b;

    move-result-object v3

    if-eqz v3, :cond_18

    if-eqz v2, :cond_15

    .line 159
    sget-boolean v4, Lcom/android/tools/r8/naming/k$b;->k:Z

    if-nez v4, :cond_14

    iget-boolean v4, v3, Lcom/android/tools/r8/naming/k$b;->g:Z

    if-nez v4, :cond_13

    goto :goto_10

    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_14
    :goto_10
    iput-object v2, v3, Lcom/android/tools/r8/naming/k$b;->f:Lcom/android/tools/r8/naming/V$b;

    goto :goto_12

    :cond_15
    if-eqz v13, :cond_18

    .line 161
    invoke-virtual {v13}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v2

    .line 162
    iget-object v4, v3, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 163
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/naming/V$c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 164
    invoke-virtual {v13}, Lcom/android/tools/r8/naming/V;->b()Lcom/android/tools/r8/naming/V$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v2

    .line 165
    sget-boolean v4, Lcom/android/tools/r8/naming/k$b;->k:Z

    if-nez v4, :cond_17

    iget-boolean v4, v3, Lcom/android/tools/r8/naming/k$b;->g:Z

    if-nez v4, :cond_16

    goto :goto_11

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :cond_17
    :goto_11
    iput-object v2, v3, Lcom/android/tools/r8/naming/k$b;->f:Lcom/android/tools/r8/naming/V$b;

    :cond_18
    :goto_12
    move-object/from16 v17, v3

    goto :goto_13

    :cond_19
    move-object/from16 v5, p2

    move-object/from16 v2, v19

    move-object/from16 v17, v2

    .line 167
    :goto_13
    sget-boolean v2, Lcom/android/tools/r8/naming/G0;->o:Z

    if-nez v2, :cond_1b

    if-eqz v12, :cond_1b

    if-eqz v1, :cond_1a

    goto :goto_14

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1b
    :goto_14
    if-eqz v14, :cond_20

    move-object/from16 v3, v18

    .line 168
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v4, v20

    if-eqz v4, :cond_1d

    .line 169
    invoke-virtual {v4, v12}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_15

    :cond_1c
    move v2, v15

    goto :goto_16

    :cond_1d
    :goto_15
    move v2, v6

    :goto_16
    if-eqz v0, :cond_1f

    .line 170
    iget-boolean v0, v0, Lcom/android/tools/r8/naming/M0;->c:Z

    if-nez v0, :cond_1e

    goto :goto_17

    :cond_1e
    move v6, v15

    :cond_1f
    :goto_17
    if-eqz v1, :cond_21

    if-nez v2, :cond_21

    if-eqz v6, :cond_20

    goto :goto_18

    :cond_20
    move-object v14, v7

    move-object/from16 v16, v8

    goto :goto_19

    :cond_21
    :goto_18
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v13, v4

    move/from16 v4, v16

    move-object v5, v10

    move-object v6, v11

    move-object v14, v7

    move-object v7, v13

    move-object/from16 v16, v8

    move-object/from16 v8, p2

    .line 171
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/naming/G0;->a(Lcom/android/tools/r8/naming/V;Lcom/android/tools/r8/naming/V$c;Ljava/lang/String;ILcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/g;)Lcom/android/tools/r8/naming/V;

    move-result-object v13

    .line 172
    :goto_19
    iget v0, v9, Lcom/android/tools/r8/naming/G0;->h:I

    move-object v8, v12

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    move-object/from16 v7, v17

    move/from16 v16, v0

    .line 173
    :goto_1a
    iget-object v0, v9, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, v9, Lcom/android/tools/r8/naming/G0;->i:I

    if-ne v0, v1, :cond_24

    .line 174
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/naming/G0;->b(Lcom/android/tools/r8/naming/w0;)Z

    move-result v0

    if-nez v0, :cond_23

    move-object v7, v8

    move-object v1, v13

    move-object v2, v14

    move/from16 v4, v16

    move-object/from16 v3, v18

    :goto_1b
    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v8, p2

    .line 175
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/naming/G0;->a(Lcom/android/tools/r8/naming/V;Lcom/android/tools/r8/naming/V$c;Ljava/lang/String;ILcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/g;)Lcom/android/tools/r8/naming/V;

    :cond_22
    return-void

    :cond_23
    move-object/from16 v15, v18

    goto/16 :goto_0

    .line 176
    :cond_24
    new-instance v0, Lcom/android/tools/r8/naming/F0;

    const-string v1, "Expected end of line"

    .line 177
    invoke-direct {v0, v9, v1, v15}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 178
    throw v0

    .line 179
    :cond_25
    new-instance v0, Lcom/android/tools/r8/naming/F0;

    const-string v1, "Expected whitespace"

    invoke-direct {v0, v9, v1, v6}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/naming/w0;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 1

    .line 48
    sget-boolean v0, Lcom/android/tools/r8/naming/G0;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    instance-of v0, p2, Lcom/android/tools/r8/naming/mappinginformation/b;

    if-nez v0, :cond_1

    .line 50
    instance-of v0, p2, Lcom/android/tools/r8/internal/sv0;

    if-nez v0, :cond_1

    .line 51
    instance-of v0, p2, Lcom/android/tools/r8/internal/L50;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    instance-of v0, p2, Lcom/android/tools/r8/naming/mappinginformation/b;

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/mappinginformation/e;->b()Lcom/android/tools/r8/naming/mappinginformation/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/naming/w0;->a(Lcom/android/tools/r8/naming/mappinginformation/b;)Lcom/android/tools/r8/naming/w0;

    return-void

    .line 56
    :cond_2
    instance-of v0, p2, Lcom/android/tools/r8/internal/L50;

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/mappinginformation/e;->e()Lcom/android/tools/r8/internal/L50;

    move-result-object p2

    .line 58
    iget-object p2, p2, Lcom/android/tools/r8/internal/L50;->a:Ljava/util/HashMap;

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/naming/v1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/naming/v1;-><init>(Lcom/android/tools/r8/naming/w0;)V

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    .line 60
    :cond_3
    iget-boolean p2, p0, Lcom/android/tools/r8/naming/G0;->e:Z

    if-nez p2, :cond_4

    .line 61
    iget-object p2, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/naming/w0;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 3

    .line 62
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/mappinginformation/e;->b()Lcom/android/tools/r8/naming/mappinginformation/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/b;->s()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_EXPERIMENTAL:Lcom/android/tools/r8/naming/MapVersion;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-boolean v0, p0, Lcom/android/tools/r8/naming/G0;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    sget-object v2, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_NONE:Lcom/android/tools/r8/naming/MapVersion;

    :goto_0
    iput-object v2, p0, Lcom/android/tools/r8/naming/G0;->k:Lcom/android/tools/r8/naming/MapVersion;

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/b;->s()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/naming/G0;->k:Lcom/android/tools/r8/naming/MapVersion;

    .line 67
    :cond_2
    :goto_1
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)Z
    .locals 5

    .line 293
    sget-boolean v0, Lcom/android/tools/r8/naming/G0;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 294
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/iL;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/tools/r8/internal/mL; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 296
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->k:Lcom/android/tools/r8/naming/MapVersion;

    iget-object v2, p0, Lcom/android/tools/r8/naming/G0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    iget v3, p0, Lcom/android/tools/r8/naming/G0;->h:I

    new-instance v4, Lcom/android/tools/r8/naming/u1;

    invoke-direct {v4, p0, p1}, Lcom/android/tools/r8/naming/u1;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/util/function/Consumer;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/naming/mappinginformation/e;->a(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/DiagnosticsHandler;ILjava/util/function/Consumer;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final b(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/naming/G0;->i:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/naming/G0;->i:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0xa

    return p1
.end method

.method public final b(Z)Ljava/lang/String;
    .locals 5

    .line 17
    iget v0, p0, Lcom/android/tools/r8/naming/G0;->i:I

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/naming/G0;->c(Z)V

    .line 19
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->d()C

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/naming/G0;->c(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 22
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result p1

    const/16 v2, 0x5b

    if-ne p1, v2, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->d()C

    const/16 p1, 0x5d

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/G0;->a(C)V

    goto :goto_1

    .line 25
    :cond_1
    iget p1, p0, Lcom/android/tools/r8/naming/G0;->i:I

    sub-int/2addr p1, v0

    .line 26
    rem-int/lit8 v2, p1, 0x40

    .line 27
    iget-object v3, p0, Lcom/android/tools/r8/naming/G0;->l:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    .line 29
    invoke-virtual {v4, v0, v3, v1, p1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v3

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/naming/G0;->i:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->l:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/naming/G0;->m:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v0, v2

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/naming/mappinginformation/e;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    iget v1, p0, Lcom/android/tools/r8/naming/G0;->h:I

    .line 15
    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->notAllowedCombination(Lcom/android/tools/r8/naming/mappinginformation/e;Lcom/android/tools/r8/naming/mappinginformation/e;I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object p1

    .line 16
    invoke-interface {v0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/naming/w0;)Z
    .locals 6

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/tools/r8/naming/G0;->i:I

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/naming/G0;->a:Lcom/android/tools/r8/naming/P;

    invoke-interface {v1}, Lcom/android/tools/r8/naming/P;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    .line 4
    iget v2, p0, Lcom/android/tools/r8/naming/G0;->h:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/naming/G0;->h:I

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move v2, v0

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_5

    :cond_2
    add-int/2addr v2, v3

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_3

    move v1, v3

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_4
    move v1, v0

    :goto_1
    xor-int/2addr v1, v3

    goto :goto_3

    .line 10
    :cond_5
    invoke-static {v4}, Lcom/android/tools/r8/internal/zq0;->a(I)Z

    move-result v4

    if-nez v4, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    move v1, v3

    .line 11
    :goto_3
    iget-boolean v2, p0, Lcom/android/tools/r8/naming/G0;->e:Z

    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/naming/w0;->a(Ljava/lang/String;)V

    .line 13
    :cond_8
    iget-object v2, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    if-eqz v2, :cond_9

    if-nez v1, :cond_0

    :cond_9
    if-eqz v2, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public final synthetic c(Lcom/android/tools/r8/naming/mappinginformation/e;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    iget v1, p0, Lcom/android/tools/r8/naming/G0;->h:I

    .line 10
    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->notAllowedCombination(Lcom/android/tools/r8/naming/mappinginformation/e;Lcom/android/tools/r8/naming/mappinginformation/e;I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final c(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->a(I)C

    move-result p1

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->d()C

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 14
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result v1

    .line 15
    invoke-static {v1}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result v2

    const/16 v3, 0x3f

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_7

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->e()V

    .line 17
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result v1

    .line 18
    invoke-static {v1}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    const/16 p1, 0x3e

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/G0;->a(C)V

    .line 21
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result p1

    .line 22
    invoke-static {p1}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->e()V

    goto :goto_3

    .line 24
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result p1

    .line 25
    invoke-static {p1}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 26
    :cond_5
    new-instance p1, Lcom/android/tools/r8/naming/F0;

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End of identifier expected (was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-direct {p1, p0, v1, v0}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 30
    throw p1

    .line 31
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->e()V

    goto :goto_2

    .line 32
    :cond_7
    new-instance p1, Lcom/android/tools/r8/naming/F0;

    const-string v1, "Identifier expected"

    .line 33
    invoke-direct {p1, p0, v1, v0}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    .line 34
    throw p1
.end method

.method public final c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_4

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_2

    return v3

    .line 7
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    return v1

    .line 8
    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->a:Lcom/android/tools/r8/naming/P;

    invoke-interface {v0}, Lcom/android/tools/r8/naming/P;->close()V

    return-void
.end method

.method public final d()C
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/naming/G0;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/naming/G0;->i:I

    iget-object v1, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/naming/G0;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/naming/G0;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    new-instance v0, Lcom/android/tools/r8/naming/F0;

    const-string v1, "Unexpected end of line"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    throw v0
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/naming/G0;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/naming/G0;->i:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/naming/G0;->i:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Lcom/android/tools/r8/naming/F0;

    const-string v1, "Unexpected end of line"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/naming/F0;-><init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V

    throw v0
.end method

.method public final f()V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/naming/G0;->i:I

    iget-object v1, p0, Lcom/android/tools/r8/naming/G0;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/G0;->b(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/G0;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method
