.class public Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;
.super Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final h:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

.field public static final i:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

.field public static final j:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

.field public static final k:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;


# instance fields
.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;-><init>(ZZZZII)V

    sput-object v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->h:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;-><init>(ZZZZII)V

    sput-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->i:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;-><init>(ZZZZII)V

    sput-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->j:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    const/4 v10, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;-><init>(ZZZZII)V

    sput-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->k:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    return-void
.end method

.method public constructor <init>(ZZZZII)V
    .locals 0

    invoke-direct {p0, p5, p6, p4}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;-><init>(IIZ)V

    iput-boolean p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->e:Z

    iput-boolean p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->f:Z

    iput-boolean p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->g:Z

    return-void
.end method
