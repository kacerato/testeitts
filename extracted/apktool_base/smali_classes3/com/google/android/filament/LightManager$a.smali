.class public Lcom/google/android/filament/LightManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/LightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/LightManager$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/LightManager$a$a;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/filament/LightManager$d;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/LightManager$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/filament/LightManager;->t(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    new-instance p1, Lcom/google/android/filament/LightManager$a$a;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/LightManager$a$a;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/filament/LightManager$a;->a:Lcom/google/android/filament/LightManager$a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine;I)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/android/filament/LightManager;->b(JJI)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t create Light component for entity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", see log."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Z)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->c(JZ)V

    return-object p0
.end method

.method public c(Z)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->d(JZ)V

    return-object p0
.end method

.method public d(FFF)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/LightManager;->e(JFFF)V

    return-object p0
.end method

.method public e(FFF)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/LightManager;->f(JFFF)V

    return-object p0
.end method

.method public f(F)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->g(JF)V

    return-object p0
.end method

.method public g(F)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->j(JF)V

    return-object p0
.end method

.method public h(FF)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->k(JFF)V

    return-object p0
.end method

.method public i(F)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->l(JF)V

    return-object p0
.end method

.method public j(IZ)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->m(JIZ)V

    return-object p0
.end method

.method public k(FFF)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/LightManager;->n(JFFF)V

    return-object p0
.end method

.method public l(Lcom/google/android/filament/LightManager$c;)Lcom/google/android/filament/LightManager$a;
    .locals 23
    .param p1    # Lcom/google/android/filament/LightManager$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/google/android/filament/LightManager$a;->b:J

    iget v4, v1, Lcom/google/android/filament/LightManager$c;->a:I

    iget v5, v1, Lcom/google/android/filament/LightManager$c;->b:I

    iget-object v6, v1, Lcom/google/android/filament/LightManager$c;->c:[F

    iget v7, v1, Lcom/google/android/filament/LightManager$c;->d:F

    iget v8, v1, Lcom/google/android/filament/LightManager$c;->e:F

    iget v9, v1, Lcom/google/android/filament/LightManager$c;->f:F

    iget v10, v1, Lcom/google/android/filament/LightManager$c;->g:F

    iget v11, v1, Lcom/google/android/filament/LightManager$c;->h:F

    iget-boolean v12, v1, Lcom/google/android/filament/LightManager$c;->i:Z

    iget-boolean v13, v1, Lcom/google/android/filament/LightManager$c;->j:Z

    iget v14, v1, Lcom/google/android/filament/LightManager$c;->k:F

    iget v15, v1, Lcom/google/android/filament/LightManager$c;->l:F

    iget-boolean v0, v1, Lcom/google/android/filament/LightManager$c;->m:Z

    move/from16 v16, v0

    iget v0, v1, Lcom/google/android/filament/LightManager$c;->n:I

    move/from16 v17, v0

    iget v0, v1, Lcom/google/android/filament/LightManager$c;->o:F

    move/from16 v18, v0

    iget-boolean v0, v1, Lcom/google/android/filament/LightManager$c;->p:Z

    move/from16 v19, v0

    iget v0, v1, Lcom/google/android/filament/LightManager$c;->q:F

    move/from16 v20, v0

    iget v0, v1, Lcom/google/android/filament/LightManager$c;->r:F

    move/from16 v21, v0

    iget-object v0, v1, Lcom/google/android/filament/LightManager$c;->s:[F

    move-object/from16 v22, v0

    invoke-static/range {v2 .. v22}, Lcom/google/android/filament/LightManager;->o(JII[FFFFFFZZFFZIFZFF[F)V

    return-object p0
.end method

.method public m(FF)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->p(JFF)V

    return-object p0
.end method

.method public n(F)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->a(JF)V

    return-object p0
.end method

.method public o(F)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->h(JF)V

    return-object p0
.end method

.method public p(F)Lcom/google/android/filament/LightManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->i(JF)V

    return-object p0
.end method
