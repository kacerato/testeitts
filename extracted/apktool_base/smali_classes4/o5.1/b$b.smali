.class public Lo5/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final e:[F

.field public f:F

.field public g:F

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lo5/b$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lo5/b$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lo5/b$b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lo5/b$b;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/16 v0, 0x10

    .line 6
    new-array v0, v0, [F

    iput-object v0, p0, Lo5/b$b;->e:[F

    return-void
.end method

.method public synthetic constructor <init>(Lo5/b$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo5/b$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lo5/b$b;)I
    .locals 0

    iget p0, p0, Lo5/b$b;->h:I

    return p0
.end method

.method public static synthetic b(Lo5/b$b;I)I
    .locals 0

    iput p1, p0, Lo5/b$b;->h:I

    return p1
.end method

.method public static synthetic c(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, Lo5/b$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static synthetic d(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, Lo5/b$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static synthetic e(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, Lo5/b$b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static synthetic f(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, Lo5/b$b;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static synthetic g(Lo5/b$b;)[F
    .locals 0

    iget-object p0, p0, Lo5/b$b;->e:[F

    return-object p0
.end method

.method public static synthetic h(Lo5/b$b;)F
    .locals 0

    iget p0, p0, Lo5/b$b;->f:F

    return p0
.end method

.method public static synthetic i(Lo5/b$b;F)F
    .locals 0

    iput p1, p0, Lo5/b$b;->f:F

    return p1
.end method

.method public static synthetic j(Lo5/b$b;)F
    .locals 0

    iget p0, p0, Lo5/b$b;->g:F

    return p0
.end method

.method public static synthetic k(Lo5/b$b;F)F
    .locals 0

    iput p1, p0, Lo5/b$b;->g:F

    return p1
.end method
