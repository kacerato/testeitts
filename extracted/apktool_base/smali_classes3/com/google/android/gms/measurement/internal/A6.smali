.class public final Lcom/google/android/gms/measurement/internal/A6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/common/collect/g1;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const-string v10, "AuthorizePurpose7"

    const-string v11, "PurposeDiagnostics"

    const-string v0, "Purpose7"

    const-string v1, "CmpSdkID"

    const-string v2, "PublisherCC"

    const-string v3, "PublisherRestrictions1"

    const-string v4, "PublisherRestrictions3"

    const-string v5, "PublisherRestrictions4"

    const-string v6, "PublisherRestrictions7"

    const-string v7, "AuthorizePurpose1"

    const-string v8, "AuthorizePurpose3"

    const-string v9, "AuthorizePurpose4"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v24

    const-string v22, "Purpose3"

    const-string v23, "Purpose4"

    const-string v12, "Version"

    const-string v13, "GoogleConsent"

    const-string v14, "VendorConsent"

    const-string v15, "VendorLegitimateInterest"

    const-string v16, "gdprApplies"

    const-string v17, "EnableAdvertiserConsentMode"

    const-string v18, "PolicyVersion"

    const-string v19, "PurposeConsents"

    const-string v20, "PurposeOneTreatment"

    const-string v21, "Purpose1"

    invoke-static/range {v12 .. v24}, Lcom/google/common/collect/g1;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/A6;->a:Lcom/google/common/collect/g1;

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static b(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static final c(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 21
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-static/range {p0 .. p15}, Lcom/google/android/gms/measurement/internal/A6;->e(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    move-result v16

    const/16 v13, 0x32

    const/4 v12, 0x1

    if-lez v16, :cond_2

    move/from16 v0, p7

    if-ne v0, v12, :cond_1

    move/from16 v1, p6

    if-eq v1, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move/from16 v17, v12

    move/from16 v18, v17

    goto :goto_2

    :cond_1
    move/from16 v1, p6

    :goto_0
    aput-char v13, p4, v16

    :goto_1
    move/from16 v18, v0

    move/from16 v17, v1

    goto :goto_2

    :cond_2
    move/from16 v1, p6

    move/from16 v0, p7

    goto :goto_1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->i(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/A4;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/A4;->zza:Lcom/google/android/gms/internal/measurement/A4;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x33

    goto/16 :goto_8

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/z4;->zzb:Lcom/google/android/gms/internal/measurement/z4;

    move-object/from16 v15, p0

    if-ne v15, v0, :cond_7

    move/from16 v0, p9

    const/4 v1, 0x1

    move-object/from16 v14, p3

    move-object/from16 v13, p10

    if-ne v0, v1, :cond_6

    invoke-virtual {v14, v13}, Lcom/google/common/collect/c1;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-lez v16, :cond_4

    aget-char v0, p4, v16

    const/16 v12, 0x32

    if-eq v0, v12, :cond_4

    const/16 v0, 0x31

    aput-char v0, p4, v16

    :cond_4
    return v1

    :cond_5
    const/16 v12, 0x32

    move-object/from16 v11, p1

    move/from16 v19, v1

    goto :goto_5

    :cond_6
    :goto_3
    const/16 v12, 0x32

    goto :goto_4

    :cond_7
    move-object/from16 v14, p3

    move/from16 v0, p9

    move-object/from16 v13, p10

    const/4 v1, 0x1

    goto :goto_3

    :goto_4
    move-object/from16 v11, p1

    move/from16 v19, v0

    :goto_5
    invoke-virtual {v11, v15}, Lcom/google/common/collect/i1;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x30

    if-nez v0, :cond_8

    :goto_6
    move v0, v2

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v11, v15}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/z6;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v20, 0x38

    if-eqz v0, :cond_10

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->i(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/A4;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/A4;->zzb:Lcom/google/android/gms/internal/measurement/A4;

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->g(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->h(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->i(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/A4;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/A4;->zzc:Lcom/google/android/gms/internal/measurement/A4;

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->h(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->g(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move v15, v12

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->i(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/A4;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/A4;->zzb:Lcom/google/android/gms/internal/measurement/A4;

    if-ne v0, v1, :cond_f

    :goto_7
    move/from16 v0, v20

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->h(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->i(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/A4;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/A4;->zzc:Lcom/google/android/gms/internal/measurement/A4;

    if-ne v0, v1, :cond_12

    goto :goto_7

    :goto_8
    if-lez v16, :cond_11

    aget-char v1, p4, v16

    const/16 v2, 0x32

    if-eq v1, v2, :cond_11

    aput-char v0, p4, v16

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->g(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0
.end method

.method public static final d(Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/util/Map;
    .locals 33

    move-object/from16 v15, p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->b1:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p14, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/i1;->y()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-object v14, Lcom/google/android/gms/internal/measurement/z4;->zzb:Lcom/google/android/gms/internal/measurement/z4;

    invoke-virtual {v15, v14}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/A4;

    sget-object v13, Lcom/google/android/gms/internal/measurement/z4;->zzd:Lcom/google/android/gms/internal/measurement/z4;

    invoke-virtual {v15, v13}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/A4;

    sget-object v12, Lcom/google/android/gms/internal/measurement/z4;->zze:Lcom/google/android/gms/internal/measurement/z4;

    invoke-virtual {v15, v12}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/A4;

    sget-object v11, Lcom/google/android/gms/internal/measurement/z4;->zzh:Lcom/google/android/gms/internal/measurement/z4;

    invoke-virtual {v15, v11}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/A4;

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v4

    const-string v5, "Version"

    const-string v6, "2"

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v4

    const-string v16, "1"

    const-string v17, "0"

    const/4 v10, 0x1

    move/from16 v9, p12

    if-eq v10, v9, :cond_2

    move-object/from16 v5, v17

    goto :goto_1

    :cond_2
    move-object/from16 v5, v16

    :goto_1
    const-string v6, "VendorConsent"

    invoke-virtual {v4, v6, v5}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v4

    move/from16 v8, p13

    if-eq v10, v8, :cond_3

    move-object/from16 v5, v17

    goto :goto_2

    :cond_3
    move-object/from16 v5, v16

    :goto_2
    const-string v6, "VendorLegitimateInterest"

    invoke-virtual {v4, v6, v5}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v4

    move/from16 v7, p6

    if-eq v7, v10, :cond_4

    move-object/from16 v5, v17

    goto :goto_3

    :cond_4
    move-object/from16 v5, v16

    :goto_3
    const-string v6, "gdprApplies"

    invoke-virtual {v4, v6, v5}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v4

    move/from16 v6, p5

    if-eq v6, v10, :cond_5

    move-object/from16 v5, v17

    goto :goto_4

    :cond_5
    move-object/from16 v5, v16

    :goto_4
    const-string v10, "EnableAdvertiserConsentMode"

    invoke-virtual {v4, v10, v5}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v10, "PolicyVersion"

    invoke-virtual {v4, v10, v5}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v10, "CmpSdkID"

    invoke-virtual {v4, v10, v5}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v4

    move/from16 v10, p8

    const/4 v5, 0x1

    if-eq v10, v5, :cond_6

    move-object/from16 v5, v17

    goto :goto_5

    :cond_6
    move-object/from16 v5, v16

    :goto_5
    const-string v6, "PurposeOneTreatment"

    invoke-virtual {v4, v6, v5}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v4

    const-string v5, "PublisherCC"

    move-object/from16 v6, p9

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v4

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/A4;->N1()I

    move-result v0

    goto :goto_6

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/A4;->zzd:Lcom/google/android/gms/internal/measurement/A4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/A4;->N1()I

    move-result v0

    :goto_6
    const-string v5, "PublisherRestrictions1"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/A4;->N1()I

    move-result v1

    goto :goto_7

    :cond_8
    sget-object v1, Lcom/google/android/gms/internal/measurement/A4;->zzd:Lcom/google/android/gms/internal/measurement/A4;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/A4;->N1()I

    move-result v1

    :goto_7
    const-string v4, "PublisherRestrictions3"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/A4;->N1()I

    move-result v1

    goto :goto_8

    :cond_9
    sget-object v1, Lcom/google/android/gms/internal/measurement/A4;->zzd:Lcom/google/android/gms/internal/measurement/A4;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/A4;->N1()I

    move-result v1

    :goto_8
    const-string v2, "PublisherRestrictions4"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/A4;->N1()I

    move-result v1

    goto :goto_9

    :cond_a
    sget-object v1, Lcom/google/android/gms/internal/measurement/A4;->zzd:Lcom/google/android/gms/internal/measurement/A4;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/A4;->N1()I

    move-result v1

    :goto_9
    const-string v2, "PublisherRestrictions7"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v5

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v19, v5

    const/16 v18, 0x1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v18, v11

    move-object/from16 v11, p10

    move-object/from16 v21, v12

    move-object/from16 v12, p11

    move-object/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v23, v14

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->f(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->f(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->f(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->f(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v31

    const-string v26, "Purpose3"

    const-string v24, "Purpose1"

    const-string v28, "Purpose4"

    const-string v30, "Purpose7"

    invoke-static/range {v24 .. v31}, Lcom/google/common/collect/i1;->C(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Lcom/google/common/collect/i1$b;->l(Ljava/util/Map;)Lcom/google/common/collect/i1$b;

    move-result-object v15

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v32, v15

    move/from16 v15, p14

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->c(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    const/4 v15, 0x1

    if-eq v15, v0, :cond_b

    move-object/from16 v19, v17

    goto :goto_a

    :cond_b
    move-object/from16 v19, v16

    :goto_a
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->c(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    const/4 v15, 0x1

    if-eq v15, v0, :cond_c

    move-object/from16 v20, v17

    goto :goto_b

    :cond_c
    move-object/from16 v20, v16

    :goto_b
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->c(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    const/4 v15, 0x1

    if-eq v15, v0, :cond_d

    move-object/from16 v21, v17

    goto :goto_c

    :cond_d
    move-object/from16 v21, v16

    :goto_c
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/A6;->c(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_e

    goto :goto_d

    :cond_e
    move-object/from16 v17, v16

    :goto_d
    new-instance v0, Ljava/lang/String;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "AuthorizePurpose3"

    const-string v2, "AuthorizePurpose1"

    const-string v3, "AuthorizePurpose4"

    const-string v4, "AuthorizePurpose7"

    const-string v5, "PurposeDiagnostics"

    move-object/from16 p0, v2

    move-object/from16 p1, v19

    move-object/from16 p2, v1

    move-object/from16 p3, v20

    move-object/from16 p4, v3

    move-object/from16 p5, v21

    move-object/from16 p6, v4

    move-object/from16 p7, v17

    move-object/from16 p8, v5

    move-object/from16 p9, v0

    invoke-static/range {p0 .. p9}, Lcom/google/common/collect/i1;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v1, v0}, Lcom/google/common/collect/i1$b;->l(Ljava/util/Map;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public static final e(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I
    .locals 0

    sget-object p1, Lcom/google/android/gms/internal/measurement/z4;->zzb:Lcom/google/android/gms/internal/measurement/z4;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/z4;->zzd:Lcom/google/android/gms/internal/measurement/z4;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/measurement/z4;->zze:Lcom/google/android/gms/internal/measurement/z4;

    if-ne p0, p1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/z4;->zzh:Lcom/google/android/gms/internal/measurement/z4;

    if-ne p0, p1, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static final f(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 0

    invoke-static {p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "0"

    if-nez p1, :cond_0

    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z4;->N1()I

    move-result p3

    if-lt p1, p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z4;->N1()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p11, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-static {p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p12}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z4;->N1()I

    move-result p4

    if-lt p3, p4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z4;->N1()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p12, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 0

    invoke-static/range {p0 .. p15}, Lcom/google/android/gms/measurement/internal/A6;->e(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x32

    if-nez p13, :cond_0

    const/16 p0, 0x34

    goto :goto_0

    :cond_0
    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z4;->N1()I

    move-result p6

    if-ge p5, p6, :cond_2

    const/16 p0, 0x30

    :goto_0
    if-lez p1, :cond_1

    aget-char p5, p4, p1

    if-eq p5, p3, :cond_1

    aput-char p0, p4, p1

    :cond_1
    return p2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z4;->N1()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p11, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p5, 0x31

    if-ne p0, p5, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-lez p1, :cond_5

    aget-char p6, p4, p1

    if-eq p6, p3, :cond_5

    if-ne p0, p5, :cond_4

    goto :goto_1

    :cond_4
    const/16 p5, 0x36

    :goto_1
    aput-char p5, p4, p1

    :cond_5
    return p2
.end method

.method public static final h(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 0

    invoke-static/range {p0 .. p15}, Lcom/google/android/gms/measurement/internal/A6;->e(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x32

    if-nez p14, :cond_0

    const/16 p0, 0x35

    goto :goto_0

    :cond_0
    invoke-virtual {p12}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z4;->N1()I

    move-result p6

    if-ge p5, p6, :cond_2

    const/16 p0, 0x30

    :goto_0
    if-lez p1, :cond_1

    aget-char p5, p4, p1

    if-eq p5, p3, :cond_1

    aput-char p0, p4, p1

    :cond_1
    return p2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z4;->N1()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p12, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p5, 0x31

    if-ne p0, p5, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-lez p1, :cond_5

    aget-char p6, p4, p1

    if-eq p6, p3, :cond_5

    if-ne p0, p5, :cond_4

    goto :goto_1

    :cond_4
    const/16 p5, 0x37

    :goto_1
    aput-char p5, p4, p1

    :cond_5
    return p2
.end method

.method public static final i(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/common/collect/i1;Lcom/google/common/collect/i1;Lcom/google/common/collect/r1;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/A4;
    .locals 0

    sget-object p1, Lcom/google/android/gms/internal/measurement/A4;->zzd:Lcom/google/android/gms/internal/measurement/A4;

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/i1;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/A4;

    return-object p0
.end method
