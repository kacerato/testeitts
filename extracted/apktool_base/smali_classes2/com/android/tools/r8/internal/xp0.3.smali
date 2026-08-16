.class public final Lcom/android/tools/r8/internal/xp0;
.super Lcom/android/tools/r8/internal/Hp0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/yp0;
.implements Lcom/android/tools/r8/internal/Fp0;


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/QJ;

.field public f:Lcom/android/tools/r8/internal/wp0;

.field public g:Ljava/lang/String;

.field public h:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/QJ;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Hp0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xp0;->e:Lcom/android/tools/r8/internal/QJ;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/xp0;->e:Lcom/android/tools/r8/internal/QJ;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/wp0;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/xp0;->f:Lcom/android/tools/r8/internal/wp0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/xp0;->h:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/xp0;->g:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/xp0;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xp0;->h:Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xp0;->h:Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xp0;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xp0;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xp0;->h:Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/android/tools/r8/internal/wp0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xp0;->f:Lcom/android/tools/r8/internal/wp0;

    return-object v0
.end method

.method public final i()Lcom/android/tools/r8/internal/xp0;
    .locals 0

    return-object p0
.end method

.method public final j()Lcom/android/tools/r8/internal/yp0;
    .locals 0

    return-object p0
.end method

.method public final l()Lcom/android/tools/r8/internal/Fp0;
    .locals 0

    return-object p0
.end method

.method public final q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
