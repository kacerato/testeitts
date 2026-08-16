.class public LC5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LC5/b$a;
    }
.end annotation


# instance fields
.field public A:LD5/m;

.field public B:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public C:I

.field public D:LD5/b;

.field public E:I

.field public F:LD5/l;

.field public G:LD5/j;

.field public H:Z

.field public I:LD5/n;

.field public J:Z

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

.field public O:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public P:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

.field public Q:LC5/a;

.field public R:Z

.field public a:Z

.field public b:LD5/h;

.field public c:LD5/k;

.field public d:LD5/d;

.field public e:LD5/a;

.field public f:LD5/i;

.field public g:LD5/e;

.field public h:Ljava/lang/Object;

.field public i:I

.field public j:Ljava/lang/Object;

.field public k:LD5/f;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:LC5/b$a;

.field public o:Ljava/lang/String;

.field public p:[LC5/b;

.field public q:[Ljava/lang/String;

.field public r:I

.field public s:I

.field public t:Z

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:Z

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LC5/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insComponent"
        }
    .end annotation

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 449
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 450
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 451
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 452
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 453
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 454
    iput v2, p0, LC5/b;->C:I

    .line 455
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 456
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 457
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 458
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 459
    iput-object p1, p0, LC5/b;->Q:LC5/a;

    .line 460
    sget-object p1, LC5/b$a;->Component:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    return-void
.end method

.method public constructor <init>(LC5/a;Ljava/lang/Object;LD5/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "insComponent",
            "listItem",
            "insEntryListCallback"
        }
    .end annotation

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 463
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 464
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 465
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 466
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 467
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 468
    iput v2, p0, LC5/b;->C:I

    .line 469
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 470
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 471
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 472
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 473
    iput-object p1, p0, LC5/b;->Q:LC5/a;

    .line 474
    sget-object p1, LC5/b$a;->ComponentList:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 475
    iput-object p2, p0, LC5/b;->j:Ljava/lang/Object;

    .line 476
    iput-object p3, p0, LC5/b;->f:LD5/i;

    return-void
.end method

.method public constructor <init>(LD5/a;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonEntryCallback",
            "title"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 256
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 257
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 258
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 259
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 260
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 261
    iput v2, p0, LC5/b;->C:I

    .line 262
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 263
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 264
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 265
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 266
    iput-object p1, p0, LC5/b;->e:LD5/a;

    .line 267
    sget-object p1, LC5/b$a;->Button:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 268
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LD5/b;Ljava/lang/String;LC5/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buttonViewCallBack",
            "title",
            "type"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 147
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 148
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 149
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 150
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 151
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 152
    iput v2, p0, LC5/b;->C:I

    .line 153
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 154
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 155
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 156
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 157
    iput-object p1, p0, LC5/b;->D:LD5/b;

    .line 158
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 159
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    return-void
.end method

.method public constructor <init>(LD5/b;Ljava/lang/String;LC5/b$a;LD5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buttonViewCallBack",
            "title",
            "type",
            "refreshBackgroundListener"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 162
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 163
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 164
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 165
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 166
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 167
    iput v2, p0, LC5/b;->C:I

    .line 168
    iput v1, p0, LC5/b;->E:I

    .line 169
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 170
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 171
    iput-object p1, p0, LC5/b;->D:LD5/b;

    .line 172
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 173
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    .line 174
    iput-object p4, p0, LC5/b;->F:LD5/l;

    return-void
.end method

.method public constructor <init>(LD5/d;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentEntryCallback",
            "title"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 117
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 118
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 119
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 120
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 121
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 122
    iput v2, p0, LC5/b;->C:I

    .line 123
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 125
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 126
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 127
    iput-object p1, p0, LC5/b;->d:LD5/d;

    .line 128
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 129
    sget-object p1, LC5/b$a;->ComponentEntry:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    return-void
.end method

.method public constructor <init>(LD5/e;ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "customViewCallbacks",
            "customView",
            "object"
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 352
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 353
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 354
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 355
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 356
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 357
    iput v2, p0, LC5/b;->C:I

    .line 358
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 359
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 360
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 361
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 362
    iput-object p1, p0, LC5/b;->g:LD5/e;

    .line 363
    sget-object p1, LC5/b$a;->CustomView:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 364
    iput p2, p0, LC5/b;->i:I

    .line 365
    iput-object p3, p0, LC5/b;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LD5/e;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customViewCallbacks",
            "object"
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 368
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 369
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 370
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 371
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 372
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 373
    iput v2, p0, LC5/b;->C:I

    .line 374
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 375
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 376
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 377
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 378
    iput-object p1, p0, LC5/b;->g:LD5/e;

    .line 379
    sget-object p1, LC5/b$a;->CustomView:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 380
    iput-object p2, p0, LC5/b;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LD5/h;LD5/i;Ljava/lang/Object;LC5/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "insEntryListCallback",
            "listItem",
            "type"
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, LC5/b;->a:Z

    const/4 v1, -0x1

    .line 319
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 320
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 321
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 322
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 323
    iput v2, p0, LC5/b;->C:I

    .line 324
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 325
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 326
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 327
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 328
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 329
    iput-object v1, p0, LC5/b;->l:Ljava/lang/String;

    .line 330
    iput-object p4, p0, LC5/b;->n:LC5/b$a;

    .line 331
    const-string p1, ""

    iput-object p1, p0, LC5/b;->o:Ljava/lang/String;

    .line 332
    iput-object p2, p0, LC5/b;->f:LD5/i;

    .line 333
    iput-object p3, p0, LC5/b;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 71
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 72
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 73
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 74
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 75
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 76
    iput v2, p0, LC5/b;->C:I

    .line 77
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 79
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 80
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 81
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 82
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 83
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type",
            "slideMultiplier"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 177
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 178
    iput v1, p0, LC5/b;->s:I

    const/4 v2, 0x0

    .line 179
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 180
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 181
    iput v2, p0, LC5/b;->C:I

    .line 182
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 184
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 185
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 186
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 187
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 188
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    .line 189
    iput p4, p0, LC5/b;->u:F

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type",
            "minValue",
            "maxValue",
            "SliderStep"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 222
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 223
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 224
    iput v2, p0, LC5/b;->u:F

    .line 225
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 226
    iput v2, p0, LC5/b;->C:I

    .line 227
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 228
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 229
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 230
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 231
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 232
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 233
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    .line 234
    iput p4, p0, LC5/b;->v:F

    .line 235
    iput p5, p0, LC5/b;->w:F

    .line 236
    iput p6, p0, LC5/b;->x:F

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;FFFZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type",
            "minValue",
            "maxValue",
            "SliderStep",
            "clampToBounds"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 239
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 240
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 241
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 242
    iput v2, p0, LC5/b;->C:I

    .line 243
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 244
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 245
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 246
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 247
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 248
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 249
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    .line 250
    iput p4, p0, LC5/b;->v:F

    .line 251
    iput p5, p0, LC5/b;->w:F

    .line 252
    iput p6, p0, LC5/b;->x:F

    .line 253
    iput-boolean p7, p0, LC5/b;->y:Z

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;FI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type",
            "slideMultiplier",
            "backgroundColor"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 192
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 193
    iput v1, p0, LC5/b;->s:I

    const/4 v1, 0x0

    .line 194
    iput v1, p0, LC5/b;->v:F

    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, p0, LC5/b;->w:F

    iput v1, p0, LC5/b;->x:F

    .line 195
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v1, 0x0

    .line 196
    iput v1, p0, LC5/b;->C:I

    const/4 v2, 0x0

    .line 197
    iput-object v2, p0, LC5/b;->F:LD5/l;

    .line 198
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 199
    iput-boolean v1, p0, LC5/b;->R:Z

    .line 200
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 201
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 202
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    .line 203
    iput p4, p0, LC5/b;->u:F

    .line 204
    iput p5, p0, LC5/b;->E:I

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;FLD5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type",
            "slideMultiplier",
            "refreshBackgroundListener"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 207
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 208
    iput v1, p0, LC5/b;->s:I

    const/4 v2, 0x0

    .line 209
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 210
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 211
    iput v2, p0, LC5/b;->C:I

    .line 212
    iput v1, p0, LC5/b;->E:I

    .line 213
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 214
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 215
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 216
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 217
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    .line 218
    iput p4, p0, LC5/b;->u:F

    .line 219
    iput-object p5, p0, LC5/b;->F:LD5/l;

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;LD5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type",
            "refreshBackgroundListener"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 132
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 133
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 134
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 135
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 136
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 137
    iput v2, p0, LC5/b;->C:I

    .line 138
    iput v1, p0, LC5/b;->E:I

    .line 139
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 140
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 141
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 142
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 143
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    .line 144
    iput-object p4, p0, LC5/b;->F:LD5/l;

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type",
            "context"
        }
    .end annotation

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    .line 270
    iput-boolean p4, p0, LC5/b;->a:Z

    .line 271
    const-string v0, ""

    iput-object v0, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v0, -0x1

    .line 272
    iput v0, p0, LC5/b;->s:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 273
    iput v1, p0, LC5/b;->u:F

    const/4 v1, 0x0

    .line 274
    iput v1, p0, LC5/b;->v:F

    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, p0, LC5/b;->w:F

    iput v1, p0, LC5/b;->x:F

    .line 275
    iput-boolean p4, p0, LC5/b;->y:Z

    const/4 v1, 0x0

    .line 276
    iput v1, p0, LC5/b;->C:I

    .line 277
    iput v0, p0, LC5/b;->E:I

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, LC5/b;->F:LD5/l;

    .line 279
    iput-boolean p4, p0, LC5/b;->J:Z

    .line 280
    iput-boolean v1, p0, LC5/b;->R:Z

    .line 281
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 282
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 283
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type",
            "inputFileFormats"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, LC5/b;->a:Z

    const/4 v1, -0x1

    .line 286
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 287
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 288
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 289
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 290
    iput v2, p0, LC5/b;->C:I

    .line 291
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 292
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 293
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 294
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 295
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 296
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 297
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    .line 298
    iput-object p4, p0, LC5/b;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type",
            "autoSetValue"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 86
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 87
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 88
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 89
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 90
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 91
    iput v2, p0, LC5/b;->C:I

    .line 92
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 94
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 95
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 96
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 97
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 98
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    .line 99
    invoke-virtual {p0, p4}, LC5/b;->j(Z)V

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LC5/b$a;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "type",
            "extra"
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 336
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 337
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 338
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 339
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 340
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 341
    iput v2, p0, LC5/b;->C:I

    .line 342
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 343
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 344
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 345
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 346
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 347
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 348
    iput-object p3, p0, LC5/b;->n:LC5/b$a;

    .line 349
    iput-object p4, p0, LC5/b;->q:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;LD5/i;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "inputFileFormats",
            "insEntryListCallback",
            "listItem"
        }
    .end annotation

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 301
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 302
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 303
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 304
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 305
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 306
    iput v2, p0, LC5/b;->C:I

    .line 307
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 308
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 309
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 310
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 311
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 312
    iput-object v1, p0, LC5/b;->l:Ljava/lang/String;

    .line 313
    sget-object p1, LC5/b$a;->FileListItem:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 314
    iput-object p2, p0, LC5/b;->o:Ljava/lang/String;

    .line 315
    iput-object p3, p0, LC5/b;->f:LD5/i;

    .line 316
    iput-object p4, p0, LC5/b;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "itens"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LD5/h;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 416
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 417
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 418
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 419
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 420
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 421
    iput v2, p0, LC5/b;->C:I

    .line 422
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 423
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 424
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 425
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 426
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 427
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 428
    sget-object p1, LC5/b$a;->Dropdown:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 429
    iput-object p3, p0, LC5/b;->z:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insEntryCallBack",
            "title",
            "itens",
            "type",
            "dropDownName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LD5/h;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "LC5/b$a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 432
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 433
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 434
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 435
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 436
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 437
    iput v2, p0, LC5/b;->C:I

    .line 438
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 439
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 440
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 441
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 442
    iput-object p1, p0, LC5/b;->b:LD5/h;

    .line 443
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 444
    iput-object p4, p0, LC5/b;->n:LC5/b$a;

    .line 445
    iput-object p3, p0, LC5/b;->z:Ljava/util/List;

    .line 446
    iput-object p5, p0, LC5/b;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LD5/k;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectEntryCallback",
            "title"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 102
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 103
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 104
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 105
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 106
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 107
    iput v2, p0, LC5/b;->C:I

    .line 108
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 110
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 111
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 112
    iput-object p1, p0, LC5/b;->c:LD5/k;

    .line 113
    iput-object p2, p0, LC5/b;->l:Ljava/lang/String;

    .line 114
    sget-object p1, LC5/b$a;->GameObject:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;ILD5/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tabs",
            "selectedTab",
            "tabCallbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "LD5/m;",
            ")V"
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 400
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 401
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 402
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 403
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 404
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 405
    iput v2, p0, LC5/b;->C:I

    .line 406
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 407
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 408
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 409
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 410
    iput-object p1, p0, LC5/b;->B:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 411
    iput-object p3, p0, LC5/b;->A:LD5/m;

    .line 412
    sget-object p1, LC5/b$a;->Tab:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 413
    iput p2, p0, LC5/b;->C:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "fontSize"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 18
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 19
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 21
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 22
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 23
    iput v2, p0, LC5/b;->C:I

    .line 24
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 26
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 27
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 28
    iput-object v1, p0, LC5/b;->b:LD5/h;

    .line 29
    iput-object p1, p0, LC5/b;->l:Ljava/lang/String;

    .line 30
    sget-object p1, LC5/b$a;->NoteText:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 31
    iput p2, p0, LC5/b;->r:I

    .line 32
    iput-boolean v0, p0, LC5/b;->t:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "fontSize",
            "color"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 53
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 54
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 56
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 57
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 58
    iput v2, p0, LC5/b;->C:I

    .line 59
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 61
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 62
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 63
    iput-object v1, p0, LC5/b;->b:LD5/h;

    .line 64
    iput-object p1, p0, LC5/b;->l:Ljava/lang/String;

    .line 65
    sget-object p1, LC5/b$a;->NoteText:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 66
    iput p2, p0, LC5/b;->r:I

    .line 67
    iput p3, p0, LC5/b;->s:I

    .line 68
    iput-boolean v0, p0, LC5/b;->t:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILD5/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "fontSize",
            "updatableNoteText"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 35
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 36
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 38
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 39
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 40
    iput v2, p0, LC5/b;->C:I

    .line 41
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 43
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 44
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 45
    iput-object v1, p0, LC5/b;->b:LD5/h;

    .line 46
    iput-object p1, p0, LC5/b;->l:Ljava/lang/String;

    .line 47
    sget-object p1, LC5/b$a;->NoteText:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 48
    iput p2, p0, LC5/b;->r:I

    .line 49
    iput-boolean v0, p0, LC5/b;->t:Z

    .line 50
    iput-object p3, p0, LC5/b;->I:LD5/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LC5/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 3
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 6
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 7
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 8
    iput v2, p0, LC5/b;->C:I

    .line 9
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 11
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 12
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 13
    iput-object v1, p0, LC5/b;->b:LD5/h;

    .line 14
    iput-object p1, p0, LC5/b;->l:Ljava/lang/String;

    .line 15
    iput-object p2, p0, LC5/b;->n:LC5/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "type",
            "vectorEntries"
        }
    .end annotation

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 478
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 479
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 480
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 481
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 482
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 483
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 484
    iput v2, p0, LC5/b;->C:I

    .line 485
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 486
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 487
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 488
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 489
    iput-object p1, p0, LC5/b;->l:Ljava/lang/String;

    .line 490
    iput-object p2, p0, LC5/b;->n:LC5/b$a;

    .line 491
    iput-object p3, p0, LC5/b;->p:[LC5/b;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ILD5/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tabs",
            "selectedTab",
            "tabCallbacks"
        }
    .end annotation

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, LC5/b;->a:Z

    .line 383
    const-string v1, ""

    iput-object v1, p0, LC5/b;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 384
    iput v1, p0, LC5/b;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 385
    iput v2, p0, LC5/b;->u:F

    const/4 v2, 0x0

    .line 386
    iput v2, p0, LC5/b;->v:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, LC5/b;->w:F

    iput v2, p0, LC5/b;->x:F

    .line 387
    iput-boolean v0, p0, LC5/b;->y:Z

    const/4 v2, 0x0

    .line 388
    iput v2, p0, LC5/b;->C:I

    .line 389
    iput v1, p0, LC5/b;->E:I

    const/4 v1, 0x0

    .line 390
    iput-object v1, p0, LC5/b;->F:LD5/l;

    .line 391
    iput-boolean v0, p0, LC5/b;->J:Z

    .line 392
    iput-boolean v2, p0, LC5/b;->R:Z

    .line 393
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LC5/b;->B:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 394
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->addAll(Ljava/util/Collection;)Z

    .line 395
    iput-object p3, p0, LC5/b;->A:LD5/m;

    .line 396
    sget-object p1, LC5/b$a;->Tab:LC5/b$a;

    iput-object p1, p0, LC5/b;->n:LC5/b$a;

    .line 397
    iput p2, p0, LC5/b;->C:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, LC5/b;->g:LD5/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LD5/e;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LC5/b;->R:Z

    const/4 v0, 0x0

    iput-object v0, p0, LC5/b;->b:LD5/h;

    iput-object v0, p0, LC5/b;->e:LD5/a;

    iput-object v0, p0, LC5/b;->f:LD5/i;

    iput-object v0, p0, LC5/b;->g:LD5/e;

    iput-object v0, p0, LC5/b;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, LC5/b;->i:I

    iput-object v0, p0, LC5/b;->j:Ljava/lang/Object;

    iput-object v0, p0, LC5/b;->k:LD5/f;

    iput-object v0, p0, LC5/b;->l:Ljava/lang/String;

    iput-object v0, p0, LC5/b;->n:LC5/b$a;

    iput-object v0, p0, LC5/b;->o:Ljava/lang/String;

    iput-object v0, p0, LC5/b;->p:[LC5/b;

    iput-object v0, p0, LC5/b;->q:[Ljava/lang/String;

    iget-object v1, p0, LC5/b;->Q:LC5/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LC5/a;->a()V

    :cond_0
    iput-object v0, p0, LC5/b;->Q:LC5/a;

    iput-object v0, p0, LC5/b;->O:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iput-object v0, p0, LC5/b;->P:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "component",
            "animationEntryName",
            "animationEntryType"
        }
    .end annotation

    iput-object p2, p0, LC5/b;->O:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    const/4 v0, 0x0

    iput-object v0, p0, LC5/b;->P:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1, v0, p3, p4}, LC5/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "component",
            "animationEntryName",
            "animationEntryType"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, LC5/b;->O:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iput-object p2, p0, LC5/b;->P:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {p2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1, v0, p3, p4}, LC5/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "animationObjectUID",
            "component",
            "animationEntryName",
            "animationEntryType"
        }
    .end annotation

    iput-object p2, p0, LC5/b;->O:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    const/4 v0, 0x0

    iput-object v0, p0, LC5/b;->P:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0, p3, p4}, LC5/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "animationObjectUID",
            "animationComponentUID",
            "animationEntryName",
            "animationEntryType"
        }
    .end annotation

    iput-object p1, p0, LC5/b;->K:Ljava/lang/String;

    iput-object p2, p0, LC5/b;->L:Ljava/lang/String;

    iput-object p3, p0, LC5/b;->M:Ljava/lang/String;

    iput-object p4, p0, LC5/b;->N:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    return-object p0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, LC5/b;->R:Z

    return v0
.end method

.method public j(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoSetValue"
        }
    .end annotation

    iput-boolean p1, p0, LC5/b;->a:Z

    return-void
.end method

.method public k(I)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundColor"
        }
    .end annotation

    iput p1, p0, LC5/b;->E:I

    return-object p0
.end method

.method public l(Z)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableExtractUi"
        }
    .end annotation

    iput-boolean p1, p0, LC5/b;->J:Z

    return-object p0
.end method

.method public m(LD5/j;)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longClickListener"
        }
    .end annotation

    iput-object p1, p0, LC5/b;->G:LD5/j;

    return-object p0
.end method

.method public n(Z)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vectorEntryWrapContent"
        }
    .end annotation

    iput-boolean p1, p0, LC5/b;->H:Z

    return-object p0
.end method
