.class public final Lcom/android/tools/r8/shaking/q1;
.super Lcom/android/tools/r8/shaking/F1;
.source "SourceFile"


# static fields
.field public static final n:Lcom/android/tools/r8/shaking/q1;

.field public static final o:Lcom/android/tools/r8/shaking/q1;

.field public static final synthetic p:Z = true


# instance fields
.field public final l:Z

.field public final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/shaking/o1;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/o1;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/D1;->k()Lcom/android/tools/r8/shaking/D1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/o1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o1;->l:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o1;->m:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->a()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/q1;

    sput-object v0, Lcom/android/tools/r8/shaking/q1;->n:Lcom/android/tools/r8/shaking/q1;

    new-instance v0, Lcom/android/tools/r8/shaking/o1;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/o1;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->h()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/D1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/D1;->k:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/D1;

    check-cast v0, Lcom/android/tools/r8/shaking/o1;

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o1;->l:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o1;->m:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->a()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/q1;

    sput-object v0, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/o1;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/F1;-><init>(Lcom/android/tools/r8/shaking/D1;)V

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/o1;->l:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/q1;->l:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/o1;->m:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/q1;->m:Z

    return-void
.end method

.method public static d()Lcom/android/tools/r8/shaking/p1;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/q1;->c()Lcom/android/tools/r8/shaking/p1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 2

    check-cast p1, Lcom/android/tools/r8/shaking/q1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/shaking/F1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/q1;->l:Z

    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/q1;->l:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/q1;->m:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/q1;->m:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/shaking/F1;->b()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/q1;->l:Z

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/q1;->m:Z

    const/16 v2, 0xb

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()Lcom/android/tools/r8/shaking/p1;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/q1;->p:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/shaking/q1;->n:Lcom/android/tools/r8/shaking/q1;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/shaking/p1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/p1;-><init>(Lcom/android/tools/r8/shaking/q1;)V

    return-object v0
.end method
