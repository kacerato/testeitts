.class public final LJa/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public c:Laa/a;

.field public d:I

.field public e:J

.field public f:F

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LJa/a$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LJa/a$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v0, -0x80000000

    .line 4
    iput v0, p0, LJa/a$b;->d:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    iput-wide v0, p0, LJa/a$b;->e:J

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 6
    iput v0, p0, LJa/a$b;->f:F

    return-void
.end method

.method public synthetic constructor <init>(LJa/a$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, LJa/a$b;-><init>()V

    return-void
.end method
