.class public Lw5/j$P$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$P$b$a;->a(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw5/j$P$b$a;


# direct methods
.method public constructor <init>(Lw5/j$P$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$P$b$a$a;->b:Lw5/j$P$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lw5/j$P$b$a$a;->b:Lw5/j$P$b$a;

    iget-object v0, v0, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, v0, Lw5/j$P$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lw5/j$P$b$a$a;->b:Lw5/j$P$b$a;

    iget-object v0, v0, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, v0, Lw5/j$P$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lw5/j$P$b$a$a;->b:Lw5/j$P$b$a;

    iget-object v0, v0, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, v0, Lw5/j$P$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw5/j$P$b$a$a;->b:Lw5/j$P$b$a;

    iget-object v2, v2, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    iget-object v2, v2, Lw5/j$P$b;->f:Lw5/j$P;

    iget-object v2, v2, Lw5/j$P;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lw5/j$P$b$a$a;->b:Lw5/j$P$b$a;

    iget-object v4, v4, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    invoke-virtual {v4, v3}, Lw5/j$P$b;->a(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v3, p0, Lw5/j$P$b$a$a;->b:Lw5/j$P$b$a;

    iget-object v3, v3, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    invoke-virtual {v3, v2}, Lw5/j$P$b;->b(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw5/j$P$b$a$a;->b:Lw5/j$P$b$a;

    iget-object v1, v1, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    iget-object v1, v1, Lw5/j$P$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IMPORTED_OF:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw5/j$P$b$a$a;->b:Lw5/j$P$b$a;

    iget-object v2, v2, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    iget-object v2, v2, Lw5/j$P$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TOTAL_EXCLAMATION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object v0, p0, Lw5/j$P$b$a$a;->b:Lw5/j$P$b$a;

    iget-object v0, v0, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    iget-object v0, v0, Lw5/j$P$b;->e:LZ6/g;

    invoke-virtual {v0}, LZ6/g;->q1()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->c()V

    return-void
.end method
