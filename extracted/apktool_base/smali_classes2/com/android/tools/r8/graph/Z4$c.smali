.class public abstract Lcom/android/tools/r8/graph/Z4$c;
.super Lcom/android/tools/r8/graph/Z4;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/Z5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/Z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/graph/E0;",
        ">",
        "Lcom/android/tools/r8/graph/Z4;",
        "Lcom/android/tools/r8/graph/Z5;"
    }
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/E0;

.field public final c:Lcom/android/tools/r8/graph/E0;

.field public final d:Lcom/android/tools/r8/graph/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/graph/Z4;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-ne v1, v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput-object p2, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    if-nez v0, :cond_9

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object p2, p3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-ne p1, p2, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/C7;)Lcom/android/tools/r8/graph/f4;
    .locals 1

    .line 244
    new-instance v0, Lcom/android/tools/r8/graph/nc;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/android/tools/r8/graph/nc;-><init>(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/D4;ZLcom/android/tools/r8/graph/G4;)V
    .locals 2

    .line 257
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/graph/D4;->e()Lcom/android/tools/r8/graph/D4;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/graph/D4;->d()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-nez v0, :cond_2

    .line 259
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 260
    iget-object v0, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    .line 262
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->g1()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 263
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/G4;->a(Lcom/android/tools/r8/graph/D4;)V

    .line 264
    :cond_3
    iget-object p1, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 265
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/G4;->a(Lcom/android/tools/r8/graph/D4;)V

    :cond_4
    return-void

    .line 266
    :cond_5
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/G4;->a(Lcom/android/tools/r8/graph/D4;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 245
    new-instance p4, Lcom/android/tools/r8/graph/mc;

    invoke-direct {p4, p5, p0, p1}, Lcom/android/tools/r8/graph/mc;-><init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/internal/C7;)V

    if-nez p2, :cond_0

    .line 246
    iget-object p1, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 247
    iget-object p2, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 248
    invoke-virtual {p2, p1, p4, p6, p0}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/h;)V

    return-void

    .line 249
    :cond_0
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 250
    invoke-interface {p0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 251
    sget-boolean p0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez p0, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    .line 253
    :cond_0
    iget-object p0, p1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 256
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)Z
    .locals 3

    .line 318
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 319
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 320
    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 321
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 322
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    if-nez v0, :cond_6

    .line 323
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 324
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 325
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p0

    .line 326
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 184
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/D4;
    .locals 7

    .line 272
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 273
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v5

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 274
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/D4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/D4;
    .locals 8

    .line 275
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0, p3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a subtype of "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 276
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p3, v0}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p3

    .line 277
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    .line 278
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 279
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p3

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v0

    move-object v1, p1

    move-object v2, p3

    :goto_1
    const/4 v3, 0x0

    if-eqz v1, :cond_17

    .line 281
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 282
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v5

    .line 283
    sget-boolean v6, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v6, :cond_4

    if-eqz v5, :cond_4

    .line 284
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 285
    iget-object v7, v5, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 286
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    if-eqz v5, :cond_6

    .line 287
    invoke-static {v4, v5}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    sget-object v5, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    goto :goto_3

    :cond_6
    move-object v5, v3

    .line 288
    :goto_3
    sget-object v4, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    if-ne v5, v4, :cond_11

    if-eqz v0, :cond_11

    if-nez v6, :cond_8

    .line 289
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_4
    move-object v0, v1

    .line 290
    :cond_9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 291
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v0, v3

    goto :goto_5

    .line 292
    :cond_a
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_b

    goto :goto_7

    .line 294
    :cond_b
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 295
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 296
    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    goto :goto_6

    :cond_c
    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_9

    .line 297
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-static {v4, v5}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 298
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v4

    if-nez v4, :cond_d

    .line 299
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 300
    :cond_d
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v0, :cond_10

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    if-eq v0, v3, :cond_e

    goto :goto_8

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_7
    move-object v2, p3

    :cond_10
    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_11
    if-eqz v5, :cond_14

    if-ne v5, v4, :cond_12

    goto :goto_9

    .line 301
    :cond_12
    invoke-static {v1, v5}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eq v2, p3, :cond_13

    .line 302
    new-instance p2, Lcom/android/tools/r8/graph/E4;

    invoke-direct {p2, p1, v2}, Lcom/android/tools/r8/graph/E4;-><init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/H0;)V

    return-object p2

    :cond_13
    return-object p1

    .line 303
    :cond_14
    :goto_9
    iget-object v4, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-ne v4, v5, :cond_15

    return-object v3

    .line 304
    :cond_15
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez v1, :cond_16

    move-object v1, v3

    goto/16 :goto_1

    .line 305
    :cond_16
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v1

    .line 306
    invoke-interface {v1}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    goto/16 :goto_1

    .line 307
    :cond_17
    iget-object p3, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    if-nez p3, :cond_18

    return-object v3

    .line 308
    :cond_18
    iget-object p3, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    .line 309
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 311
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    .line 312
    :cond_19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 313
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p1

    .line 314
    invoke-virtual {p1, p4, p5}, Lcom/android/tools/r8/graph/Z4$a;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object v3

    .line 315
    :cond_1a
    sget-boolean p2, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez p2, :cond_1c

    .line 316
    instance-of p1, p1, Lcom/android/tools/r8/graph/V4;

    if-eqz p1, :cond_1b

    goto :goto_a

    .line 317
    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1c
    :goto_a
    return-object v3
.end method

.method public final a()Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/H0;
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p2, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 168
    iget-object v2, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v2

    if-nez v2, :cond_3

    .line 169
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-nez v2, :cond_3

    .line 170
    invoke-interface {p3, v0, p1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 171
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez p1, :cond_2

    move-object p1, v1

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    .line 173
    invoke-interface {p1}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_4

    return-object v1

    .line 174
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    move-object v2, p1

    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_7

    .line 175
    invoke-virtual {v2, p3}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 176
    :cond_5
    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez v2, :cond_6

    move-object v2, v1

    goto :goto_1

    .line 177
    :cond_6
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v2

    .line 178
    invoke-interface {v2}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v3, :cond_8

    .line 179
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    :cond_8
    if-nez v3, :cond_9

    return-object v1

    .line 180
    :cond_9
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v1

    .line 181
    :cond_a
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 182
    :cond_b
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-eq p1, p2, :cond_c

    return-object v1

    .line 183
    :cond_c
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p1

    if-eqz p1, :cond_d

    return-object v1

    :cond_d
    return-object v3
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;
    .locals 1

    .line 161
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 163
    new-instance p2, Lcom/android/tools/r8/graph/oc;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/graph/oc;-><init>(Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 152
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return-object p2

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    .line 155
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 156
    iget-object p3, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/high16 v0, 0x10000

    .line 157
    iget p3, p3, Lcom/android/tools/r8/graph/g;->c:I

    .line 158
    invoke-static {p3, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 159
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p1

    if-nez p1, :cond_2

    .line 160
    iget-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p2, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/f4;Lcom/android/tools/r8/graph/B5;)Lcom/android/tools/r8/graph/H4;
    .locals 6

    .line 185
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 186
    sget-boolean v1, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p2, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p3, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not a subtype of "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    sget-object p1, Lcom/android/tools/r8/graph/F4;->a:Lcom/android/tools/r8/graph/F4;

    return-object p1

    .line 189
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    .line 190
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 191
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    .line 192
    iget-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 193
    invoke-interface {p4, p1}, Lcom/android/tools/r8/graph/B5;->a(Lcom/android/tools/r8/graph/b1;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-interface {p4, p1}, Lcom/android/tools/r8/graph/B5;->a(Lcom/android/tools/r8/graph/b1;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 194
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p3, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p2, p3}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    .line 195
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-static {p3, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    .line 196
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 197
    :goto_2
    new-instance p1, Lcom/android/tools/r8/graph/H4$a;

    invoke-direct {p1, p2, p3, p3, v2}, Lcom/android/tools/r8/graph/H4$a;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;I)V

    return-object p1

    :cond_5
    if-nez v1, :cond_7

    .line 198
    iget-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 199
    :cond_7
    :goto_3
    sget-object p1, Lcom/android/tools/r8/graph/H4$a;->e:Lcom/android/tools/r8/graph/H4$a;

    .line 200
    new-instance p1, Lcom/android/tools/r8/graph/G4;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/G4;-><init>()V

    .line 201
    new-instance v1, Lcom/android/tools/r8/graph/B4;

    invoke-direct {v1, p4}, Lcom/android/tools/r8/graph/B4;-><init>(Lcom/android/tools/r8/graph/B5;)V

    .line 202
    iget-object p4, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    iget-object p4, p4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/graph/pc;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/android/tools/r8/graph/pc;-><init>(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/B4;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/G4;)V

    new-instance v5, Lcom/android/tools/r8/graph/qc;

    invoke-direct {v5, p0, p2, v0, p1}, Lcom/android/tools/r8/graph/qc;-><init>(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/G4;)V

    invoke-interface {p3, p4, v4, v5}, Lcom/android/tools/r8/graph/f4;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 203
    iget-object p2, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    .line 204
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 205
    sget-boolean p3, Lcom/android/tools/r8/graph/B4;->d:Z

    if-nez p3, :cond_9

    iget-object p3, v1, Lcom/android/tools/r8/graph/B4;->b:Ljava/util/Set;

    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 206
    :cond_9
    :goto_4
    iget-object p3, v1, Lcom/android/tools/r8/graph/B4;->b:Ljava/util/Set;

    if-nez p3, :cond_a

    goto :goto_6

    .line 207
    :cond_a
    iget-object p4, v1, Lcom/android/tools/r8/graph/B4;->c:Ljava/util/Set;

    if-eqz p4, :cond_b

    goto :goto_7

    .line 208
    :cond_b
    new-instance p4, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {p4, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 209
    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 210
    :cond_c
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 211
    :goto_5
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 212
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-nez p3, :cond_d

    goto :goto_5

    .line 213
    :cond_d
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 214
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, v1, Lcom/android/tools/r8/graph/B4;->a:Lcom/android/tools/r8/graph/B5;

    invoke-interface {v5, v4}, Lcom/android/tools/r8/graph/B5;->a(Lcom/android/tools/r8/graph/b1;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_7

    .line 215
    :cond_e
    iget-object v4, p3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v4, :cond_f

    .line 216
    invoke-virtual {p4, v4}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 217
    :cond_f
    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/Yx0;->a([Ljava/lang/Object;)V

    goto :goto_5

    :cond_10
    :goto_6
    move v2, v3

    .line 218
    :cond_11
    :goto_7
    iput v2, p1, Lcom/android/tools/r8/graph/G4;->e:I

    .line 219
    new-instance p2, Lcom/android/tools/r8/graph/H4$a;

    iget-object p3, p1, Lcom/android/tools/r8/graph/G4;->a:Ljava/util/IdentityHashMap;

    iget-object p4, p1, Lcom/android/tools/r8/graph/G4;->b:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/tools/r8/graph/G4;->c:Ljava/util/ArrayList;

    iget p1, p1, Lcom/android/tools/r8/graph/G4;->e:I

    invoke-direct {p2, p3, p4, v0, p1}, Lcom/android/tools/r8/graph/H4$a;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;I)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H4;
    .locals 4

    .line 231
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 232
    sget-boolean v1, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 233
    iget-object v2, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    if-eqz p4, :cond_5

    .line 234
    iget-object v1, p4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 235
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 236
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 237
    :cond_5
    :goto_2
    new-instance v1, Lcom/android/tools/r8/internal/C7;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    .line 238
    invoke-static {v0, p3, p4, v1}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/C7;)Lcom/android/tools/r8/graph/f4;

    move-result-object p3

    .line 239
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/android/tools/r8/graph/ic;

    invoke-direct {p4, v0}, Lcom/android/tools/r8/graph/ic;-><init>(Lcom/android/tools/r8/shaking/i;)V

    .line 240
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/f4;Lcom/android/tools/r8/graph/B5;)Lcom/android/tools/r8/graph/H4;

    move-result-object p1

    .line 241
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H4;->d()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 242
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H4;->a()Lcom/android/tools/r8/graph/H4$a;

    move-result-object p2

    const/4 p3, 0x2

    .line 243
    iput p3, p2, Lcom/android/tools/r8/graph/H4$a;->d:I

    :cond_6
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/graph/j;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/I4;
    .locals 2

    .line 22
    iget-object v0, p1, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 24
    iget-object p3, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 25
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    if-nez p4, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p2

    .line 27
    invoke-interface {p2}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_2

    return-object v1

    .line 29
    :cond_2
    new-instance p3, Lcom/android/tools/r8/graph/C4;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/graph/C4;-><init>(Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/graph/H0;)V

    return-object p3

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    .line 34
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p3, p4}, Lcom/android/tools/r8/graph/Z4$a;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object v1

    .line 37
    :cond_5
    sget-boolean p2, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez p2, :cond_7

    .line 38
    instance-of p1, p1, Lcom/android/tools/r8/graph/V4;

    if-eqz p1, :cond_6

    goto :goto_2

    .line 39
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/I4;
    .locals 2

    .line 267
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    instance-of v0, p1, Lcom/android/tools/r8/shaking/Z0;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/b1;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/D4;

    move-result-object p1

    return-object p1

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/b1;->b()Lcom/android/tools/r8/internal/kR;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    .line 271
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/graph/j;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/I4;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4$c;
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/h3;
    .locals 4

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NJ;->w2()Lcom/android/tools/r8/internal/kK;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/16 v2, 0x8

    if-eq v0, v2, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 49
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v0, :cond_1

    .line 50
    instance-of v0, p2, Lcom/android/tools/r8/internal/TJ;

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object p2

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    goto :goto_1

    .line 56
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    .line 57
    :goto_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/WJ;Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/h3;

    move-result-object p1

    return-object p1

    .line 58
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->j0()Lcom/android/tools/r8/internal/hK;

    move-result-object p2

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 62
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 63
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 65
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    invoke-virtual {v0, p2, p3, p1, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 66
    new-instance p1, Lcom/android/tools/r8/graph/T5;

    invoke-direct {p1, v1, p0}, Lcom/android/tools/r8/graph/T5;-><init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;)V

    return-object p1

    .line 67
    :cond_5
    new-instance p1, Lcom/android/tools/r8/graph/e6;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/e6;-><init>(Lcom/android/tools/r8/graph/Z4$c;)V

    return-object p1

    .line 68
    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 73
    invoke-virtual {v0, p2, p3, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 74
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v0, :cond_c

    .line 75
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 76
    :cond_7
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 77
    iget-object v0, p3, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 78
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 79
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 80
    invoke-static {p3, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    goto :goto_2

    :cond_8
    move-object p2, v1

    :goto_2
    if-eqz p2, :cond_9

    .line 81
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p3

    if-eqz p3, :cond_9

    move-object v1, p2

    :cond_9
    :goto_3
    if-nez v1, :cond_a

    goto :goto_4

    .line 82
    :cond_a
    sget-boolean p2, Lcom/android/tools/r8/internal/VJ;->m:Z

    if-nez p2, :cond_c

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_4
    move-object v1, p1

    goto :goto_6

    .line 83
    :cond_d
    iget-object v0, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 84
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v2

    if-nez v2, :cond_e

    .line 85
    iget-object v2, p1, Lcom/android/tools/r8/graph/y;->B:Lcom/android/tools/r8/internal/XR;

    .line 86
    iget-object v3, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 87
    iget-object v2, v2, Lcom/android/tools/r8/internal/XR;->c:Ljava/util/Set;

    .line 88
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 89
    :cond_e
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    goto :goto_6

    .line 90
    :cond_f
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_6

    .line 92
    :cond_10
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 93
    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 94
    iget-object p3, p3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 95
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 96
    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    goto :goto_5

    :cond_11
    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_12

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    if-eqz p2, :cond_12

    goto :goto_4

    :cond_12
    :goto_6
    if-eqz v1, :cond_13

    .line 98
    new-instance p1, Lcom/android/tools/r8/graph/T5;

    invoke-direct {p1, v1, p0}, Lcom/android/tools/r8/graph/T5;-><init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;)V

    return-object p1

    .line 99
    :cond_13
    new-instance p1, Lcom/android/tools/r8/graph/e6;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/e6;-><init>(Lcom/android/tools/r8/graph/Z4$c;)V

    return-object p1

    .line 100
    :cond_14
    new-instance p1, Lcom/android/tools/r8/graph/e6;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/e6;-><init>(Lcom/android/tools/r8/graph/Z4$c;)V

    return-object p1

    .line 101
    :cond_15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object p2

    .line 102
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 105
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    .line 107
    invoke-virtual {v2, p2, p3, v0}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    .line 108
    sget-boolean v2, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v2, :cond_1b

    .line 109
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_8

    .line 111
    :cond_16
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 112
    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 113
    iget-object p3, p3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 114
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 115
    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    goto :goto_7

    :cond_17
    move-object p1, v1

    :goto_7
    if-eqz p1, :cond_18

    .line 116
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    if-nez p2, :cond_18

    move-object v1, p1

    :cond_18
    :goto_8
    if-nez v1, :cond_19

    goto :goto_9

    .line 117
    :cond_19
    sget-boolean p1, Lcom/android/tools/r8/internal/VJ;->m:Z

    if-nez p1, :cond_1b

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_9

    :cond_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1b
    :goto_9
    move-object v1, v0

    goto :goto_b

    .line 118
    :cond_1c
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_b

    .line 120
    :cond_1d
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 121
    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 122
    iget-object p3, p3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 123
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 124
    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    goto :goto_a

    :cond_1e
    move-object p1, v1

    :goto_a
    if-eqz p1, :cond_1f

    .line 125
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    if-nez p2, :cond_1f

    move-object v1, p1

    :cond_1f
    :goto_b
    if-eqz v1, :cond_20

    .line 126
    new-instance p1, Lcom/android/tools/r8/graph/T5;

    invoke-direct {p1, v1, p0}, Lcom/android/tools/r8/graph/T5;-><init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;)V

    return-object p1

    .line 127
    :cond_20
    new-instance p1, Lcom/android/tools/r8/graph/e6;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/e6;-><init>(Lcom/android/tools/r8/graph/Z4$c;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/WJ;Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/h3;
    .locals 8

    .line 128
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 129
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 132
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v5

    move-object v3, p0

    move-object v4, p4

    move-object v6, p1

    move-object v7, p3

    .line 133
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/shaking/i2;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 135
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 136
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p3

    if-nez p3, :cond_1

    .line 138
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->B:Lcom/android/tools/r8/internal/XR;

    .line 139
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 140
    iget-object p1, p1, Lcom/android/tools/r8/internal/XR;->c:Ljava/util/Set;

    .line 141
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    :cond_1
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 144
    new-instance p2, Lcom/android/tools/r8/graph/T5;

    invoke-direct {p2, p1, p0}, Lcom/android/tools/r8/graph/T5;-><init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;)V

    return-object p2

    .line 145
    :cond_4
    new-instance p1, Lcom/android/tools/r8/graph/e6;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/e6;-><init>(Lcom/android/tools/r8/graph/Z4$c;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/TW;
    .locals 0

    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    instance-of p3, p2, Lcom/android/tools/r8/internal/TJ;

    if-nez p3, :cond_1

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 44
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 45
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->o:Lcom/android/tools/r8/internal/rX;

    .line 46
    iget-object p2, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    iget-object p3, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/rX;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    return-object p1

    .line 47
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 149
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/B4;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/G4;Lcom/android/tools/r8/graph/H2;)V
    .locals 7

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/B4;->a:Lcom/android/tools/r8/graph/B5;

    .line 3
    invoke-interface {v0, p4}, Lcom/android/tools/r8/graph/B5;->a(Lcom/android/tools/r8/graph/b1;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/graph/B4;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/graph/B4;->b:Ljava/util/Set;

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/B4;->b:Ljava/util/Set;

    iget-object v1, p4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/graph/jc;

    invoke-direct {v5, p3}, Lcom/android/tools/r8/graph/jc;-><init>(Lcom/android/tools/r8/graph/G4;)V

    .line 9
    new-instance v6, Lcom/android/tools/r8/graph/kc;

    invoke-direct {v6, p3}, Lcom/android/tools/r8/graph/kc;-><init>(Lcom/android/tools/r8/graph/G4;)V

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/D4;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 11
    invoke-interface {p2}, Lcom/android/tools/r8/graph/D4;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/graph/B4;->a:Lcom/android/tools/r8/graph/B5;

    invoke-interface {v0, p4}, Lcom/android/tools/r8/graph/B5;->a(Lcom/android/tools/r8/graph/b1;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/graph/B4;->b:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 14
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/graph/B4;->b:Ljava/util/Set;

    .line 15
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/graph/B4;->b:Ljava/util/Set;

    iget-object p4, p4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    invoke-interface {p2}, Lcom/android/tools/r8/graph/D4;->d()Lcom/android/tools/r8/graph/j1;

    move-result-object p4

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/graph/B4;->a:Lcom/android/tools/r8/graph/B5;

    invoke-interface {v0, p4}, Lcom/android/tools/r8/graph/B5;->a(Lcom/android/tools/r8/graph/b1;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/graph/B4;->c:Ljava/util/Set;

    if-nez v0, :cond_4

    .line 19
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/graph/B4;->c:Ljava/util/Set;

    .line 20
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/graph/B4;->c:Ljava/util/Set;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    invoke-static {p2, p1, p3}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/D4;ZLcom/android/tools/r8/graph/G4;)V

    :cond_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/G4;Lcom/android/tools/r8/internal/kR;)V
    .locals 1

    .line 220
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4$c;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 221
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 223
    :cond_1
    :goto_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/tools/r8/graph/jc;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/graph/jc;-><init>(Lcom/android/tools/r8/graph/G4;)V

    .line 224
    new-instance v0, Lcom/android/tools/r8/graph/kc;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/graph/kc;-><init>(Lcom/android/tools/r8/graph/G4;)V

    .line 225
    invoke-virtual {p0, p4, p2, p1, v0}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/graph/j;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/I4;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 226
    invoke-interface {p1}, Lcom/android/tools/r8/graph/I4;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 227
    invoke-interface {p1}, Lcom/android/tools/r8/graph/I4;->o()Lcom/android/tools/r8/graph/C4;

    move-result-object p1

    .line 228
    iget-object p2, p3, Lcom/android/tools/r8/graph/G4;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 229
    :cond_2
    invoke-interface {p1}, Lcom/android/tools/r8/graph/I4;->e()Lcom/android/tools/r8/graph/D4;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    .line 230
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/D4;ZLcom/android/tools/r8/graph/G4;)V

    :cond_3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->c()Lcom/android/tools/r8/graph/G0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return-object p2

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p2, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final b()Lcom/android/tools/r8/graph/h1;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->c()Lcom/android/tools/r8/graph/G0;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 12
    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/graph/G0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3, v2, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->c()Lcom/android/tools/r8/graph/G0;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 6
    invoke-static {v0, v2, p1, p2, p3}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p2, Lcom/android/tools/r8/graph/lc;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/lc;-><init>()V

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public d()Lcom/android/tools/r8/graph/E0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    return-object v0
.end method

.method public final g()Lcom/android/tools/r8/graph/Z5;
    .locals 0

    return-object p0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Lcom/android/tools/r8/graph/Z4$c;
    .locals 0

    return-object p0
.end method

.method public final p()Lcom/android/tools/r8/graph/H0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/android/tools/r8/graph/j1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/graph/H5;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/graph/H5;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v0

    return v0
.end method
