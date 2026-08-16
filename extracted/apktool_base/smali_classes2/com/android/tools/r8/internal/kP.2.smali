.class public final Lcom/android/tools/r8/internal/kP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/kP;

.field public static final c:Lcom/android/tools/r8/internal/kP;

.field public static final d:Lcom/android/tools/r8/internal/kP;

.field public static final e:Lcom/android/tools/r8/internal/kP;

.field public static final f:Lcom/android/tools/r8/internal/kP;

.field public static final g:Lcom/android/tools/r8/internal/kP;

.field public static final h:Lcom/android/tools/r8/internal/kP;

.field public static final i:Lcom/android/tools/r8/internal/kP;

.field public static final j:Lcom/android/tools/r8/internal/kP;

.field public static final k:Lcom/android/tools/r8/internal/nC;

.field public static final synthetic l:Z = true


# instance fields
.field public final a:C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/tools/r8/internal/kP;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kP;-><init>(C)V

    sput-object v0, Lcom/android/tools/r8/internal/kP;->b:Lcom/android/tools/r8/internal/kP;

    new-instance v2, Lcom/android/tools/r8/internal/kP;

    const/16 v0, 0x5a

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/kP;-><init>(C)V

    sput-object v2, Lcom/android/tools/r8/internal/kP;->c:Lcom/android/tools/r8/internal/kP;

    new-instance v3, Lcom/android/tools/r8/internal/kP;

    const/16 v0, 0x42

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/kP;-><init>(C)V

    sput-object v3, Lcom/android/tools/r8/internal/kP;->d:Lcom/android/tools/r8/internal/kP;

    new-instance v4, Lcom/android/tools/r8/internal/kP;

    const/16 v0, 0x43

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/kP;-><init>(C)V

    sput-object v4, Lcom/android/tools/r8/internal/kP;->e:Lcom/android/tools/r8/internal/kP;

    new-instance v5, Lcom/android/tools/r8/internal/kP;

    const/16 v0, 0x53

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/kP;-><init>(C)V

    sput-object v5, Lcom/android/tools/r8/internal/kP;->f:Lcom/android/tools/r8/internal/kP;

    new-instance v6, Lcom/android/tools/r8/internal/kP;

    const/16 v0, 0x49

    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/kP;-><init>(C)V

    sput-object v6, Lcom/android/tools/r8/internal/kP;->g:Lcom/android/tools/r8/internal/kP;

    new-instance v7, Lcom/android/tools/r8/internal/kP;

    const/16 v0, 0x4a

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/kP;-><init>(C)V

    sput-object v7, Lcom/android/tools/r8/internal/kP;->h:Lcom/android/tools/r8/internal/kP;

    new-instance v8, Lcom/android/tools/r8/internal/kP;

    const/16 v0, 0x46

    invoke-direct {v8, v0}, Lcom/android/tools/r8/internal/kP;-><init>(C)V

    sput-object v8, Lcom/android/tools/r8/internal/kP;->i:Lcom/android/tools/r8/internal/kP;

    new-instance v9, Lcom/android/tools/r8/internal/kP;

    const/16 v0, 0x44

    invoke-direct {v9, v0}, Lcom/android/tools/r8/internal/kP;-><init>(C)V

    sput-object v9, Lcom/android/tools/r8/internal/kP;->j:Lcom/android/tools/r8/internal/kP;

    filled-new-array/range {v2 .. v9}, [Lcom/android/tools/r8/internal/kP;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/kC;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/kP;->a()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/kP;->k:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/android/tools/r8/internal/kP;->a:C

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/kP;->k:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final a()C
    .locals 2

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/kP;->b:Lcom/android/tools/r8/internal/kP;

    if-eq p0, v0, :cond_0

    .line 2
    iget-char v0, p0, Lcom/android/tools/r8/internal/kP;->a:C

    return v0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "No descriptor exists for \'any\' primitive"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method
