.class public abstract Lcom/android/tools/r8/naming/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;

.field public final b:Ljava/util/HashSet;

.field public final c:Lcom/android/tools/r8/internal/gr0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/naming/h0;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/naming/h0;->a:Lcom/android/tools/r8/internal/hC;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/naming/h0;->b:Ljava/util/HashSet;

    if-eqz p2, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/gr0$a;->c:Lcom/android/tools/r8/internal/gr0$a;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/gr0$a;->b:Lcom/android/tools/r8/internal/gr0$a;

    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/naming/h0;->c:Lcom/android/tools/r8/internal/gr0$a;

    return-void
.end method


# virtual methods
.method public a([CLcom/android/tools/r8/naming/L;)Ljava/lang/String;
    .locals 1

    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/naming/L;->a()I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/naming/h0;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/naming/h0;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {p2}, Lcom/android/tools/r8/naming/L;->b()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/android/tools/r8/naming/L;->c()I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/naming/h0;->c:Lcom/android/tools/r8/internal/gr0$a;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/gr0;->a(ILcom/android/tools/r8/internal/gr0$a;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/naming/h0;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    sget-object v0, Lcom/android/tools/r8/internal/gr0;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1
.end method
