.class public LNg/f$j$c;
.super LGg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNg/f$j;->n(LNg/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LNg/l;

.field public final synthetic d:LNg/f$j;


# direct methods
.method public varargs constructor <init>(LNg/f$j;Ljava/lang/String;[Ljava/lang/Object;LNg/l;)V
    .locals 0

    iput-object p1, p0, LNg/f$j$c;->d:LNg/f$j;

    iput-object p4, p0, LNg/f$j$c;->c:LNg/l;

    invoke-direct {p0, p2, p3}, LGg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LNg/f$j$c;->d:LNg/f$j;

    iget-object v0, v0, LNg/f$j;->d:LNg/f;

    iget-object v0, v0, LNg/f;->s:LNg/i;

    iget-object v1, p0, LNg/f$j$c;->c:LNg/l;

    invoke-virtual {v0, v1}, LNg/i;->a(LNg/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, LNg/f$j$c;->d:LNg/f$j;

    iget-object v0, v0, LNg/f$j;->d:LNg/f;

    invoke-static {v0}, LNg/f;->a(LNg/f;)V

    :goto_0
    return-void
.end method
