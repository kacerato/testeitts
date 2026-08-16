.class public Lorg/ITsMagic/Atlas/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lorg/ITsMagic/Atlas/b;

.field public final b:Lorg/ITsMagic/Atlas/b;

.field public final c:Lorg/ITsMagic/Atlas/b;

.field public final d:LTb/a;

.field public final e:LTb/a;

.field public final f:I

.field public g:Lorg/ITsMagic/Atlas/b;

.field public h:LTb/a;

.field public i:LTb/a;

.field public j:I


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/b;Lorg/ITsMagic/Atlas/b;Lorg/ITsMagic/Atlas/b;LTb/a;LTb/a;I)V
    .locals 0
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
            "firstPass",
            "readPass",
            "writePass",
            "readBuffer",
            "writeBuffer",
            "totalIterations"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/ITsMagic/Atlas/b$d;->a:Lorg/ITsMagic/Atlas/b;

    .line 4
    iput-object p2, p0, Lorg/ITsMagic/Atlas/b$d;->b:Lorg/ITsMagic/Atlas/b;

    .line 5
    iput-object p3, p0, Lorg/ITsMagic/Atlas/b$d;->c:Lorg/ITsMagic/Atlas/b;

    .line 6
    iput-object p4, p0, Lorg/ITsMagic/Atlas/b$d;->d:LTb/a;

    .line 7
    iput-object p5, p0, Lorg/ITsMagic/Atlas/b$d;->e:LTb/a;

    .line 8
    iput p6, p0, Lorg/ITsMagic/Atlas/b$d;->f:I

    .line 9
    iput-object p1, p0, Lorg/ITsMagic/Atlas/b$d;->g:Lorg/ITsMagic/Atlas/b;

    .line 10
    iput-object p5, p0, Lorg/ITsMagic/Atlas/b$d;->h:LTb/a;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ITsMagic/Atlas/b;Lorg/ITsMagic/Atlas/b;Lorg/ITsMagic/Atlas/b;LTb/a;LTb/a;ILorg/ITsMagic/Atlas/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/ITsMagic/Atlas/b$d;-><init>(Lorg/ITsMagic/Atlas/b;Lorg/ITsMagic/Atlas/b;Lorg/ITsMagic/Atlas/b;LTb/a;LTb/a;I)V

    return-void
.end method

.method public static synthetic a(Lorg/ITsMagic/Atlas/b$d;)I
    .locals 0

    iget p0, p0, Lorg/ITsMagic/Atlas/b$d;->f:I

    return p0
.end method

.method public static synthetic b(Lorg/ITsMagic/Atlas/b$d;)LTb/a;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/b$d;->e:LTb/a;

    return-object p0
.end method

.method public static synthetic c(Lorg/ITsMagic/Atlas/b$d;)LTb/a;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/b$d;->d:LTb/a;

    return-object p0
.end method

.method public static synthetic d(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/b$d;->c:Lorg/ITsMagic/Atlas/b;

    return-object p0
.end method

.method public static synthetic e(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/b$d;->b:Lorg/ITsMagic/Atlas/b;

    return-object p0
.end method

.method public static synthetic f(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/b$d;->a:Lorg/ITsMagic/Atlas/b;

    return-object p0
.end method

.method public static synthetic g(Lorg/ITsMagic/Atlas/b$d;)I
    .locals 0

    iget p0, p0, Lorg/ITsMagic/Atlas/b$d;->j:I

    return p0
.end method

.method public static synthetic h(Lorg/ITsMagic/Atlas/b$d;)I
    .locals 2

    iget v0, p0, Lorg/ITsMagic/Atlas/b$d;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/ITsMagic/Atlas/b$d;->j:I

    return v0
.end method

.method public static synthetic i(Lorg/ITsMagic/Atlas/b$d;)LTb/a;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/b$d;->h:LTb/a;

    return-object p0
.end method

.method public static synthetic j(Lorg/ITsMagic/Atlas/b$d;LTb/a;)LTb/a;
    .locals 0

    iput-object p1, p0, Lorg/ITsMagic/Atlas/b$d;->h:LTb/a;

    return-object p1
.end method

.method public static synthetic k(Lorg/ITsMagic/Atlas/b$d;)Lorg/ITsMagic/Atlas/b;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/b$d;->g:Lorg/ITsMagic/Atlas/b;

    return-object p0
.end method

.method public static synthetic l(Lorg/ITsMagic/Atlas/b$d;Lorg/ITsMagic/Atlas/b;)Lorg/ITsMagic/Atlas/b;
    .locals 0

    iput-object p1, p0, Lorg/ITsMagic/Atlas/b$d;->g:Lorg/ITsMagic/Atlas/b;

    return-object p1
.end method

.method public static synthetic m(Lorg/ITsMagic/Atlas/b$d;)LTb/a;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/b$d;->i:LTb/a;

    return-object p0
.end method

.method public static synthetic n(Lorg/ITsMagic/Atlas/b$d;LTb/a;)LTb/a;
    .locals 0

    iput-object p1, p0, Lorg/ITsMagic/Atlas/b$d;->i:LTb/a;

    return-object p1
.end method
