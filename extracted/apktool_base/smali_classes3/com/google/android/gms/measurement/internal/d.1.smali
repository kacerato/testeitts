.class public final Lcom/google/android/gms/measurement/internal/d;
.super Lcom/google/android/gms/measurement/internal/c;
.source "SourceFile"


# instance fields
.field public final g:Lcom/google/android/gms/internal/measurement/U1;

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/U1;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d;->h:Lcom/google/android/gms/measurement/internal/e;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/c;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/google/android/gms/internal/measurement/U1;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/google/android/gms/internal/measurement/U1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/U1;->F()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/E3;Z)Z
    .locals 13

    move-object v0, p0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/b7;->a()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/d;->h:Lcom/google/android/gms/measurement/internal/e;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->E0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/google/android/gms/internal/measurement/U1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->I()Z

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->J()Z

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->L()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    move v4, v8

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_0
    const/4 v5, 0x0

    if-eqz p4, :cond_3

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/measurement/internal/c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->E()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->F()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    const-string v3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {v1, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v8

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->H()Lcom/google/android/gms/internal/measurement/O1;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/O1;->J()Z

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->J()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/O1;->G()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v9

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->G()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "No number filter for long property. property"

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->K()J

    move-result-wide v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/O1;->H()Lcom/google/android/gms/internal/measurement/S1;

    move-result-object v5

    invoke-static {v11, v12, v5}, Lcom/google/android/gms/measurement/internal/c;->g(JLcom/google/android/gms/internal/measurement/S1;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->N()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/O1;->G()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v9

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->G()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "No number filter for double property. property"

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->O()D

    move-result-wide v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/O1;->H()Lcom/google/android/gms/internal/measurement/S1;

    move-result-object v5

    invoke-static {v11, v12, v5}, Lcom/google/android/gms/measurement/internal/c;->h(DLcom/google/android/gms/internal/measurement/S1;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->H()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/O1;->E()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/O1;->G()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v9

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->G()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "No string or number filter defined. property"

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->I()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/h7;->O(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->I()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/O1;->H()Lcom/google/android/gms/internal/measurement/S1;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/google/android/gms/measurement/internal/c;->i(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/S1;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v9

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->G()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->I()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v9, v12, v10, v11}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->I()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/O1;->F()Lcom/google/android/gms/internal/measurement/Y1;

    move-result-object v9

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v11

    invoke-static {v5, v9, v11}, Lcom/google/android/gms/measurement/internal/c;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/Y1;Lcom/google/android/gms/measurement/internal/B2;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v9

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->G()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "User property has no value, property"

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    if-nez v5, :cond_c

    const-string v9, "null"

    goto :goto_2

    :cond_c
    move-object v9, v5

    :goto_2
    const-string v10, "Property filter result"

    invoke-virtual {v1, v10, v9}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v5, :cond_d

    return v7

    :cond_d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->c:Ljava/lang/Boolean;

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    return v8

    :cond_f
    :goto_3
    if-eqz p4, :cond_10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->I()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iput-object v5, v0, Lcom/google/android/gms/measurement/internal/c;->d:Ljava/lang/Boolean;

    :cond_11
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v4, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->E()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/E3;->F()J

    move-result-wide v4

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->I()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->J()Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->J()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->f:Ljava/lang/Long;

    goto :goto_4

    :cond_14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->e:Ljava/lang/Long;

    :cond_15
    :goto_4
    return v8
.end method
