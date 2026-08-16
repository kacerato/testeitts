.class public Lcom/android/tools/r8/diagnostic/internal/a$a;
.super Lcom/android/tools/r8/diagnostic/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/diagnostic/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/diagnostic/internal/b<",
        "Lcom/android/tools/r8/diagnostic/internal/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public c:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/diagnostic/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/android/tools/r8/diagnostic/DefinitionContext;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/diagnostic/internal/a$a;->c()Lcom/android/tools/r8/diagnostic/internal/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/diagnostic/internal/a$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/a$a;->c:Lcom/android/tools/r8/references/ClassReference;

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/diagnostic/internal/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/b;->a:Lcom/android/tools/r8/origin/Origin;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/diagnostic/internal/a$a;->b()Lcom/android/tools/r8/diagnostic/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/diagnostic/internal/b;
    .locals 0

    return-object p0
.end method

.method public c()Lcom/android/tools/r8/diagnostic/internal/a;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/diagnostic/internal/a$a;->d:Z

    if-nez v0, :cond_3

    sget-boolean v1, Lcom/android/tools/r8/diagnostic/internal/b;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/diagnostic/internal/b;->a:Lcom/android/tools/r8/origin/Origin;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/a$a;->c:Lcom/android/tools/r8/references/ClassReference;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/a;

    iget-object v1, p0, Lcom/android/tools/r8/diagnostic/internal/a$a;->c:Lcom/android/tools/r8/references/ClassReference;

    iget-object v2, p0, Lcom/android/tools/r8/diagnostic/internal/b;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/diagnostic/internal/a;-><init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/origin/Origin;)V

    return-object v0
.end method
