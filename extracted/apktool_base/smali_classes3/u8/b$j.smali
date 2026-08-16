.class public Lu8/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu8/b;


# direct methods
.method public constructor <init>(Lu8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$j;->b:Lu8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    move-object/from16 v1, p0

    const-string v2, " Build Error"

    const-string v3, ".idsig"

    iget-object v0, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v0}, Lu8/b;->q(Lu8/b;)Z

    move-result v0

    iget-object v4, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v4}, Lu8/b;->r(Lu8/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lu8/b$j;->b:Lu8/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Building "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Build"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lu8/b;->s(Lu8/b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LW7/b;->f:LC8/a;

    iget-object v9, v7, LC8/a;->a:LD8/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/Builder/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "apk.apk"

    const-string v10, "aab.aab"

    if-eqz v0, :cond_0

    move-object v11, v10

    goto :goto_0

    :cond_0
    move-object v11, v9

    :goto_0
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, LC8/a;->a:LD8/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/Builder/keystore.jks"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, LC8/a;->a:LD8/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/Builder/key0.cer"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, LC8/a;->a:LD8/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/Builder/key0.p8"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v16, "123456789"

    const-string v17, "key0"

    const-string v18, "123456789"

    new-instance v13, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, LC8/a;->a:LD8/a;

    move-object/from16 v19, v9

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v12, v9}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/Builder/offline_"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    move-object v9, v10

    goto :goto_1

    :cond_1
    move-object/from16 v9, v19

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, LC8/a;->a:LD8/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v7, v10}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/Builder/assets.zip"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v9

    if-eqz v0, :cond_2

    const-string v10, "Editor/Builder/aab_release.zip"

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v23, v12

    move-object v8, v13

    move-object v7, v14

    move-object v2, v15

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v10, v2

    move-object/from16 v23, v12

    move-object v8, v13

    move-object v7, v14

    move-object v2, v15

    goto/16 :goto_9

    :cond_2
    const-string v10, "Editor/Builder/app_release.zip"

    :goto_2
    invoke-static {v9, v10, v5}, Lu8/b;->Y(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v0, v1, Lu8/b$j;->b:Lu8/b;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lu8/b;->E(Lu8/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_3
    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v0}, Lu8/b;->t(Lu8/b;)Lu8/b$u;

    move-result-object v0

    invoke-static {v0}, Lu8/b$u;->a(Lu8/b$u;)Ljava/io/File;

    move-result-object v16

    invoke-static {v0}, Lu8/b$u;->b(Lu8/b$u;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v0}, Lu8/b$u;->c(Lu8/b$u;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v0}, Lu8/b$u;->d(Lu8/b$u;)Ljava/lang/String;

    move-result-object v0

    const-string v19, "compiled/"

    iget-object v9, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v9}, Lu8/b;->v(Lu8/b;)Ljava/lang/String;

    move-result-object v20

    iget-object v9, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v9}, Lu8/b;->w(Lu8/b;)Ljava/lang/String;

    move-result-object v21

    iget-object v9, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v9}, Lu8/b;->x(Lu8/b;)Ljava/io/File;

    move-result-object v22
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v9, v12

    move-object v10, v5

    move-object v11, v13

    move-object/from16 v23, v12

    move-object/from16 v12, v16

    move-object/from16 v24, v13

    move-object/from16 v13, v17

    move-object v7, v14

    move-object/from16 v14, v18

    move-object/from16 v25, v2

    move-object v2, v15

    move-object v15, v0

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    :try_start_2
    invoke-static/range {v9 .. v19}, Lw3/d;->m(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    :goto_4
    move-object/from16 v8, v24

    goto/16 :goto_d

    :catch_1
    move-exception v0

    :goto_5
    move-object/from16 v8, v24

    :goto_6
    move-object/from16 v10, v25

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object v7, v14

    move-object v2, v15

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object v7, v14

    move-object v2, v15

    goto :goto_5

    :cond_4
    move-object/from16 v25, v2

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object v7, v14

    move-object v2, v15

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const-string v9, "Editor/Builder/apkReleaseKeystore.jks"

    invoke-static {v0, v9, v6}, Lu8/b;->Y(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const-string v9, "Editor/Builder/key0.cer"

    invoke-static {v0, v9, v2}, Lu8/b;->Y(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const-string v9, "Editor/Builder/key0.p8"

    invoke-static {v0, v9, v7}, Lu8/b;->Y(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "compiled/"

    iget-object v9, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v9}, Lu8/b;->v(Lu8/b;)Ljava/lang/String;

    move-result-object v19

    iget-object v9, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v9}, Lu8/b;->w(Lu8/b;)Ljava/lang/String;

    move-result-object v20

    iget-object v9, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v9}, Lu8/b;->x(Lu8/b;)Ljava/io/File;

    move-result-object v21

    move-object/from16 v9, v23

    move-object v10, v5

    move-object/from16 v11, v24

    move-object v12, v6

    move-object v13, v7

    move-object v14, v2

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v0

    invoke-static/range {v9 .. v21}, Lw3/h;->b(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    :goto_7
    iget-object v0, v1, Lu8/b$j;->b:Lu8/b;

    const-string v9, "Done"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v9, v8}, Lu8/b;->s(Lu8/b;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LW7/b;->g:Lu8/c;

    iget-object v0, v0, Lu8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    const/4 v8, 0x3

    iput v8, v0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->status:I

    iget-object v0, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v0}, Lu8/b;->y(Lu8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lu8/b$j$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v8, v24

    :try_start_3
    invoke-direct {v0, v1, v8}, Lu8/b$j$a;-><init>(Lu8/b$j;Ljava/io/File;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    goto/16 :goto_d

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :cond_5
    move-object/from16 v8, v24

    :try_start_4
    iget-object v0, v1, Lu8/b$j;->b:Lu8/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v10, v25

    :try_start_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lu8/b;->E(Lu8/b;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    :goto_9
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v9, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v9}, Lu8/b;->n(Lu8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lu8/b$j;->b:Lu8/b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_a

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ": "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    :goto_a
    const-string v0, ""

    :goto_b
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lu8/b;->C(Lu8/b;Ljava/lang/String;)V

    iget-object v0, v1, Lu8/b$j;->b:Lu8/b;

    invoke-static {v0}, Lu8/b;->y(Lu8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :goto_c
    return-void

    :goto_d
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method
