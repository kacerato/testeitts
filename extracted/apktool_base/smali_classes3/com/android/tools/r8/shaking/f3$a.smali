.class public abstract Lcom/android/tools/r8/shaking/f3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/android/tools/r8/shaking/f3;",
        "B:",
        "Lcom/android/tools/r8/shaking/f3$a<",
        "TC;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/origin/Origin;

.field public b:Lcom/android/tools/r8/position/Position;

.field public c:Lcom/android/tools/r8/position/TextPosition;

.field public d:Ljava/lang/String;

.field public final e:Lcom/android/tools/r8/internal/eC;

.field public final f:Lcom/android/tools/r8/shaking/S2;

.field public g:Lcom/android/tools/r8/shaking/S2;

.field public h:Z

.field public i:Lcom/android/tools/r8/shaking/l3;

.field public j:Lcom/android/tools/r8/shaking/c3;

.field public final k:Lcom/android/tools/r8/internal/eC;

.field public l:Lcom/android/tools/r8/shaking/i4;

.field public m:Z

.field public n:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v2, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/shaking/f3$a;->e:Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/shaking/S2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/S2;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/shaking/f3$a;->f:Lcom/android/tools/r8/shaking/S2;

    new-instance v2, Lcom/android/tools/r8/shaking/S2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/S2;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/tools/r8/shaking/f3$a;->h:Z

    new-instance v3, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iput-object v3, p0, Lcom/android/tools/r8/shaking/f3$a;->k:Lcom/android/tools/r8/internal/eC;

    iput-boolean v2, p0, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object v1, p0, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/f3$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/shaking/c3;",
            ")TB;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/shaking/f3$a;->j:Lcom/android/tools/r8/shaking/c3;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3$a;->c()Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/shaking/l3;)Lcom/android/tools/r8/shaking/f3$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/shaking/l3;",
            ")TB;"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/shaking/f3$a;->i:Lcom/android/tools/r8/shaking/l3;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3$a;->c()Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/shaking/f3$a;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3$a;->c()Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Lcom/android/tools/r8/shaking/f3$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/shaking/R3;",
            ">;)TB;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3$a;->c()Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Lcom/android/tools/r8/shaking/f3;
.end method

.method public final b()Lcom/android/tools/r8/position/Position;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/f3$a;->c:Lcom/android/tools/r8/position/TextPosition;

    if-eqz v1, :cond_1

    instance-of v2, v0, Lcom/android/tools/r8/position/TextPosition;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/tools/r8/position/TextRange;

    check-cast v0, Lcom/android/tools/r8/position/TextPosition;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/position/TextRange;-><init>(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/position/TextPosition;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public abstract c()Lcom/android/tools/r8/shaking/f3$a;
.end method
