.class public LNg/f$b;
.super LGg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNg/f;->S(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:LNg/f;


# direct methods
.method public varargs constructor <init>(LNg/f;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    iput-object p1, p0, LNg/f$b;->e:LNg/f;

    iput p4, p0, LNg/f$b;->c:I

    iput-wide p5, p0, LNg/f$b;->d:J

    invoke-direct {p0, p2, p3}, LGg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LNg/f$b;->e:LNg/f;

    iget-object v0, v0, LNg/f;->s:LNg/i;

    iget v1, p0, LNg/f$b;->c:I

    iget-wide v2, p0, LNg/f$b;->d:J

    invoke-virtual {v0, v1, v2, v3}, LNg/i;->r(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, LNg/f$b;->e:LNg/f;

    invoke-static {v0}, LNg/f;->a(LNg/f;)V

    :goto_0
    return-void
.end method
