.class public final Lcom/android/tools/r8/internal/ER;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/HashMap;

.field public g:Ljava/util/List;

.field public h:Lcom/android/tools/r8/internal/Tl0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ER;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ER;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ER;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ER;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ER;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ER;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)Lcom/android/tools/r8/internal/ER;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ER;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/HR;
    .locals 10

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/ER;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ER;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ER;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/HR;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ER;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ER;->b:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/ER;->e:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/tools/r8/internal/ER;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ER;->c:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/ER;->d:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/tools/r8/internal/ER;->g:Ljava/util/List;

    iget-object v9, p0, Lcom/android/tools/r8/internal/ER;->h:Lcom/android/tools/r8/internal/Tl0;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/tools/r8/internal/HR;-><init>(Ljava/util/HashMap;Ljava/util/Collection;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/Collection;Ljava/util/ArrayList;Ljava/util/List;Lcom/android/tools/r8/internal/Tl0;)V

    return-object v0
.end method
