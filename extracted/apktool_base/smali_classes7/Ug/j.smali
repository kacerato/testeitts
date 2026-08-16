.class public final synthetic LUg/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic A:Lorg/ITsMagic/Atlas/a$c;

.field public final synthetic B:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic C:I

.field public final synthetic b:Lorg/ITsMagic/Atlas/BounceGIRasterizer;

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

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;

.field public final synthetic q:J

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;

.field public final synthetic u:F

.field public final synthetic v:Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;

.field public final synthetic w:LBb/b;

.field public final synthetic x:J

.field public final synthetic y:Z

.field public final synthetic z:Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;


# direct methods
.method public synthetic constructor <init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer;IIJJJJJJJJJJJLorg/ITsMagic/Atlas/BounceGIRasterizer$k;JJJLorg/ITsMagic/Atlas/BounceGIRasterizer$i;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;LBb/b;JZLorg/ITsMagic/Atlas/BounceGIRasterizer$h;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, LUg/j;->b:Lorg/ITsMagic/Atlas/BounceGIRasterizer;

    move v1, p2

    iput v1, v0, LUg/j;->c:I

    move v1, p3

    iput v1, v0, LUg/j;->d:I

    move-wide v1, p4

    iput-wide v1, v0, LUg/j;->e:J

    move-wide v1, p6

    iput-wide v1, v0, LUg/j;->f:J

    move-wide v1, p8

    iput-wide v1, v0, LUg/j;->g:J

    move-wide v1, p10

    iput-wide v1, v0, LUg/j;->h:J

    move-wide v1, p12

    iput-wide v1, v0, LUg/j;->i:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, LUg/j;->j:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, LUg/j;->k:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, LUg/j;->l:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, LUg/j;->m:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, LUg/j;->n:J

    move-wide/from16 v1, p24

    iput-wide v1, v0, LUg/j;->o:J

    move-object/from16 v1, p26

    iput-object v1, v0, LUg/j;->p:Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;

    move-wide/from16 v1, p27

    iput-wide v1, v0, LUg/j;->q:J

    move-wide/from16 v1, p29

    iput-wide v1, v0, LUg/j;->r:J

    move-wide/from16 v1, p31

    iput-wide v1, v0, LUg/j;->s:J

    move-object/from16 v1, p33

    iput-object v1, v0, LUg/j;->t:Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;

    move/from16 v1, p34

    iput v1, v0, LUg/j;->u:F

    move-object/from16 v1, p35

    iput-object v1, v0, LUg/j;->v:Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;

    move-object/from16 v1, p36

    iput-object v1, v0, LUg/j;->w:LBb/b;

    move-wide/from16 v1, p37

    iput-wide v1, v0, LUg/j;->x:J

    move/from16 v1, p39

    iput-boolean v1, v0, LUg/j;->y:Z

    move-object/from16 v1, p40

    iput-object v1, v0, LUg/j;->z:Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;

    move-object/from16 v1, p41

    iput-object v1, v0, LUg/j;->A:Lorg/ITsMagic/Atlas/a$c;

    move-object/from16 v1, p42

    iput-object v1, v0, LUg/j;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v1, p43

    iput v1, v0, LUg/j;->C:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 46

    move-object/from16 v0, p0

    iget-object v1, v0, LUg/j;->b:Lorg/ITsMagic/Atlas/BounceGIRasterizer;

    iget v2, v0, LUg/j;->c:I

    iget v3, v0, LUg/j;->d:I

    iget-wide v4, v0, LUg/j;->e:J

    iget-wide v6, v0, LUg/j;->f:J

    iget-wide v8, v0, LUg/j;->g:J

    iget-wide v10, v0, LUg/j;->h:J

    iget-wide v12, v0, LUg/j;->i:J

    iget-wide v14, v0, LUg/j;->j:J

    move-object/from16 v44, v1

    move/from16 v45, v2

    iget-wide v1, v0, LUg/j;->k:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, LUg/j;->l:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, LUg/j;->m:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, LUg/j;->n:J

    move-wide/from16 v22, v1

    iget-wide v1, v0, LUg/j;->o:J

    move-wide/from16 v24, v1

    iget-object v1, v0, LUg/j;->p:Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;

    move-object/from16 v26, v1

    iget-wide v1, v0, LUg/j;->q:J

    move-wide/from16 v27, v1

    iget-wide v1, v0, LUg/j;->r:J

    move-wide/from16 v29, v1

    iget-wide v1, v0, LUg/j;->s:J

    move-wide/from16 v31, v1

    iget-object v1, v0, LUg/j;->t:Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;

    move-object/from16 v33, v1

    iget v1, v0, LUg/j;->u:F

    move/from16 v34, v1

    iget-object v1, v0, LUg/j;->v:Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;

    move-object/from16 v35, v1

    iget-object v1, v0, LUg/j;->w:LBb/b;

    move-object/from16 v36, v1

    iget-wide v1, v0, LUg/j;->x:J

    move-wide/from16 v37, v1

    iget-boolean v1, v0, LUg/j;->y:Z

    move/from16 v39, v1

    iget-object v1, v0, LUg/j;->z:Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;

    move-object/from16 v40, v1

    iget-object v1, v0, LUg/j;->A:Lorg/ITsMagic/Atlas/a$c;

    move-object/from16 v41, v1

    iget-object v1, v0, LUg/j;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v42, v1

    iget v1, v0, LUg/j;->C:I

    move/from16 v43, v1

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static/range {v1 .. v43}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->b(Lorg/ITsMagic/Atlas/BounceGIRasterizer;IIJJJJJJJJJJJLorg/ITsMagic/Atlas/BounceGIRasterizer$k;JJJLorg/ITsMagic/Atlas/BounceGIRasterizer$i;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;LBb/b;JZLorg/ITsMagic/Atlas/BounceGIRasterizer$h;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
