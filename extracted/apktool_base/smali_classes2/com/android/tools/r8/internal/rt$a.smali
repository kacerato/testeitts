.class public Lcom/android/tools/r8/internal/rt$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/rt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic A:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/dex/W$a;

.field public b:Lcom/android/tools/r8/dex/W$b;

.field public c:Lcom/android/tools/r8/CompilationMode;

.field public d:I

.field public e:Z

.field public f:I

.field public g:Lcom/android/tools/r8/internal/nJ$f;

.field public h:Ljava/util/Optional;

.field public i:Ljava/util/Optional;

.field public j:Ljava/util/Optional;

.field public k:Ljava/util/Optional;

.field public l:Ljava/util/Optional;

.field public m:Ljava/util/Optional;

.field public n:Lcom/android/tools/r8/internal/vm;

.field public o:Lcom/android/tools/r8/internal/Qv;

.field public p:Lcom/android/tools/r8/shaking/o3;

.field public q:Ljava/util/List;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Lcom/android/tools/r8/AndroidResourceProvider;

.field public u:Lcom/android/tools/r8/internal/hb0;

.field public v:Ljava/util/Optional;

.field public w:Z

.field public x:Z

.field public y:Ljava/lang/String;

.field public final z:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/dex/W$a;->c:Lcom/android/tools/r8/dex/W$a;

    iput-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->a:Lcom/android/tools/r8/dex/W$a;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->h:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->i:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->j:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->k:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->l:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->m:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->v:Ljava/util/Optional;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/rt$a;->w:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/rt$a;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->y:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->z:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    .line 5
    const-string v0, "com.android.tools.r8."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ws1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/ws1;-><init>(Ljava/util/Map;)V

    .line 5
    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/dex/W$a;)Lcom/android/tools/r8/internal/rt$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->a:Lcom/android/tools/r8/dex/W$a;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/rt$a;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/rt$a;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Z)Lcom/android/tools/r8/internal/rt$a;
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->m:Ljava/util/Optional;

    return-object p0
.end method

.method public final a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/internal/rt$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public a()Lcom/android/tools/r8/internal/rt;
    .locals 30

    move-object/from16 v0, p0

    .line 8
    sget-boolean v1, Lcom/android/tools/r8/internal/rt$a;->A:Z

    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/android/tools/r8/internal/rt$a;->b:Lcom/android/tools/r8/dex/W$b;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 9
    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->b:Lcom/android/tools/r8/dex/W$b;

    sget-object v2, Lcom/android/tools/r8/dex/W$b;->h:Lcom/android/tools/r8/dex/W$b;

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->a:Lcom/android/tools/r8/dex/W$a;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 10
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/rt;

    move-object v2, v1

    iget-object v3, v0, Lcom/android/tools/r8/internal/rt$a;->a:Lcom/android/tools/r8/dex/W$a;

    iget-object v4, v0, Lcom/android/tools/r8/internal/rt$a;->b:Lcom/android/tools/r8/dex/W$b;

    iget-object v5, v0, Lcom/android/tools/r8/internal/rt$a;->c:Lcom/android/tools/r8/CompilationMode;

    iget v6, v0, Lcom/android/tools/r8/internal/rt$a;->d:I

    iget-object v7, v0, Lcom/android/tools/r8/internal/rt$a;->n:Lcom/android/tools/r8/internal/vm;

    iget-boolean v8, v0, Lcom/android/tools/r8/internal/rt$a;->e:Z

    iget v9, v0, Lcom/android/tools/r8/internal/rt$a;->f:I

    iget-object v10, v0, Lcom/android/tools/r8/internal/rt$a;->g:Lcom/android/tools/r8/internal/nJ$f;

    iget-object v11, v0, Lcom/android/tools/r8/internal/rt$a;->h:Ljava/util/Optional;

    iget-object v12, v0, Lcom/android/tools/r8/internal/rt$a;->i:Ljava/util/Optional;

    iget-object v13, v0, Lcom/android/tools/r8/internal/rt$a;->j:Ljava/util/Optional;

    iget-object v14, v0, Lcom/android/tools/r8/internal/rt$a;->k:Ljava/util/Optional;

    iget-object v15, v0, Lcom/android/tools/r8/internal/rt$a;->l:Ljava/util/Optional;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->m:Ljava/util/Optional;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->o:Lcom/android/tools/r8/internal/Qv;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->p:Lcom/android/tools/r8/shaking/o3;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->q:Ljava/util/List;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->r:Ljava/util/List;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->s:Ljava/util/List;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/rt$a;->w:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/rt$a;->x:Z

    move/from16 v23, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->z:Ljava/util/HashMap;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->y:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->t:Lcom/android/tools/r8/AndroidResourceProvider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->u:Lcom/android/tools/r8/internal/hb0;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/rt$a;->v:Ljava/util/Optional;

    move-object/from16 v28, v1

    invoke-direct/range {v2 .. v28}, Lcom/android/tools/r8/internal/rt;-><init>(Lcom/android/tools/r8/dex/W$a;Lcom/android/tools/r8/dex/W$b;Lcom/android/tools/r8/CompilationMode;ILcom/android/tools/r8/internal/vm;ZILcom/android/tools/r8/internal/nJ$f;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/tools/r8/internal/Qv;Lcom/android/tools/r8/shaking/o3;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZLjava/util/HashMap;Ljava/lang/String;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/internal/hb0;Ljava/util/Optional;)V

    return-object v29
.end method

.method public final b(Z)Lcom/android/tools/r8/internal/rt$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->h:Ljava/util/Optional;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/rt$a;
    .locals 2

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/rt$a;->b()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/xs1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/xs1;-><init>(Lcom/android/tools/r8/internal/rt$a;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->j:Ljava/util/Optional;

    return-void
.end method

.method public final d(Z)Lcom/android/tools/r8/internal/rt$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->l:Ljava/util/Optional;

    return-object p0
.end method

.method public final e(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->v:Ljava/util/Optional;

    return-void
.end method

.method public final f(Z)Lcom/android/tools/r8/internal/rt$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rt$a;->k:Ljava/util/Optional;

    return-object p0
.end method
