.class public LM6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LM6/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:LM6/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LM6/b;->n:Ljava/util/List;

    new-instance v0, LM6/b$a;

    invoke-direct {v0}, LM6/b$a;-><init>()V

    iput-object v0, p0, LM6/b;->q:LM6/b$a;

    return-void
.end method

.method public static a(LK6/f;Ljava/lang/String;Ljava/lang/String;II)LM6/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "lineText",
            "lineSuffix",
            "lineNumber",
            "cursorPosition"
        }
    .end annotation

    new-instance v0, LM6/b;

    invoke-direct {v0}, LM6/b;-><init>()V

    iget-object v1, p0, LK6/f;->a:Ljava/lang/String;

    iput-object v1, v0, LM6/b;->a:Ljava/lang/String;

    iget-object v1, p0, LK6/f;->c:Ljava/lang/String;

    iput-object v1, v0, LM6/b;->b:Ljava/lang/String;

    iget v1, p0, LK6/f;->n:I

    iput v1, v0, LM6/b;->i:I

    iget-boolean v1, p0, LK6/f;->h:Z

    iput-boolean v1, v0, LM6/b;->c:Z

    iget-boolean v1, p0, LK6/f;->i:Z

    iput-boolean v1, v0, LM6/b;->d:Z

    iget-boolean v1, p0, LK6/f;->j:Z

    iput-boolean v1, v0, LM6/b;->e:Z

    iget-boolean v1, p0, LK6/f;->k:Z

    iput-boolean v1, v0, LM6/b;->f:Z

    iget-boolean v1, p0, LK6/f;->l:Z

    iput-boolean v1, v0, LM6/b;->g:Z

    iget-object v1, p0, LK6/f;->o:Ljava/lang/String;

    iput-object v1, v0, LM6/b;->h:Ljava/lang/String;

    iget-object v1, p0, LK6/f;->f:Ljava/lang/String;

    iput-object v1, v0, LM6/b;->j:Ljava/lang/String;

    iget-object v1, p0, LK6/f;->d:Ljava/lang/String;

    iput-object v1, v0, LM6/b;->k:Ljava/lang/String;

    iget-object v1, p0, LK6/f;->e:Ljava/lang/String;

    iput-object v1, v0, LM6/b;->l:Ljava/lang/String;

    iget-object v1, p0, LK6/f;->b:Ljava/lang/String;

    iput-object v1, v0, LM6/b;->m:Ljava/lang/String;

    iget-object v1, p0, LK6/f;->g:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object p0, p0, LK6/f;->g:Ljava/util/List;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    :goto_0
    iput-object p0, v0, LM6/b;->n:Ljava/util/List;

    iget-object p0, v0, LM6/b;->q:LM6/b$a;

    iput p3, p0, LM6/b$a;->c:I

    iput-object p1, p0, LM6/b$a;->a:Ljava/lang/String;

    iput-object p2, p0, LM6/b$a;->b:Ljava/lang/String;

    iput p4, p0, LM6/b$a;->d:I

    return-object v0
.end method
