.class public Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;,
        Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;,
        Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode:[I

.field public static final NULL_ANNOTATIONS_MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

.field public static final NULL_ANNOTATIONS_OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

.field public static final NULL_ANNOTATIONS_OK_NONNULL:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

.field public static final NULL_ANNOTATIONS_UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;


# instance fields
.field public final nullStatus:I

.field private final severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

.field public final superTypeHint:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->values()[Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_SUPER_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->EXACT:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->OVERRIDE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->OVERRIDE_RETURN:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_OK_NONNULL:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->superTypeHint:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->nullStatus:I

    return-void
.end method

.method public static analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
    .locals 7

    const/4 v5, 0x0

    .line 1
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object p0

    return-object p0
.end method

.method public static analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enterRecursiveFunction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    return-object v0

    .line 4
    :cond_0
    :try_start_0
    sget-object v13, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    .line 5
    sget-object v14, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    .line 6
    invoke-static/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->areSameTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    const-wide/high16 v15, 0x100000000000000L

    const-wide/16 v17, 0x0

    if-eqz v2, :cond_2

    .line 7
    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v2, v15

    cmp-long v0, v2, v17

    if-eqz v0, :cond_1

    .line 8
    invoke-static/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->okNonNullStatus(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v15, v1

    goto/16 :goto_16

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v14

    .line 10
    :cond_2
    :try_start_1
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v2, :cond_6

    if-eqz v9, :cond_6

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->EXACT:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    if-eq v12, v2, :cond_3

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    if-eq v12, v2, :cond_3

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_SUPER_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    if-ne v12, v2, :cond_6

    .line 11
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    .line 12
    invoke-static {v9, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enterRecursiveFunction()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    .line 14
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v14

    .line 15
    :cond_4
    :try_start_2
    invoke-static {v1, v0, v8}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->areSameTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v2, v15

    cmp-long v0, v2, v17

    if-eqz v0, :cond_5

    .line 17
    invoke-static/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->okNonNullStatus(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v0

    :cond_5
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v14

    :cond_6
    move-object v7, v1

    .line 19
    :try_start_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v19, 0x0

    const/4 v6, 0x0

    if-ne v12, v1, :cond_7

    :try_start_4
    instance-of v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v1, :cond_7

    .line 20
    instance-of v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_8

    :try_start_5
    move-object v1, v9

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/32 v3, 0x400000

    and-long/2addr v1, v3

    cmp-long v1, v1, v17

    if-eqz v1, :cond_8

    :cond_7
    move-object v15, v6

    move-object/from16 p0, v7

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v15, v7

    goto/16 :goto_16

    .line 21
    :cond_8
    :try_start_6
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 22
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v9, :cond_9

    goto :goto_0

    :cond_9
    move-object v15, v6

    move-object/from16 p0, v7

    goto :goto_2

    .line 23
    :cond_a
    :goto_0
    sget-object v20, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_SUPER_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object v15, v6

    move-object/from16 v6, p5

    move-object/from16 p0, v7

    move-object/from16 v7, v20

    :try_start_7
    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v1

    .line 24
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    invoke-virtual {v13, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->max(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    move-result-object v13

    .line 25
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-ne v13, v1, :cond_b

    .line 26
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    invoke-direct {v0, v13, v10, v15}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 27
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v0

    :catchall_2
    move-exception v0

    :goto_1
    move-object/from16 v15, p0

    goto/16 :goto_16

    :catchall_3
    move-exception v0

    move-object/from16 p0, v7

    goto :goto_1

    .line 28
    :cond_b
    :goto_2
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    if-eqz v7, :cond_c

    move/from16 v6, v19

    .line 29
    :goto_3
    array-length v1, v7

    if-lt v6, v1, :cond_d

    :cond_c
    :goto_4
    move-object/from16 v7, p0

    goto :goto_7

    .line 30
    :cond_d
    aget-object v1, v7, v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v9, :cond_e

    goto :goto_5

    :cond_e
    move/from16 v20, v6

    move-object/from16 v23, v7

    goto :goto_6

    .line 31
    :cond_f
    :goto_5
    aget-object v1, v7, v6

    sget-object v16, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_SUPER_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, v6

    move-object/from16 v6, p5

    move-object/from16 v23, v7

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v1

    .line 32
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    invoke-virtual {v13, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->max(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    move-result-object v13

    .line 33
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-ne v13, v1, :cond_10

    .line 34
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    invoke-direct {v0, v13, v10, v15}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 35
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v0

    :cond_10
    :goto_6
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v7, v23

    goto :goto_3

    .line 36
    :goto_7
    :try_start_9
    instance-of v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    const/4 v6, 0x2

    const-wide/high16 v2, 0x80000000000000L

    const/4 v4, -0x1

    if-eqz v1, :cond_1b

    .line 37
    move-object v1, v7

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    if-eqz v1, :cond_1c

    .line 38
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v5

    .line 39
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v9

    if-ne v8, v9, :cond_1a

    .line 40
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    if-nez v0, :cond_11

    add-int/lit8 v0, v5, 0x1

    .line 41
    new-array v0, v0, [J

    :cond_11
    move v8, v10

    move/from16 v9, v19

    :goto_8
    if-le v9, v5, :cond_12

    goto :goto_9

    .line 42
    :cond_12
    aget-wide v19, v1, v9

    invoke-static/range {v19 .. v20}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide v19

    .line 43
    aget-wide v21, v0, v9

    invoke-static/range {v21 .. v22}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide v28

    if-nez v9, :cond_13

    cmp-long v16, v19, v2

    if-nez v16, :cond_13

    if-eq v10, v4, :cond_13

    .line 44
    invoke-virtual/range {p6 .. p6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->requiredNullableMatchesAll()Z

    move-result v16

    if-eqz v16, :cond_13

    if-ne v10, v6, :cond_18

    :goto_9
    move-object v6, v15

    move-object v15, v7

    goto/16 :goto_15

    :cond_13
    if-lez v9, :cond_14

    move v8, v4

    :cond_14
    if-nez v9, :cond_15

    move-object/from16 v26, v12

    goto :goto_a

    .line 45
    :cond_15
    invoke-virtual/range {p6 .. p6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->toDetail()Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    move-result-object v16

    move-object/from16 v26, v16

    :goto_a
    const/16 v27, 0x0

    move-wide/from16 v21, v19

    move-wide/from16 v23, v28

    move/from16 v25, v8

    invoke-static/range {v21 .. v27}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->computeNullProblemSeverity(JJILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;Z)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    move-result-object v6

    if-lez v9, :cond_16

    .line 46
    sget-object v15, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-ne v6, v15, :cond_16

    .line 47
    instance-of v15, v11, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    if-eqz v15, :cond_16

    cmp-long v15, v28, v17

    if-nez v15, :cond_16

    cmp-long v15, v19, v17

    if-eqz v15, :cond_16

    .line 48
    move-object v15, v11

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/lit8 v19, v9, -0x1

    .line 49
    aget-object v15, v15, v19

    .line 50
    instance-of v4, v15, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    if-eqz v4, :cond_16

    iget-object v4, v15, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result v4

    if-nez v4, :cond_16

    .line 51
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    move-object v15, v7

    const/4 v6, 0x0

    const/4 v10, -0x1

    goto/16 :goto_15

    .line 52
    :cond_16
    invoke-virtual {v13, v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->max(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    move-result-object v4

    .line 53
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-ne v4, v6, :cond_17

    .line 54
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 55
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v0

    :cond_17
    move-object v13, v4

    .line 56
    :cond_18
    :try_start_a
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-ne v13, v4, :cond_19

    const/4 v10, -0x1

    :cond_19
    add-int/lit8 v9, v9, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x2

    const/4 v15, 0x0

    goto/16 :goto_8

    .line 57
    :cond_1a
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1c

    if-lez v5, :cond_1c

    .line 58
    aget-wide v0, v1, v19

    const-wide/high16 v2, 0x100000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 59
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 60
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v0

    .line 61
    :cond_1b
    :try_start_b
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_b

    :cond_1c
    move-object v15, v7

    const/4 v6, 0x0

    goto/16 :goto_15

    .line 62
    :cond_1d
    :goto_b
    invoke-static {v7, v12}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->requiredNullTagBits(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)J

    move-result-wide v23

    cmp-long v1, v23, v2

    if-nez v1, :cond_1f

    const/4 v1, -0x1

    if-eq v10, v1, :cond_1f

    .line 63
    invoke-virtual/range {p6 .. p6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->requiredNullableMatchesAll()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_c

    :cond_1e
    move-object v15, v7

    const/4 v6, 0x0

    const/4 v9, 0x2

    goto :goto_e

    .line 64
    :cond_1f
    :goto_c
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->providedNullTagBits(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)J

    move-result-wide v25

    .line 65
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move/from16 v5, p4

    const/4 v9, 0x2

    move-object/from16 v6, p6

    move-object/from16 p0, v7

    move v7, v15

    :try_start_c
    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->computeNullProblemSeverity(JJILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;Z)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->isAnyMismatch()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v2, :cond_20

    cmp-long v2, v23, v17

    if-eqz v2, :cond_20

    move-object/from16 v15, p0

    .line 67
    :try_start_d
    move-object v7, v15

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->determineNullBitsFromDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;)J

    move-result-wide v2

    cmp-long v2, v2, v17

    if-nez v2, :cond_21

    .line 68
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    goto :goto_d

    :catchall_4
    move-exception v0

    goto/16 :goto_16

    :cond_20
    const/4 v6, 0x0

    move-object/from16 v15, p0

    .line 69
    :cond_21
    :goto_d
    invoke-virtual {v13, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->max(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    move-result-object v13

    .line 70
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->isAnyMismatch()Z

    move-result v1

    if-nez v1, :cond_22

    const-wide/high16 v1, 0x180000000000000L

    and-long v1, v25, v1

    const-wide/high16 v3, 0x100000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_22

    .line 71
    invoke-static/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->okNonNullStatus(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v14

    .line 72
    :cond_22
    :goto_e
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-eq v13, v1, :cond_2e

    if-eq v10, v9, :cond_2e

    .line 73
    invoke-virtual {v0, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v8, :cond_23

    .line 74
    invoke-virtual {v8, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    goto :goto_f

    :cond_23
    move-object v2, v6

    .line 75
    :goto_f
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-ne v13, v3, :cond_25

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v3

    if-eqz v3, :cond_25

    if-eq v1, v15, :cond_24

    if-ne v2, v15, :cond_25

    .line 76
    :cond_24
    sget-object v13, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    :cond_25
    if-eq v1, v0, :cond_26

    move-object v9, v1

    goto :goto_10

    :cond_26
    move-object v9, v6

    .line 77
    :goto_10
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v3

    if-eqz v3, :cond_28

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v3, :cond_28

    .line 78
    move-object v7, v15

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 79
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 80
    instance-of v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v1, :cond_27

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v16, v1

    goto :goto_11

    :cond_27
    move-object/from16 v16, v6

    :goto_11
    if-eqz v7, :cond_28

    if-eqz v5, :cond_28

    .line 81
    array-length v1, v7

    array-length v2, v5

    if-ne v1, v2, :cond_28

    move/from16 v4, v19

    .line 82
    :goto_12
    array-length v1, v7

    if-lt v4, v1, :cond_29

    :cond_28
    move-object/from16 v18, v6

    goto :goto_14

    :cond_29
    if-eqz v16, :cond_2a

    .line 83
    aget-object v1, v16, v4

    move-object v3, v1

    goto :goto_13

    :cond_2a
    move-object v3, v6

    .line 84
    :goto_13
    aget-object v1, v7, v4

    aget-object v2, v5, v4

    invoke-virtual/range {p6 .. p6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->toDetail()Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    move-result-object v17

    const/16 v18, -0x1

    move/from16 v19, v4

    move-object/from16 v4, p3

    move-object/from16 v20, v5

    move/from16 v5, v18

    move-object/from16 v18, v6

    move-object/from16 v6, p5

    move-object/from16 v21, v7

    move-object/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v1

    .line 85
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    invoke-virtual {v13, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->max(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    move-result-object v13

    .line 86
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-ne v13, v1, :cond_2b

    .line 87
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    invoke-direct {v0, v13, v10, v9}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 88
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v0

    :cond_2b
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v6, v18

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    goto :goto_12

    .line 89
    :goto_14
    :try_start_e
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    .line 90
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v1, :cond_2d

    if-eqz v2, :cond_2d

    if-eqz v8, :cond_2c

    .line 91
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    move-object/from16 v18, v0

    :cond_2c
    const/4 v4, -0x1

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, v18

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 92
    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v0

    .line 93
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    invoke-virtual {v13, v0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->max(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    move-result-object v13

    :cond_2d
    move-object v6, v9

    goto :goto_15

    :cond_2e
    move-object/from16 v18, v6

    move-object/from16 v6, v18

    .line 94
    :goto_15
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->isAnyMismatch()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-nez v0, :cond_2f

    .line 95
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v14

    .line 96
    :cond_2f
    :try_start_f
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    invoke-direct {v0, v13, v10, v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 97
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    return-object v0

    :goto_16
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->exitRecursiveFunction()V

    .line 98
    throw v0
.end method

.method public static areSameTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    const-wide/high16 v3, 0x180000000000000L

    if-eqz v1, :cond_6

    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_5

    invoke-static {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->areSameTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v5, v3

    iget-wide p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr p0, v3

    cmp-long p0, v5, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v5, 0x1004

    if-ne v1, v5, :cond_4

    if-ne p0, p2, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->upperBound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->areSameTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v5, v3

    iget-wide p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr p0, v3

    cmp-long p0, v5, p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v2

    :cond_6
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v5, v3

    iget-wide p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr p0, v3

    cmp-long p0, v5, p0

    if-nez p0, :cond_7

    return v0

    :cond_7
    :goto_0
    return v2
.end method

.method public static checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 20

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    const/4 v14, 0x1

    if-nez v13, :cond_0

    return v14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v15

    const-wide/high16 v16, 0x180000000000000L

    const/4 v7, 0x0

    if-nez v15, :cond_1

    iget-wide v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long v0, v0, v16

    move-wide/from16 v18, v0

    move-object/from16 v1, p0

    goto/16 :goto_3

    :cond_1
    instance-of v0, v12, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v0, :cond_3

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v7, v12

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v12

    iget v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifFalseNullStatus:I

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    if-ne v12, v0, :cond_2

    return v12

    :cond_2
    return v11

    :cond_3
    instance-of v0, v12, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_7

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v12

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    new-array v1, v7, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v12, v7

    invoke-virtual {v5, v10, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v4

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v13

    array-length v15, v12

    move v6, v14

    move/from16 v16, v6

    :goto_0
    if-lt v6, v15, :cond_5

    if-eqz v16, :cond_4

    move v11, v13

    :cond_4
    return v11

    :cond_5
    aget-object v5, v12, v6

    invoke-virtual {v5, v10, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v4

    iget-object v3, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v17, v3

    move-object/from16 v3, p3

    move/from16 v18, v6

    move-object/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    if-ne v13, v0, :cond_6

    move v0, v14

    goto :goto_1

    :cond_6
    move v0, v7

    :goto_1
    and-int v16, v16, v0

    add-int/lit8 v6, v18, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v18, v1, v16

    const/4 v3, 0x0

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/4 v2, 0x0

    move-object/from16 v1, p6

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v5, p3

    move-object v7, v6

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    move v7, v14

    goto :goto_3

    :cond_8
    move-object v0, v6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->wantToReport()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->report(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_2

    :cond_9
    move-object/from16 v1, p0

    :goto_2
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->nullStatus:I

    if-eq v0, v14, :cond_a

    return v0

    :cond_a
    :goto_3
    const-wide/high16 v2, 0x100000000000000L

    cmp-long v0, v18, v2

    if-nez v0, :cond_c

    const/4 v6, 0x4

    if-eq v11, v6, :cond_c

    if-nez v7, :cond_b

    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v5, p3

    move v8, v6

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    goto :goto_4

    :cond_b
    move v8, v6

    :goto_4
    return v8

    :cond_c
    const-wide/high16 v0, 0x80000000000000L

    cmp-long v0, v18, v0

    if-nez v0, :cond_e

    if-ne v11, v14, :cond_e

    if-eqz v15, :cond_d

    invoke-virtual/range {p6 .. p6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v0, v0, v16

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/16 v0, 0x30

    return v0

    :cond_d
    const/16 v0, 0x18

    return v0

    :cond_e
    return v11
.end method

.method public static checkForContradictions(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 8

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v2

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    :goto_0
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;-><init>()V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;->typeWithContradiction:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v5, 0x19

    if-eqz v4, :cond_3

    if-nez p2, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p1, p0, p2, v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    invoke-virtual {p2, p0, v2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotationsInferred(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIZ)V

    return-object p0

    :cond_3
    instance-of v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v4, :cond_4

    move-object v4, p1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v7, v6

    if-lt v1, v7, :cond_5

    return-object p0

    :cond_5
    aget-object v6, v6, v1

    invoke-static {v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;->typeWithContradiction:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v6, :cond_8

    if-nez p2, :cond_6

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p1, p0, p2, v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_6
    if-eqz v4, :cond_7

    array-length v3, v4

    if-ge v1, v3, :cond_7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    aget-object p2, v4, v1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotationsInferred(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    invoke-virtual {p2, p0, v2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotationsInferred(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIZ)V

    :goto_2
    return-object p0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static computeNullProblemSeverity(JJILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;Z)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;
    .locals 7

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const-wide/high16 v3, 0x100000000000000L

    if-nez v2, :cond_3

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode()[I

    move-result-object p0

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :pswitch_1
    cmp-long p0, p2, v3

    if-nez p0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :cond_1
    if-nez p6, :cond_2

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :cond_2
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :cond_3
    const-wide/high16 v5, 0x180000000000000L

    cmp-long p6, p0, v5

    if-nez p6, :cond_4

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :cond_4
    cmp-long p6, p0, v3

    if-nez p6, :cond_7

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode()[I

    move-result-object p0

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x4

    if-ne p4, p0, :cond_5

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :cond_5
    :pswitch_4
    cmp-long p0, p2, v0

    if-nez p0, :cond_6

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :cond_6
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :cond_7
    const-wide/high16 v2, 0x80000000000000L

    cmp-long p0, p0, v2

    if-nez p0, :cond_9

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode()[I

    move-result-object p0

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :pswitch_6
    cmp-long p0, p2, v0

    if-nez p0, :cond_8

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :cond_8
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :cond_9
    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static hasContradictions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;-><init>()V

    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;->typeWithContradiction:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static mergeTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq p2, v0, :cond_0

    invoke-virtual {p3, p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, v0

    new-array v1, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    move p2, v2

    :goto_1
    array-length v3, v0

    if-lt p2, v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    invoke-virtual {p3, p1, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p0

    return-object p0

    :cond_1
    aget-object v3, v0, p2

    aget-object v4, p1, p2

    invoke-static {v3, v4, v2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->mergeTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    aput-object v3, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method public static moreDangerousType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide v0

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const-wide/high16 v4, 0x80000000000000L

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    return-object p0

    :cond_1
    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    return-object p1

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    return-object p0

    :cond_3
    return-object p1

    :cond_4
    if-eq p0, p1, :cond_5

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    return-object p0
.end method

.method public static nullStatusFromExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFreeTypeVariable()Z

    move-result v0

    const/16 v1, 0x30

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v4, 0x180000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/high16 v4, 0x100000000000000L

    cmp-long p0, v2, v4

    if-nez p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    return v1
.end method

.method public static okNonNullStatus(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
    .locals 8

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->isPotentiallyUnannotatedLib()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v6, 0x180000000000000L

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->NO_EEA_FILE:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x400

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$1;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->LEGACY_WARNING:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$1;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    return-object v0

    :cond_1
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_OK_NONNULL:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    return-object p0
.end method

.method public static providedNullTagBits(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)J
    .locals 11

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_7

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    iget-wide v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v7, v2

    const-wide/high16 v9, 0x80000000000000L

    cmp-long v0, v7, v9

    if-nez v0, :cond_2

    return-wide v9

    :cond_2
    cmp-long v0, v7, v4

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v6

    :goto_0
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p0, :cond_6

    iget-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v7, v2

    const-wide/high16 v9, 0x100000000000000L

    cmp-long p0, v7, v9

    if-nez p0, :cond_4

    return-wide v9

    :cond_4
    cmp-long p0, v7, v4

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v6

    :goto_1
    or-int/2addr v0, v1

    :cond_6
    if-eqz v0, :cond_7

    return-wide v2

    :cond_7
    return-wide v4
.end method

.method public static requiredNullTagBits(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)J
    .locals 7

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p0, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v0, v2

    const-wide/high16 v2, 0x80000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    return-wide v2

    :cond_2
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode()[I

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_3

    const/4 p1, 0x5

    if-eq p0, p1, :cond_3

    const/4 p1, 0x6

    if-eq p0, p1, :cond_3

    const-wide/high16 p0, 0x100000000000000L

    return-wide p0

    :cond_3
    return-wide v4
.end method

.method public static strongerType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->mergeTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1, p0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->mergeTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static validNullTagBits(J)J
    .locals 2

    const-wide/high16 v0, 0x180000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    :cond_0
    return-wide p0
.end method

.method public static weakerTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    array-length v2, v0

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_0

    return-object v3

    :cond_0
    aget-object v5, v0, v4

    iget-wide v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    aget-object v8, p1, v4

    iget-wide v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v11, 0x80000000000000L

    and-long v13, v6, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x1

    if-eqz v13, :cond_1

    invoke-static {v5, v8, v14, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->mergeTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_1

    :cond_1
    and-long/2addr v9, v11

    cmp-long v9, v9, v15

    if-eqz v9, :cond_2

    invoke-static {v8, v5, v14, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->mergeTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_1

    :cond_2
    const-wide/high16 v9, 0x100000000000000L

    and-long/2addr v6, v9

    cmp-long v6, v6, v15

    if-nez v6, :cond_3

    invoke-static {v5, v8, v14, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->mergeTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_1

    :cond_3
    invoke-static {v8, v5, v14, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->mergeTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isAnyMismatch()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->isAnyMismatch()Z

    move-result v0

    return v0
.end method

.method public isDefiniteMismatch()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPotentiallyNullMismatch()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isDefiniteMismatch()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->nullStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUnchecked()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public report(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    return-void
.end method

.method public superTypeHintName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->superTypeHint:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    if-ne p0, v0, :cond_0

    const-string v0, "OK"

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    if-ne p0, v0, :cond_1

    const-string v0, "MISMATCH"

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_OK_NONNULL:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    if-ne p0, v0, :cond_2

    const-string v0, "OK NonNull"

    return-object v0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    if-ne p0, v0, :cond_3

    const-string v0, "UNCHECKED"

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analysis result: severity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " nullStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->nullStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wantToReport()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->severity:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->LEGACY_WARNING:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
