.class public final Lcom/google/protobuf/H$v;
.super Lcom/google/protobuf/w0$e;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H$v$b;,
        Lcom/google/protobuf/H$v$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$e<",
        "Lcom/google/protobuf/H$v;",
        ">;",
        "Lcom/google/protobuf/H$w;"
    }
.end annotation


# static fields
.field public static final A:J = 0x0L

.field public static final B:I = 0x1

.field public static final C:I = 0x8

.field public static final D:I = 0xa

.field public static final E:I = 0x14

.field public static final F:I = 0x1b

.field public static final G:I = 0x9

.field public static final H:I = 0xb

.field public static final I:I = 0x10

.field public static final J:I = 0x11

.field public static final K:I = 0x12

.field public static final L:I = 0x2a

.field public static final M:I = 0x17

.field public static final N:I = 0x1f

.field public static final O:I = 0x24

.field public static final P:I = 0x25

.field public static final Q:I = 0x27

.field public static final R:I = 0x28

.field public static final S:I = 0x29

.field public static final T:I = 0x2c

.field public static final U:I = 0x2d

.field public static final V:I = 0x3e7

.field public static final W:Lcom/google/protobuf/H$v;

.field public static final X:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$v;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public d:I

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public volatile k:Ljava/lang/Object;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public volatile r:Ljava/lang/Object;

.field public volatile s:Ljava/lang/Object;

.field public volatile t:Ljava/lang/Object;

.field public volatile u:Ljava/lang/Object;

.field public volatile v:Ljava/lang/Object;

.field public volatile w:Ljava/lang/Object;

.field public volatile x:Ljava/lang/Object;

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation
.end field

.field public z:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/H$v;

    invoke-direct {v0}, Lcom/google/protobuf/H$v;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$v;->W:Lcom/google/protobuf/H$v;

    new-instance v0, Lcom/google/protobuf/H$v$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$v$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/w0$e;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/google/protobuf/H$v;->g:Z

    .line 28
    iput-boolean v1, p0, Lcom/google/protobuf/H$v;->h:Z

    .line 29
    iput-boolean v1, p0, Lcom/google/protobuf/H$v;->i:Z

    const/4 v2, 0x1

    .line 30
    iput v2, p0, Lcom/google/protobuf/H$v;->j:I

    .line 31
    iput-object v0, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    .line 32
    iput-boolean v1, p0, Lcom/google/protobuf/H$v;->l:Z

    .line 33
    iput-boolean v1, p0, Lcom/google/protobuf/H$v;->m:Z

    .line 34
    iput-boolean v1, p0, Lcom/google/protobuf/H$v;->n:Z

    .line 35
    iput-boolean v1, p0, Lcom/google/protobuf/H$v;->o:Z

    .line 36
    iput-boolean v1, p0, Lcom/google/protobuf/H$v;->p:Z

    .line 37
    iput-boolean v2, p0, Lcom/google/protobuf/H$v;->q:Z

    .line 38
    iput-object v0, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    .line 39
    iput-object v0, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    .line 40
    iput-object v0, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    .line 41
    iput-object v0, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    .line 42
    iput-object v0, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    .line 43
    iput-object v0, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    .line 44
    iput-object v0, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 45
    iput-byte v1, p0, Lcom/google/protobuf/H$v;->z:B

    .line 46
    iput-object v0, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    .line 47
    iput-object v0, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    .line 48
    iput v2, p0, Lcom/google/protobuf/H$v;->j:I

    .line 49
    iput-object v0, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    .line 50
    iput-boolean v2, p0, Lcom/google/protobuf/H$v;->q:Z

    .line 51
    iput-object v0, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    .line 52
    iput-object v0, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    .line 53
    iput-object v0, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    .line 54
    iput-object v0, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    .line 55
    iput-object v0, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    .line 56
    iput-object v0, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    .line 57
    iput-object v0, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$d<",
            "Lcom/google/protobuf/H$v;",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;-><init>(Lcom/google/protobuf/w0$d;)V

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/protobuf/H$v;->g:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/protobuf/H$v;->h:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/protobuf/H$v;->i:Z

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/google/protobuf/H$v;->j:I

    .line 9
    iput-object p1, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    .line 10
    iput-boolean v0, p0, Lcom/google/protobuf/H$v;->l:Z

    .line 11
    iput-boolean v0, p0, Lcom/google/protobuf/H$v;->m:Z

    .line 12
    iput-boolean v0, p0, Lcom/google/protobuf/H$v;->n:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/protobuf/H$v;->o:Z

    .line 14
    iput-boolean v0, p0, Lcom/google/protobuf/H$v;->p:Z

    .line 15
    iput-boolean v1, p0, Lcom/google/protobuf/H$v;->q:Z

    .line 16
    iput-object p1, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 23
    iput-byte p1, p0, Lcom/google/protobuf/H$v;->z:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$d;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$v;-><init>(Lcom/google/protobuf/w0$d;)V

    return-void
.end method

.method public static A7([B)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static B7([BLcom/google/protobuf/d0;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static synthetic C6(Lcom/google/protobuf/H$v;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic D6(Lcom/google/protobuf/H$v;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic E6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic F6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic G6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic H6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic I6(Lcom/google/protobuf/H$v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$v;->g:Z

    return p1
.end method

.method public static synthetic J6(Lcom/google/protobuf/H$v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$v;->h:Z

    return p1
.end method

.method public static synthetic K6(Lcom/google/protobuf/H$v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$v;->i:Z

    return p1
.end method

.method public static synthetic L6(Lcom/google/protobuf/H$v;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/H$v;->j:I

    return p1
.end method

.method public static synthetic M6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic N6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic O6(Lcom/google/protobuf/H$v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$v;->l:Z

    return p1
.end method

.method public static synthetic P6(Lcom/google/protobuf/H$v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$v;->m:Z

    return p1
.end method

.method public static synthetic Q6(Lcom/google/protobuf/H$v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$v;->n:Z

    return p1
.end method

.method public static synthetic R6(Lcom/google/protobuf/H$v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$v;->o:Z

    return p1
.end method

.method public static synthetic S6(Lcom/google/protobuf/H$v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$v;->p:Z

    return p1
.end method

.method public static synthetic T6(Lcom/google/protobuf/H$v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/H$v;->q:Z

    return p1
.end method

.method public static synthetic U6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic V6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic W6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic X6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic Y6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic Z6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic a7(Lcom/google/protobuf/H$v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b7(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic c7(Lcom/google/protobuf/H$v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic d7(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic e7(Lcom/google/protobuf/H$v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic f7(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic g7(Lcom/google/protobuf/H$v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->i()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h7(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic i7(Lcom/google/protobuf/H$v;I)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v;->d:I

    return p1
.end method

.method public static j7()Lcom/google/protobuf/H$v;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$v;->W:Lcom/google/protobuf/H$v;

    return-object v0
.end method

.method public static l7()Lcom/google/protobuf/H$v$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$v;->W:Lcom/google/protobuf/H$v;

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->C7()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    return-object v0
.end method

.method public static m7(Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$v$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->W:Lcom/google/protobuf/H$v;

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->C7()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$v$b;->y7(Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$v$b;

    move-result-object p0

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$v;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static q7(Ljava/io/InputStream;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static r7(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static s7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static t7(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static u7(Lcom/google/protobuf/C;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static v7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static w7(Ljava/io/InputStream;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static x7(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static y7(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method

.method public static z7(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v;

    return-object p0
.end method


# virtual methods
.method public A2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public A5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public C2()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public C5()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C7()Lcom/google/protobuf/H$v$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/H$v;->W:Lcom/google/protobuf/H$v;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H$v$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$v$b;-><init>(Lcom/google/protobuf/H$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/H$v$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/H$v$b;-><init>(Lcom/google/protobuf/H$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/H$v$b;->y7(Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$v$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public D0()Lcom/google/protobuf/H$v$c;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->j:I

    invoke-static {v0}, Lcom/google/protobuf/H$v$c;->a(I)Lcom/google/protobuf/H$v$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$v$c;->SPEED:Lcom/google/protobuf/H$v$c;

    :cond_0
    return-object v0
.end method

.method public D3()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public D5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public F2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public J2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K2()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public M1()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public N5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public O5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v;->l:Z

    return v0
.end method

.method public Q4()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public R2()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public R3()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public T3()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public T5()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/H$v;->h:Z

    return v0
.end method

.method public V3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public X4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v;->o:Z

    return v0
.end method

.method public Y2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Y3()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    return-object v0
.end method

.method public b(I)Lcom/google/protobuf/H$P;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P;

    return-object p1
.end method

.method public b1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v;->n:Z

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$Q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public e5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/H$v;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/H$v;

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->y5()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->y5()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->y5()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->Y3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->Y3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->j1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->j1()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->j1()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->i5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->i5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->A2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->A2()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->A2()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->z2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->z2()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->n6()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->n6()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->n6()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->T5()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->T5()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->G3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->G3()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->G3()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->w1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->w1()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->J2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->J2()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->J2()Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/google/protobuf/H$v;->j:I

    iget v2, p1, Lcom/google/protobuf/H$v;->j:I

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->s1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->s1()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->s1()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->e5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->e5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->p6()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->p6()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->p6()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->O5()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->O5()Z

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->b1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->b1()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->b1()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->n2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->n2()Z

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->Y2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->Y2()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    :cond_14
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->Y2()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->b3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->b3()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    :cond_15
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->F2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->F2()Z

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    :cond_16
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->F2()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->X4()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->X4()Z

    move-result v2

    if-eq v1, v2, :cond_17

    return v3

    :cond_17
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->h()Z

    move-result v2

    if-eq v1, v2, :cond_18

    return v3

    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->h()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->i()Z

    move-result v2

    if-eq v1, v2, :cond_19

    return v3

    :cond_19
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->Q4()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->Q4()Z

    move-result v2

    if-eq v1, v2, :cond_1a

    return v3

    :cond_1a
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->Q4()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->f1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->f1()Z

    move-result v2

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->C5()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->C5()Z

    move-result v2

    if-eq v1, v2, :cond_1c

    return v3

    :cond_1c
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->C5()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->O2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->O2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v3

    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->V3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->V3()Z

    move-result v2

    if-eq v1, v2, :cond_1e

    return v3

    :cond_1e
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->V3()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->R3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->R3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v3

    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->r5()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->r5()Z

    move-result v2

    if-eq v1, v2, :cond_20

    return v3

    :cond_20
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->r5()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->D3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->D3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v3

    :cond_21
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->N5()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->N5()Z

    move-result v2

    if-eq v1, v2, :cond_22

    return v3

    :cond_22
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->N5()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->A5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->A5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v3

    :cond_23
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->K2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->K2()Z

    move-result v2

    if-eq v1, v2, :cond_24

    return v3

    :cond_24
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->K2()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->r4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->r4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v3

    :cond_25
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->v5()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->v5()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    :cond_26
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->v5()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->e1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->e1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v3

    :cond_27
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->H5()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->H5()Z

    move-result v2

    if-eq v1, v2, :cond_28

    return v3

    :cond_28
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->H5()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->o3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->o3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v3

    :cond_29
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    :cond_2a
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v3

    :cond_2b
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    return v3

    :cond_2c
    return v0
.end method

.method public f1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v;->q:Z

    return v0
.end method

.method public g(I)Lcom/google/protobuf/H$Q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$Q;

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->k7()Lcom/google/protobuf/H$v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->k7()Lcom/google/protobuf/H$v;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/H$v;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v;->X:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v1, v1, 0x2

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    iget v4, p0, Lcom/google/protobuf/H$v;->j:I

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/H$v;->g:Z

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    iget-object v4, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x10

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/google/protobuf/H$v;->l:Z

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    iget-boolean v5, p0, Lcom/google/protobuf/H$v;->m:Z

    invoke-static {v1, v5}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    iget-boolean v5, p0, Lcom/google/protobuf/H$v;->n:Z

    invoke-static {v1, v5}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    const/16 v1, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/H$v;->h:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    const/16 v1, 0x17

    iget-boolean v3, p0, Lcom/google/protobuf/H$v;->p:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_b

    const/16 v1, 0x1b

    iget-boolean v3, p0, Lcom/google/protobuf/H$v;->i:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    const/16 v1, 0x1f

    iget-boolean v3, p0, Lcom/google/protobuf/H$v;->q:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    const/16 v1, 0x24

    iget-object v3, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    const/16 v1, 0x25

    iget-object v3, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-eqz v1, :cond_f

    const/16 v1, 0x27

    iget-object v3, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_10

    const/16 v1, 0x28

    iget-object v3, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_11

    const/16 v1, 0x29

    iget-object v3, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_12

    const/16 v1, 0x2a

    iget-boolean v3, p0, Lcom/google/protobuf/H$v;->o:Z

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    const/16 v1, 0x2c

    iget-object v3, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_14

    const/16 v1, 0x2d

    iget-object v3, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_15

    iget-object v1, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_15
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->v6()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/H$v;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->y5()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->Y3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->j1()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->i5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->A2()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->z2()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->n6()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->T5()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->G3()Z

    move-result v0

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1b

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->w1()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->J2()Z

    move-result v0

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/google/protobuf/H$v;->j:I

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->s1()Z

    move-result v0

    if-eqz v0, :cond_7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->e5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->p6()Z

    move-result v0

    if-eqz v0, :cond_8

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->O5()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->b1()Z

    move-result v0

    if-eqz v0, :cond_9

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->n2()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->Y2()Z

    move-result v0

    if-eqz v0, :cond_a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->b3()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->F2()Z

    move-result v0

    if-eqz v0, :cond_b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2a

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->X4()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x17

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->i()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->Q4()Z

    move-result v0

    if-eqz v0, :cond_d

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->f1()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->C5()Z

    move-result v0

    if-eqz v0, :cond_e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x24

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->O2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->V3()Z

    move-result v0

    if-eqz v0, :cond_f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x25

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->R3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->r5()Z

    move-result v0

    if-eqz v0, :cond_10

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x27

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->D3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->N5()Z

    move-result v0

    if-eqz v0, :cond_11

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x28

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->A5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->K2()Z

    move-result v0

    if-eqz v0, :cond_12

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x29

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->r4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->v5()Z

    move-result v0

    if-eqz v0, :cond_13

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2c

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->e1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_13
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->H5()Z

    move-result v0

    if-eqz v0, :cond_14

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2d

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->o3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->d()I

    move-result v0

    if-lez v0, :cond_15

    mul-int/lit8 v1, v1, 0x25

    add-int/lit16 v1, v1, 0x3e7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/a;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v;->p:Z

    return v0
.end method

.method public i5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->j()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$v;

    const-class v2, Lcom/google/protobuf/H$v$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/google/protobuf/H$v;->z:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->d()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v;->b(I)Lcom/google/protobuf/H$P;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/H$P;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/google/protobuf/H$v;->z:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->u6()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/google/protobuf/H$v;->z:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/google/protobuf/H$v;->z:B

    return v1
.end method

.method public j1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public k7()Lcom/google/protobuf/H$v;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$v;->W:Lcom/google/protobuf/H$v;

    return-object v0
.end method

.method public n2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v;->m:Z

    return v0
.end method

.method public n6()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n7()Lcom/google/protobuf/H$v$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$v;->l7()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->n7()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parent"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$v;->p7(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$v$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->n7()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    new-instance p1, Lcom/google/protobuf/H$v;

    invoke-direct {p1}, Lcom/google/protobuf/H$v;-><init>()V

    return-object p1
.end method

.method public o3()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public p6()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p7(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/H$v$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H$v$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/H$v$b;-><init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V

    return-object v0
.end method

.method public r4()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public r5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->C7()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$v;->C7()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    return-object v0
.end method

.method public v1()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public v5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v;->i:Z

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->y6()Lcom/google/protobuf/w0$e$a;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/H$v;->e:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/H$v;->f:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    iget v3, p0, Lcom/google/protobuf/H$v;->j:I

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_2
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/H$v;->g:Z

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_3
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    const/16 v1, 0xb

    iget-object v3, p0, Lcom/google/protobuf/H$v;->k:Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x10

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/protobuf/H$v;->l:Z

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_5
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_6

    const/16 v1, 0x11

    iget-boolean v4, p0, Lcom/google/protobuf/H$v;->m:Z

    invoke-virtual {p1, v1, v4}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_6
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    const/16 v1, 0x12

    iget-boolean v4, p0, Lcom/google/protobuf/H$v;->n:Z

    invoke-virtual {p1, v1, v4}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_7
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/google/protobuf/H$v;->h:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_8
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_9

    const/16 v1, 0x17

    iget-boolean v2, p0, Lcom/google/protobuf/H$v;->p:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_9
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    const/16 v1, 0x1b

    iget-boolean v2, p0, Lcom/google/protobuf/H$v;->i:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_a
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_b

    const/16 v1, 0x1f

    iget-boolean v2, p0, Lcom/google/protobuf/H$v;->q:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_b
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_c

    const/16 v1, 0x24

    iget-object v2, p0, Lcom/google/protobuf/H$v;->r:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_c
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_d

    const/16 v1, 0x25

    iget-object v2, p0, Lcom/google/protobuf/H$v;->s:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_d
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    const/16 v1, 0x27

    iget-object v2, p0, Lcom/google/protobuf/H$v;->t:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_e
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    const/16 v1, 0x28

    iget-object v2, p0, Lcom/google/protobuf/H$v;->u:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_f
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    const/16 v1, 0x29

    iget-object v2, p0, Lcom/google/protobuf/H$v;->v:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_10
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_11

    const/16 v1, 0x2a

    iget-boolean v2, p0, Lcom/google/protobuf/H$v;->o:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->q(IZ)V

    :cond_11
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/google/protobuf/H$v;->w:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_12
    iget v1, p0, Lcom/google/protobuf/H$v;->d:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    const/16 v1, 0x2d

    iget-object v2, p0, Lcom/google/protobuf/H$v;->x:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_13
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    iget-object v2, p0, Lcom/google/protobuf/H$v;->y:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_14
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/w0$e$a;->a(ILcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public y5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public z2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v;->g:Z

    return v0
.end method
