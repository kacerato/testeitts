.class public LNg/f$a;
.super LGg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNg/f;->R(ILNg/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:LNg/a;

.field public final synthetic e:LNg/f;


# direct methods
.method public varargs constructor <init>(LNg/f;Ljava/lang/String;[Ljava/lang/Object;ILNg/a;)V
    .locals 0

    iput-object p1, p0, LNg/f$a;->e:LNg/f;

    iput p4, p0, LNg/f$a;->c:I

    iput-object p5, p0, LNg/f$a;->d:LNg/a;

    invoke-direct {p0, p2, p3}, LGg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 3

    :try_start_0
    iget-object v0, p0, LNg/f$a;->e:LNg/f;

    iget v1, p0, LNg/f$a;->c:I

    iget-object v2, p0, LNg/f$a;->d:LNg/a;

    invoke-virtual {v0, v1, v2}, LNg/f;->Q(ILNg/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, LNg/f$a;->e:LNg/f;

    invoke-static {v0}, LNg/f;->a(LNg/f;)V

    :goto_0
    return-void
.end method
