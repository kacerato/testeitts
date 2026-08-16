.class public final LNg/f$i;
.super LGg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation


# instance fields
.field public final c:Z

.field public final d:I

.field public final e:I

.field public final synthetic f:LNg/f;


# direct methods
.method public constructor <init>(LNg/f;ZII)V
    .locals 2

    iput-object p1, p0, LNg/f$i;->f:LNg/f;

    iget-object p1, p1, LNg/f;->e:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, v0, p1}, LGg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p2, p0, LNg/f$i;->c:Z

    iput p3, p0, LNg/f$i;->d:I

    iput p4, p0, LNg/f$i;->e:I

    return-void
.end method


# virtual methods
.method public m()V
    .locals 4

    iget-object v0, p0, LNg/f$i;->f:LNg/f;

    iget-boolean v1, p0, LNg/f$i;->c:Z

    iget v2, p0, LNg/f$i;->d:I

    iget v3, p0, LNg/f$i;->e:I

    invoke-virtual {v0, v1, v2, v3}, LNg/f;->G(ZII)V

    return-void
.end method
