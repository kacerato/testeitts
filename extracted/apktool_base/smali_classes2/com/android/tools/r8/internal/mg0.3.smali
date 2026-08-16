.class public final Lcom/android/tools/r8/internal/mg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/lg0;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mg0;->b:Lcom/android/tools/r8/internal/lg0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/mg0;->d:Ljava/lang/String;

    iput p4, p0, Lcom/android/tools/r8/internal/mg0;->e:I

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/mg0;->f:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mg0;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "?"

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v6, "@"

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x1

    if-ne v5, v4, :cond_1

    const/4 v4, 0x3

    move v12, v4

    move v4, v7

    move v5, v4

    goto :goto_1

    :cond_1
    if-ne v6, v4, :cond_4

    if-ne v7, v1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    move v5, v3

    :goto_0
    move v12, v4

    goto :goto_1

    :cond_3
    move v5, v3

    move v4, v7

    goto :goto_0

    :cond_4
    move v4, v3

    move v5, v4

    move v12, v7

    :goto_1
    if-nez v4, :cond_5

    return-object v2

    :cond_5
    if-ne v4, v1, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2a

    if-ne v6, v8, :cond_7

    add-int/lit8 v4, v4, 0x1

    move v13, v7

    goto :goto_2

    :cond_7
    move v13, v3

    :goto_2
    const/4 v3, -0x1

    move v8, v3

    move v9, v8

    move v10, v9

    move v11, v10

    move v6, v4

    :goto_3
    if-eq v8, v3, :cond_8

    if-ne v9, v3, :cond_e

    :cond_8
    if-ge v6, v1, :cond_e

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2f

    if-eq v14, v15, :cond_c

    const/16 v15, 0x3a

    if-eq v14, v15, :cond_a

    const/16 v15, 0x5b

    if-eq v14, v15, :cond_9

    goto :goto_6

    :cond_9
    :goto_4
    const/16 v15, 0x5d

    if-eq v15, v14, :cond_d

    add-int/lit8 v14, v1, -0x1

    if-ge v6, v14, :cond_d

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto :goto_4

    :cond_a
    if-ne v9, v3, :cond_d

    if-ne v4, v6, :cond_b

    return-object v2

    :cond_b
    add-int/lit8 v9, v6, 0x1

    move v11, v6

    move/from16 v16, v9

    move v9, v4

    :goto_5
    move/from16 v4, v16

    goto :goto_6

    :cond_c
    if-ne v8, v3, :cond_d

    add-int/lit8 v8, v6, 0x1

    move v10, v6

    move/from16 v16, v8

    move v8, v4

    goto :goto_5

    :cond_d
    :goto_6
    add-int/2addr v6, v7

    goto :goto_3

    :cond_e
    if-gt v1, v4, :cond_f

    return-object v2

    :cond_f
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-le v10, v8, :cond_17

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/internal/lg0;->e:Lcom/android/tools/r8/internal/lg0;

    const-string v4, "declare-styleable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "styleable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_7

    :cond_10
    sget-object v4, Lcom/android/tools/r8/internal/lg0;->G:Lcom/android/tools/r8/internal/lg0;

    const-string v5, "sample"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_8

    :cond_11
    sget-object v4, Lcom/android/tools/r8/internal/lg0;->D:Lcom/android/tools/r8/internal/lg0;

    const-string v5, "_aapt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_8

    :cond_12
    sget-object v4, Lcom/android/tools/r8/internal/lg0;->E:Lcom/android/tools/r8/internal/lg0;

    const-string v5, "overlayable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_8

    :cond_13
    sget-object v4, Lcom/android/tools/r8/internal/lg0;->H:Lcom/android/tools/r8/internal/lg0;

    const-string v5, "macro"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_8

    :cond_14
    sget-object v4, Lcom/android/tools/r8/internal/lg0;->I:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/tools/r8/internal/lg0;

    goto :goto_8

    :cond_15
    :goto_7
    move-object v4, v2

    :goto_8
    if-nez v4, :cond_16

    return-object v2

    :cond_16
    move-object v3, v4

    goto :goto_9

    :cond_17
    if-eqz v5, :cond_19

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->h:Lcom/android/tools/r8/internal/lg0;

    :goto_9
    if-ge v9, v11, :cond_18

    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_18
    move-object v11, v2

    new-instance v0, Lcom/android/tools/r8/internal/mg0;

    move-object v8, v0

    move-object v9, v3

    move-object v10, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/tools/r8/internal/mg0;-><init>(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0

    :cond_19
    return-object v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/mg0;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/mg0;

    iget v2, p0, Lcom/android/tools/r8/internal/mg0;->e:I

    iget v3, p1, Lcom/android/tools/r8/internal/mg0;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/mg0;->b:Lcom/android/tools/r8/internal/lg0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/mg0;->b:Lcom/android/tools/r8/internal/lg0;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/mg0;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/mg0;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/mg0;->e:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/mg0;->b:Lcom/android/tools/r8/internal/lg0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/internal/mg0;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/c;->a(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/tools/r8/internal/mg0;->e:I

    invoke-static {v1}, Lcom/android/tools/r8/c;->b(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "@+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/mg0;->f:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/mg0;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/mg0;->e:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/mg0;->b:Lcom/android/tools/r8/internal/lg0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/lg0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
