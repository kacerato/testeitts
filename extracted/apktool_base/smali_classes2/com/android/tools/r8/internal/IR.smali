.class public Lcom/android/tools/r8/internal/IR;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/IR$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public final b:Lcom/android/tools/r8/internal/nC;

.field public final c:Lcom/android/tools/r8/internal/nC;

.field public final d:Lcom/android/tools/r8/internal/nC;

.field public final e:Lcom/android/tools/r8/internal/nC;

.field public final f:Lcom/android/tools/r8/internal/hC;

.field public final g:Lcom/android/tools/r8/internal/QC;

.field public final h:Lcom/android/tools/r8/internal/QC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IR;->a:Lcom/android/tools/r8/internal/nC;

    iput-object p2, p0, Lcom/android/tools/r8/internal/IR;->b:Lcom/android/tools/r8/internal/nC;

    iput-object p3, p0, Lcom/android/tools/r8/internal/IR;->c:Lcom/android/tools/r8/internal/nC;

    iput-object p4, p0, Lcom/android/tools/r8/internal/IR;->d:Lcom/android/tools/r8/internal/nC;

    iput-object p5, p0, Lcom/android/tools/r8/internal/IR;->e:Lcom/android/tools/r8/internal/nC;

    iput-object p6, p0, Lcom/android/tools/r8/internal/IR;->f:Lcom/android/tools/r8/internal/hC;

    iput-object p7, p0, Lcom/android/tools/r8/internal/IR;->g:Lcom/android/tools/r8/internal/QC;

    iput-object p8, p0, Lcom/android/tools/r8/internal/IR;->h:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IR$a;
    .locals 13

    new-instance v12, Lcom/android/tools/r8/internal/IR$a;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v10

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v11

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v11}, Lcom/android/tools/r8/internal/IR$a;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V

    return-object v12
.end method
