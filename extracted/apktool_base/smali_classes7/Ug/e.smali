.class public final synthetic LUg/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:J

.field public final synthetic k:J

.field public final synthetic l:J

.field public final synthetic m:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:J

.field public final synthetic q:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;

.field public final synthetic r:F

.field public final synthetic s:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;

.field public final synthetic t:F

.field public final synthetic u:LBb/b;

.field public final synthetic v:J

.field public final synthetic w:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;

.field public final synthetic x:Lorg/ITsMagic/Atlas/a$c;

.field public final synthetic y:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;IIJJJJJJJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;JJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;FLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;FLBb/b;JLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, LUg/e;->b:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;

    move v1, p2

    iput v1, v0, LUg/e;->c:I

    move v1, p3

    iput v1, v0, LUg/e;->d:I

    move-wide v1, p4

    iput-wide v1, v0, LUg/e;->e:J

    move-wide v1, p6

    iput-wide v1, v0, LUg/e;->f:J

    move-wide v1, p8

    iput-wide v1, v0, LUg/e;->g:J

    move-wide v1, p10

    iput-wide v1, v0, LUg/e;->h:J

    move-wide v1, p12

    iput-wide v1, v0, LUg/e;->i:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, LUg/e;->j:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, LUg/e;->k:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, LUg/e;->l:J

    move-object/from16 v1, p20

    iput-object v1, v0, LUg/e;->m:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;

    move-wide/from16 v1, p21

    iput-wide v1, v0, LUg/e;->n:J

    move-wide/from16 v1, p23

    iput-wide v1, v0, LUg/e;->o:J

    move-wide/from16 v1, p25

    iput-wide v1, v0, LUg/e;->p:J

    move-object/from16 v1, p27

    iput-object v1, v0, LUg/e;->q:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;

    move/from16 v1, p28

    iput v1, v0, LUg/e;->r:F

    move-object/from16 v1, p29

    iput-object v1, v0, LUg/e;->s:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;

    move/from16 v1, p30

    iput v1, v0, LUg/e;->t:F

    move-object/from16 v1, p31

    iput-object v1, v0, LUg/e;->u:LBb/b;

    move-wide/from16 v1, p32

    iput-wide v1, v0, LUg/e;->v:J

    move-object/from16 v1, p34

    iput-object v1, v0, LUg/e;->w:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;

    move-object/from16 v1, p35

    iput-object v1, v0, LUg/e;->x:Lorg/ITsMagic/Atlas/a$c;

    move-object/from16 v1, p36

    iput-object v1, v0, LUg/e;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v1, p37

    iput v1, v0, LUg/e;->z:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 40

    move-object/from16 v0, p0

    iget-object v1, v0, LUg/e;->b:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;

    iget v2, v0, LUg/e;->c:I

    iget v3, v0, LUg/e;->d:I

    iget-wide v4, v0, LUg/e;->e:J

    iget-wide v6, v0, LUg/e;->f:J

    iget-wide v8, v0, LUg/e;->g:J

    iget-wide v10, v0, LUg/e;->h:J

    iget-wide v12, v0, LUg/e;->i:J

    iget-wide v14, v0, LUg/e;->j:J

    move-object/from16 v38, v1

    move/from16 v39, v2

    iget-wide v1, v0, LUg/e;->k:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, LUg/e;->l:J

    move-wide/from16 v18, v1

    iget-object v1, v0, LUg/e;->m:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;

    move-object/from16 v20, v1

    iget-wide v1, v0, LUg/e;->n:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, LUg/e;->o:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, LUg/e;->p:J

    move-wide/from16 v25, v1

    iget-object v1, v0, LUg/e;->q:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;

    move-object/from16 v27, v1

    iget v1, v0, LUg/e;->r:F

    move/from16 v28, v1

    iget-object v1, v0, LUg/e;->s:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;

    move-object/from16 v29, v1

    iget v1, v0, LUg/e;->t:F

    move/from16 v30, v1

    iget-object v1, v0, LUg/e;->u:LBb/b;

    move-object/from16 v31, v1

    iget-wide v1, v0, LUg/e;->v:J

    move-wide/from16 v32, v1

    iget-object v1, v0, LUg/e;->w:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;

    move-object/from16 v34, v1

    iget-object v1, v0, LUg/e;->x:Lorg/ITsMagic/Atlas/a$c;

    move-object/from16 v35, v1

    iget-object v1, v0, LUg/e;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v36, v1

    iget v1, v0, LUg/e;->z:I

    move/from16 v37, v1

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static/range {v1 .. v37}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->b(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;IIJJJJJJJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;JJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;FLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;FLBb/b;JLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
