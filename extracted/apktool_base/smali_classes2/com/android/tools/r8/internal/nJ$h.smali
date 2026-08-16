.class public Lcom/android/tools/r8/internal/nJ$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Z

.field public f:[I

.field public g:I

.field public h:I

.field public final i:I

.field public j:Z

.field public k:Z

.field public final l:Z

.field public m:Lcom/android/tools/r8/internal/nJ$a;

.field public final n:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$h;->a:Z

    const-string v1, "com.android.tools.r8.enableConstructorInliningWithFinalFields"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/nJ$h;->b:Z

    const-string v1, "com.android.tools.r8.disableinlining"

    invoke-static {v1}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/nJ$h;->c:Z

    invoke-static {}, Lcom/android/tools/r8/Version;->isDevelopmentVersion()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "com.android.tools.r8.inliningInstructionLimit"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    iput v1, p0, Lcom/android/tools/r8/internal/nJ$h;->d:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$h;->e:Z

    const/16 v1, 0xc

    const/16 v3, 0xa

    const v4, 0x7fffffff

    const/16 v5, 0x1c

    const/16 v6, 0x10

    filled-new-array {v4, v5, v6, v1, v3}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/nJ$h;->f:[I

    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/tools/r8/internal/nJ$h;->g:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/tools/r8/internal/nJ$h;->h:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/tools/r8/internal/nJ$h;->i:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$h;->j:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$h;->k:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$h;->l:Z

    iput-object v2, p0, Lcom/android/tools/r8/internal/nJ$h;->m:Lcom/android/tools/r8/internal/nJ$a;

    iput-object p1, p0, Lcom/android/tools/r8/internal/nJ$h;->n:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$h;->c:Z

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/nJ$p;->r0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$h;->a:Z

    return-void
.end method
