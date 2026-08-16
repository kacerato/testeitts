.class public final LE7/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b:F

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LE7/c$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, LE7/c$b;->b:F

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, LE7/c$b;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "center",
            "radius"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LE7/c$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    iput p2, p0, LE7/c$b;->b:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LE7/c$b;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLE7/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LE7/c$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-void
.end method

.method public static a()LE7/c$b;
    .locals 1

    new-instance v0, LE7/c$b;

    invoke-direct {v0}, LE7/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, LE7/c$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, LE7/c$b;->b:F

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LE7/c$b;->c:Z

    return v0
.end method
