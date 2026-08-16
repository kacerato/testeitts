.class public final Lcom/android/tools/r8/internal/GO;
.super Lcom/android/tools/r8/internal/HO;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/HO;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/HO;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/IO;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/HO;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/HO;->c:Lcom/android/tools/r8/internal/LX;

    iget-object v2, p0, Lcom/android/tools/r8/internal/HO;->d:Lcom/android/tools/r8/internal/LX;

    iget-object v3, p0, Lcom/android/tools/r8/internal/HO;->e:Lcom/android/tools/r8/internal/LX;

    invoke-static {v0}, Lcom/android/tools/r8/internal/a2;->a(Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v1, Lcom/android/tools/r8/internal/IX;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v2, Lcom/android/tools/r8/internal/IX;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lcom/android/tools/r8/internal/IX;

    if-eqz v4, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/IO;->e:Lcom/android/tools/r8/internal/IO;

    return-object v0

    :cond_0
    new-instance v4, Lcom/android/tools/r8/internal/IO;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/IO;-><init>(Ljava/util/Set;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;)V

    sget-boolean v0, Lcom/android/tools/r8/internal/GO;->g:Z

    if-nez v0, :cond_2

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/IO;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    return-object v4
.end method
