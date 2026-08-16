.class public Lcom/android/tools/r8/internal/HE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public b:Z

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/internal/HE;->a:Ljava/util/Set;

    const-string v0, "com.android.tools.r8.instrumentation.executedclassesandmethods"

    invoke-static {v0}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/HE;->b:Z

    invoke-static {}, Lcom/android/tools/r8/Version;->isDevelopmentVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.tools.r8.instrumentation.syntheticservercontext"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/HE;->c:Ljava/lang/String;

    invoke-static {}, Lcom/android/tools/r8/Version;->isDevelopmentVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.tools.r8.instrumentation.tag"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/HE;->d:Ljava/lang/String;

    invoke-static {}, Lcom/android/tools/r8/Version;->isDevelopmentVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.tools.r8.instrumentation.callsites"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    sget v2, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v2, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/Qb;

    const/16 v4, 0x3a

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/Qb;-><init>(C)V

    new-instance v4, Lcom/android/tools/r8/internal/En0;

    new-instance v5, Lcom/android/tools/r8/internal/zn0;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/zn0;-><init>(Lcom/android/tools/r8/internal/Qb;)V

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/En0;-><init>(Lcom/android/tools/r8/internal/Dn0;)V

    iget-object v3, v4, Lcom/android/tools/r8/internal/En0;->c:Lcom/android/tools/r8/internal/Dn0;

    invoke-interface {v3, v4, v0}, Lcom/android/tools/r8/internal/Dn0;->a(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/internal/Cn0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Cn0;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Cn0;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/android/tools/r8/internal/hX;->a:Ljava/util/Comparator;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/hX;->a(ILjava/lang/String;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object v4

    goto :goto_4

    :cond_3
    move-object v4, v1

    :goto_4
    if-eqz v4, :cond_4

    invoke-static {v4, p1}, Lcom/android/tools/r8/internal/hX;->a(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/HE;->a:Ljava/util/Set;

    :cond_6
    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/HE;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/HE;->b:Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/android/tools/r8/internal/HE;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/HE;->d:Ljava/lang/String;

    return-object p0
.end method
