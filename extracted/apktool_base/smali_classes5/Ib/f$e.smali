.class public LIb/f$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIb/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:LIb/f$a;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public d:I

.field public e:I

.field public final f:LIb/f$c;

.field public g:Z


# direct methods
.method public constructor <init>(LIb/f$a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "uv",
            "normal"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LIb/f$c;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, LIb/f$c;-><init>(D)V

    iput-object v0, p0, LIb/f$e;->f:LIb/f$c;

    .line 3
    new-instance v0, LIb/f$a;

    invoke-direct {v0, p1}, LIb/f$a;-><init>(LIb/f$a;)V

    iput-object v0, p0, LIb/f$e;->a:LIb/f$a;

    .line 4
    iput-object p2, p0, LIb/f$e;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 5
    iput-object p3, p0, LIb/f$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vector3",
            "uv",
            "normal"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, LIb/f$c;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, LIb/f$c;-><init>(D)V

    iput-object v0, p0, LIb/f$e;->f:LIb/f$c;

    .line 8
    new-instance v0, LIb/f$a;

    invoke-direct {v0, p1}, LIb/f$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, LIb/f$e;->a:LIb/f$a;

    .line 9
    iput-object p2, p0, LIb/f$e;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 10
    iput-object p3, p0, LIb/f$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic a(LIb/f$e;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 0

    iget-object p0, p0, LIb/f$e;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object p0
.end method

.method public static synthetic b(LIb/f$e;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, LIb/f$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static synthetic c(LIb/f$e;)Z
    .locals 0

    iget-boolean p0, p0, LIb/f$e;->g:Z

    return p0
.end method

.method public static synthetic d(LIb/f$e;Z)Z
    .locals 0

    iput-boolean p1, p0, LIb/f$e;->g:Z

    return p1
.end method

.method public static synthetic e(LIb/f$e;)I
    .locals 0

    iget p0, p0, LIb/f$e;->e:I

    return p0
.end method

.method public static synthetic f(LIb/f$e;I)I
    .locals 0

    iput p1, p0, LIb/f$e;->e:I

    return p1
.end method

.method public static synthetic g(LIb/f$e;)I
    .locals 2

    iget v0, p0, LIb/f$e;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LIb/f$e;->e:I

    return v0
.end method

.method public static synthetic h(LIb/f$e;)LIb/f$a;
    .locals 0

    iget-object p0, p0, LIb/f$e;->a:LIb/f$a;

    return-object p0
.end method

.method public static synthetic i(LIb/f$e;)LIb/f$c;
    .locals 0

    iget-object p0, p0, LIb/f$e;->f:LIb/f$c;

    return-object p0
.end method

.method public static synthetic j(LIb/f$e;)I
    .locals 0

    iget p0, p0, LIb/f$e;->d:I

    return p0
.end method

.method public static synthetic k(LIb/f$e;I)I
    .locals 0

    iput p1, p0, LIb/f$e;->d:I

    return p1
.end method
