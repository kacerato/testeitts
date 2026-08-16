.class public LNg/f$j$b;
.super LGg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNg/f$j;->a(ZLNg/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LNg/f$j;


# direct methods
.method public varargs constructor <init>(LNg/f$j;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LNg/f$j$b;->c:LNg/f$j;

    invoke-direct {p0, p2, p3}, LGg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 2

    iget-object v0, p0, LNg/f$j$b;->c:LNg/f$j;

    iget-object v0, v0, LNg/f$j;->d:LNg/f;

    iget-object v1, v0, LNg/f;->c:LNg/f$h;

    invoke-virtual {v1, v0}, LNg/f$h;->e(LNg/f;)V

    return-void
.end method
