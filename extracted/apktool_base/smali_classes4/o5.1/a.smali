.class public Lo5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public c:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public d:[[I


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo5/a;->a:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v3, 0x0

    aput p1, v1, v3

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object v1, p0, Lo5/a;->b:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-array v1, v0, [I

    aput p1, v1, v2

    aput p1, v1, v3

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object v1, p0, Lo5/a;->c:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-array v0, v0, [I

    aput p1, v0, v2

    aput p1, v0, v3

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lo5/a;->d:[[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lo5/a;->a:I

    return v0
.end method
