.class public final Lcom/android/tools/r8/internal/wr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public b:I

.field public final c:Lcom/android/tools/r8/graph/A2;

.field public d:I

.field public e:Lcom/android/tools/r8/internal/B60;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/wr;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/wr;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/wr;->e:Lcom/android/tools/r8/internal/B60;

    iput-object p1, p0, Lcom/android/tools/r8/internal/wr;->a:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wr;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/wr;->f:Ljava/util/ArrayList;

    return-void
.end method
