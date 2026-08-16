.class public Lcom/android/tools/r8/internal/rt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/rt$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/dex/W$a;

.field public final b:Lcom/android/tools/r8/dex/W$b;

.field public final c:Lcom/android/tools/r8/CompilationMode;

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:Lcom/android/tools/r8/internal/nJ$f;

.field public final h:Ljava/util/Optional;

.field public final i:Ljava/util/Optional;

.field public final j:Ljava/util/Optional;

.field public final k:Ljava/util/Optional;

.field public final l:Ljava/util/Optional;

.field public final m:Ljava/util/Optional;

.field public final n:Ljava/util/Optional;

.field public final o:Lcom/android/tools/r8/internal/vm;

.field public final p:Lcom/android/tools/r8/internal/Qv;

.field public final q:Lcom/android/tools/r8/shaking/o3;

.field public final r:Ljava/util/List;

.field public final s:Ljava/util/List;

.field public final t:Ljava/util/List;

.field public final u:Z

.field public final v:Z

.field public final w:Lcom/android/tools/r8/AndroidResourceProvider;

.field public final x:Lcom/android/tools/r8/internal/hb0;

.field public final y:Ljava/util/HashMap;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/W$a;Lcom/android/tools/r8/dex/W$b;Lcom/android/tools/r8/CompilationMode;ILcom/android/tools/r8/internal/vm;ZILcom/android/tools/r8/internal/nJ$f;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/tools/r8/internal/Qv;Lcom/android/tools/r8/shaking/o3;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZLjava/util/HashMap;Ljava/lang/String;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/internal/hb0;Ljava/util/Optional;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->a:Lcom/android/tools/r8/dex/W$a;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->b:Lcom/android/tools/r8/dex/W$b;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->c:Lcom/android/tools/r8/CompilationMode;

    move v1, p4

    iput v1, v0, Lcom/android/tools/r8/internal/rt;->d:I

    move-object v1, p5

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->o:Lcom/android/tools/r8/internal/vm;

    move v1, p6

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/rt;->e:Z

    move v1, p7

    iput v1, v0, Lcom/android/tools/r8/internal/rt;->f:I

    move-object v1, p8

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->g:Lcom/android/tools/r8/internal/nJ$f;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->h:Ljava/util/Optional;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->i:Ljava/util/Optional;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->j:Ljava/util/Optional;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->k:Ljava/util/Optional;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->l:Ljava/util/Optional;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->m:Ljava/util/Optional;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->n:Ljava/util/Optional;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->p:Lcom/android/tools/r8/internal/Qv;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->q:Lcom/android/tools/r8/shaking/o3;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->r:Ljava/util/List;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->s:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->t:Ljava/util/List;

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/rt;->u:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/rt;->v:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->y:Ljava/util/HashMap;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->z:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->w:Lcom/android/tools/r8/AndroidResourceProvider;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/tools/r8/internal/rt;->x:Lcom/android/tools/r8/internal/hb0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/dex/W$b;)Lcom/android/tools/r8/internal/rt$a;
    .locals 1

    .line 58
    new-instance v0, Lcom/android/tools/r8/internal/rt$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rt$a;-><init>()V

    .line 59
    iput-object p0, v0, Lcom/android/tools/r8/internal/rt$a;->b:Lcom/android/tools/r8/dex/W$b;

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/rt$a;Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x3d

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_15

    .line 7
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/2addr v3, v1

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v1, v5

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "enable-missing-library-api-modeling"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "trace_references_consumer"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "tree-shaking"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "isolated-splits"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "min-api"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "android-platform-build"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "include-data-resources"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "tool"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "mode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v1, "force-proguard-compatibility"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_a
    const-string v1, "optimize-multidex-for-linear-alloc"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_b
    const-string v1, "backend"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_c
    const-string v1, "minification"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_d
    const-string v1, "optimized-resource-shrinking"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_e
    const-string v1, "intermediate"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_f
    const-string v2, "desugar-state"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "thread-count"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    move v1, v2

    :cond_11
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 10
    const-string v1, "system-property-"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 11
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/internal/rt$a;->z:Ljava/util/HashMap;

    .line 13
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 14
    :cond_12
    invoke-static {v4, p1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 15
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 16
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/rt$a;->w:Z

    return-void

    .line 17
    :pswitch_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->y:Ljava/lang/String;

    return-void

    .line 18
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->k:Ljava/util/Optional;

    return-void

    .line 20
    :pswitch_3
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->j:Ljava/util/Optional;

    return-void

    .line 22
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 23
    iput p1, p0, Lcom/android/tools/r8/internal/rt$a;->d:I

    return-void

    .line 24
    :pswitch_5
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 25
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/rt$a;->x:Z

    return-void

    .line 26
    :pswitch_6
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->i:Ljava/util/Optional;

    return-void

    .line 28
    :pswitch_7
    const-class v0, Lcom/android/tools/r8/dex/W$b;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/dex/W$b;

    .line 29
    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->b:Lcom/android/tools/r8/dex/W$b;

    return-void

    .line 30
    :pswitch_8
    const-string v0, "debug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 31
    sget-object p1, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    .line 32
    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->c:Lcom/android/tools/r8/CompilationMode;

    return-void

    .line 33
    :cond_13
    const-string v0, "release"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34
    sget-object p1, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    .line 35
    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->c:Lcom/android/tools/r8/CompilationMode;

    return-void

    .line 36
    :cond_14
    invoke-static {v4, p1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 37
    :pswitch_9
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->m:Ljava/util/Optional;

    return-void

    .line 39
    :pswitch_a
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 40
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/rt$a;->e:Z

    return-void

    .line 41
    :pswitch_b
    const-class v0, Lcom/android/tools/r8/dex/W$a;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/dex/W$a;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rt$a;->a(Lcom/android/tools/r8/dex/W$a;)Lcom/android/tools/r8/internal/rt$a;

    return-void

    .line 43
    :pswitch_c
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->l:Ljava/util/Optional;

    return-void

    .line 45
    :pswitch_d
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->v:Ljava/util/Optional;

    return-void

    .line 47
    :pswitch_e
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->h:Ljava/util/Optional;

    return-void

    .line 49
    :pswitch_f
    const-class v0, Lcom/android/tools/r8/internal/nJ$f;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/nJ$f;

    .line 50
    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->g:Lcom/android/tools/r8/internal/nJ$f;

    return-void

    .line 51
    :pswitch_10
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 52
    iput p1, p0, Lcom/android/tools/r8/internal/rt$a;->f:I

    return-void

    .line 53
    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid dump line. Expected = in line: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x6631bc74 -> :sswitch_10
        -0x5db851e7 -> :sswitch_f
        -0x333e3f07 -> :sswitch_e
        -0x2bffbb60 -> :sswitch_d
        -0x1b4bf3b4 -> :sswitch_c
        -0x14b1f96c -> :sswitch_b
        -0x8abcc30 -> :sswitch_a
        -0x4f07663 -> :sswitch_9
        0x3339a3 -> :sswitch_8
        0x366998 -> :sswitch_7
        0xd53f787 -> :sswitch_6
        0x38d7cbb2 -> :sswitch_5
        0x3f581c1f -> :sswitch_4
        0x4158bfcd -> :sswitch_3
        0x67529b14 -> :sswitch_2
        0x69228dd3 -> :sswitch_1
        0x6d13884f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key value pair: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/rt$a;Ljava/lang/String;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/android/tools/r8/internal/ts1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ts1;-><init>(Lcom/android/tools/r8/internal/rt$a;)V

    const/16 p0, 0xa

    invoke-static {p1, p0, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;CLjava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/rt;->y:Ljava/util/HashMap;

    const-string v1, "com.android.tools.r8.androidApiExtensionPackages"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Optional;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/android/tools/r8/internal/us1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/us1;-><init>(Lcom/android/tools/r8/internal/rt;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system-property-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->y:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 57
    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->b:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tool"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/rt;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread-count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->b:Lcom/android/tools/r8/dex/W$b;

    sget-object v2, Lcom/android/tools/r8/dex/W$b;->h:Lcom/android/tools/r8/dex/W$b;

    if-eq v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->a:Lcom/android/tools/r8/dex/W$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->c:Lcom/android/tools/r8/CompilationMode;

    sget-object v2, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    if-ne v1, v2, :cond_1

    const-string v1, "debug"

    goto :goto_0

    :cond_1
    const-string v1, "release"

    .line 11
    :goto_0
    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v1, p0, Lcom/android/tools/r8/internal/rt;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "min-api"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/rt;->e:Z

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "optimize-multidex-for-linear-alloc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->g:Lcom/android/tools/r8/internal/nJ$f;

    .line 18
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "desugar-state"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/rt;->u:Z

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable-missing-library-api-modeling"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/rt;->v:Z

    if-eqz v1, :cond_2

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android-platform-build"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->h:Ljava/util/Optional;

    const-string v2, "intermediate"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Optional;)V

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->i:Ljava/util/Optional;

    const-string v2, "include-data-resources"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Optional;)V

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->j:Ljava/util/Optional;

    const-string v2, "isolated-splits"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Optional;)V

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->j:Ljava/util/Optional;

    const-string v2, "optimized-resource-shrinking"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Optional;)V

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->l:Ljava/util/Optional;

    const-string v3, "tree-shaking"

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Optional;)V

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->n:Ljava/util/Optional;

    const-string v3, "force-proguard-compatibility"

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Optional;)V

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->k:Ljava/util/Optional;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Optional;)V

    goto :goto_1

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->z:Ljava/lang/String;

    .line 33
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace_references_consumer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/rt;->m:Ljava/util/Optional;

    const-string v2, "minification"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Optional;)V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rt;->y:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    new-instance v2, Lcom/android/tools/r8/internal/Jo1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Jo1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 37
    new-instance v2, Lcom/android/tools/r8/internal/ss1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/ss1;-><init>(Lcom/android/tools/r8/internal/rt;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rt;->b()Ljava/util/LinkedHashMap;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/vs1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/vs1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/CompilationMode;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rt;->c:Lcom/android/tools/r8/CompilationMode;

    return-object v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/rt;->y:Ljava/util/HashMap;

    const-string v1, "com.android.tools.r8.enableSameFilePolicy"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/rt;->j:Ljava/util/Optional;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/rt;->d:I

    return v0
.end method
