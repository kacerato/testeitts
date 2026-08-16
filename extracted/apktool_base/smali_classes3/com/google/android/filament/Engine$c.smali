.class public Lcom/google/android/filament/Engine$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Engine$c$a;
    }
.end annotation


# static fields
.field public static final s:J = 0x3L

.field public static final t:J = 0x2L

.field public static final u:J = 0x1L

.field public static final v:J = 0x3L


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Z

.field public i:Lcom/google/android/filament/Engine$g;

.field public j:J

.field public k:J

.field public l:J

.field public m:Z

.field public n:Lcom/google/android/filament/Engine$c$a;

.field public o:Z

.field public p:Z

.field public q:Lcom/google/android/filament/Engine$f;

.field public r:J


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lcom/google/android/filament/Engine$c;->a:J

    iput-wide v0, p0, Lcom/google/android/filament/Engine$c;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Engine$c;->c:J

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/google/android/filament/Engine$c;->d:J

    const-wide/16 v4, 0x2

    iput-wide v4, p0, Lcom/google/android/filament/Engine$c;->e:J

    iput-wide v0, p0, Lcom/google/android/filament/Engine$c;->f:J

    iput-wide v0, p0, Lcom/google/android/filament/Engine$c;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/Engine$c;->h:Z

    sget-object v1, Lcom/google/android/filament/Engine$g;->NONE:Lcom/google/android/filament/Engine$g;

    iput-object v1, p0, Lcom/google/android/filament/Engine$c;->i:Lcom/google/android/filament/Engine$g;

    iput-wide v4, p0, Lcom/google/android/filament/Engine$c;->j:J

    const-wide/16 v4, 0x40

    iput-wide v4, p0, Lcom/google/android/filament/Engine$c;->k:J

    iput-wide v2, p0, Lcom/google/android/filament/Engine$c;->l:J

    iput-boolean v0, p0, Lcom/google/android/filament/Engine$c;->m:Z

    sget-object v1, Lcom/google/android/filament/Engine$c$a;->DEFAULT:Lcom/google/android/filament/Engine$c$a;

    iput-object v1, p0, Lcom/google/android/filament/Engine$c;->n:Lcom/google/android/filament/Engine$c$a;

    iput-boolean v0, p0, Lcom/google/android/filament/Engine$c;->o:Z

    iput-boolean v0, p0, Lcom/google/android/filament/Engine$c;->p:Z

    sget-object v0, Lcom/google/android/filament/Engine$f;->DEFAULT:Lcom/google/android/filament/Engine$f;

    iput-object v0, p0, Lcom/google/android/filament/Engine$c;->q:Lcom/google/android/filament/Engine$f;

    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lcom/google/android/filament/Engine$c;->r:J

    return-void
.end method
