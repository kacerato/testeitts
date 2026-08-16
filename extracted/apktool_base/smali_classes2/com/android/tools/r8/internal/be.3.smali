.class public final Lcom/android/tools/r8/internal/be;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/be;

.field public static final d:Lcom/android/tools/r8/internal/be;

.field public static final e:Lcom/android/tools/r8/internal/be;

.field public static final f:Lcom/android/tools/r8/internal/be;

.field public static final synthetic g:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/t40;

.field public b:Lcom/android/tools/r8/internal/t40;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/be;

    sget-object v1, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    sget-object v2, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/be;-><init>(Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/t40;)V

    sput-object v0, Lcom/android/tools/r8/internal/be;->c:Lcom/android/tools/r8/internal/be;

    new-instance v0, Lcom/android/tools/r8/internal/be;

    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    invoke-direct {v0, v3, v2}, Lcom/android/tools/r8/internal/be;-><init>(Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/t40;)V

    sput-object v0, Lcom/android/tools/r8/internal/be;->d:Lcom/android/tools/r8/internal/be;

    new-instance v0, Lcom/android/tools/r8/internal/be;

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/be;-><init>(Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/t40;)V

    sput-object v0, Lcom/android/tools/r8/internal/be;->e:Lcom/android/tools/r8/internal/be;

    new-instance v0, Lcom/android/tools/r8/internal/be;

    invoke-direct {v0, v2, v3}, Lcom/android/tools/r8/internal/be;-><init>(Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/t40;)V

    sput-object v0, Lcom/android/tools/r8/internal/be;->f:Lcom/android/tools/r8/internal/be;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/t40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    sget-boolean p2, Lcom/android/tools/r8/internal/be;->g:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
