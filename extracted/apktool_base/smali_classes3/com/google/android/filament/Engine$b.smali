.class public Lcom/google/android/filament/Engine$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Engine$b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/Engine$b$a;

.field public final b:J

.field public c:Lcom/google/android/filament/Engine$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/Engine;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/Engine$b;->b:J

    new-instance v2, Lcom/google/android/filament/Engine$b$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/Engine$b$a;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/Engine$b;->a:Lcom/google/android/filament/Engine$b$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine$a;)Lcom/google/android/filament/Engine$b;
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Engine$b;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->d(JJ)V

    return-object p0
.end method

.method public b()Lcom/google/android/filament/Engine;
    .locals 5

    iget-wide v0, p0, Lcom/google/android/filament/Engine$b;->b:J

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/filament/Engine;

    iget-object v3, p0, Lcom/google/android/filament/Engine$b;->c:Lcom/google/android/filament/Engine$c;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/filament/Engine;-><init>(JLcom/google/android/filament/Engine$c;Lcom/google/android/filament/f;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t create Engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/google/android/filament/ColorGrading$a;)Lcom/google/android/filament/Engine$b;
    .locals 4
    .param p1    # Lcom/google/android/filament/ColorGrading$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Engine$b;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading$a;->k()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->e(JJ)V

    return-object p0
.end method

.method public d(Lcom/google/android/filament/Engine$c;)Lcom/google/android/filament/Engine$b;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/filament/Engine$b;->c:Lcom/google/android/filament/Engine$c;

    iget-wide v2, v0, Lcom/google/android/filament/Engine$b;->b:J

    iget-wide v4, v1, Lcom/google/android/filament/Engine$c;->a:J

    iget-wide v6, v1, Lcom/google/android/filament/Engine$c;->b:J

    iget-wide v8, v1, Lcom/google/android/filament/Engine$c;->c:J

    iget-wide v10, v1, Lcom/google/android/filament/Engine$c;->d:J

    iget-wide v12, v1, Lcom/google/android/filament/Engine$c;->e:J

    iget-wide v14, v1, Lcom/google/android/filament/Engine$c;->f:J

    iget-boolean v0, v1, Lcom/google/android/filament/Engine$c;->h:Z

    move/from16 v16, v0

    iget-object v0, v1, Lcom/google/android/filament/Engine$c;->i:Lcom/google/android/filament/Engine$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    move-wide/from16 v31, v2

    iget-wide v2, v1, Lcom/google/android/filament/Engine$c;->j:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/google/android/filament/Engine$c;->k:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/google/android/filament/Engine$c;->l:J

    move-wide/from16 v22, v2

    iget-boolean v0, v1, Lcom/google/android/filament/Engine$c;->m:Z

    move/from16 v24, v0

    iget-object v0, v1, Lcom/google/android/filament/Engine$c;->n:Lcom/google/android/filament/Engine$c$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v25

    iget-boolean v0, v1, Lcom/google/android/filament/Engine$c;->o:Z

    move/from16 v26, v0

    iget-boolean v0, v1, Lcom/google/android/filament/Engine$c;->p:Z

    move/from16 v27, v0

    iget-object v0, v1, Lcom/google/android/filament/Engine$c;->q:Lcom/google/android/filament/Engine$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v28

    iget-wide v0, v1, Lcom/google/android/filament/Engine$c;->r:J

    move-wide/from16 v29, v0

    move-wide/from16 v2, v31

    invoke-static/range {v2 .. v30}, Lcom/google/android/filament/Engine;->f(JJJJJJJZIJJJZIZZIJ)V

    return-object p0
.end method

.method public e(Ljava/lang/String;Z)Lcom/google/android/filament/Engine$b;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/Engine$b;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Engine;->g(JLjava/lang/String;Z)V

    return-object p0
.end method

.method public f(Lcom/google/android/filament/Engine$d;)Lcom/google/android/filament/Engine$b;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/Engine$b;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->h(JI)V

    return-object p0
.end method

.method public g(Z)Lcom/google/android/filament/Engine$b;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/Engine$b;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->i(JZ)V

    return-object p0
.end method

.method public h(Ljava/lang/Object;)Lcom/google/android/filament/Engine$b;
    .locals 4

    invoke-static {}, Lcom/google/android/filament/o;->a()Lcom/google/android/filament/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/filament/o;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/filament/Engine$b;->b:J

    invoke-static {}, Lcom/google/android/filament/o;->a()Lcom/google/android/filament/o;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/filament/o;->b(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->j(JJ)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid shared context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
