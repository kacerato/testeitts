.class public final Lcom/android/tools/r8/shaking/F4;
.super Lcom/android/tools/r8/internal/sb0;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z = true


# instance fields
.field public final m:Lcom/android/tools/r8/shaking/M3;

.field public final n:Lcom/android/tools/r8/internal/be0;

.field public final synthetic o:Lcom/android/tools/r8/shaking/I4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/graph/y;)V
    .locals 10

    iput-object p1, p0, Lcom/android/tools/r8/shaking/F4;->o:Lcom/android/tools/r8/shaking/I4;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/sb0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/shaking/M3;->a()Lcom/android/tools/r8/shaking/M3$a;

    move-result-object p1

    const/4 v7, 0x1

    iput-boolean v7, p1, Lcom/android/tools/r8/shaking/M3$a;->g:Z

    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/android/tools/r8/shaking/M3$a;->d:Z

    new-instance p2, Lcom/android/tools/r8/shaking/M3;

    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/M3$a;->a:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/M3$a;->b:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/M3$a;->c:Z

    iget-boolean v5, p1, Lcom/android/tools/r8/shaking/M3$a;->e:Z

    iget-boolean v6, p1, Lcom/android/tools/r8/shaking/M3$a;->f:Z

    iget-boolean v8, p1, Lcom/android/tools/r8/shaking/M3$a;->h:Z

    iget-boolean v9, p1, Lcom/android/tools/r8/shaking/M3$a;->i:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/tools/r8/shaking/M3;-><init>(ZZZZZZZZZ)V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/F4;->m:Lcom/android/tools/r8/shaking/M3;

    new-instance p1, Lcom/android/tools/r8/internal/be0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/be0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/F4;->n:Lcom/android/tools/r8/internal/be0;

    return-void
.end method
