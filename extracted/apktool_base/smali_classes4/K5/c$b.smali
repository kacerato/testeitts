.class public LK5/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK5/c;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:LK5/c;


# direct methods
.method public constructor <init>(LK5/c;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$manifestFile",
            "val$outdatedFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LK5/c$b;->d:LK5/c;

    iput-object p2, p0, LK5/c$b;->b:Ljava/io/File;

    iput-object p3, p0, LK5/c$b;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LK5/c$b;->b:Ljava/io/File;

    invoke-static {v0}, LIc/o;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LK5/c$b$a;

    invoke-direct {v1, p0}, LK5/c$b$a;-><init>(LK5/c$b;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$b;->a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$b$d;)V

    return-void
.end method
