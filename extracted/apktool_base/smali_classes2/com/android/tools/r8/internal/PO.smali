.class public final Lcom/android/tools/r8/internal/PO;
.super Lcom/android/tools/r8/internal/HO;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public g:Lcom/android/tools/r8/internal/LX;

.field public h:Lcom/android/tools/r8/internal/LX;

.field public i:Lcom/android/tools/r8/internal/LX;

.field public j:Lcom/android/tools/r8/internal/LX;

.field public k:Lcom/android/tools/r8/internal/LX;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/HO;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/LX;->a:Lcom/android/tools/r8/internal/IX;

    iput-object v0, p0, Lcom/android/tools/r8/internal/PO;->g:Lcom/android/tools/r8/internal/LX;

    iput-object v0, p0, Lcom/android/tools/r8/internal/PO;->h:Lcom/android/tools/r8/internal/LX;

    iput-object v0, p0, Lcom/android/tools/r8/internal/PO;->i:Lcom/android/tools/r8/internal/LX;

    iput-object v0, p0, Lcom/android/tools/r8/internal/PO;->j:Lcom/android/tools/r8/internal/LX;

    iput-object v0, p0, Lcom/android/tools/r8/internal/PO;->k:Lcom/android/tools/r8/internal/LX;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/HO;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/QO;
    .locals 11

    new-instance v10, Lcom/android/tools/r8/internal/QO;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/HO;->a()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/HO;->c:Lcom/android/tools/r8/internal/LX;

    iget-object v3, p0, Lcom/android/tools/r8/internal/HO;->d:Lcom/android/tools/r8/internal/LX;

    iget-object v4, p0, Lcom/android/tools/r8/internal/PO;->g:Lcom/android/tools/r8/internal/LX;

    iget-object v5, p0, Lcom/android/tools/r8/internal/PO;->h:Lcom/android/tools/r8/internal/LX;

    iget-object v6, p0, Lcom/android/tools/r8/internal/PO;->i:Lcom/android/tools/r8/internal/LX;

    iget-object v7, p0, Lcom/android/tools/r8/internal/PO;->j:Lcom/android/tools/r8/internal/LX;

    iget-object v8, p0, Lcom/android/tools/r8/internal/HO;->e:Lcom/android/tools/r8/internal/LX;

    iget-object v9, p0, Lcom/android/tools/r8/internal/PO;->k:Lcom/android/tools/r8/internal/LX;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/tools/r8/internal/QO;-><init>(Ljava/util/Set;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;)V

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/QO;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/QO;->k:Lcom/android/tools/r8/internal/QO;

    return-object v0

    :cond_0
    return-object v10
.end method
