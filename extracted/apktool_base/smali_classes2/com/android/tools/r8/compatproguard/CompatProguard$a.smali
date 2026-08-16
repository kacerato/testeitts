.class public Lcom/android/tools/r8/compatproguard/CompatProguard$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/compatproguard/CompatProguard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/CompilationMode;

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Lcom/android/tools/r8/MapIdProvider;

.field public final i:Lcom/android/tools/r8/SourceFileProvider;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;Ljava/lang/String;Lcom/android/tools/r8/CompilationMode;IZZZLjava/lang/String;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->b:Lcom/android/tools/r8/CompilationMode;

    iput p4, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->c:I

    iput-boolean p6, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->d:Z

    iput-boolean p7, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->e:Z

    iput-boolean p5, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->f:Z

    iput-object p8, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->k:Ljava/util/List;

    iput-object p9, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->h:Lcom/android/tools/r8/MapIdProvider;

    iput-object p10, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->i:Lcom/android/tools/r8/SourceFileProvider;

    iput-object p11, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->j:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->l:Z

    return-void
.end method

.method public static a([Ljava/lang/String;)Lcom/android/tools/r8/compatproguard/CompatProguard$a;
    .locals 32

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/tools/r8/compatproguard/a;

    invoke-direct {v1}, Lcom/android/tools/r8/compatproguard/a;-><init>()V

    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v2, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/eC;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-lez v3, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move v12, v6

    move v14, v12

    move/from16 v16, v14

    move/from16 v17, v16

    const/4 v13, 0x1

    const/4 v15, 0x1

    :goto_0
    array-length v5, v0

    if-ge v12, v5, :cond_16

    aget-object v5, v0, v12

    move-object/from16 v18, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_14

    const-string v4, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "--help"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v4, "--debug"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Cannot compile in both --debug and --release mode."

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    if-eq v7, v4, :cond_2

    sget-object v4, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    :goto_1
    move-object v7, v4

    :cond_1
    :goto_2
    move-object/from16 v4, v18

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_6

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/If;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v4, "--release"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    if-eq v7, v4, :cond_4

    sget-object v4, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/If;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v4, "--min-api"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v12, v12, 0x1

    aget-object v4, v0, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_2

    :cond_6
    const-string v4, "--force-proguard-compatibility"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v4, v18

    const/4 v5, 0x1

    const/4 v14, 0x1

    goto/16 :goto_6

    :cond_7
    const-string v4, "--no-data-resources"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v4, v18

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_8
    const-string v4, "--output"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v12, v12, 0x1

    aget-object v4, v0, v12

    goto :goto_3

    :cond_9
    const-string v4, "--multi-dex"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v4, v18

    const/4 v5, 0x1

    const/16 v16, 0x1

    goto/16 :goto_6

    :cond_a
    const-string v4, "--main-dex-list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v12, v12, 0x1

    aget-object v4, v0, v12

    :goto_4
    move-object v8, v4

    goto :goto_2

    :cond_b
    const-string v4, "--main-dex-list="

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x10

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_c
    const-string v4, "--map-id-template"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v12, v12, 0x1

    aget-object v4, v0, v12

    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/PU;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/MapIdProvider;

    move-result-object v4

    move-object v9, v4

    goto/16 :goto_2

    :cond_d
    const-string v4, "--source-file-template"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    add-int/lit8 v12, v12, 0x1

    aget-object v4, v0, v12

    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/pn0;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/SourceFileProvider;

    move-result-object v4

    move-object v10, v4

    goto/16 :goto_2

    :cond_e
    const-string v4, "--deps-file"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v12, v12, 0x1

    aget-object v4, v0, v12

    move-object v11, v4

    goto/16 :goto_2

    :cond_f
    const-string v4, "--core-library"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "--minimal-main-dex"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "--no-locals"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_2

    :cond_10
    const-string v4, "-outjars"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    new-instance v0, Lcom/android/tools/r8/internal/If;

    const-string v1, "Proguard argument -outjar is not supported. Use R8 compatible --output flag"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_5
    move-object/from16 v4, v18

    const/4 v5, 0x1

    const/16 v17, 0x1

    goto :goto_6

    :cond_14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_15

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :goto_6
    add-int/2addr v12, v5

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_16
    move-object/from16 v18, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_17
    move-object/from16 v22, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move/from16 v23, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v24, v16

    move/from16 v31, v17

    move-object/from16 v21, v18

    goto :goto_7

    :cond_18
    const/4 v5, 0x1

    move-object/from16 v21, v4

    move-object/from16 v22, v21

    move-object/from16 v27, v22

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move/from16 v23, v5

    move/from16 v26, v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v31, 0x0

    :goto_7
    new-instance v0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v20

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/tools/r8/compatproguard/CompatProguard$a;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/lang/String;Lcom/android/tools/r8/CompilationMode;IZZZLjava/lang/String;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;Ljava/lang/String;Z)V

    return-object v0
.end method
