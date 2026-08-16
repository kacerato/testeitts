.class public final Lcom/android/tools/r8/internal/Gd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Gd;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Jd;

.field public final b:Lcom/android/tools/r8/internal/Hd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Gd;

    sget-object v1, Lcom/android/tools/r8/internal/Jd;->b:Lcom/android/tools/r8/internal/Jd;

    sget-object v2, Lcom/android/tools/r8/internal/Hd;->b:Lcom/android/tools/r8/internal/Hd;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Gd;-><init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Hd;)V

    sput-object v0, Lcom/android/tools/r8/internal/Gd;->c:Lcom/android/tools/r8/internal/Gd;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Hd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gd;->a:Lcom/android/tools/r8/internal/Jd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Gd;->b:Lcom/android/tools/r8/internal/Hd;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Gd;)Lcom/android/tools/r8/internal/Gd;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/Gd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gd;->a:Lcom/android/tools/r8/internal/Jd;

    iget-object v2, p1, Lcom/android/tools/r8/internal/Gd;->a:Lcom/android/tools/r8/internal/Jd;

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Jd;->a(Lcom/android/tools/r8/internal/Jd;)Lcom/android/tools/r8/internal/Jd;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Gd;->b:Lcom/android/tools/r8/internal/Hd;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Gd;->b:Lcom/android/tools/r8/internal/Hd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget v3, Lcom/android/tools/r8/internal/QC;->c:I

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    .line 8
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    .line 10
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 11
    new-instance p1, Lcom/android/tools/r8/internal/Hd;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/tools/r8/internal/Hd;-><init>(Lcom/android/tools/r8/internal/QC;)V

    .line 12
    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Gd;-><init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Hd;)V

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/Gd;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gd;->b:Lcom/android/tools/r8/internal/Hd;

    .line 14
    iget-object v0, v0, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gd;->a:Lcom/android/tools/r8/internal/Jd;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gd;->b:Lcom/android/tools/r8/internal/Hd;

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
