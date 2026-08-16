.class public Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/BounceGIRasterizer;->w(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;

.field public final synthetic e:Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;

.field public final synthetic f:F

.field public final synthetic g:Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;

.field public final synthetic h:Z

.field public final synthetic i:LBb/b;

.field public final synthetic j:Lorg/ITsMagic/Atlas/a$c;

.field public final synthetic k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic l:I

.field public final synthetic m:Lorg/ITsMagic/Atlas/BounceGIRasterizer;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer;IILorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$rangeStart",
            "val$rangeEnd",
            "val$surfels",
            "val$hash",
            "val$maxBounceDistance",
            "val$config",
            "val$useGiVisibility",
            "val$gi",
            "val$listener",
            "val$executedCount",
            "val$total"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->m:Lorg/ITsMagic/Atlas/BounceGIRasterizer;

    iput p2, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->b:I

    iput p3, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->c:I

    iput-object p4, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->d:Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;

    iput-object p5, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->e:Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;

    iput p6, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->f:F

    iput-object p7, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->g:Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;

    iput-boolean p8, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->h:Z

    iput-object p9, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->i:LBb/b;

    iput-object p10, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->j:Lorg/ITsMagic/Atlas/a$c;

    iput-object p11, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p12, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    new-instance v9, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;-><init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;)V

    iget v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->b:I

    const/4 v10, 0x0

    move v11, v0

    move v12, v10

    :goto_0
    iget v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->c:I

    if-ge v11, v0, :cond_1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->m:Lorg/ITsMagic/Atlas/BounceGIRasterizer;

    iget-object v2, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->d:Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;

    iget-object v3, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->e:Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;

    iget v4, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->f:F

    iget-object v5, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->g:Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;

    iget-boolean v6, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->h:Z

    iget-object v7, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->i:LBb/b;

    move v1, v11

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->c(Lorg/ITsMagic/Atlas/BounceGIRasterizer;ILorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;)V

    add-int/lit8 v12, v12, 0x1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->j:Lorg/ITsMagic/Atlas/a$c;

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-lt v12, v0, :cond_0

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->m:Lorg/ITsMagic/Atlas/BounceGIRasterizer;

    iget-object v1, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    iget v2, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->l:I

    iget-object v3, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->j:Lorg/ITsMagic/Atlas/a$c;

    invoke-static {v0, v1, v2, v3}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->d(Lorg/ITsMagic/Atlas/BounceGIRasterizer;IILorg/ITsMagic/Atlas/a$c;)V

    move v12, v10

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->j:Lorg/ITsMagic/Atlas/a$c;

    if-eqz v0, :cond_2

    if-lez v12, :cond_2

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->m:Lorg/ITsMagic/Atlas/BounceGIRasterizer;

    iget-object v1, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    iget v2, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->l:I

    iget-object v3, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;->j:Lorg/ITsMagic/Atlas/a$c;

    invoke-static {v0, v1, v2, v3}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->d(Lorg/ITsMagic/Atlas/BounceGIRasterizer;IILorg/ITsMagic/Atlas/a$c;)V

    :cond_2
    return-void
.end method
