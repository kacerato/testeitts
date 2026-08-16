.class public LM5/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK3/e$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM5/j$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM5/j$a;


# direct methods
.method public constructor <init>(LM5/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LM5/j$a$a;->a:LM5/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LM5/j$a$a;->a:LM5/j$a;

    iget-object v0, v0, LM5/j$a;->b:LM5/j;

    invoke-virtual {v0, p1}, LL5/b;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LL5/b;->n(Ljava/lang/String;)V

    return-void
.end method
