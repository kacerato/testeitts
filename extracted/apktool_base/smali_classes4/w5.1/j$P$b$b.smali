.class public Lw5/j$P$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$P$b;->b(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lw5/j$P$b;


# direct methods
.method public constructor <init>(Lw5/j$P$b;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$ioFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$P$b$b;->b:Lw5/j$P$b;

    iput-object p2, p0, Lw5/j$P$b$b;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OPS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lw5/j$P$b$b;->b:Lw5/j$P$b;

    iget-object p1, p1, Lw5/j$P$b;->e:LZ6/g;

    invoke-virtual {p1}, LZ6/g;->q1()V

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObjectFile"
        }
    .end annotation

    iget-object v0, p0, Lw5/j$P$b$b;->b:Lw5/j$P$b;

    iget-boolean v0, v0, Lw5/j$P$b;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, LLb/k;->r(Ljava/io/File;)LMb/b;

    :cond_0
    iget-object p1, p0, Lw5/j$P$b$b;->b:Lw5/j$P$b;

    iget-object p1, p1, Lw5/j$P$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lw5/j$P$b$b;->b:Lw5/j$P$b;

    iget-object p1, p1, Lw5/j$P$b;->e:LZ6/g;

    invoke-virtual {p1}, LZ6/g;->q1()V

    return-void
.end method

.method public c(ILjava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "percentage",
            "message",
            "executed",
            "total"
        }
    .end annotation

    iget-object p2, p0, Lw5/j$P$b$b;->b:Lw5/j$P$b;

    iget-object p2, p2, Lw5/j$P$b;->e:LZ6/g;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lw5/j$P$b$b;->b:Lw5/j$P$b;

    iget-object p4, p4, Lw5/j$P$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lw5/j$P$b$b;->b:Lw5/j$P$b;

    iget-object p4, p4, Lw5/j$P$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lw5/j$P$b$b;->a:Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    invoke-static {p4, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, LZ6/g;->f1(Ljava/lang/String;)V

    return-void
.end method
