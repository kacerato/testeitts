.class public Lu8/b$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b$j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lu8/b$j;


# direct methods
.method public constructor <init>(Lu8/b$j;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$outputFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$j$a;->c:Lu8/b$j;

    iput-object p2, p0, Lu8/b$j$a;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Finish"

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b$j$a;->c:Lu8/b$j;

    iget-object v0, v0, Lu8/b$j;->b:Lu8/b;

    invoke-static {v0}, Lu8/b;->z(Lu8/b;)Lu8/b$v;

    move-result-object v0

    iget-object v1, p0, Lu8/b$j$a;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lu8/b$v;->b(Ljava/io/File;)V

    return-void
.end method
